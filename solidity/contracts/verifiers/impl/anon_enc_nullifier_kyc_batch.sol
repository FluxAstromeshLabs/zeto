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
    uint256 constant deltax1 = 7147324977537168308739656634432035274200557255436146576953171800441775816673;
    uint256 constant deltax2 = 11514313707095689612111627273522670619340497788307717904677227709701300575481;
    uint256 constant deltay1 = 11838827207221095019568609258343622377394421817132052805996439899690754495604;
    uint256 constant deltay2 = 18250217886779874940267944089163122484321507071830335585439978475539838240885;

    
    uint256 constant IC0x = 1556311802881032445585892419174986262012087378351456522716951695792578034733;
    uint256 constant IC0y = 5253605575978935243879516988899615531090909024043714238314596148763401387403;
    
    uint256 constant IC1x = 1068190488357096401587793239036676493063585873209868125580424887136031725982;
    uint256 constant IC1y = 16069595037988269031516748649127127036225254310502024343635433844738724745367;
    
    uint256 constant IC2x = 13456111517240335230592175136243941004538673234192736560109745549707999263966;
    uint256 constant IC2y = 10985379300314877331386696419153045762600559425928760129769005863462770279686;
    
    uint256 constant IC3x = 6401865991982064564508869428090462392702371492292120459464938228996010835888;
    uint256 constant IC3y = 19532403302291998549203684317842459778285090012666663119913714032080256606206;
    
    uint256 constant IC4x = 19922475225678430467760443344885794389508685645389411679053102268198607462294;
    uint256 constant IC4y = 8943577485874160447744830895726117637075595246735438041025799371253430153748;
    
    uint256 constant IC5x = 21743024433216162993398654177515385410696141871351201674561330642085288592173;
    uint256 constant IC5y = 4075548360181956415984553017320039599021101953630371219307186634532388218335;
    
    uint256 constant IC6x = 3158940026981439150760750843452273634520133099190750675142892662890390645275;
    uint256 constant IC6y = 4101136230153157472863600034557544619065777428677215964372845262388215288534;
    
    uint256 constant IC7x = 8345251187115564084957549249262921696896640110689955765843895169487933106964;
    uint256 constant IC7y = 17346497881682556692237286708707079363286820173336324346861109608933148145051;
    
    uint256 constant IC8x = 11193986841038521344305844964010021984544337108039862750167732199958076882891;
    uint256 constant IC8y = 20031428459512274711585648123762451134826904095753395443599158835652259839510;
    
    uint256 constant IC9x = 710306260113922474624625775827840357923518768179857695636114131251879586208;
    uint256 constant IC9y = 14043086930715834673824381025186345977110837359703935254799804438877433890634;
    
    uint256 constant IC10x = 4391278701146313296407604480860397243887746924845128402104585152054231748230;
    uint256 constant IC10y = 20955273505702013594892841959844787983153269590551003958155150030432679604450;
    
    uint256 constant IC11x = 5408136735842760133077652431836084278935700983974237554388676395029873630426;
    uint256 constant IC11y = 17250050718866751083338924493614738094098596702039031614643399151802139417487;
    
    uint256 constant IC12x = 21044441225302304606295347238460070772136318235765024828834128720244170386800;
    uint256 constant IC12y = 5592280638480079388795131018708938276778184771529831323197826548738774722666;
    
    uint256 constant IC13x = 13632141658207632635086291238228166874444010483748556835633709473923595256630;
    uint256 constant IC13y = 11904112592571897116987112202896339023826651596730499450468965844139604888762;
    
    uint256 constant IC14x = 20877791770536460450310743726141756845526108847773959461774938434076896453277;
    uint256 constant IC14y = 16523737174427653348249329649939460373751792433477781583225515742092862602786;
    
    uint256 constant IC15x = 17689631107750845460789994098253442747172204210715478036428794118876669714483;
    uint256 constant IC15y = 8544351731753848061593742068573248128811473999182487604394376128621134099161;
    
    uint256 constant IC16x = 20611125310036733738055876452289134601005703965433344732357001080677555091493;
    uint256 constant IC16y = 11449969192012154527817111174481875798555936100132916249982381391387076931950;
    
    uint256 constant IC17x = 16232582548241859798764181060386951537319628176132482819056396925642803691951;
    uint256 constant IC17y = 14600908518064154453761085879027517221508826071094895269719057420483291117782;
    
    uint256 constant IC18x = 6267215409530279231975166222771536589405274705282036118642342965102855592520;
    uint256 constant IC18y = 10570497586836100055464978901355752890163986046113457411174494855456327842564;
    
    uint256 constant IC19x = 3786865173609788612685821374605893448339480814835207111963468417056130741455;
    uint256 constant IC19y = 535309414827523057028673992482695713217610317586510620518916030997226584112;
    
    uint256 constant IC20x = 13220992796293568361374306281121492172517047003036453632436944862663420287240;
    uint256 constant IC20y = 18387074415540770748324382488149811952928455755521409432668468594676166654595;
    
    uint256 constant IC21x = 12998640293371234540760868230837022062404885643701823950958493791540609849918;
    uint256 constant IC21y = 7892138395103861692207310369060891447730510891719015157546062798938872796815;
    
    uint256 constant IC22x = 11100509654481037929224441622198677025629705593329202327157184581709397778911;
    uint256 constant IC22y = 3260906995710789656140097942013914483094581614691780771653618402839335599368;
    
    uint256 constant IC23x = 14395558503194785114671968203283706704381021145700714731358382704944979479484;
    uint256 constant IC23y = 9125965708883158624484376582869874267230495316918293580739973714120792028820;
    
    uint256 constant IC24x = 20946972458096554430528641006728655148535974037548854497598376033675236147272;
    uint256 constant IC24y = 4535002037983139312016410569917561551227862820742029478642675291536814564735;
    
    uint256 constant IC25x = 5804611373850868925010470870521149994340110449108003931802383328689163296082;
    uint256 constant IC25y = 17485632994917013468836954040672966904134530510323738267160344821132576173365;
    
    uint256 constant IC26x = 20648549339179611181407330465001517603544076716119968562698503598599806321661;
    uint256 constant IC26y = 7790327596932033315819940503173083076788187206852766411156117243211043021708;
    
    uint256 constant IC27x = 13204077343804296928519067770347204416337804651675001538059580448524556409170;
    uint256 constant IC27y = 2854126070931739914835675929176948348266192946635321872738537035386073524707;
    
    uint256 constant IC28x = 1545710922966029075604986329038289721575237325731451846968042429686460424746;
    uint256 constant IC28y = 4492692882361815985263228802757583767936470831154829988670215526486054400628;
    
    uint256 constant IC29x = 15392779132359021245828232106950693210021738685207058633660963714815225370294;
    uint256 constant IC29y = 14061907978116174775323811902037787184556848604991711814413067953309833308178;
    
    uint256 constant IC30x = 14938890349780597141113482162223787992397757221203556044744240312692135993173;
    uint256 constant IC30y = 13157488052857567983194361248817085512383167780896701881746844183062149572959;
    
    uint256 constant IC31x = 1478606056617263654168485358859737733898365964548340225613389343669313531872;
    uint256 constant IC31y = 4129952179594716746365351035863470937656637804248999548014590691874708563923;
    
    uint256 constant IC32x = 18492913479156882443337244184421591648979508147387737566893642804128034154039;
    uint256 constant IC32y = 19596990523166679230127910564228768919697754610637172806706167947471822635829;
    
    uint256 constant IC33x = 18155905545294790672324947637295519493830394164197662146840343482048899294851;
    uint256 constant IC33y = 2513878299088602313668070140184782761809024281808916233575882544090466729000;
    
    uint256 constant IC34x = 17527635038335957833657504966132862641466039188312004037368765057771843960421;
    uint256 constant IC34y = 2715639785226430236927493450330006027596804611842866812783696388427338458860;
    
    uint256 constant IC35x = 19855463280861192451121273358140064047380332595217977167594503830619642588771;
    uint256 constant IC35y = 7699291107532539543582973175381661602922011229908863999842060139426989687957;
    
    uint256 constant IC36x = 394299513900209234947270291889863703435275259118196652518817781911433255103;
    uint256 constant IC36y = 9333858054800915986419706002626587133977303683080103624395000700167876164590;
    
    uint256 constant IC37x = 18523529408937335121316915306463492408718419472697826249931521283764837641626;
    uint256 constant IC37y = 8264099023527569287156730014322731709621389139765286595123702977856759962270;
    
    uint256 constant IC38x = 17590949948849843746006314420134502247123896988312618943049900513306109112865;
    uint256 constant IC38y = 7919643091740406487205609296724793482227299895631057401652169628549416674363;
    
    uint256 constant IC39x = 17822232345412903476513950284463225057931652621677735045529305140075638797429;
    uint256 constant IC39y = 15579325985492735065481402583228943998905674857891934197647120807672655151311;
    
    uint256 constant IC40x = 20596584556258941946616103763739395679988500437176414405482775361457314896988;
    uint256 constant IC40y = 628167373026448308017507978647751488143170721184837702638158592764993357390;
    
    uint256 constant IC41x = 5072412317120969744122881278069576856155704601116176536913143070169699467369;
    uint256 constant IC41y = 15235178466164439423712438795809777510541547122184589561993938439776348414145;
    
    uint256 constant IC42x = 13644152486340911424807264493506588337826675865215484009267371353795126659526;
    uint256 constant IC42y = 984008643173712516530374186568309935432729974826633942744892737272530922399;
    
    uint256 constant IC43x = 15963968185639309650404729824351179827306350942629923245371869755617934477483;
    uint256 constant IC43y = 6059207665067991028547774429742765777291889286396184764701673669101768477388;
    
    uint256 constant IC44x = 8608654594998347507998228068204105405249642294359742193986038389334699815270;
    uint256 constant IC44y = 4586713335658473947061859219460027878533817880723024242902390477409191459009;
    
    uint256 constant IC45x = 13330689582101358099087299652969654242088046086909734250503003238597916808719;
    uint256 constant IC45y = 10922065575823208034198714290383630328847234182612025492728434714461277718836;
    
    uint256 constant IC46x = 21869288090461424391910682852348814308021902465037990344229464088244601522660;
    uint256 constant IC46y = 20681172893746056584481380767795937842264171952751005189601960242664770307466;
    
    uint256 constant IC47x = 10167350586776526293065737352345331410704731494469772240057173109760334644359;
    uint256 constant IC47y = 5739590706254104713727336405537569240996706819906768570445517281094859008648;
    
    uint256 constant IC48x = 9973874182443326549678859113677184248726341698957984301474750493145884405732;
    uint256 constant IC48y = 7133830118728294451856779068832577442127929423451872328907996154190726873876;
    
    uint256 constant IC49x = 20046437210069148149103920664380286950420782499900823089211764173121577956947;
    uint256 constant IC49y = 2193714434304647595810588229406647484820908242135902172441302631310315715393;
    
    uint256 constant IC50x = 14628102445552118108442922986038802515856180924401229861290395136317051981171;
    uint256 constant IC50y = 8557598992470798087281992374477171361400333930250011830827436820999377827897;
    
    uint256 constant IC51x = 8013514518491784230368017201064489144165757231416800610506058774344460921402;
    uint256 constant IC51y = 6940037633685401486634685151457322404810569244635376728600028692787110729552;
    
    uint256 constant IC52x = 17042987297610999855676785381672877221386892221143255919004562515109495923987;
    uint256 constant IC52y = 8030477062997098841356507943351182425454365940720047963081257434539130453394;
    
    uint256 constant IC53x = 16691873231371670233035911154688861547394762113234621989444438869555813130824;
    uint256 constant IC53y = 5847746930784503464196936811456969564046966204476001174312665831528045521934;
    
    uint256 constant IC54x = 15844856007790162864291544114655639558734346021853622979230145077529344157428;
    uint256 constant IC54y = 6790260839006025326845683140251769540384601011659488207136086959602772346613;
    
    uint256 constant IC55x = 21619955725049771418653101693050342752879916440531378041825272018620976696752;
    uint256 constant IC55y = 14941664639953631451290545884861340861512166236805055489613344066957195958206;
    
    uint256 constant IC56x = 2058139766985994018069962077088606493535355148267085370341246779146773322541;
    uint256 constant IC56y = 5828001944509484489229913721521747808174885290851321725534869335545294060194;
    
    uint256 constant IC57x = 17989593531665429866331164701693413536033233437374764718463259559679811501522;
    uint256 constant IC57y = 14862946748568333324440151009010680344941074119564672187741712005290085049519;
    
    uint256 constant IC58x = 11667846268543178067081507802818016015033599848888439019786545017997671415497;
    uint256 constant IC58y = 6346728211876301228378797733209042989316610399466893043163340694030201948641;
    
    uint256 constant IC59x = 14139629831182906671247410021693414623607971452157058481697329168110093775767;
    uint256 constant IC59y = 13613964801584465472096867062223899306923633831725441769723994049853410951575;
    
    uint256 constant IC60x = 17251314177139783106748368759041685050161994999180226034311916098681870001441;
    uint256 constant IC60y = 2107476126322071298399285431492598297734141421476937955907314716567433545834;
    
    uint256 constant IC61x = 20999115492710535213405073956866667129195741601272055449456346448839297655853;
    uint256 constant IC61y = 19487603707790170606351461287691856032458604136694252130284583253985076784085;
    
    uint256 constant IC62x = 5821437369152382406136328237019753100157371256632001549527723830290993537929;
    uint256 constant IC62y = 7282992261240539664809890459995184032481984634413541684488592075082806598111;
    
    uint256 constant IC63x = 12726161415328957959832581473593935697379265362929335752629995610255927071516;
    uint256 constant IC63y = 19585897902388832409567888359366286229880222476431650831754646452937022041596;
    
    uint256 constant IC64x = 10902096533602593049190619800422955499964155611515773034916366470169080427783;
    uint256 constant IC64y = 11647180716555810848959991022924624780350513481288196531931771621982343620837;
    
    uint256 constant IC65x = 7637503299576962881181753449247812682963677118919120355515112576880459487173;
    uint256 constant IC65y = 9096589728462501753330341664984779927191673326048483840159582261578354624602;
    
    uint256 constant IC66x = 754747661863361428714786003847412860464151047708452054408079473522284008180;
    uint256 constant IC66y = 892606790500525772989155649675170712043007431004030223157806048865908715537;
    
    uint256 constant IC67x = 13183175025374275284673193231788638569126245963088040319401024614356879251389;
    uint256 constant IC67y = 10029942116754811037113546669061357641751989235115094738777653184070754515821;
    
    uint256 constant IC68x = 4427936875363415833823690991191221325433942584015885928566266779038812783903;
    uint256 constant IC68y = 2248434220084683271042620431008479057076934936403757194114657098153359258023;
    
    uint256 constant IC69x = 15678650429842442814590680445322653329862123621082498996726763324410872964751;
    uint256 constant IC69y = 2208024831099149906478532590483193533306624213506769140300586129456469483738;
    
    uint256 constant IC70x = 17884314126896046100455712488358950087061342655667285396189735408403927962732;
    uint256 constant IC70y = 15835268573787320274039325916530826739631902232955330815019066172434805669939;
    
    uint256 constant IC71x = 13108939148165902883672426039435014631866864863553629629135270448594742512574;
    uint256 constant IC71y = 18145698886351705289368286691459243164261327621621519475575669573874212019102;
    
    uint256 constant IC72x = 2365773979690267537024313308714243823825798528507921763090415550287775084288;
    uint256 constant IC72y = 802536981392795112944665369120172273514727763194494671266348156829338572204;
    
    uint256 constant IC73x = 248844772132149895489772644004726107057645180288041170742433265144866395971;
    uint256 constant IC73y = 15232768989905983243963474450551680328815075574203357081557266944809432008948;
    
    uint256 constant IC74x = 8384547908337892617346372021237960943195030240628241209057974937541074173364;
    uint256 constant IC74y = 8393111886225132299711361575918212785224253520236712062691465689439591474606;
    
    uint256 constant IC75x = 10941854953100480629177193295092880582392164671023145264702197158243261223366;
    uint256 constant IC75y = 18322462983107929926179912853273160168830121834963046979429721395063795254517;
    
 
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
