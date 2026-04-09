# Gemma 4 for DReye 👁️

**DReye Edge AI 플랫폼을 위한 경량화된 로컬 LLM (Local LLM for DReye as Edge AI)**

![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)
![Status](https://img.shields.io/badge/Status-Active-success)
![Platform](https://img.shields.io/badge/Platform-Android_|_iOS-brightgreen)

## 📌 소개 (Introduction)

`gemma4-for-DReye` 는 스마트폰 등 모바일 엣지(Edge) 디바이스 환경에서 독립적이고 원활하게 작동할 수 있도록 최적화된 **Gemma 4 (e2b)** 기반의 Local LLM 레포지토리입니다. 망 연결이 없거나 불안정한 환경에서도 DReye 인프라가 실시간으로 분석과 의사결정을 수행할 수 있도록 지원합니다.

본 레포지토리는 스마트폰 환경에 특화된 e2b(Edge-to-Base) 구조를 포크하여 세팅되었으며, 향후 **DReye 프로젝트**의 필수적인 로컬 AI 비서 및 엔진 역할을 담당합니다.

## ✨ 주요 특징 (Key Features)

- **Edge AI First**: 클라우드 서버 의존 없이 오직 스마트폰 내부(Local) 자원만으로 동작.
- **Privacy Preserving**: 디바이스 내에서 모든 데이터를 처리하므로 민감한 의료/개인 정보를 외부로 전송할 필요가 없음 (DReye 특성을 고려한 프라이버시 보장).
- **Gemma 4 (e2b) 최적화**: 배터리 및 메모리 사용량을 최소화한 경량 버전(e2b) 기반 모델 구조 적용.
- **Cross Platform**: Android 및 iOS NPU 가속 지원.

## 🚀 시작하기 (Getting Started)

### 사전 요구 사항 (Prerequisites)
- CMake 3.22+
- NDK (Android 빌드 시)
- Xcode (iOS 빌드 시)
- Ollama / ExecuTorch / llama.cpp 호환 환경

### 설치 (Installation)

```bash
# 1. 저장소 클론 (Clone the repository)
git clone https://github.com/sunjongos/gemma4-for-DReye.git

# 2. 디렉토리 이동
cd gemma4-for-DReye

# 3. 하위 모듈 및 종속성 초기화
git submodule update --init --recursive
```

## 🧠 구조 (Architecture)

1. **Model Weights**: Gemma 4 e2b (Quantized - INT4/INT8)
2. **Inference Engine**: 모바일 NPU 가속을 활용할 수 있는 백엔드 엔진
3. **DReye Application Layer**: DReye 앱과 LLM 간의 인터페이스 역할을 수행하는 API/브릿지

## 🤝 기여 (Contributing)

이 프로젝트는 DReye 플랫폼의 확장과 로컬 인공지능 성능 강화에 목적을 두고 있습니다. 보안 이슈나 최적화 관련 Pull Request는 언제나 환영합니다.

## 📄 라이선스 (License)

이 프로젝트는 Apache 2.0 라이선스 기반의 Gemma 가이드라인을 따릅니다. 자세한 내용은 `LICENSE` 파일을 참고해주세요.
