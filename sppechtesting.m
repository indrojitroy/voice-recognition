 load database2
 load database3

if(detected_class==1)
    msgbox("access grantend");

    recorderz=audiorecorder(16000,16,2);
    c=input("say one or two");
    recordblocking(recorderz,2);
    voicez=getaudiodata(recorderz);
    z=voicez(:,1);
    play(recorderz);

    one=max(xcorr(x,z));
    two=max(xcorr(y,z));
    if(one>two)
       msgbox("one");

    else
         msgbox("Two");
    end
else
    msgbox("access denied");
end