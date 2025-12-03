---
layout: page
title: projects
permalink: /projects/
description: A collection of my software engineering projects.
nav: true
nav_order: 1
---

### StrataLens AI
**Equity research platform with agentic RAG pipeline** | [stratalens.ai](https://stratalens.ai)

Built an equity research platform using FastAPI, React, PostgreSQL, Redis, and Logfire for observability. Implemented latency-optimized agentic RAG pipeline using Groq inference (OpenAI 20B OSS) and GPT-4.1 Nano with pgvector for vector retrieval across 10,000+ earnings calls (2022-2025). Building agentic RAG pipeline for SEC filings achieving ~85% accuracy on FinanceBench benchmark with LLM-as-judge evaluation. Developed text-to-SQL stock screener and market data analysis tool using DuckDB for natural language financial queries.

**Technologies:** FastAPI, React, PostgreSQL, Redis, pgvector, Groq, GPT-4.1 Nano, DuckDB

---

### Financial Podcast Platform
**Real-time AI podcast generation with WebSocket streaming**

Built real-time AI podcast platform using OpenAI Whisper and GPT-4o with Celery workers for async audio generation. Developed React frontend with WebSocket streaming for live audio updates, deployed on AWS. Organically acquired 50+ users in early beta with portfolio-based personalized podcast generation on-demand. Implemented market data pipeline processing 9,000 tickers every 20 minutes using SERP API and Redis caching.

**Technologies:** OpenAI Whisper, GPT-4o, Celery, React, WebSocket, AWS, Redis

---

### TheMarketCast.ai
**SEC Form D filing analysis platform** | [themarketcast.ai](https://themarketcast.ai)

Built platform parsing and analyzing SEC Form D filings daily, providing accessible insights into private capital formation trends across U.S. markets.

**Technologies:** Python, SEC EDGAR API, Data Analysis

---

### Jobs Intelligence Scraper
**Large-scale job posting data extraction**

Built large-scale web scraper using Playwright and Meta-Llama-3-70B to extract 100,000+ job postings from high-growth startups and S&P 500 companies with structured data extraction and analysis capabilities.

**Technologies:** Playwright, Meta-Llama-3-70B, Python, Web Scraping

---

### GreyNSights
**Framework for privacy-preserving data analysis with differential privacy**

Framework for privacy-preserving data analysis using Pandas with pointer-based architecture for flexible EDA. Implemented differential privacy for individual row protection and federated analytics using secure multi-party computation.

**Technologies:** Python, Pandas, Differential Privacy, Secure Multi-Party Computation

**GitHub:** [kamathhrishi/GreyNSights](https://github.com/kamathhrishi/GreyNSights)

---

### SyMPC
**Multi-party computation library for privacy-preserving neural network training in PyTorch**

Core contributor to SyMPC (2021-2022), a library enabling secure multi-party computation for training neural networks in PyTorch.

**Key Contributions:**
- **FALCON Implementation**: Implemented core operations from the FALCON paper - first Python implementation of honest-majority maliciously secure framework for private deep learning
- **Automatic Differentiation**: Enhanced the automatic differentiation system for secure gradient computation
- **Replicated Secret Sharing**: Developed tensor primitives using Replicated Secret Sharing protocols

**Technologies:** PyTorch, Secure Multi-Party Computation, Cryptography

**GitHub:** [OpenMined/SyMPC](https://github.com/OpenMined/SyMPC)

---

### PySyft
**Framework for privacy-preserving deep learning with federated learning and differential privacy**

Core contributor to PySyft (2019-2022), a framework enabling privacy-preserving deep learning with support for both PyTorch and TensorFlow. Performed code reviews and planned SyMPC library roadmap.

**Key Contributions:**
- **Federated Learning**: Created practical use cases for federated learning with word embeddings
- **Differential Privacy**: Implemented the PATE (Private Aggregation of Teacher Ensembles) method
- **Infrastructure**: Refactored data loaders and added comprehensive type annotations
- **Framework Support**: Worked on both PyTorch and TensorFlow integrations

**Technologies:** PyTorch, TensorFlow, Federated Learning, Differential Privacy

**GitHub:** [OpenMined/PySyft](https://github.com/OpenMined/PySyft)

---

### Deepgaze
**Computer vision library for human-computer interaction**

Contributor to Deepgaze, a computer vision library designed for human-computer interaction applications.

**Key Contributions:**
- **Code Refactoring**: Refactored core components for better maintainability
- **Test Coverage**: Added comprehensive test coverage to improve reliability
- **Python 3 Migration**: Led the migration from Python 2 to Python 3.0

**Technologies:** Python, Computer Vision, OpenCV

**GitHub:** [mpatacchiola/deepgaze](https://github.com/mpatacchiola/deepgaze)

---

### Weakly Supervised Street View Text Detection
**CNN-based text segmentation and localization using weakly labeled training data**

A deep learning system for detecting and localizing text in street view images using weakly supervised learning techniques.

**Key Achievements:**
- **34% Reduction in Labeling Time**: Applied knowledge distillation to reduce manual annotation effort
- **Dataset Contributions**: Annotated UCSD SVT and NEOCR datasets for street view text detection
- **Weakly Supervised Learning**: Leveraged weakly labeled data to train robust text detection models

**Technologies:** PyTorch, OpenCV, Pillow, Computer Vision

**GitHub:** [kamathhrishi/Weakly-Supervised-Street-View-Text-Detection](https://github.com/kamathhrishi/Weakly-Supervised-Street-View-Text-Detection)

---

### HandPose Estimation
**Deep learning system for hand pose detection with segmentation and keypoint identification**

A hand pose estimation system that performs both hand segmentation and keypoint detection for understanding hand gestures and poses.

**Architecture:** Built using an encoder-decoder CNN architecture with ResNet34 as the backbone, combining semantic segmentation for hand region detection with keypoint estimation for finger positions.

**Features:**
- **Hand Segmentation**: Accurate segmentation of hand regions from complex backgrounds
- **Keypoint Detection**: Precise localization of finger joints and palm landmarks
- **ResNet34 Backbone**: Leverages pretrained ResNet34 for robust feature extraction

**Technologies:** PyTorch, Computer Vision, Deep Learning

**GitHub:** [kamathhrishi/HandPoseEstimation](https://github.com/kamathhrishi/HandPoseEstimation)
