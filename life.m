function life()
 global N;
 global X;
 global lifeloop;
 lifeloop=true;

 X= sparse(N,N);

 % Dose enan tuxeo plithismo me sxetika liga zontana stoixeia. 
 % 9% pithanotita na einai zontano to kathe stoixeio.
 X(1:N,1:N) = (rand(N,N) > .91);

 gen=0;

 % Loop ana genia oso to lifeloop einai true
 while lifeloop
 
  gen=gen+1; 

  % Sxediase ti diaspora X.
  spy(X,'ks',3)
  set(get(gca,'Children'),'MarkerFaceColor','b')

  % Dose ton titlo tou grafimatos kai emfanise tin genia pou vrikese kathe stigmi.
  title(['Game of Life'])
  xlabel(sprintf('Generation : %d', gen));

  % Emfanise ton pinaka se kathe kiklo.
  drawnow


  % Dimiourgise 2 seires pou tha xrisimopoiisoume gia na metatopisoume ton pinaka
  % ston upologizmo tou Y oste na apofigoume pollaplous vrogxous kai na kataliksoume
  % ston epithimito apotelsesma me merikes prostheseis pinakon.
  n = size(X,1);
  p = [1 1:N-1];
  q = [2:N N];

  % Metrise tous zontanous gitones kai vale ta apotelesmata se enan prosorino pinaka Y.
  % Xrisimopoiontas ta p kai q prosthetoume ton arxiko pinaka metatopismeno
  % pano, kato, deksia, aristera kai diagonia oste se kathe stoixeio
  % tha prosthethoun oi zontanoi gitones tou (afou ta nekra einai 0) 
  % kai sto telos to Y tha exei gia to kathe stoixeio ton arithmo ton gitonon tou.
  Y = X(:,p) + X(:,q) + X(p,:) + X(q,:) + X(p,p) + X(q,q) + X(p,q) + X(q,p);

  % Kane ti logiki praksi.
  % Ena stoixeio menei zontano me 2 i 3 zontanous gitones, 
  % geniete me akrivos 3 kai pethenei me otidipote alo.
  X = (X & (Y == 2)) | (Y == 3);


  pause(0.1)

 end
end