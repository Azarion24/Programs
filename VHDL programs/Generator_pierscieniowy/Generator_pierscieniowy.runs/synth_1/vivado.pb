
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:052

00:00:052	
515.5082	
198.859Z17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/mateu/Desktop/PUL_Projects/Generator_pierscieniowy/Generator_pierscieniowy.srcs/utils_1/imports/synth_1/BRAMKA.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2}
{C:/Users/mateu/Desktop/PUL_Projects/Generator_pierscieniowy/Generator_pierscieniowy.srcs/utils_1/imports/synth_1/BRAMKA.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
`
Command: %s
53*	vivadotcl2/
-synth_design -top UKLAD -part xc7a12tcpg238-3Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7a12tZ17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7a12tZ17-349h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
19316Z8-7075h px� 
�
%s*synth2u
sStarting Synthesize : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 974.457 ; gain = 446.980
h px� 
�
synthesizing module '%s'638*oasys2
UKLAD2t
pC:/Users/mateu/Desktop/PUL_Projects/Generator_pierscieniowy/Generator_pierscieniowy.srcs/sources_1/new/UKLAD.vhd2
128@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
BRAMKA2s
qC:/Users/mateu/Desktop/PUL_Projects/Generator_pierscieniowy/Generator_pierscieniowy.srcs/sources_1/new/BRAMKA.vhd2
42
B12
BRAMKA2t
pC:/Users/mateu/Desktop/PUL_Projects/Generator_pierscieniowy/Generator_pierscieniowy.srcs/sources_1/new/UKLAD.vhd2
228@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
BRAMKA2u
qC:/Users/mateu/Desktop/PUL_Projects/Generator_pierscieniowy/Generator_pierscieniowy.srcs/sources_1/new/BRAMKA.vhd2
108@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
BRAMKA2
02
12u
qC:/Users/mateu/Desktop/PUL_Projects/Generator_pierscieniowy/Generator_pierscieniowy.srcs/sources_1/new/BRAMKA.vhd2
108@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
BRAMKA2s
qC:/Users/mateu/Desktop/PUL_Projects/Generator_pierscieniowy/Generator_pierscieniowy.srcs/sources_1/new/BRAMKA.vhd2
42
B22
BRAMKA2t
pC:/Users/mateu/Desktop/PUL_Projects/Generator_pierscieniowy/Generator_pierscieniowy.srcs/sources_1/new/UKLAD.vhd2
238@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
BRAMKA2s
qC:/Users/mateu/Desktop/PUL_Projects/Generator_pierscieniowy/Generator_pierscieniowy.srcs/sources_1/new/BRAMKA.vhd2
42
B32
BRAMKA2t
pC:/Users/mateu/Desktop/PUL_Projects/Generator_pierscieniowy/Generator_pierscieniowy.srcs/sources_1/new/UKLAD.vhd2
248@Z8-3491h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
UKLAD2
02
12t
pC:/Users/mateu/Desktop/PUL_Projects/Generator_pierscieniowy/Generator_pierscieniowy.srcs/sources_1/new/UKLAD.vhd2
128@Z8-256h px� 
i
9Port %s in module %s is either unconnected or has no load4866*oasys2
I2
UKLADZ8-7129h px� 
�
%s*synth2v
tFinished Synthesize : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1084.109 ; gain = 556.633
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1084.109 ; gain = 556.633
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7a12tcpg238-3
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1084.109 ; gain = 556.633
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
Loading part %s157*device2
xc7a12tcpg238-3Z21-403h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1084.109 ; gain = 556.633
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
Z
$Part: %s does not have CEAM library.966*device2
xc7a12tcpg238-3Z21-9227h px� 
o
%s
*synth2W
UPart Resources:
DSPs: 40 (col length:40)
BRAMs: 40 (col length: RAMB18 40 RAMB36 20)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
i
9Port %s in module %s is either unconnected or has no load4866*oasys2
I2
UKLADZ8-7129h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 1247.832 ; gain = 720.355
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1247.832 ; gain = 720.355
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1247.832 ; gain = 720.355
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1247.832 ; gain = 720.355
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1247.832 ; gain = 720.355
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1247.832 ; gain = 720.355
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1247.832 ; gain = 720.355
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1247.832 ; gain = 720.355
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1247.832 ; gain = 720.355
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
0
%s*synth2
+------+-----+------+
h px� 
0
%s*synth2
|      |Cell |Count |
h px� 
0
%s*synth2
+------+-----+------+
h px� 
0
%s*synth2
|1     |LUT2 |     1|
h px� 
0
%s*synth2
|2     |IBUF |     1|
h px� 
0
%s*synth2
|3     |OBUF |     1|
h px� 
0
%s*synth2
+------+-----+------+
h px� 
3
%s
*synth2

Report Instance Areas: 
h p
x
� 
<
%s
*synth2$
"+------+---------+-------+------+
h p
x
� 
<
%s
*synth2$
"|      |Instance |Module |Cells |
h p
x
� 
<
%s
*synth2$
"+------+---------+-------+------+
h p
x
� 
<
%s
*synth2$
"|1     |top      |       |     3|
h p
x
� 
<
%s
*synth2$
"+------+---------+-------+------+
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1247.832 ; gain = 720.355
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 3 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1247.832 ; gain = 720.355
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1247.832 ; gain = 720.355
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1255.7702
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1353.9022
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

bb22e4c1Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
222
32
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:132

00:00:142

1353.9022	
833.738Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0012

1353.9022
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2l
jC:/Users/mateu/Desktop/PUL_Projects/Generator_pierscieniowy/Generator_pierscieniowy.runs/synth_1/UKLAD.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2U
Sreport_utilization -file UKLAD_utilization_synth.rpt -pb UKLAD_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Sat Oct 26 15:17:06 2024Z17-206h px� 


End Record