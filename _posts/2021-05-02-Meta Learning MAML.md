---
title:  "Meta Learning with MAML (Not yet completed)"
layout: posts
---

In supervised learning we learn a single task from several thousands of examples for a given class in a task from scratch or using transfer learning. 
These tasks usually require lot of data to train a network from scratch. But , this is not how you would ideally envision learning to be. For example , humans use prior knowledge in some task to be able to generalise to another task with little examples of the new task. 
Although the conventional practice is to initialise neural networks to train on Imagenet pertained models. Training on Imagenet some or the way uses thousands of images per category.
We should be able to learn from scratch even when the dataset has few examples per class. Training on several tasks with little images leads to substantial overfitting. 
So we need to be able to have the algorithm learn in a way that it is ensured features from one task generalise to another. Meta learning is not limited just to image classification but to any sequence of task. 
For example , you could pair tasks of language generation , depth estimation , skill learning , etc. To make it more clear how meta learning is put into practice I will use the example of few shot learning. 
In few shot learning we aim to learn a classifier given there are very few images per class , even when we have as little as 1 image. For the purpose we divide the dataset into meta 

I would like to describe a simple meta learning algorithm called MAML (Model Agnostic Meta Learning).
<img src="https://github.com/kamathhrishi/kamathhrishi.github.io/blob/master/_posts/Images/maml.png"></img>

In MAML an algorithm is trained for a set of tasks like regular supervised learning. 
The performance of model is evaluated on test data. Based on the error on test data the model is updated. Notice that the model is trained several epochs on training data but update is performed once on test data.
Isn’t this against the fundamental machine learning rule of not training on your test data? Remember here the focus is not to test the algorithm performance for a given task , but to teach an algorithm to learn as well as possible to learn for newer tasks. 
At meta-test , we train the algorithm on a new task and evaluate the test accuracy on the task. 
But , do not update the model parameters based on the error. 
Lets take an simple example of few shot learning. 

Simple Example

<img src="https://github.com/kamathhrishi/kamathhrishi.github.io/blob/master/_posts/Images/few_shot.png"></img>

We could classify our dataset into two categories 1) Support and 2) Query Set. An algorithm is trained on two tasks , first task consisting of images of cats , sheep , pigs. The second task consisting of animals such as dogs , lions and sharks. The test task being duck , chicken and dolphin. The algorithm is trained on the support set and  evaluated on query set. The test task is further evaluated. 

Other approaches 


Consider a 