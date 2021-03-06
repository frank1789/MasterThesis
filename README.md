[![Build Status](https://travis-ci.org/frank1789/MasterThesis.svg?branch=master)](https://travis-ci.org/frank1789/MasterThesis)


<center><h2> Master of Science in Mechatronics Engineering </h2></center>

<center><h1> Enhancing UAV capabilities with machine learning on board </h1></center>

## Abstract 


The aim of this thesis is to increase the capabilities of
an unmanned aerial vehicles (UAVs) using convolutional neural networks
for classification and object detection from images captured by the
camera. In recent times, the use of UAVs has increased both in the
military and civilian fields, such as for example in traffic control,
surveillance, deliveries, photography and exploration. Within the UAV
family, helicopters are preferred to fixed-wing aircraft especially for
their vertical take-off and landing capacity, and also for their
manoeuvrability. These are used in activities where environments and
circumstances are dangerous to humans. In parallel successes of deep
learning techniques in solving many complex tasks such as planning,
localization, control and perception by starting from sensor data
acquired in real environments make it suitable in autonomous robotic
applications.
The development of dedicated hardware and software such as CUDA for
Nvidia GPUs which shows best performances in computer vision speech
recognition signal signal processing applications and so on.
A further aspect taken into consideration is the continuous evolution in
the field of Information Technology (IT) driven by the continual request
for decreasing capacity and costs. So embedded systems represent a now
important slice of the entire IT sector, in particular they guide thanks
to their mutual dependence on hardware and software in the mobile field
and the Internet of Things (IoT).
These devices take advantage of application characteristics to optimize
the design. Thus the introduction of platforms dedicated to neural
computation has pushed the adoption of specific energy efficient and
powerful processors.<br><br>
This project focuses the activity of providing the drone with greater
awareness of the environment that surrounds it, making it less dependent
on the pilot and therefore more autonomous in fulfilling set tasks.
Although commercial solutions already implemented in drones available on
the market, these are distributed in closed form. Hence the idea of
expanding the drone's capabilities through open source software.\
The project to achieve the objectives is divided into several steps
which are not independent and which constrain certain design choices.
The first problem is the need to classify and determine the position of
a target within the image. This is solved by the use of deep neural
networks, i.e. convolutional neural networks. In particular, the
construction of the training dataset affects the response provided by
the neural network. So a dataset specifically calibrated for the task
will guarantee better results. So through the use of 3D graphics
techniques, a dataset was built based on plausibly real scenarios and on
the instruments mounted on board the drone such as cameras.\
The training process based on fine-tuning techniques involves adjusting
the parameters in order to ensure a good compromise between calculation
times and accuracy of the result. The creation of ad-hoc software
capable of being executed on multiple platforms is a requirement in the
prototyping phase. For this the use of a framework is essential for the
success of this aspect. Furthermore, it is necessary to guarantee
communication between the devices for this reason and being in an
initial phase, it was preferred to resort to communication using the TCP
protocol which guarantees the control and reception of packets sent
within the computer network.
Use of both color and thermal cameras, it is necessary that the
acquisition of the video streams proceeds without blocking during the
execution of the program using parallelization. The processing of the
neural network on general-purpose processors represents a high
computational load which negatively affects the time required to obtain
the response.
Therefore the use of a framework capable of guaranteeing a compression
of the neural model to guarantee a response in extremely short times
proves to be a winning choice also for hardware dedicated to mobile and
IoT products. <br> <br>
A brief introduction to the world of UAVs is given in chapter 1
where the general characteristics of
these apperaches are presented. A brief representation of their
constituent components and the autonomy levels that can be implemented
in this type of aircraft.\
Chapter 2 introduces the hardware used to make the
prototype by analyzing the computer boards in particular the Raspberry
Pi 3b and the Google Coral Dev-Board.\
These although similar differ for the mounted processor if for the first
board we find an ARM cortex-A53 32-bit processor for the second board we
find a processor of the same class but with 64-bit processing flanked by
a Tensor Processor Unit for neural calculus.\
There are also cameras used to acquire images, in particular there is
the Raspberry PiCamera V2 equipped with sensor 8-Mega-pixels. Instead,
for the acquisition of thermal images, a FLIR Lepton 2.5 with a sensor
capable of providing images of the size $80 \times 60$ was preferred.
Finally, it is presented in the logic that makes the use of the Tensor
Processor Unit so attractive and its implications in energy consumption
and tensor calculation.\
In chapter 3 the software developed to be executed on the
boards is analyzed. In particular, they justify the choices to use the
Qt framework in order to guarantee ease during the development phase and
cross-platform support. The critical functions within the program are
analyzed in detail, highlighting the design and implementation choices.
As well as a comparison of the performances between the tested
architectures, in particular: Intel i7 (x86\_64), ARM cortex-A53
(armv7l) and ARM cortex-A53 (aarch64).\
The design and implementation of the dataset is presented in chapter 4, this represents a fundamental aspect
in the training process of the neural network. In detail, the
organization of the dataset is discussed and how it should be
implemented in order to guarantee the solution of the object detection
problem. In particular, the annotation work carried out on the images
and how they are then processed by the neural network. The choice of the
neural network to be trained is discussed in depth by carrying out a
trade-off between performances, that is, having the shortest execution
time to effect the inference. Correctness in the suggested answer to the
classification and object detection problem. Without forgetting the
possibility of being performed on specific hardware.\
Chapter 5 presents the results achieved in the
execution of the project highlighting the strengths of the choices made
and the solutions used. In contrast, there are the limits of the model
used, the quantization process as well as the choices partly due to the
still immature technology and the lack of references in the literature.\
The last chapter 6 presents possible future developments,
strategies that will benefit the various aspects examined in the thesis.
In particular, diversify and characterize the dataset in order to make
the classification and object detection even more characteristic and
specific. Adopting different and more optimized neural network models.
As well as different training techniques and tools. Lastly, a more
efficient and efficient optimization of the code in order to limit and
reduce time and consumption of resources and energy for the benefit of
greater execution speed and downtime with implications also on the
energy aspect.
