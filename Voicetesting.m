clear all;
close all
clc

recorder=audiorecorder(16000,16,2);


disp("plz rec");
drawnow();
pause(1);
recordblocking(recorder,5);
play(recorder);
data=getaudiodata(recorder);
%plot(data);
%figure;
f=VoiceFeatures(data);
Pp=[0 0 0 0];
countp=[0 0 0 0];

    
load database
for(i=1:length(P))
    Pp(Q(i))=Pp(Q(i))+P(i);
    countp(Q(i))=countp(Q(i))+1;
end
for(i=1:length(Pp))
    if(countp(i)~=0)
    Pp(i)=Pp(i)/countp(i);
    end
end
D=[];

for(i=1:length(Pp))
    d=abs(Pp(i)-f);
    D=[D d];
end
Pp
sm=inf;
ind=-1;
for(i=1:length(D))
    if(D(i)<sm)
        sm=D(i);
        ind=i;
    end
end
detected_class=ind;
msgbox(string(ind));
save database3 detected_class
