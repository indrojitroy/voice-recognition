
clear all;


pause(1);
recorderon=audiorecorder(16000,16,2);
a=input("say one(type a number also)");
recordblocking(recorderon,2);
voiceon=getaudiodata(recorderon);
x=voiceon(:,1);
play(recorderon);


recorderoff=audiorecorder(16000,16,2);

b=input("say two(type a number also)");
recordblocking(recorderoff,2);

voiceoff=getaudiodata(recorderoff);
y=voiceoff(:,1);
play(recorderoff);


save database2 x y
msgbox("record complete");
