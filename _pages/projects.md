---
layout: page
title: projects
permalink: /projects/
description: A collection of my software engineering projects.
nav: true
nav_order: 2
---

## Professional Projects

### SyMPC
**Multi-party computation library for privacy-preserving neural network training in PyTorch**

Core contributor to SyMPC (2021-2022), a library enabling secure multi-party computation for training neural networks in PyTorch.

**Key Contributions:**
- **FALCON Implementation**: Implemented core operations from the FALCON paper for secure computation
- **Automatic Differentiation**: Enhanced the automatic differentiation system for secure gradient computation
- **Replicated Secret Sharing**: Developed tensor primitives using Replicated Secret Sharing protocols

**Technologies:** PyTorch, Secure Multi-Party Computation, Cryptography

**GitHub:** [OpenMined/SyMPC](https://github.com/OpenMined/SyMPC)

---

### PySyft
**Framework for privacy-preserving deep learning with federated learning and differential privacy**

Core contributor to PySyft (2018-2019), a framework enabling privacy-preserving deep learning with support for both PyTorch and TensorFlow.

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

## Personal Projects

### GreyNSights
**Framework for privacy-preserving data analysis with differential privacy**

A framework for privacy-preserving data analysis that enables remote dataset queries while maintaining privacy through differential privacy.

**Features:**
- **Privacy-Preserving Queries**: Query remote datasets without exposing individual records
- **Pandas-Compatible API**: Familiar syntax for data scientists using pandas
- **Multi-Party Statistics**: Compute aggregate statistics across multiple parties
- **Differential Privacy**: Built-in differential privacy mechanisms

**Technologies:** Python, Pandas, Differential Privacy

**GitHub:** [kamathhrishi/GreyNSights](https://github.com/kamathhrishi/GreyNSights)

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
