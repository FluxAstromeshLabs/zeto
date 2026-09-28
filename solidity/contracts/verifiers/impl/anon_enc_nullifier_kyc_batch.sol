// SPDX-License-Identifier: GPL-3.0
/*
    Copyright 2021 0KIMS association.

    This file is generated with [snarkJS](https://github.com/iden3/snarkjs).

    snarkJS is a free software: you can redistribute it and/or modify it
    under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    snarkJS is distributed in the hope that it will be useful, but WITHOUT
    ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
    or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public
    License for more details.

    You should have received a copy of the GNU General Public License
    along with snarkJS. If not, see <https://www.gnu.org/licenses/>.
*/

pragma solidity >=0.7.0 <0.9.0;

contract Verifier_AnonEncNullifierKycBatch {
    // Scalar field size
    uint256 constant r    = 21888242871839275222246405745257275088548364400416034343698204186575808495617;
    // Base field size
    uint256 constant q   = 21888242871839275222246405745257275088696311157297823662689037894645226208583;

    // Verification Key data
    uint256 constant alphax  = 16428432848801857252194528405604668803277877773566238944394625302971855135431;
    uint256 constant alphay  = 16846502678714586896801519656441059708016666274385668027902869494772365009666;
    uint256 constant betax1  = 3182164110458002340215786955198810119980427837186618912744689678939861918171;
    uint256 constant betax2  = 16348171800823588416173124589066524623406261996681292662100840445103873053252;
    uint256 constant betay1  = 4920802715848186258981584729175884379674325733638798907835771393452862684714;
    uint256 constant betay2  = 19687132236965066906216944365591810874384658708175106803089633851114028275753;
    uint256 constant gammax1 = 11559732032986387107991004021392285783925812861821192530917403151452391805634;
    uint256 constant gammax2 = 10857046999023057135944570762232829481370756359578518086990519993285655852781;
    uint256 constant gammay1 = 4082367875863433681332203403145435568316851327593401208105741076214120093531;
    uint256 constant gammay2 = 8495653923123431417604973247489272438418190587263600148770280649306958101930;
    uint256 constant deltax1 = 12200618916762593469437447535148257693444198512844492326462776760206641633081;
    uint256 constant deltax2 = 170182640320003250111724153973087927456525886180213308665046223543179387996;
    uint256 constant deltay1 = 15071856523795656891856470320940010377497655752729138870882682903716067147610;
    uint256 constant deltay2 = 19954723991694429998248233556672247718540381125773157595384479436795647285645;

    
    uint256 constant IC0x = 10963246013283458184642821706632675671446694516912205677050665242772305228353;
    uint256 constant IC0y = 14153258500322514316175230691668609107534063217356549642466430297863792588348;
    
    uint256 constant IC1x = 470576861920944508283614293631576106528193762951561896452456460239529453767;
    uint256 constant IC1y = 11392369069762431629460061204169158680852057037606927092427897258476477185699;
    
    uint256 constant IC2x = 12054226523360050490448714802830438882386047620507645656928941166380251473778;
    uint256 constant IC2y = 5249655648807619393369957699968177447574207111746043511407926047913983892902;
    
    uint256 constant IC3x = 18209376185593173212662552457246170621970581501148569324253656755740047690836;
    uint256 constant IC3y = 4783162255811819304921531336704864813663071506819582408852820611800686566346;
    
    uint256 constant IC4x = 9377439858394595750859441101813927569438788624362476312039704087879562054134;
    uint256 constant IC4y = 14982343939465741282673981522726735448724518932652569541777809253894959431659;
    
    uint256 constant IC5x = 15657961701611306855542833940193986523413775179960515912890155019968055640691;
    uint256 constant IC5y = 18542128314867884280421553247332608741530319227898231369021002582585031927269;
    
    uint256 constant IC6x = 1795999994046139663405867598736063277032129308949867599085244365579276069567;
    uint256 constant IC6y = 16990450257399881060565450141650394625244539951444374040702909339710105066342;
    
    uint256 constant IC7x = 8107950348049270353114311653263733624952694070431718104323167270701881096821;
    uint256 constant IC7y = 9220341233707561109287161086510471051049509218795359032191723934346348656814;
    
    uint256 constant IC8x = 11703819494985459916346664318838010526652639778198058152182183868078575611591;
    uint256 constant IC8y = 2641340784958444287184924608143186325590177083119903797623658750057045937378;
    
    uint256 constant IC9x = 12411975548350718143325012318107668218556095881836163240991337060052125628803;
    uint256 constant IC9y = 15553919782277664843160614373684775957047420991116877073509411319491828815571;
    
    uint256 constant IC10x = 15143106062938502442637824629785002502519862510254568379778809174222527821071;
    uint256 constant IC10y = 5516277713554028979855237863412874377139378368540938927640412177662666834079;
    
    uint256 constant IC11x = 7726092619138560041847119953440219157581671832986108750536423009211429034828;
    uint256 constant IC11y = 12029493743666696815571119872591613261035202973526900658749656697388929464709;
    
    uint256 constant IC12x = 14697533337736977324181288449583587332941279890609966824389367539553283529467;
    uint256 constant IC12y = 20992733664078483802251319977348363548828823669875987493755396386837045082513;
    
    uint256 constant IC13x = 7363628282674527432296358275372487328687594056214246786179218458877963533702;
    uint256 constant IC13y = 13944295635679398609370303158975998989923768807588846182614835695003152716669;
    
    uint256 constant IC14x = 7840561396814358215024815724911645496294991427759340419436015167732203386005;
    uint256 constant IC14y = 16467760311077645267100179555456328908462205256196197634428829944704702320866;
    
    uint256 constant IC15x = 8563079313444977597463692988590215770991624487258039865105751448377371267377;
    uint256 constant IC15y = 18866807696509026808994792968150744897329649505351114186088662042071834626584;
    
    uint256 constant IC16x = 13839476952638790519221779183221709857411406946668375733591014355595696299846;
    uint256 constant IC16y = 3024136751804920026859130686069566202394801523068393002869919942043936392415;
    
    uint256 constant IC17x = 11113292893298672466333082754586703576988787137414784875753847104722567528127;
    uint256 constant IC17y = 7207265935714652916350111021657136959089544551867673641420838102886761886203;
    
    uint256 constant IC18x = 6099458399609917338476817348140863809076003287360518772758509004638621516333;
    uint256 constant IC18y = 5773943785012044843429458606675363718896592004388730213271792743451254409017;
    
    uint256 constant IC19x = 8732441366222022221140700189623386802749462372874921218999180613717556723941;
    uint256 constant IC19y = 13209116877237062715320041798835959257888568498709402785485151806740372089836;
    
    uint256 constant IC20x = 14706411403877331247823072824480384609780714335051537504971627222898178170938;
    uint256 constant IC20y = 2373824591951347622564123331499691734913472159113787381825176748956172492266;
    
    uint256 constant IC21x = 11336125076166997080446527368124275443570086604596262150151438396638605439570;
    uint256 constant IC21y = 7592736284959522249771327550376142839423070811887082537124764991422047803375;
    
    uint256 constant IC22x = 19082952401167795988984055052473123416262315430444587212456553612098407497819;
    uint256 constant IC22y = 12878107171500357091745899332718420374764126507262778933714107619683968694713;
    
    uint256 constant IC23x = 10868579085653394931494738711556863508212687092152978128634871841951738525494;
    uint256 constant IC23y = 17246823603746806608302193586773825775677781625203417495562210463328842856244;
    
    uint256 constant IC24x = 17987878876234113865465950535827644710094500303347420594414119836261999850856;
    uint256 constant IC24y = 9236760851534768400388853944053502557093786787351051863019959952183723048622;
    
    uint256 constant IC25x = 12055030436395445550601247870121051902057510971851560614376439710972066254831;
    uint256 constant IC25y = 20773821995756385523013716503866866369881680886153886113725437271964840426397;
    
    uint256 constant IC26x = 8736515326770759032459814891890204879887578691573880418630519802453290636369;
    uint256 constant IC26y = 20485321748407133196215359011262225223005266007771659626028723717747151634267;
    
    uint256 constant IC27x = 1604254635314588755656601938234697903511869406425715169445787699270382779368;
    uint256 constant IC27y = 7127732950950877877087322134880504030243523277404675165519748993162604345494;
    
    uint256 constant IC28x = 20104929006000292653838456258220212234676564511221726755636858695950509557652;
    uint256 constant IC28y = 12929031929527619501690057909914657546312587344039758714810699585888755184699;
    
    uint256 constant IC29x = 5440319069854313726723203914546733374790960590644804361378738418479751631351;
    uint256 constant IC29y = 10213065941924796789345210124242916158608446897949470395226813718236803220525;
    
    uint256 constant IC30x = 5862297613977864593974175524992268898149475374031644981225121156620610186964;
    uint256 constant IC30y = 3802847583537426912431128334624856818541176887894962236567481912609790574180;
    
    uint256 constant IC31x = 6447060769415492232529757778980214581429237057377654059430762974828406696313;
    uint256 constant IC31y = 20819256375567962303279364321047541296818638244795642794204525755318460669434;
    
    uint256 constant IC32x = 15149867331472927044071112711189850113033067536505649404307336233167061524474;
    uint256 constant IC32y = 21882192593721345475961716156428711980651477924621814007920639631712357347592;
    
    uint256 constant IC33x = 20607231022123202280882295194363570890170111583157988915765048674903991143371;
    uint256 constant IC33y = 6037828710418414715171825576749039400374844296950249361838507273177155979585;
    
    uint256 constant IC34x = 853322204260850686901301279789745345219967884191109709654681691845873999790;
    uint256 constant IC34y = 3510179293330487159592251663776962698555912419858734713790245317146116617333;
    
    uint256 constant IC35x = 13779221787813698505537902642522577805892053805171618227376126852227739430790;
    uint256 constant IC35y = 7066961285486496089999584060166740025842445356812826680747411980432205282875;
    
    uint256 constant IC36x = 20384017611707277073406573855945564478560796390568711149207736840647332345670;
    uint256 constant IC36y = 12705052053156084359254119777318100188795519950352154247324081578647831308804;
    
    uint256 constant IC37x = 18455771404282305418432577955472966655330590147568504634939725876408482704390;
    uint256 constant IC37y = 5042585622842557485230293578649923185059387691038156974371735845184048931181;
    
    uint256 constant IC38x = 5153924189523546533048649131883091995835738643201563056702448052986586358970;
    uint256 constant IC38y = 730363693666526020899356900788214774052642357772904133375498209644670226484;
    
    uint256 constant IC39x = 6723221449372544971663116745517579923978705301010954342905269651452703070814;
    uint256 constant IC39y = 10090227796075869901686428592096475722601859153512317225805819330434936638533;
    
    uint256 constant IC40x = 21601384833114788845114886510579213341649869813415534939356028418592454331309;
    uint256 constant IC40y = 15059414629355178377930199578686170221713257354597436281450306071596412869484;
    
    uint256 constant IC41x = 7606006197564146573749552454460782189438289292003033926427575094194673222432;
    uint256 constant IC41y = 15973661069578090291585654391897845249541729969294061285452555397706527423675;
    
    uint256 constant IC42x = 2199446491996143283931475759264770104994356754945364101311057975290363889120;
    uint256 constant IC42y = 14774343910263881846871788873639897038752195141175664456079496386374011264914;
    
    uint256 constant IC43x = 9664472498787268765794359506949008234152534560270702505661709145796590857190;
    uint256 constant IC43y = 11845522885002531223468771799458376580757636594291468667459873880319125049673;
    
    uint256 constant IC44x = 13070163778481359580115717268995577970012903444415705244682143488250980191193;
    uint256 constant IC44y = 9136126295946479887961064358559494351965579925359478483059490124309223877149;
    
    uint256 constant IC45x = 6331299218157157276012621068067498082492781023610764216440503148148381797405;
    uint256 constant IC45y = 8746999310115663665315994867738458340594638129267781539590511540612144262968;
    
    uint256 constant IC46x = 12848353772583833580995423651330445931645113082966023343076474172638984271626;
    uint256 constant IC46y = 10559056313968907643750625462801971559101009387690967721361361003136292378490;
    
    uint256 constant IC47x = 10731690402768291609625273667414405535055326315544344846081404731240174426185;
    uint256 constant IC47y = 16208189463231419677119681767381566072689093870039795419479015459259468219735;
    
    uint256 constant IC48x = 3345383323228545622654583018741609340593247511343969851602171938635733096418;
    uint256 constant IC48y = 1777423810912438689920650077447176479658309673988620847212209733685274252971;
    
    uint256 constant IC49x = 18080059614332723370695529567931930933129401178770216933867002477401078788183;
    uint256 constant IC49y = 3125870052438064369162779554295314043158775813520233611227289406031312663119;
    
    uint256 constant IC50x = 2918873380583826960984338601581187533764367744931105542401930650692539933381;
    uint256 constant IC50y = 7676476578280163520451526642993380403409659246623024668802690674928778986578;
    
    uint256 constant IC51x = 15935901982229347001366412283968473643803551520364025208774320968277539857476;
    uint256 constant IC51y = 15590049899880241632311193060526601077047903016012674841704192905525891835818;
    
    uint256 constant IC52x = 2855664403378527120352767619118361326289536159278361961178501781523743476073;
    uint256 constant IC52y = 18189931249397690723221947353106739270406980194387385388561799801969646207132;
    
    uint256 constant IC53x = 15171232124768999848813281144660404713656048298144754795428449839903873632530;
    uint256 constant IC53y = 11209519427575164417214445878118696838420724834201156768303339803444923206400;
    
    uint256 constant IC54x = 11138220361811764580273291211040191861801085214444299969309749832241638643652;
    uint256 constant IC54y = 4152032910547853966248387296694602290208370841764040402453295339347183427764;
    
    uint256 constant IC55x = 7832985419710928793703047480590594767656991192207883284563647470042367656715;
    uint256 constant IC55y = 85007123648208022007065537349300565364367600844499685475705274228386084548;
    
    uint256 constant IC56x = 16307567654643435895299545840222184469110023239425242784364749618971650153308;
    uint256 constant IC56y = 13346124345899223455412830147925202645165116049272249723638321344884696366731;
    
    uint256 constant IC57x = 11834344086108443633744019262128556523719541502744311761227502554949524158835;
    uint256 constant IC57y = 16889609629479495176314826500811645917803908490090950576728727368641978768293;
    
    uint256 constant IC58x = 17812519171402457768838570008018015475420271912305108357081259354025616624329;
    uint256 constant IC58y = 21718675465715347604376810113686838069795844495991630776347824545123218505908;
    
    uint256 constant IC59x = 459992331570581144556968473545453965395632554930912336118077758199815525068;
    uint256 constant IC59y = 7616373498078475896637180136938585116388537142614332840984041871337297898553;
    
    uint256 constant IC60x = 9500663117471297714442539566482730327872574141370500722351635297512673336834;
    uint256 constant IC60y = 13609008610788878919239104501447306060650518216813154224875107768260298255802;
    
    uint256 constant IC61x = 1795203179852243830347089547389362330378979842715507963373626811705486275773;
    uint256 constant IC61y = 16504605783287337746514273895229814307223930946455600146679029386214779020947;
    
    uint256 constant IC62x = 4801607170584113748898134041893622343634868446129815344501373772382653330800;
    uint256 constant IC62y = 14097281230375328233616861271587587481777232764978812056903492764996949833925;
    
    uint256 constant IC63x = 3071534597936352532846549380494355482125811524923295684441789268287641885789;
    uint256 constant IC63y = 21314778288232369365245756474939850010568301232296217536471111909460002192007;
    
    uint256 constant IC64x = 3715189933039130211143426423664230456780144726601727368950588273266953558370;
    uint256 constant IC64y = 1557781375688681025516170369000458540456168672984095074558209930529482047071;
    
    uint256 constant IC65x = 6865023864478264180764603739559595030636776928032644748208723850557226428924;
    uint256 constant IC65y = 3549101819872826434513073615766669065999907370432763133992491792599187144792;
    
    uint256 constant IC66x = 972786629399871328934332518584836717721437807064946989585525699831122433868;
    uint256 constant IC66y = 25993100262797403142837831679635111061317758823763763483518191463264302366;
    
    uint256 constant IC67x = 11884782066021132036265337760310624513937048293555498342122445298122787649256;
    uint256 constant IC67y = 16205495278229087412095736944875812716348130217779664542035511197407832511810;
    
    uint256 constant IC68x = 11095388493411257172747897302814635940722140365981070668363581047359385935299;
    uint256 constant IC68y = 19481120014952699049096847915641942452237266816054368773721866195960097022515;
    
    uint256 constant IC69x = 1308779327117739159383579261991741056263585925340858781020818588546331885049;
    uint256 constant IC69y = 17627070591189165961260314991347996867036577837906973042105322471410900922012;
    
    uint256 constant IC70x = 10366389277156702666926958749045456076530388523914481709480944203088372209399;
    uint256 constant IC70y = 4906496795605593367452996081821552107849768229988720307349056349867767907107;
    
    uint256 constant IC71x = 5682601593900223808605866794263492863487110611938050571234789818712597385184;
    uint256 constant IC71y = 3394097180535747698780880256175360929937938818025244193585444502650695202526;
    
    uint256 constant IC72x = 3300201008829739296303923671032830584356452289176809194078361438276150823841;
    uint256 constant IC72y = 3127579977679411538064154156189565287402001855332389568475056418488467233094;
    
    uint256 constant IC73x = 16991254606816089983257307637654710658429685933632796674049871388413482499833;
    uint256 constant IC73y = 14659870247339773900932547860036853713729345946401255804726395639698390409775;
    
    uint256 constant IC74x = 1183225928447191502297900760954384657018469074313246835224690357412002656449;
    uint256 constant IC74y = 13449675055571345416746330555921372125879139946555723893707708077466337828214;
    
    uint256 constant IC75x = 5893569538766187242572042344959016324334069179163216366105431030651478683230;
    uint256 constant IC75y = 8380919817482102101339757160831111719610023054451684045166818557418184005629;
    
 
    // Memory data
    uint16 constant pVk = 0;
    uint16 constant pPairing = 128;

    uint16 constant pLastMem = 896;

    function verifyProof(uint[2] calldata _pA, uint[2][2] calldata _pB, uint[2] calldata _pC, uint[75] calldata _pubSignals) public view returns (bool) {
        assembly {
            function checkField(v) {
                if iszero(lt(v, r)) {
                    mstore(0, 0)
                    return(0, 0x20)
                }
            }
            
            // G1 function to multiply a G1 value(x,y) to value in an address
            function g1_mulAccC(pR, x, y, s) {
                let success
                let mIn := mload(0x40)
                mstore(mIn, x)
                mstore(add(mIn, 32), y)
                mstore(add(mIn, 64), s)

                success := staticcall(sub(gas(), 2000), 7, mIn, 96, mIn, 64)

                if iszero(success) {
                    mstore(0, 0)
                    return(0, 0x20)
                }

                mstore(add(mIn, 64), mload(pR))
                mstore(add(mIn, 96), mload(add(pR, 32)))

                success := staticcall(sub(gas(), 2000), 6, mIn, 128, pR, 64)

                if iszero(success) {
                    mstore(0, 0)
                    return(0, 0x20)
                }
            }

            function checkPairing(pA, pB, pC, pubSignals, pMem) -> isOk {
                let _pPairing := add(pMem, pPairing)
                let _pVk := add(pMem, pVk)

                mstore(_pVk, IC0x)
                mstore(add(_pVk, 32), IC0y)

                // Compute the linear combination vk_x
                
                g1_mulAccC(_pVk, IC1x, IC1y, calldataload(add(pubSignals, 0)))
                
                g1_mulAccC(_pVk, IC2x, IC2y, calldataload(add(pubSignals, 32)))
                
                g1_mulAccC(_pVk, IC3x, IC3y, calldataload(add(pubSignals, 64)))
                
                g1_mulAccC(_pVk, IC4x, IC4y, calldataload(add(pubSignals, 96)))
                
                g1_mulAccC(_pVk, IC5x, IC5y, calldataload(add(pubSignals, 128)))
                
                g1_mulAccC(_pVk, IC6x, IC6y, calldataload(add(pubSignals, 160)))
                
                g1_mulAccC(_pVk, IC7x, IC7y, calldataload(add(pubSignals, 192)))
                
                g1_mulAccC(_pVk, IC8x, IC8y, calldataload(add(pubSignals, 224)))
                
                g1_mulAccC(_pVk, IC9x, IC9y, calldataload(add(pubSignals, 256)))
                
                g1_mulAccC(_pVk, IC10x, IC10y, calldataload(add(pubSignals, 288)))
                
                g1_mulAccC(_pVk, IC11x, IC11y, calldataload(add(pubSignals, 320)))
                
                g1_mulAccC(_pVk, IC12x, IC12y, calldataload(add(pubSignals, 352)))
                
                g1_mulAccC(_pVk, IC13x, IC13y, calldataload(add(pubSignals, 384)))
                
                g1_mulAccC(_pVk, IC14x, IC14y, calldataload(add(pubSignals, 416)))
                
                g1_mulAccC(_pVk, IC15x, IC15y, calldataload(add(pubSignals, 448)))
                
                g1_mulAccC(_pVk, IC16x, IC16y, calldataload(add(pubSignals, 480)))
                
                g1_mulAccC(_pVk, IC17x, IC17y, calldataload(add(pubSignals, 512)))
                
                g1_mulAccC(_pVk, IC18x, IC18y, calldataload(add(pubSignals, 544)))
                
                g1_mulAccC(_pVk, IC19x, IC19y, calldataload(add(pubSignals, 576)))
                
                g1_mulAccC(_pVk, IC20x, IC20y, calldataload(add(pubSignals, 608)))
                
                g1_mulAccC(_pVk, IC21x, IC21y, calldataload(add(pubSignals, 640)))
                
                g1_mulAccC(_pVk, IC22x, IC22y, calldataload(add(pubSignals, 672)))
                
                g1_mulAccC(_pVk, IC23x, IC23y, calldataload(add(pubSignals, 704)))
                
                g1_mulAccC(_pVk, IC24x, IC24y, calldataload(add(pubSignals, 736)))
                
                g1_mulAccC(_pVk, IC25x, IC25y, calldataload(add(pubSignals, 768)))
                
                g1_mulAccC(_pVk, IC26x, IC26y, calldataload(add(pubSignals, 800)))
                
                g1_mulAccC(_pVk, IC27x, IC27y, calldataload(add(pubSignals, 832)))
                
                g1_mulAccC(_pVk, IC28x, IC28y, calldataload(add(pubSignals, 864)))
                
                g1_mulAccC(_pVk, IC29x, IC29y, calldataload(add(pubSignals, 896)))
                
                g1_mulAccC(_pVk, IC30x, IC30y, calldataload(add(pubSignals, 928)))
                
                g1_mulAccC(_pVk, IC31x, IC31y, calldataload(add(pubSignals, 960)))
                
                g1_mulAccC(_pVk, IC32x, IC32y, calldataload(add(pubSignals, 992)))
                
                g1_mulAccC(_pVk, IC33x, IC33y, calldataload(add(pubSignals, 1024)))
                
                g1_mulAccC(_pVk, IC34x, IC34y, calldataload(add(pubSignals, 1056)))
                
                g1_mulAccC(_pVk, IC35x, IC35y, calldataload(add(pubSignals, 1088)))
                
                g1_mulAccC(_pVk, IC36x, IC36y, calldataload(add(pubSignals, 1120)))
                
                g1_mulAccC(_pVk, IC37x, IC37y, calldataload(add(pubSignals, 1152)))
                
                g1_mulAccC(_pVk, IC38x, IC38y, calldataload(add(pubSignals, 1184)))
                
                g1_mulAccC(_pVk, IC39x, IC39y, calldataload(add(pubSignals, 1216)))
                
                g1_mulAccC(_pVk, IC40x, IC40y, calldataload(add(pubSignals, 1248)))
                
                g1_mulAccC(_pVk, IC41x, IC41y, calldataload(add(pubSignals, 1280)))
                
                g1_mulAccC(_pVk, IC42x, IC42y, calldataload(add(pubSignals, 1312)))
                
                g1_mulAccC(_pVk, IC43x, IC43y, calldataload(add(pubSignals, 1344)))
                
                g1_mulAccC(_pVk, IC44x, IC44y, calldataload(add(pubSignals, 1376)))
                
                g1_mulAccC(_pVk, IC45x, IC45y, calldataload(add(pubSignals, 1408)))
                
                g1_mulAccC(_pVk, IC46x, IC46y, calldataload(add(pubSignals, 1440)))
                
                g1_mulAccC(_pVk, IC47x, IC47y, calldataload(add(pubSignals, 1472)))
                
                g1_mulAccC(_pVk, IC48x, IC48y, calldataload(add(pubSignals, 1504)))
                
                g1_mulAccC(_pVk, IC49x, IC49y, calldataload(add(pubSignals, 1536)))
                
                g1_mulAccC(_pVk, IC50x, IC50y, calldataload(add(pubSignals, 1568)))
                
                g1_mulAccC(_pVk, IC51x, IC51y, calldataload(add(pubSignals, 1600)))
                
                g1_mulAccC(_pVk, IC52x, IC52y, calldataload(add(pubSignals, 1632)))
                
                g1_mulAccC(_pVk, IC53x, IC53y, calldataload(add(pubSignals, 1664)))
                
                g1_mulAccC(_pVk, IC54x, IC54y, calldataload(add(pubSignals, 1696)))
                
                g1_mulAccC(_pVk, IC55x, IC55y, calldataload(add(pubSignals, 1728)))
                
                g1_mulAccC(_pVk, IC56x, IC56y, calldataload(add(pubSignals, 1760)))
                
                g1_mulAccC(_pVk, IC57x, IC57y, calldataload(add(pubSignals, 1792)))
                
                g1_mulAccC(_pVk, IC58x, IC58y, calldataload(add(pubSignals, 1824)))
                
                g1_mulAccC(_pVk, IC59x, IC59y, calldataload(add(pubSignals, 1856)))
                
                g1_mulAccC(_pVk, IC60x, IC60y, calldataload(add(pubSignals, 1888)))
                
                g1_mulAccC(_pVk, IC61x, IC61y, calldataload(add(pubSignals, 1920)))
                
                g1_mulAccC(_pVk, IC62x, IC62y, calldataload(add(pubSignals, 1952)))
                
                g1_mulAccC(_pVk, IC63x, IC63y, calldataload(add(pubSignals, 1984)))
                
                g1_mulAccC(_pVk, IC64x, IC64y, calldataload(add(pubSignals, 2016)))
                
                g1_mulAccC(_pVk, IC65x, IC65y, calldataload(add(pubSignals, 2048)))
                
                g1_mulAccC(_pVk, IC66x, IC66y, calldataload(add(pubSignals, 2080)))
                
                g1_mulAccC(_pVk, IC67x, IC67y, calldataload(add(pubSignals, 2112)))
                
                g1_mulAccC(_pVk, IC68x, IC68y, calldataload(add(pubSignals, 2144)))
                
                g1_mulAccC(_pVk, IC69x, IC69y, calldataload(add(pubSignals, 2176)))
                
                g1_mulAccC(_pVk, IC70x, IC70y, calldataload(add(pubSignals, 2208)))
                
                g1_mulAccC(_pVk, IC71x, IC71y, calldataload(add(pubSignals, 2240)))
                
                g1_mulAccC(_pVk, IC72x, IC72y, calldataload(add(pubSignals, 2272)))
                
                g1_mulAccC(_pVk, IC73x, IC73y, calldataload(add(pubSignals, 2304)))
                
                g1_mulAccC(_pVk, IC74x, IC74y, calldataload(add(pubSignals, 2336)))
                
                g1_mulAccC(_pVk, IC75x, IC75y, calldataload(add(pubSignals, 2368)))
                

                // -A
                mstore(_pPairing, calldataload(pA))
                mstore(add(_pPairing, 32), mod(sub(q, calldataload(add(pA, 32))), q))

                // B
                mstore(add(_pPairing, 64), calldataload(pB))
                mstore(add(_pPairing, 96), calldataload(add(pB, 32)))
                mstore(add(_pPairing, 128), calldataload(add(pB, 64)))
                mstore(add(_pPairing, 160), calldataload(add(pB, 96)))

                // alpha1
                mstore(add(_pPairing, 192), alphax)
                mstore(add(_pPairing, 224), alphay)

                // beta2
                mstore(add(_pPairing, 256), betax1)
                mstore(add(_pPairing, 288), betax2)
                mstore(add(_pPairing, 320), betay1)
                mstore(add(_pPairing, 352), betay2)

                // vk_x
                mstore(add(_pPairing, 384), mload(add(pMem, pVk)))
                mstore(add(_pPairing, 416), mload(add(pMem, add(pVk, 32))))


                // gamma2
                mstore(add(_pPairing, 448), gammax1)
                mstore(add(_pPairing, 480), gammax2)
                mstore(add(_pPairing, 512), gammay1)
                mstore(add(_pPairing, 544), gammay2)

                // C
                mstore(add(_pPairing, 576), calldataload(pC))
                mstore(add(_pPairing, 608), calldataload(add(pC, 32)))

                // delta2
                mstore(add(_pPairing, 640), deltax1)
                mstore(add(_pPairing, 672), deltax2)
                mstore(add(_pPairing, 704), deltay1)
                mstore(add(_pPairing, 736), deltay2)


                let success := staticcall(sub(gas(), 2000), 8, _pPairing, 768, _pPairing, 0x20)

                isOk := and(success, mload(_pPairing))
            }

            let pMem := mload(0x40)
            mstore(0x40, add(pMem, pLastMem))

            // Validate that all evaluations ∈ F
            
            checkField(calldataload(add(_pubSignals, 0)))
            
            checkField(calldataload(add(_pubSignals, 32)))
            
            checkField(calldataload(add(_pubSignals, 64)))
            
            checkField(calldataload(add(_pubSignals, 96)))
            
            checkField(calldataload(add(_pubSignals, 128)))
            
            checkField(calldataload(add(_pubSignals, 160)))
            
            checkField(calldataload(add(_pubSignals, 192)))
            
            checkField(calldataload(add(_pubSignals, 224)))
            
            checkField(calldataload(add(_pubSignals, 256)))
            
            checkField(calldataload(add(_pubSignals, 288)))
            
            checkField(calldataload(add(_pubSignals, 320)))
            
            checkField(calldataload(add(_pubSignals, 352)))
            
            checkField(calldataload(add(_pubSignals, 384)))
            
            checkField(calldataload(add(_pubSignals, 416)))
            
            checkField(calldataload(add(_pubSignals, 448)))
            
            checkField(calldataload(add(_pubSignals, 480)))
            
            checkField(calldataload(add(_pubSignals, 512)))
            
            checkField(calldataload(add(_pubSignals, 544)))
            
            checkField(calldataload(add(_pubSignals, 576)))
            
            checkField(calldataload(add(_pubSignals, 608)))
            
            checkField(calldataload(add(_pubSignals, 640)))
            
            checkField(calldataload(add(_pubSignals, 672)))
            
            checkField(calldataload(add(_pubSignals, 704)))
            
            checkField(calldataload(add(_pubSignals, 736)))
            
            checkField(calldataload(add(_pubSignals, 768)))
            
            checkField(calldataload(add(_pubSignals, 800)))
            
            checkField(calldataload(add(_pubSignals, 832)))
            
            checkField(calldataload(add(_pubSignals, 864)))
            
            checkField(calldataload(add(_pubSignals, 896)))
            
            checkField(calldataload(add(_pubSignals, 928)))
            
            checkField(calldataload(add(_pubSignals, 960)))
            
            checkField(calldataload(add(_pubSignals, 992)))
            
            checkField(calldataload(add(_pubSignals, 1024)))
            
            checkField(calldataload(add(_pubSignals, 1056)))
            
            checkField(calldataload(add(_pubSignals, 1088)))
            
            checkField(calldataload(add(_pubSignals, 1120)))
            
            checkField(calldataload(add(_pubSignals, 1152)))
            
            checkField(calldataload(add(_pubSignals, 1184)))
            
            checkField(calldataload(add(_pubSignals, 1216)))
            
            checkField(calldataload(add(_pubSignals, 1248)))
            
            checkField(calldataload(add(_pubSignals, 1280)))
            
            checkField(calldataload(add(_pubSignals, 1312)))
            
            checkField(calldataload(add(_pubSignals, 1344)))
            
            checkField(calldataload(add(_pubSignals, 1376)))
            
            checkField(calldataload(add(_pubSignals, 1408)))
            
            checkField(calldataload(add(_pubSignals, 1440)))
            
            checkField(calldataload(add(_pubSignals, 1472)))
            
            checkField(calldataload(add(_pubSignals, 1504)))
            
            checkField(calldataload(add(_pubSignals, 1536)))
            
            checkField(calldataload(add(_pubSignals, 1568)))
            
            checkField(calldataload(add(_pubSignals, 1600)))
            
            checkField(calldataload(add(_pubSignals, 1632)))
            
            checkField(calldataload(add(_pubSignals, 1664)))
            
            checkField(calldataload(add(_pubSignals, 1696)))
            
            checkField(calldataload(add(_pubSignals, 1728)))
            
            checkField(calldataload(add(_pubSignals, 1760)))
            
            checkField(calldataload(add(_pubSignals, 1792)))
            
            checkField(calldataload(add(_pubSignals, 1824)))
            
            checkField(calldataload(add(_pubSignals, 1856)))
            
            checkField(calldataload(add(_pubSignals, 1888)))
            
            checkField(calldataload(add(_pubSignals, 1920)))
            
            checkField(calldataload(add(_pubSignals, 1952)))
            
            checkField(calldataload(add(_pubSignals, 1984)))
            
            checkField(calldataload(add(_pubSignals, 2016)))
            
            checkField(calldataload(add(_pubSignals, 2048)))
            
            checkField(calldataload(add(_pubSignals, 2080)))
            
            checkField(calldataload(add(_pubSignals, 2112)))
            
            checkField(calldataload(add(_pubSignals, 2144)))
            
            checkField(calldataload(add(_pubSignals, 2176)))
            
            checkField(calldataload(add(_pubSignals, 2208)))
            
            checkField(calldataload(add(_pubSignals, 2240)))
            
            checkField(calldataload(add(_pubSignals, 2272)))
            
            checkField(calldataload(add(_pubSignals, 2304)))
            
            checkField(calldataload(add(_pubSignals, 2336)))
            
            checkField(calldataload(add(_pubSignals, 2368)))
            

            // Validate all evaluations
            let isValid := checkPairing(_pA, _pB, _pC, _pubSignals, pMem)

            mstore(0, isValid)
             return(0, 0x20)
         }
     }
 }
