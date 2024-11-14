SCADA and ECU Simulation Project
Repository: Labview-SCADA-Project

This project demonstrates a small-scale Supervisory Control and Data Acquisition (SCADA) system integrated with an Electronic Control Unit (ECU) model. The simulation, developed using an ATmega16 microcontroller, LabVIEW, and Proteus8, showcases a control system for monitoring and managing engine parameters and alarm controls.

Table of Contents
Project Overview
System Design
Implementation
Results
Future Work
References
Project Overview
SCADA systems are widely used in industrial automation for remote monitoring and control, typically employing Programmable Logic Controllers (PLCs) for communication. In this project, we developed a small-scale SCADA and ECU model to monitor and control engine functions. This ECU model allows for real-time sensor monitoring and actuator control, supporting functionalities like motor rotation and alarm triggers based on sensor readings.

<p align="center"> <img src="images/system_block_diagram.png" alt="System Block Diagram" width="500"> </p>
Core Components:

Sensors: Temperature, pressure, oxygen, and throttle position sensors.
Actuators: Motor control and LED indicators for alarm triggers.
System Design
The project incorporates an ATmega16 microcontroller to simulate real-time ECU functionality, with LabVIEW handling data acquisition and monitoring. Key elements include:

LabVIEW as the Control Interface: Used for sensor monitoring, alarm displays, and motor speed adjustments.
Proteus for Simulation: Used to create and simulate circuit connections with microcontroller and LabVIEW interface.
<p align="center"> <img src="images/control_panel.png" alt="Control Panel Screenshot" width="500"> </p>
Circuit Components
Sensors: Inputs include temperature, engine RPM, throttle angle, and oxygen levels.
Actuators: Outputs include motor control and LED indications.
Implementation
The project is divided into two main parts:

ECU Model: A model of sensor inputs and actuator outputs created in LabVIEW using mathematical representations.
SCADA Control: Uses an ATmega16 microcontroller for data handling and control, connected to LabVIEW through virtual COM ports for bidirectional control.
Algorithm
Develop sensor models in LabVIEW with graphical programming (G programming).
Create circuit simulation in Proteus8 and connect to LabVIEW via virtual serial port configuration.
Implement a control structure in LabVIEW for real-time monitoring and data flow between ECU and SCADA systems.
<p align="center"> <img src="images/circuit_diagram.png" alt="Circuit Diagram" width="500"> </p>
Results
The system successfully demonstrates the following functionalities:

Basic Injection Time Monitoring: Real-time injection time adjustments based on sensor data.
Sensor Failure Alerts: Alerts displayed on LabVIEW when any sensor experiences a failure, such as oxygen or throttle sensor issues.
Motor and LED Control: Motor speed adjustments and LED alerting at high RPMs.
<p align="center"> <img src="images/simulation_output.png" alt="Simulation Output" width="500"> </p>
Future Work
To further enhance this project, consider:

IoT Integration: Expanding capabilities with IoT protocols for remote monitoring and control.
Data Security: Implementing encryption protocols to secure data transmission within the SCADA system.
Predictive Analysis Using Machine Learning: Integrating ML models to predict sensor failures and optimize control parameters.
References
S. Li, B. Jiang, X. Wang, and L. Dong, Data Acquisition and Monitoring Systems, Shandong University, 2017.
V. M. Igure, S. A. Laughter, and R. D. Williams, Security Issues in SCADA Networks, Computers and Security, 2006.
M. Avhad, V. Divekar, and H. Golatkar, Microcontroller-Based Automation System Using SCADA, IEEE INDICON, 2013.
For more references and technical details, please consult the project report available in this repository.

Note: Ensure images are available in the images directory within your repository and named accordingly to match the file paths provided.

This README.md provides a structured overview and visual content that enhances the project’s presentation on GitHub. Adjust image file paths if needed, depending on your directory structure.
