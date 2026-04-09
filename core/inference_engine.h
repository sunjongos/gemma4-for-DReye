#ifndef DREYE_INFERENCE_ENGINE_H
#define DREYE_INFERENCE_ENGINE_H

#include <string>
#include <memory>
#include <functional>

namespace dreye {

// NPU Memory Profile limits (in MBs) configured for Android Fundus devices
struct Config {
    std::string model_path;
    std::string tokenizer_path;
    int max_tokens = 512;
    int num_threads = 4;
    bool use_npu = true; // Use Hardware Acceleration (Edge TPU/NPU / Highway SIMD) Target NPU over GPU
};

/**
 * @brief Core LLM Inference wrapper adapted for DReye CAD operations on Edge AI.
 * Handles model loading and inference loop isolated from Cloud.
 */
class InferenceEngine {
public:
    InferenceEngine(const Config& config);
    ~InferenceEngine();

    // Query the LLM, invokes partial_response_callback for streaming tokens.
    // Returns full response as string.
    std::string Query(const std::string& prompt, 
                      std::function<void(const std::string&)> partial_response_callback = nullptr);

    bool IsLoaded() const;

private:
    class Impl; // Pimpl idiom used to hide gemma.cpp implementation details from JNI headers
    std::unique_ptr<Impl> impl_;
};

} // namespace dreye

#endif // DREYE_INFERENCE_ENGINE_H
