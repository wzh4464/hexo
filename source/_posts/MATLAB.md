---
title: install matlab on centos
---
# install matlab on centos

- download according to **network access/client computer**:
	- For example, first download it to your mac
- log in, agree to the acknowledgment, and click on `Advance Option` on the right above, then choose `Download only`
- Acquire hostid of the server computer. `ip link show` and copy the mac address.
- `https://ww2.mathworks.cn/licensecenter/licenses/40746419/5495716/activations?bypass=true`
- `./install -inputfile installer_input.txt -tmpdir /home/jeff/zihan/tmp`
- <a HREF="http://www.mathworks.com/pi_scl_3_R2023a_glnxa64">supported compiler</a> is required:<br><br>Fixed-Point Designer<br>SimBiology<br><br>The following products require a <a href="http://www.mathworks.com/pi_scl_1_R2023a_glnxa64">supported compiler</a>:<br><br>Embedded Coder<br>MATLAB Coder<br>Simulink Coder<br>Simulink Test<br>Stateflow<br><br>MATLAB Compiler SDK requires the following: <br><br> ●  a <a HREF="http://www.mathworks.com/pi_scl_5_R2023a_glnxa64">supported compiler</a> for creation of C and C++ Shared libraries<br> ●  a <a HREF="http://www.mathworks.com/pi_scl_6_R2023a_glnxa64">Java JDK</a> for creation of Java packages<br><br>Simulink requires a C compiler for simulation acceleration, model reference, and MATLAB Function Block capabilities. It is recommended that you install a <a HREF="http://www.mathworks.com/pi_scl_2_R2023a_glnxa64">supported compiler</a> on your machine.<br><br>The following products require <a href="http://www.mathworks.com/pi_hws_mpi_R2023a_glnxa64">Hardware Setup</a> for third-party tools configuration:<br><br>C2000 Microcontroller Blockset<br><br>