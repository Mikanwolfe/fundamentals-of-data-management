## Contents

[toc]

# Admirals.csv

```csv
admiralID,admiralFirstName,admiralLastName,admiralRank,admiralNavalBase
1,Mikan,Kikuchi,Rear Admiral,1
2,Klim,Huynh,Rear Admiral,2
3,Danny,Tran,Rear Admiral,3
```

# Equipment.csv

```
equipmentID,equipmentKancolleID,equipmentName,equipmentDesc,equipmentFirePower,equipmentAA,equipmentASW
1,1,12cm Naval Gun,Light Naval Gun,1,1,0
2,2,12.7cm Twin Gun Mount,Light Naval Gun,2,2,0
3,63,12.7cm Twin Mount Type-B Kai 2,Light Naval Gun,3,2,0
4,3,12.7cm Naval Gun,Light Naval Gun,2,2,0
5,147,120mm Twin Gun Mount,Light Naval Gun,3,2,0
6,3,10cm Twin High-angle Mount,Dual Purpose Gun,2,7,0
7,48,12.7cm High-angle Mount,Dual Purpose Gun,1,3,0
8,91,12.7cm Twin High-Angle Mount (Late Model),Dual Purpose Gun,2,5,1
9,122,10cm Twin High-angle Mount + Anti-Aircraft Fire Director,Dual Purpose Gun,3,10,0
10,160,10.5cm Twin Gun Mount,Dual Purpose Gun,3,6,0
11,4,14cm Naval Gun,Dual Purpose Gun,2,0,0
12,5,15.5cm Triple Gun Mount (Main),Medium Naval Gun,7,4,0
13,6,20.3cm Twin Gun Mount,Medium Naval Gun,8,3,0
14,7,35.6cm Twin Gun Mount,Heavy Naval Gun,15,4,0
15,8,41cm Twin Gun Mount,Heavy Naval Gun,20,4,0
16,9,46cm Triple Gun Mount,Heavy Naval Gun,26,5,0
17,76,38cm Twin Gun Mount,Heavy Naval Gun,16,1,0
18,44,Type 94 Depth Charge Launcher,Depth Charge Launchers,0,0,5
19,45,Type 3 Depth Charge Launcher,Depth Charge Launchers,0,0,8
20,46,Type 93 Passive SONAR,Sonar,0,0,6
21,47,Type 3 SONAR,Sonar,0,0,10

```

# Nations.csv

```
NationID,NationName,NationPrefix
1,Imperial Japan,IJN
2,USSR,USSRS
3,United Kingdom,HMAS
4,United States of America,USS
5,Kriegsmarine,KMS
6,Kingdom of Italy,RN
7,France,FS

```



# NavalBases.csv

```
navalBaseID,navalBaseNationID,navalBaseName,navalBaseAddress,navalBaseSize
1,1,Hashirajima Anchorage,Hashirajima Anchorage,100
2,2,USSR Anchorage,USSR Anchorage,50
3,3,UK Anchorage,UK Anchorage,50

```



# ShipClasses.csv

NOTE: THIS IS NOT USED

```
classID,class,leadShip
1,Nagato,Nagato
2,Ise,Ise
3,Kagerou,Kagerou
4,Akagi,Akagi
5,Kaga,Kaga
6,Souryuu,Souryuu
7,Hiryuu,Hiryuu
8,Shimakaze,Shimakaze
9,Fubuki,Fubuki
10,Ayanami,Ayanami
11,Kuma,Kuma
12,Kongou,Kongou
13,Houshou,Houshou
14,Fusou,Fusou
15,Tenryuu,Tenryuu
16,Ryuujou,Ryuujou
17,Mutsuki,Mutsuki
18,Nagara,Nagara
19,Sendai,Sendai
20,Shiratsuyu,Shiratsuyu
21,Asashio,Asashio
22,Yuubari,Yuubari
23,Shouhou,Shouhou
24,Mogami,Mogami
25,Aoba,Aoba
26,Chitose,Chitose
27,Junsen Type B,Junsen Type B
28,Kaidai VI,Kaidai VI
29,Junsen Type B Kai Ni,Junsen Type B Kai Ni
30,Junsen 3,Junsen 3
31,Yamato,Yamato
32,Yuugumo,Yuugumo
33,Taihou,Taihou
34,Katori,Katori
35,Sentoku (I-400),Sentoku (I-400)
36,Hei,Hei
37,Kamoi,Kamoi
38,Type 3 Submergence Transport Vehicle,Type 3 Submergence Transport Vehicle
39,Bismarck,Bismarck
40,Type IXC U-boat,Type IXC U-boat
41,Graf Zeppelin,Graf Zeppelin
42,Lexington,Lexington
43,Vittorio Veneto,Vittorio Veneto
44,Zara,Zara
45,Commandant Teste,Commandant Teste
46,Richelieu,Richelieu
47,Gangut,Gangut
48,J,J
49,0,0
50,Kasuga Maru,Kasuga Maru
51,Shinyou,Shinyou
52,Marconi,Marconi
53,Taiyou,Taiyou
54,Etorofu,Etorofu
55,Akizuki,Akizuki
56,Essex,Essex

```



# Ships.csv

```
shipID,shipKancolleID,shipName,shipClass,shipType,shipFirePower,shipTorpedoes,shipAA,shipASW,shipFuelCost,shipAmmoCost,ShipNation,ShipNavalBase,ShipFleet,
1,1,Nagato,Nagato,BB,82,0,31,0,100,130,1,1,1,
2,001a,Nagato Kai,Nagato,BB,90,0,33,0,100,160,1,1,1,
3,2,Mutsu,Nagato,BB,82,0,31,0,100,130,1,1,1,
4,002a,Mutsu Kai,Nagato,BB,90,0,33,0,100,160,1,1,1,
5,3,Ise,Ise,BB,74,0,28,0,85,120,1,1,1,
6,4,Hyuuga,Ise,BB,74,0,28,0,85,120,1,1,1,
7,5,Yukikaze,Kagerou,DD,10,24,12,24,15,20,1,1,1,
8,005a,Yukikaze Kai,Kagerou,DD,12,28,16,27,15,20,1,1,1,
9,6,Akagi,Akagi,CV,0,0,32,0,60,55,1,1,1,
10,006a,Akagi Kai,Akagi,CV,0,0,35,0,75,75,1,1,1,
11,7,Kaga,Kaga,CV,0,0,28,0,60,55,1,1,1,
12,007a,Kaga Kai,Kaga,CV,0,0,30,0,80,80,1,1,1,
13,8,Souryuu,Souryuu,CV,0,0,26,0,50,50,1,1,1,
14,008a,Souryuu Kai,Souryuu,CV,0,0,30,0,65,65,1,1,1,
15,9,Hiryuu,Hiryuu,CV,0,0,26,0,50,50,1,1,1,
16,009a,Hiryuu Kai,Hiryuu,CV,0,0,30,0,65,65,1,1,1,
17,10,Shimakaze,Shimakaze,DD,12,45,14,24,20,25,1,1,1,
18,010a,Shimakaze Kai,Shimakaze,DD,14,48,16,27,20,25,1,1,1,
19,11,Fubuki,Fubuki,DD,10,27,10,20,15,20,1,1,1,
20,011a,Fubuki Kai,Fubuki,DD,12,28,15,24,15,20,1,1,1,
21,12,Shirayuki,Fubuki,DD,10,27,10,20,15,20,1,1,1,
22,012a,Shirayuki Kai,Fubuki,DD,12,28,15,24,15,20,1,1,1,
23,13,Hatsuyuki,Fubuki,DD,10,27,10,20,15,20,1,1,1,
24,013a,Hatsuyuki Kai,Fubuki,DD,12,28,15,24,15,20,1,1,1,
25,14,Miyuki,Fubuki,DD,10,27,10,20,15,20,1,1,1,
26,014a,Miyuki Kai,Fubuki,DD,12,28,15,24,15,20,1,1,1,
27,15,Murakumo,Fubuki,DD,10,27,10,20,15,20,1,1,1,
28,015a,Murakumo Kai,Fubuki,DD,12,28,15,24,15,20,1,1,1,
29,16,Isonami,Fubuki,DD,10,27,10,20,15,20,1,1,1,
30,016a,Isonami Kai,Fubuki,DD,12,28,15,24,15,20,1,1,1,
31,17,Ayanami,Ayanami,DD,10,27,12,20,15,20,1,1,1,
32,017a,Ayanami Kai,Ayanami,DD,12,28,15,24,15,20,1,1,1,
33,18,Shikinami,Ayanami,DD,10,27,12,20,15,20,1,1,1,
34,018a,Shikinami Kai,Ayanami,DD,12,28,15,24,15,20,1,1,1,
35,19,Ooi,Kuma,CL,14,24,13,19,25,25,1,1,1,
36,20,Kitakami,Kuma,CL,14,24,13,19,25,25,1,1,1,
37,21,Kongou,Kongou,FBB,63,0,24,0,80,110,1,1,1,
38,021a,Kongou Kai,Kongou,FBB,72,0,28,0,90,120,1,1,1,
39,22,Hiei,Kongou,FBB,63,0,24,0,80,110,1,1,1,
40,022a,Hiei Kai,Kongou,FBB,72,0,28,0,90,120,1,1,1,
41,23,Haruna,Kongou,FBB,63,0,24,0,80,110,1,1,1,
42,023a,Haruna Kai,Kongou,FBB,72,0,28,0,90,120,1,1,1,
43,24,Kirishima,Kongou,FBB,63,0,24,0,80,110,1,1,1,
44,024a,Kirishima Kai,Kongou,FBB,72,0,28,0,90,120,1,1,1,
45,25,Houshou,Houshou,CVL,0,0,10,0,25,25,1,1,1,
46,025a,Houshou Kai,Houshou,CVL,0,0,15,0,30,30,1,1,1,
47,26,Fusou,Fusou,BB,74,0,23,0,85,120,1,1,1,
48,026a,Fusou Kai,Fusou,BBV,63,0,40,0,95,105,1,1,1,
49,27,Yamashiro,Fusou,BB,74,0,23,0,85,120,1,1,1,
50,027a,Yamashiro Kai,Fusou,BBV,63,0,40,0,95,105,1,1,1,
51,28,Tenryuu,Tenryuu,CL,11,18,8,18,25,20,1,1,1,
52,028a,Tenryuu Kai,Tenryuu,CL,20,24,12,24,25,25,1,1,1,
53,29,Tatsuta,Tenryuu,CL,11,18,8,18,25,20,1,1,1,
54,029a,Tatsuta Kai,Tenryuu,CL,20,24,12,24,25,25,1,1,1,
55,30,Ryuujou,Ryuujou,CVL,0,0,16,0,35,35,1,1,1,
56,030a,Ryuujou Kai,Ryuujou,CVL,0,0,20,0,40,40,1,1,1,
57,31,Mutsuki,Mutsuki,DD,6,18,7,16,15,15,1,1,1,
58,031a,Mutsuki Kai,Mutsuki,DD,9,18,12,18,15,15,1,1,1,
59,32,Kisaragi,Mutsuki,DD,6,18,7,16,15,15,1,1,1,
60,032a,Kisaragi Kai,Mutsuki,DD,9,18,12,18,15,15,1,1,1,
61,33,Satsuki,Mutsuki,DD,6,18,7,16,15,15,1,1,1,
62,033a,Satsuki Kai,Mutsuki,DD,9,18,12,18,15,15,1,1,1,
63,34,Fumizuki,Mutsuki,DD,6,18,7,16,15,15,1,1,1,
64,034a,Fumizuki Kai,Mutsuki,DD,9,18,12,18,15,15,1,1,1,
65,35,Nagatsuki,Mutsuki,DD,6,18,7,16,15,15,1,1,1,
66,035a,Nagatsuki Kai,Mutsuki,DD,9,18,12,18,15,15,1,1,1,
67,36,Kikuzuki,Mutsuki,DD,6,18,7,16,15,15,1,1,1,
68,036a,Kikuzuki Kai,Mutsuki,DD,9,18,12,18,15,15,1,1,1,
69,37,Mikazuki,Mutsuki,DD,6,18,7,16,15,15,1,1,1,
70,037a,Mikazuki Kai,Mutsuki,DD,9,18,12,18,15,15,1,1,1,
71,38,Mochizuki,Mutsuki,DD,6,18,7,16,15,15,1,1,1,
72,038a,Mochizuki Kai,Mutsuki,DD,9,18,12,18,15,15,1,1,1,
73,39,Kuma,Kuma,CL,14,24,13,19,25,25,1,1,1,
74,039a,Kuma Kai,Kuma,CL,20,24,15,24,25,30,1,1,1,
75,40,Tama,Kuma,CL,14,24,13,19,25,25,1,1,1,
76,040a,Tama Kai,Kuma,CL,20,24,15,24,25,30,1,1,1,
77,41,Kiso,Kuma,CL,14,24,13,19,25,25,1,1,1,
78,041a,Kiso Kai,Kuma,CL,20,24,15,24,25,30,1,1,1,
79,42,Nagara,Nagara,CL,14,24,13,20,25,25,1,1,1,
80,042a,Nagara Kai,Nagara,CL,20,24,15,24,25,30,1,1,1,
81,43,Isuzu,Nagara,CL,14,24,13,40,25,25,1,1,1,
82,043a,Isuzu Kai,Nagara,CL,18,24,40,48,25,30,1,1,1,
83,44,Natori,Nagara,CL,14,24,13,20,25,25,1,1,1,
84,044a,Natori Kai,Nagara,CL,20,24,15,24,25,30,1,1,1,
85,45,Yura,Nagara,CL,14,24,13,40,25,25,1,1,1,
86,045a,Yura Kai,Nagara,CL,20,24,15,48,25,30,1,1,1,
87,46,Sendai,Sendai,CL,14,24,13,20,25,25,1,1,1,
88,046a,Sendai Kai,Sendai,CL,20,24,15,24,25,30,1,1,1,
89,47,Jintsuu,Sendai,CL,14,24,13,20,25,25,1,1,1,
90,081a,Murasame Kai,Shiratsuyu,DD,12,28,15,24,15,20,1,1,1,
91,82,Yuudachi,Shiratsuyu,DD,10,24,9,21,15,20,1,1,1,
92,082a,Yuudachi Kai,Shiratsuyu,DD,12,28,15,24,15,20,1,1,1,
93,83,Samidare,Shiratsuyu,DD,10,24,9,21,15,20,1,1,1,
94,083a,Samidare Kai,Shiratsuyu,DD,12,28,15,24,15,20,1,1,1,
95,84,Suzukaze,Shiratsuyu,DD,10,24,9,21,15,20,1,1,1,
96,084a,Suzukaze Kai,Shiratsuyu,DD,12,28,15,24,15,20,1,1,1,
97,85,Asashio,Asashio,DD,10,24,12,21,15,20,1,1,1,
98,085a,Asashio Kai,Asashio,DD,12,28,16,24,15,20,1,1,1,
99,86,Ooshio,Asashio,DD,10,24,9,21,15,20,1,1,1,
100,086a,Ooshio Kai,Asashio,DD,12,28,16,24,15,20,1,1,1,
101,87,Michishio,Asashio,DD,10,24,9,21,15,20,1,1,1,
102,087a,Michishio Kai,Asashio,DD,12,28,16,24,15,20,1,1,1,
103,88,Arashio,Asashio,DD,10,24,9,21,15,20,1,1,1,
104,088a,Arashio Kai,Asashio,DD,12,28,16,24,15,20,1,1,1,
105,111,Yuubari,Yuubari,CL,17,20,10,13,20,30,1,1,1,
106,111a,Yuubari Kai,Yuubari,CL,23,24,20,24,25,40,1,1,1,
107,112,Zuihou,Shouhou,CVL,0,0,14,0,35,35,1,1,1,
108,113,Zuihou Kai,Shouhou,CVL,0,0,18,0,40,40,1,1,1,
109,114,Ooi Kai Ni,Kuma,CLT,17,90,15,27,25,75,1,1,1,
110,115,Kitakami Kai Ni,Kuma,CLT,17,90,15,27,25,75,1,1,1,
111,116,Mikuma,Mogami,CA,40,18,18,0,40,65,1,1,1,
112,117,Mikuma Kai,Mogami,CAV,24,18,20,0,50,55,1,1,1,
113,118,Hatsukaze,Kagerou,DD,10,24,9,24,15,20,1,1,1,
114,118a,Hatsukaze Kai,Kagerou,DD,12,28,16,27,15,20,1,1,1,
115,119,Maikaze,Kagerou,DD,10,24,9,24,15,20,1,1,1,
116,119a,Maikaze Kai,Kagerou,DD,12,28,16,27,15,20,1,1,1,
117,120,Kinugasa,Aoba,CA,30,12,16,0,35,50,1,1,1,
118,120a,Kinugasa Kai,Aoba,CA,36,18,18,0,35,60,1,1,1,
119,121,Chitose Carrier Kai Ni,Chitose,CVL,0,0,30,0,45,40,1,1,1,
120,122,Chiyoda Carrier Kai Ni,Chitose,CVL,0,0,30,0,45,40,1,1,1,
121,123,I-19,Junsen Type B,SSV,2,36,0,0,10,20,1,1,1,
122,123a,I-19 Kai,Junsen Type B,SSV,3,42,0,0,10,25,1,1,1,
123,124,Suzuya,Mogami,CA,40,18,18,0,40,65,1,1,1,
124,125,Kumano,Mogami,CA,40,18,18,0,40,65,1,1,1,
125,126,I-168,Kaidai VI,SSV,2,24,0,0,10,20,1,1,1,
126,126a,I-168 Kai,Kaidai VI,SSV,3,30,0,0,10,20,1,1,1,
127,127,I-58,Junsen Type B Kai Ni,SSV,2,30,0,0,10,20,1,1,1,
128,127a,I-58 Kai,Junsen Type B Kai Ni,SSV,3,36,0,0,10,25,1,1,1,
129,128,I-8,Junsen 3,SSV,2,30,0,0,10,20,1,1,1,
130,128a,I-8 Kai,Junsen 3,SSV,4,36,0,0,10,25,1,1,1,
131,129,Suzuya Kai,Mogami,CAV,24,18,20,0,50,55,1,1,1,
132,130,Kumano Kai,Mogami,CAV,24,18,20,0,50,55,1,1,1,
133,131,Yamato,Yamato,BB,96,0,50,0,250,300,1,1,1,
134,132,Akigumo,Kagerou,DD,10,24,9,24,15,20,1,1,1,
135,132a,Akigumo Kai,Kagerou,DD,8,28,22,27,15,20,1,1,1,
136,133,Yuugumo,Yuugumo,DD,10,24,9,27,15,20,1,1,1,
137,133a,Yuugumo Kai,Yuugumo,DD,12,28,16,29,15,20,1,1,1,
138,134,Makigumo,Yuugumo,DD,10,24,9,27,15,20,1,1,1,
139,153,Taihou,Taihou,CVB,0,0,42,0,70,65,1,1,1,
140,154,Katori,Katori,CLp,14,12,14,12,30,15,1,1,1,
141,154a,Katori Kai,Katori,CLp,16,14,24,22,35,20,1,1,1,
142,155,I-401,Sentoku (I-400),SSV,2,36,0,0,20,15,1,1,1,
143,155a,I-401 Kai,Sentoku (I-400),SSV,6,40,0,0,25,30,1,1,1,
144,156,Taihou Kai,Taihou,CVB,0,0,45,0,90,75,1,1,1,
145,157,Ryuujou Kai Ni,Ryuujou,CVL,0,0,24,0,40,45,1,1,1,
146,158,Sendai Kai Ni,Sendai,CL,24,26,20,38,25,35,1,1,1,
147,159,Jintsuu Kai Ni,Sendai,CL,27,38,18,40,25,35,1,1,1,
148,160,Naka Kai Ni,Sendai,CL,22,28,24,48,25,35,1,1,1,
149,161,Akitsu Maru,Hei,LHA,6,0,13,0,40,10,1,1,1,
150,162,Kamoi,Kamoi,AO,3,0,8,0,30,10,1,1,1,
151,163,Maruyu,Type 3 Submergence Transport Vehicle,SSV,1,0,0,0,10,5,1,1,1,
152,163a,Maruyu Kai,Type 3 Submergence Transport Vehicle,SSV,1,0,0,0,10,10,1,1,1,
153,164,Yayoi,Mutsuki,DD,6,18,7,16,15,15,1,1,1,
154,164a,Yayoi Kai,Mutsuki,DD,9,18,12,18,15,15,1,1,1,
155,165,Uzuki,Mutsuki,DD,6,18,7,16,15,15,1,1,1,
156,165a,Uzuki Kai,Mutsuki,DD,7,18,18,21,15,15,1,1,1,
157,166,Akitsu Maru Kai,Hei,LHA,8,0,15,0,45,25,1,1,1,
158,167,Isokaze,Kagerou,DD,10,24,14,24,15,20,1,1,1,
159,167a,Isokaze Kai,Kagerou,DD,12,28,24,27,15,20,1,1,1,
160,168,Urakaze,Kagerou,DD,10,24,10,24,15,20,1,1,1,
161,168a,Urakaze Kai,Kagerou,DD,12,28,16,29,15,20,1,1,1,
162,169,Tanikaze,Kagerou,DD,10,24,10,24,15,20,1,1,1,
163,169a,Tanikaze Kai,Kagerou,DD,12,28,16,28,15,20,1,1,1,
164,170,Hamakaze,Kagerou,DD,10,24,13,24,15,20,1,1,1,
165,170a,Hamakaze Kai,Kagerou,DD,12,28,22,27,15,20,1,1,1,
166,171,Bismarck,Bismarck,FBB,64,0,18,0,90,110,5,1,1,
167,231,U-511,Type IXC U-boat,SSV,2,22,0,0,10,20,5,1,1,
168,231a,U-511 Kai,Type IXC U-boat,SSV,3,27,0,0,10,20,5,1,1,
169,232,Graf Zeppelin,Graf Zeppelin,CV,10,0,40,0,55,65,5,1,1,
170,232a,Graf Zeppelin Kai,Graf Zeppelin,CV,15,0,44,0,70,80,5,1,1,
171,233,Saratoga,Lexington,CV,30,0,36,0,65,70,4,1,1,
172,246,Italia,Vittorio Veneto,FBB,81,0,44,0,140,170,6,1,1,
173,247,Roma Kai,Vittorio Veneto,FBB,82,0,46,0,140,170,6,1,1,
174,248,Zara,Zara,CA,36,0,18,0,45,60,6,1,1,
175,248a,Zara Kai,Zara,CA,42,0,22,0,45,65,6,1,1,
176,249,Pola,Zara,CA,35,0,16,0,45,60,6,1,1,
177,291,Commandant Teste,Commandant Teste,AV,28,0,18,0,35,40,7,1,1,
178,291a,Commandant Teste Kai,Commandant Teste,AV,32,0,20,0,40,50,7,1,1,
179,292,Richelieu,Richelieu,FBB,64,0,22,0,100,125,7,1,1,
180,292a,Richelieu Kai,Richelieu,FBB,72,0,28,0,100,130,7,1,1,
181,311,Gangut,Gangut,FBB,55,14,22,0,75,100,2,1,1,
182,319,Jervis,J,DD,12,30,22,40,15,25,3,1,1,
183,319a,Jervis Kai,J,DD,14,40,30,55,15,25,3,1,1,
184,320,Janus,0,DD,12,30,22,0,15,25,3,1,1,
185,320a,Janus Kai,0,DD,14,40,30,0,15,25,3,1,1,
186,321,Kasuga Maru,Kasuga Maru,CVL,0,0,12,0,25,25,1,1,1,
187,324,Shinyou,Shinyou,CVL,0,0,14,36,30,25,1,1,1,
188,324a,Shinyou Kai,Shinyou,CVL,0,0,18,66,30,30,1,1,1,
189,325,Luigi Torelli,Marconi,SSV,2,18,0,0,10,20,6,1,1,
190,325a,Luigi Torelli Kai,Marconi,SSV,0,0,0,0,10,15,6,1,1,
191,326,Taiyou,Taiyou,CVL,0,0,13,35,30,25,1,1,1,
192,326a,Taiyou Kai,Taiyou,CVL,0,0,16,65,30,30,1,1,1,
193,334,Etorofu,Etorofu,DE,4,0,7,35,10,10,1,1,1,
194,334a,Etorofu Kai,Etorofu,DE,5,0,12,37,10,10,1,1,1,
195,335,Matsuwa,Etorofu,DE,4,0,7,35,10,10,1,1,1,
196,335a,Matsuwa Kai,Etorofu,DE,5,0,12,36,10,10,1,1,1,
197,336,Shinyou Kai Ni,Shinyou,CVL,15,0,27,73,35,35,1,1,1,
198,337,Suzutsuki Kai,Akizuki,DD,22,22,82,28,20,25,1,1,1,
199,349,Intrepid,Essex,CV,0,0,50,0,75,80,4,1,1,
200,349a,Intrepid Kai,Essex,CV,0,0,55,0,90,105,4,1,1,

```



# ShipTypes.csv

```
shipTypeID,shipTypeDesc
Battleship,BB
Standard Aircraft Carrier,CV
Destroyer,DD
Light Cruiser,CL
Fast Battleship,FBB
Heavy Cruiser,CA
Aviation Cruiser,CAV
Torpedo Cruiser,CLT
Seaplane Tender,AV
Aircraft Carrying Submarine,SSV
Submarine,SSV
Aviation Battleship,BBV
Light Carrier,CVL
Destroyer Escort,DE
Amphibious Assault Ship,LHA
Fleet Oiler,AO
Submarine Tender ,AS
Repair Ship,AR
Armored Carrier,CVB
Training Cruiser,CLp

```

