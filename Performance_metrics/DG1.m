%FPorginal=PFtrue1();
FPorginal=TrueParetoFront;
paretoFNNIA=[results(:,1),results(:,2)];

paretoFNNIA1max=max(FPorginal(:,1));
paretoFNNIA2max=max(FPorginal(:,2));
paretoFNNIA1min=min(FPorginal(:,1));
paretoFNNIA2min=min(FPorginal(:,2));
%[HF,a1]=size(paretoFBSA);
[NF,a2]=size(paretoFNNIA);
[NFP,a3]=size(FPorginal);
D=ones(NF,1);
DG=0;
V=zeros(NFP,1);
S=0;
for i=1:NF
       for j=1:NFP
           a=((paretoFNNIA(i,1)-FPorginal(j,1))/(paretoFNNIA1max - paretoFNNIA1min));
           b=((paretoFNNIA(i,2)-FPorginal(j,2))/(paretoFNNIA2max - paretoFNNIA2min));
          V(j)=(a.^2+b.^2).^(0.5);
       end
           D(i)= min(V);
end
% % for i=1:NF
% %     for j=1:NF
% %         if(i~=j)
% %     a=abs(paretoFNNIA(i,1)-paretoFNNIA(j,1));
% %     b=abs(paretoFNNIA(i,2)-paretoFNNIA(j,2));
% %     V(j)=sqrt(a.^2+b.^2).^(0.5);
% %         end
% %     end
% %    D(i)= min(V);
% % end
for i=1:NF
    S=S+D(i).^2;
end
% a=(NF-1).*mean(S);
% for i=1:NF-1
%     S=S+(mean(S)-D(i));
% end
% 
% S=S./a;
 S=sqrt(S)/(NF);
 M=S;
 %end
 m=mean(M)
 v=var(M)
% %V1(trial)=DG;
 %end
% m=mean(M)
% 
% v=var(M)
 %Frontshow(MEpa)
% print -dpng misa_Osyczka.png