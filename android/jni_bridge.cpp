#include <jni.h>
#include <string>
#include <memory>
#include "../core/inference_engine.h"

// Global pointer for the LLM Engine (singleton for simplicity in edge device)
static std::unique_ptr<dreye::InferenceEngine> g_engine;

extern "C" JNIEXPORT jboolean JNICALL
Java_com_dreye_cad_llm_GemmaEngine_initEngine(JNIEnv *env, jobject /* this */, jstring modelPath, jstring tokenizerPath) {
    if (g_engine && g_engine->IsLoaded()) {
        return JNI_TRUE;
    }

    const char *model_path_chars = env->GetStringUTFChars(modelPath, nullptr);
    const char *tokenizer_path_chars = env->GetStringUTFChars(tokenizerPath, nullptr);

    dreye::Config config;
    config.model_path = model_path_chars;
    config.tokenizer_path = tokenizer_path_chars;
    config.use_npu = true; // Hardcoded to target NPU for Android CAD

    g_engine = std::make_unique<dreye::InferenceEngine>(config);

    env->ReleaseStringUTFChars(modelPath, model_path_chars);
    env->ReleaseStringUTFChars(tokenizerPath, tokenizer_path_chars);

    return g_engine->IsLoaded() ? JNI_TRUE : JNI_FALSE;
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_dreye_cad_llm_GemmaEngine_queryModel(JNIEnv *env, jobject /* this */, jstring prompt) {
    if (!g_engine || !g_engine->IsLoaded()) {
        return env->NewStringUTF("Engine not initialized");
    }

    const char *prompt_chars = env->GetStringUTFChars(prompt, nullptr);
    
    // Perform inference
    std::string response = g_engine->Query(prompt_chars, nullptr);

    env->ReleaseStringUTFChars(prompt, prompt_chars);

    return env->NewStringUTF(response.c_str());
}
