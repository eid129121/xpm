local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function() return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...) local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30) if (v1(v30,2)==79) then v19=v0(v3(v30,1,1));return "";else local v87=v2(v0(v30,16));if v19 then local v97=v5(v87,v19);v19=nil;return v97;else return v87;end end end);local function v20(v31,v32,v33) if v33 then local v88=(v31/(2^(v32-1)))%(2^(((v33-1) -(v32-1)) + 1)) ;return v88-(v88%1) ;else local v89=2^(v32-1) ;return (((v31%(v89 + v89))>=v89) and 1) or 0 ;end end local function v21() local v34=v1(v16,v18,v18);v18=v18 + 1 ;return v34;end local function v22() local v35,v36=v1(v16,v18,v18 + 2 );v18=v18 + 2 ;return (v36 * 256) + v35 ;end local function v23() local v37,v38,v39,v40=v1(v16,v18,v18 + 3 );v18=v18 + 4 ;return (v40 * 16777216) + (v39 * 65536) + (v38 * 256) + v37 ;end local function v24() local v41=v23();local v42=v23();local v43=1;local v44=(v20(v42,1,20) * (2^32)) + v41 ;local v45=v20(v42,21,31);local v46=((v20(v42,32)==1) and  -1) or 1 ;if (v45==0) then if (v44==0) then return v46 * 0 ;else v45=1;v43=0;end elseif (v45==2047) then return ((v44==0) and (v46 * (1/0))) or (v46 * NaN) ;end return v8(v46,v45-1023 ) * (v43 + (v44/(2^52))) ;end local function v25(v47) local v48;if  not v47 then v47=v23();if (v47==0) then return "";end end v48=v3(v16,v18,(v18 + v47) -1 );v18=v18 + v47 ;local v49={};for v63=1, #v48 do v49[v63]=v2(v1(v3(v48,v63,v63)));end return v6(v49);end local v26=v23;local function v27(...) return {...},v12("#",...);end local function v28() local v50={};local v51={};local v52={};local v53={v50,v51,nil,v52};local v54=v23();local v55={};for v65=1,v54 do local v66=v21();local v67;if (v66==1) then v67=v21()~=0 ;elseif (v66==2) then v67=v24();elseif (v66==3) then v67=v25();end v55[v65]=v67;end v53[3]=v21();for v69=1,v23() do local v70=v21();if (v20(v70,1,1)==0) then local v93=v20(v70,2,3);local v94=v20(v70,4,6);local v95={v22(),v22(),nil,nil};if (v93==0) then v95[3]=v22();v95[4]=v22();elseif (v93==1) then v95[3]=v23();elseif (v93==2) then v95[3]=v23() -(2^16) ;elseif (v93==3) then v95[3]=v23() -(2^16) ;v95[4]=v22();end if (v20(v94,1,1)==1) then v95[2]=v55[v95[2]];end if (v20(v94,2,2)==1) then v95[3]=v55[v95[3]];end if (v20(v94,3,3)==1) then v95[4]=v55[v95[4]];end v50[v69]=v95;end end for v71=1,v23() do v51[v71-1 ]=v28();end return v53;end local function v29(v57,v58,v59) local v60=v57[1];local v61=v57[2];local v62=v57[3];return function(...) local v73=v60;local v74=v61;local v75=v62;local v76=v27;local v77=1;local v78= -1;local v79={};local v80={...};local v81=v12("#",...) -1 ;local v82={};local v83={};for v90=0,v81 do if (v90>=v75) then v79[v90-v75 ]=v80[v90 + 1 ];else v83[v90]=v80[v90 + 1 ];end end local v84=(v81-v75) + 1 ;local v85;local v86;while true do v85=v73[v77];v86=v85[1];if (v86<=16) then if (v86<=7) then if (v86<=3) then if (v86<=1) then if (v86==0) then if (v83[v85[2]]~=v85[4]) then v77=v77 + 1 ;else v77=v85[3];end else v83[v85[2]]=v85[3]~=0 ;end elseif (v86==2) then local v115;local v116;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v116=v85[2];v115=v83[v85[3]];v83[v116 + 1 ]=v115;v83[v116]=v115[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v116=v85[2];v83[v116]=v83[v116](v13(v83,v116 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v116=v85[2];v83[v116]=v83[v116](v83[v116 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v116=v85[2];v115=v83[v85[3]];v83[v116 + 1 ]=v115;v83[v116]=v115[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v116=v85[2];v83[v116]=v83[v116](v13(v83,v116 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v116=v85[2];v83[v116]=v83[v116](v83[v116 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v116=v85[2];v83[v116]=v83[v116](v13(v83,v116 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v116=v85[2];v83[v116]=v83[v116](v13(v83,v116 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v116=v85[2];v83[v116]=v83[v116](v13(v83,v116 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v116=v85[2];v83[v116]=v83[v116](v13(v83,v116 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v116=v85[2];v83[v116]=v83[v116](v13(v83,v116 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v116=v85[2];v83[v116]=v83[v116](v13(v83,v116 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];else local v130=v85[2];local v131=v83[v85[3]];v83[v130 + 1 ]=v131;v83[v130]=v131[v85[4]];end elseif (v86<=5) then if (v86>4) then local v135=v83[v85[4]];if v135 then v77=v77 + 1 ;else v83[v85[2]]=v135;v77=v85[3];end else local v136=v85[2];v83[v136]=v83[v136](v83[v136 + 1 ]);end elseif (v86==6) then v83[v85[2]]();else v83[v85[2]][v85[3]]=v85[4];end elseif (v86<=11) then if (v86<=9) then if (v86>8) then v83[v85[2]]=v85[3]~=0 ;v77=v77 + 1 ;else local v141;local v142,v143;local v144;local v145;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v145=v85[2];v83[v145]=v83[v145](v83[v145 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v145=v85[2];v144=v83[v85[3]];v83[v145 + 1 ]=v144;v83[v145]=v144[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v145=v85[2];v142,v143=v76(v83[v145](v13(v83,v145 + 1 ,v85[3])));v78=(v143 + v145) -1 ;v141=0;for v208=v145,v78 do v141=v141 + 1 ;v83[v208]=v142[v141];end v77=v77 + 1 ;v85=v73[v77];v145=v85[2];v83[v145]=v83[v145](v13(v83,v145 + 1 ,v78));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]();v77=v77 + 1 ;v85=v73[v77];do return;end end elseif (v86==10) then v77=v85[3];else local v155;v155=v85[2];v83[v155](v13(v83,v155 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v155=v85[2];v83[v155]=v83[v155]();v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];if v83[v85[2]] then v77=v77 + 1 ;else v77=v85[3];end end elseif (v86<=13) then if (v86>12) then local v162;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3]~=0 ;v77=v77 + 1 ;v85=v73[v77];v162=v85[2];v83[v162]=v83[v162](v83[v162 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]={};v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v162=v85[2];v83[v162]=v83[v162](v83[v162 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];else local v171=v85[2];v83[v171]=v83[v171]();end elseif (v86<=14) then do return;end elseif (v86==15) then local v219=v85[2];v83[v219]=v83[v219](v13(v83,v219 + 1 ,v85[3]));else v83[v85[2]]=v29(v74[v85[3]],nil,v59);end elseif (v86<=25) then if (v86<=20) then if (v86<=18) then if (v86>17) then do return v83[v85[2]];end elseif (v83[v85[2]]==v85[4]) then v77=v77 + 1 ;else v77=v85[3];end elseif (v86>19) then v83[v85[2]]=v59[v85[3]];else local v175=v85[2];local v176,v177=v76(v83[v175](v13(v83,v175 + 1 ,v85[3])));v78=(v177 + v175) -1 ;local v178=0;for v211=v175,v78 do v178=v178 + 1 ;v83[v211]=v176[v178];end end elseif (v86<=22) then if (v86>21) then v83[v85[2]]={};else local v180;local v181;v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v181=v85[2];v83[v181]=v83[v181](v13(v83,v181 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v181=v85[2];v83[v181]=v83[v181](v83[v181 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v181=v85[2];v180=v83[v85[3]];v83[v181 + 1 ]=v180;v83[v181]=v180[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v181=v85[2];v83[v181]=v83[v181](v83[v181 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]={};v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v181=v85[2];v83[v181]=v83[v181](v13(v83,v181 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3]~=0 ;v77=v77 + 1 ;v85=v73[v77];v181=v85[2];v83[v181]=v83[v181](v13(v83,v181 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v181=v85[2];v180=v83[v85[3]];v83[v181 + 1 ]=v180;v83[v181]=v180[v85[4]];v77=v77 + 1 ;v85=v73[v77];v181=v85[2];v83[v181](v83[v181 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v181=v85[2];v83[v181](v83[v181 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v181=v85[2];v180=v83[v85[3]];v83[v181 + 1 ]=v180;v83[v181]=v180[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v181=v85[2];v83[v181]=v83[v181](v83[v181 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]={};v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v181=v85[2];v83[v181]=v83[v181](v13(v83,v181 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v181=v85[2];v83[v181]=v83[v181](v13(v83,v181 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3]~=0 ;v77=v77 + 1 ;v85=v73[v77];v181=v85[2];v83[v181]=v83[v181](v13(v83,v181 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v181=v85[2];v180=v83[v85[3]];v83[v181 + 1 ]=v180;v83[v181]=v180[v85[4]];v77=v77 + 1 ;v85=v73[v77];v181=v85[2];v83[v181](v83[v181 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v181=v85[2];v180=v83[v85[3]];v83[v181 + 1 ]=v180;v83[v181]=v180[v85[4]];end elseif (v86<=23) then local v195=v85[2];v83[v195]=v83[v195](v13(v83,v195 + 1 ,v78));elseif (v86==24) then local v223;local v224;v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v224=v85[3];v223=v83[v224];for v236=v224 + 1 ,v85[4] do v223=v223   .. v83[v236] ;end v83[v85[2]]=v223;v77=v77 + 1 ;v85=v73[v77];do return v83[v85[2]];end v77=v77 + 1 ;v85=v73[v77];do return;end else v83[v85[2]]=v85[3];end elseif (v86<=29) then if (v86<=27) then if (v86>26) then v59[v85[3]]=v83[v85[2]];elseif v83[v85[2]] then v77=v77 + 1 ;else v77=v85[3];end elseif (v86==28) then v83[v85[2]]=v83[v85[3]][v85[4]];else local v201=v85[3];local v202=v83[v201];for v214=v201 + 1 ,v85[4] do v202=v202   .. v83[v214] ;end v83[v85[2]]=v202;end elseif (v86<=31) then if (v86>30) then v83[v85[2]]=v83[v85[3]];else local v206=v85[2];v83[v206](v13(v83,v206 + 1 ,v85[3]));end elseif (v86<=32) then local v207=v85[2];do return v13(v83,v207,v207 + v85[3] );end elseif (v86==33) then local v233=v85[2];v83[v233](v83[v233 + 1 ]);else v83[v85[2]][v85[3]]=v83[v85[4]];end v77=v77 + 1 ;end end;end return v29(v28(),{},v17)(...);end return v15("LOL!083O0003083O006E657770726F7879030C3O006765746D6574617461626C6503073O002O5F696E646578030A3O002O5F746F737472696E6703053O002O5F6C656E030D3O006765745061636B61676555726C030D3O006372656174654F76652O72617903043O00496E697400143O00120D3O00016O000100018O000200024O00015O00122O000200026O00038O00020002000200102O00020003000100021000035O001022000200040003000210000300013O001022000200050003000210000300023O00121B000300063O000210000300033O00121B000300073O000210000300043O0010220001000800032O00123O00024O000E3O00013O00053O00013O002O033O0078706D01033O001219000100014O0012000100024O000E3O00017O00013O00026O00F0BF01033O001219000100014O0012000100024O000E3O00017O00023O00033B3O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F7873696E65772F78706D2F6D61696E2F7061636B616765732F03043O002E6C756101063O001218000100016O00025O00122O000300026O0001000100034O000100028O00017O00403O0003043O0067616D65030A3O0047657453657276696365030C3O0054772O656E5365727669636503083O00496E7374616E63652O033O006E657703093O005363722O656E477569030E3O005A496E6465784265686176696F7203043O00456E756D03073O005369626C696E6703043O004E616D652O033O0078706D030C3O00446973706C61794F72646572022O0080FF642OCD4103063O00506172656E7403073O00436F726547756903093O00546578744C6162656C030B3O00546578745772612O7065642O01030A3O0054657874436F6C6F723303063O00436F6C6F723303073O0066726F6D524742025O00E06F40030C3O00426F72646572436F6C6F7233028O0003043O0054657874030D3O004D61646520576974682078706D03073O004F76652O72617903043O0053697A6503053O005544696D32026O33D33F026O002440029A5O99B93F030B3O00416E63686F72506F696E7403073O00566563746F7232026O00E03F030F3O00426F7264657253697A65506978656C03163O004261636B67726F756E645472616E73706172656E6379026O00F03F03083O00506F736974696F6E03083O00466F6E744661636503043O00466F6E74032C3O00726278612O7365743A2O2F666F6E74732F66616D696C6965732F536F7572636553616E7350726F2E6A736F6E030A3O00466F6E7457656967687403043O00426F6C6403093O00466F6E745374796C6503063O004E6F726D616C03083O005465787453697A65026O002C4003103O00546578745472616E73706172656E6379030A3O00546578745363616C656403103O004261636B67726F756E64436F6C6F723303173O005549417370656374526174696F436F6E73747261696E74030B3O00417370656374526174696F026O00084003063O0043726561746503093O0054772O656E496E666F02CD5OCCF43F03043O00506C617903043O007461736B03043O007761697403093O0066726F6D5363616C65026O66EE3F030A3O0044657374726F79696E6703073O00436F2O6E65637400903O0012023O00013O00206O000200122O000200038O0002000200122O000100043O00202O00010001000500122O000200066O00010002000200122O000200083O00202O00020002000700202O00020002000900102O00010007000200302O0001000A000B00302O0001000C000D00122O000200013O00202O00020002000200122O0004000F6O00020004000200102O0001000E000200122O000200043O00202O00020002000500122O000300106O00020002000200302O00020011001200122O000300143O00202O00030003001500122O000400163O00122O000500163O00122O000600166O00030006000200102O00020013000300122O000300143O00202O00030003001500122O000400183O00122O000500183O00122O000600186O00030006000200102O00020017000300302O00020019001A00302O0002000A001B00122O0003001D3O00202O00030003000500122O0004001E3O00122O0005001F3O00122O000600203O00122O0007001F6O00030007000200102O0002001C000300122O000300223O00202O00030003000500122O000400233O00122O000500236O00030005000200102O00020021000300302O00020024001800302O00020025002600122O0003001D3O00202O00030003000500122O000400233O00122O000500183O00122O000600233O00122O000700186O00030007000200102O00020027000300122O000300293O00202O00030003000500122O0004002A3O00122O000500083O00202O00050005002B00202O00050005002C00122O000600083O00202O00060006002D00202O00060006002E4O00030006000200102O00020028000300302O0002002F003000302O00020031002600302O00020032001200122O000300143O00202O000300030015001219000400163O001215000500163O00122O000600166O00030006000200102O00020033000300102O0002000E000100122O000300043O00202O00030003000500122O000400346O00030002000200302O00030035003600102O0003000E000200202O00043O00374O000600023O00122O000700383O00202O00070007000500122O000800396O0007000200024O00083O000200302O00080031001800122O0009001D3O00202O00090009000500122O000A001E3O00122O000B00183O00122O000C00203O00122O000D00186O0009000D000200102O0008001C00094O000900016O00040009000200202O00040004003A4O00040002000100122O0004003B3O00202O00040004003C00122O000500396O00040002000100202O00043O00374O000600023O00122O000700383O00202O00070007000500122O000800236O0007000200024O00083O000200122O000900223O00202O00090009000500122O000A00263O00122O000B00266O0009000B000200102O00080021000900122O0009001D3O00202O00090009003D00122O000A003E3O00122O000B003E6O0009000B000200102O0008002700094O000900016O00040009000200202O00040004003A4O00040002000100202O00040002003F00202O00040004004000021000066O001E0004000600012O000E3O00013O00013O00013O00030D3O006372656174654F76652O72617900033O0012143O00014O00063O000100012O000E3O00017O00083O0003063O00612O7365727403063O00747970656F6603063O00737472696E67030F3O00446973636F72643A207873696E657703093O00776F726E67206B657903073O0067657467656E7603063O00696D706F7274030D3O006372656174654F76652O72617902193O001214000200013O0006050003000C0001000100040A3O000C0001001214000300024O001F000400014O00040003000200020026110003000A0001000300040A3O000A000100262O0001000B0001000400040A3O000B00012O000900036O0001000300013O001219000400054O000B00020004000100122O000200066O00020001000200202O00030002000700062O0003001400013O00040A3O001400012O000E3O00013O001214000300084O000600030001000100021000035O0010220002000700032O000E3O00013O00013O00043O00030D3O006765745061636B61676555726C030A3O006C6F6164737472696E6703043O0067616D6503073O00482O7470476574010B3O001208000100016O00028O00010002000200122O000200023O00122O000300033O00202O0003000300044O000500016O000300056O00023O00024O0002000100016O00017O00",v9(),...);
