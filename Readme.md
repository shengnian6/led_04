<div align = "center" style = "color:red"><span style="font-size:25px;">4位闪烁灯实验</span></div>

![](./1.png)
<center>波形图(Waveform graph)</center>

#### <b>设计目标</b>
本实验的设计目标是我们要设计四个LED灯。我们规定高电平时，灯处于暗的状态，低电平时，灯处于亮的状态。如上图所示，首先 LED1暗 1 秒，接着亮 1 秒后变暗；接着 LED2 暗 1 秒，亮 2 秒后变暗；随后 LED3 暗 1 秒，亮 3 秒后变暗；最后 LED4 暗 1 秒，亮 4 秒后变暗；至此一个循环结束，随后按照此规律进行循环往复。也就是说，四个 LED 灯依次循环闪烁，具体闪烁要求为：隔 1 秒，亮 N 秒，N 的变化为：1，2，3，4 秒，然后再次进入循环。
#### <b>设计思路</b>
本实验的想法是，先通过一个计数器来计算1s中有多少个时钟周期(50，000，000个时钟周期)，然后再利用一个计数器来计算循环时间。因为设计目标中说到，14s是一个循环。最后通过if-else语句来确定每个LED灯在什么时候发生电平变换。

#### <b>实验总结</b>
在进行设计的时候，一定要清楚自己想要的波形是什么样的，先把图画出来，然后根据波形进行设计。计数器设计在FPGA设计中几乎占到了80%，剩下的20%是状态机设计。因为计数器可以很清楚的显示出我计数到什么数值的时候，我的电平可以发生变换。

***
***

<div align = "center" style = "color:red"><span style="font-size:25px;">4-digit flashing light experiment</span></div>

#### <b>Design Goals</b>
The design goal of this experiment is that we want to design four LED lights. We stipulate that when the level is high, the light is in a dark state, and when the level is low, the light is in a bright state. As shown in the figure above, first LED1 dims for 1 second, then lights for 1 second and then dims; then LED2 dims for 1 second, lights for 2 seconds and then dims; then LED3 dims for 1 second, lights for 3 seconds and then dims; finally LED4 dims for 1 second , lights up for 4 seconds and then darkens; at this point a cycle ends, and then the cycle repeats according to this rule. That is to say, the four LED lights flash in sequence in a cycle. The specific flashing requirements are: every 1 second, light for N seconds, N changes: 1, 2, 3, 4 seconds, and then enters the cycle again.

#### <b>Design ideas</b>
The idea of this experiment is to first use a counter to count how many clock cycles there are in 1s (50,000,000 clock cycles), and then use a counter to calculate the cycle time. Because it is mentioned in the design goal that 14s is a cycle. Finally, the if-else statement is used to determine when the level of each LED light changes.

#### <b>Experimental Summary</b>
When designing, you must know what kind of waveform you want. Draw a picture first, and then design based on the waveform. Counter design accounts for almost 80% of FPGA design, and the remaining 20% is state machine design. Because the counter can clearly show what value I count, my level can change.

联系方式：<yeshengnian666@gmail.com>
