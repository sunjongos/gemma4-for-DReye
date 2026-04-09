# Gemma 4 for DReye 👁️

**DReye Edge AI 플랫폼을 위한 경량화된 로컬 LLM (Local LLM for DReye as Edge AI)**

![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)
![Status](https://img.shields.io/badge/Status-Active-success)
![Platform](https://img.shields.io/badge/Platform-Android_|_iOS-brightgreen)

## 📌 소개 (Introduction)

`gemma4-for-DReye`는 **안저 카메라(Fundus Camera) 기반의 컴퓨터 보조 진단(CAD) 시스템인 닥터아이(DReye)**를 위한 전용 로컬 LLM 레포지토리입니다. 클라우드 연결 없이 기기(안저 카메라) 내에서 독립적으로 작동할 수 있도록 특별히 경량화된 **Gemma 4 (e2b)** 모델을 포크(Fork)하여 구축되었습니다.

이 Edge AI 아키텍처는 안과 진단과 관련된 외부 망 연결이 제한적이거나 불가능한 환경에서도 닥터아이가 실시간 이미지 판독 보조 및 진단 인사이트 분석을 온디바이스로 즉각 수행할 수 있도록 해줍니다.

## ✨ 주요 특징 (Key Features)

- **Edge AI First**: 클라우드 서버 의존 없이 오직 기기(안저 카메라 및 연동 엣지 장치) 내부(Local) 자원만으로 동작.
- **Privacy Preserving**: 디바이스 내에서 모든 데이터를 처리하므로 민감한 환자의 안저 의료 데이터를 외부로 전송할 필요가 없음 (HIPAA 등 의료 데이터 프라이버시 보장).
- **Gemma 4 (e2b) 최적화**: 임베디드 엣지 환경에 맞춰 배터리 및 메모리 사용량을 최소화한 경량 버전(e2b) 모델 적용.
- **Cross Platform**: 안저 카메라에 이식된 안드로이드, 임베디드 리눅스 등 다양한 NPU 환경 지원.

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
