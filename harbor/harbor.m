% 用Matlab实现课本5.5 例1的港口问题
n=100;
between=15+rand(1,100)*130;
between=between-mod(between,1);
unload=45+rand(1,100)*45;
unload=unload-mod(unload,1);
arrive=zeros(1,100);
finish=zeros(1,100);
HARTIME=0;
WAITIME=0;
idle=zeros(1,100);
wait=zeros(1,100);
start=zeros(1,100);
harbor=zeros(1,100);
MAXHAR=unload(1);
MAXWAIT=0;
IDLETIME=between(1);
finish(1)=between(1)+unload(1);
timediff=0;
HARTIME=unload(1);
for i=1:100
    arrive(i)=between(i);

    if(i>=2)
        
    arrive(i)=arrive(i-1)+between(i);
    timediff=arrive(i)-finish(i-1);
    if(timediff>=0)
        idle(i)=timediff;
        wait(i)=0;
    end
    if(timediff<0)
    wait(i)=-timediff;
    idle(i)=0;
    end
    start(i)=arrive(i)+wait(i);
    finish(i)=start(i)+unload(i);
    harbor(i)=wait(i)+unload(i);
    HARTIME=HARTIME+harbor(i);
    if(harbor(i)>MAXHAR)
        MAXHAR=harbor(i);
    end
    WAITIME=WAITIME+wait(i);
    IDLETIME=IDLETIME+idle(i);
    if(wait(i)>MAXWAIT)
        MAXWAIT=wait(i);
    end

    end
end
    HARTIME=HARTIME/100;
    WAITIME=WAITIME/100;
    IDLETIME=IDLETIME/finish(100);
    HARTIME
    MAXHAR
    WAITIME
    MAXWAIT
    IDLETIME
    
    
