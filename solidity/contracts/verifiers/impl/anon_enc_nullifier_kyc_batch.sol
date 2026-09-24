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
    uint256 constant deltax1 = 11559732032986387107991004021392285783925812861821192530917403151452391805634;
    uint256 constant deltax2 = 10857046999023057135944570762232829481370756359578518086990519993285655852781;
    uint256 constant deltay1 = 4082367875863433681332203403145435568316851327593401208105741076214120093531;
    uint256 constant deltay2 = 8495653923123431417604973247489272438418190587263600148770280649306958101930;

    
    uint256 constant IC0x = 4894853773251203442579653544018038601259813282453603147178907327758652624173;
    uint256 constant IC0y = 1403694520598444364029036431275212373509830889440154920999502622134831639058;
    
    uint256 constant IC1x = 5416657235583625241136228390860986131522403539719650811108239825305942457836;
    uint256 constant IC1y = 109337465041028186958435496431445680747909470916565805445933900422581410093;
    
    uint256 constant IC2x = 6368698757532638793632629536409591532301447577120779496122128772689045591371;
    uint256 constant IC2y = 6808845607332182946547055225101196865648976184684099067968429152327499127826;
    
    uint256 constant IC3x = 19928655041221611610435633025859004155324566041959022880878572757023872885354;
    uint256 constant IC3y = 16885239811336192796665820242086396468014195527623695014555412638078086365284;
    
    uint256 constant IC4x = 18317560033355801199276246311444234324769969681671575009710982489563759783447;
    uint256 constant IC4y = 8443420820812395698945302092742618706928876697485891399450352989762383281974;
    
    uint256 constant IC5x = 9589597443597728255975530318256171123670310781298395371235785201221082368794;
    uint256 constant IC5y = 17487870232143646572050362747235934311835406029459864162422126848250497906417;
    
    uint256 constant IC6x = 14530596739455401440573530982846818009306948931845849882141439033465092867308;
    uint256 constant IC6y = 14789919478693595982035161872700471876168104587089732671475936970923584817756;
    
    uint256 constant IC7x = 12869677619022829471854883608325027750130004682583322943696392802395050431351;
    uint256 constant IC7y = 12175202348200385893194583689602641773227925052923097851147558372998550296217;
    
    uint256 constant IC8x = 4033782661701100633922343523847668956011222316682421130747167472740985103880;
    uint256 constant IC8y = 8777446876201524130846346538803525916859077130535192433171253621319173978190;
    
    uint256 constant IC9x = 18836027068386637488146265293338332025918247342908574407704839967202069712395;
    uint256 constant IC9y = 3510904279154326406465480998676094168230037779505456681084593370649204177446;
    
    uint256 constant IC10x = 11075901518150528897480780728277005544114688843610877998397165417089248319665;
    uint256 constant IC10y = 17875222740625039662994940756636562593247893678345044247155574572673461722342;
    
    uint256 constant IC11x = 4865417473473450261591959825198871317506320157876916973342196741102485388534;
    uint256 constant IC11y = 10669220755866730537568692780334516483745772479785781564157120498947357742884;
    
    uint256 constant IC12x = 9785415635692127316685060398412036924670376851918306281396524249224113193102;
    uint256 constant IC12y = 15703176927516853907914819791992771158964404263027663949474544719628703933632;
    
    uint256 constant IC13x = 15549706621454183252294038583145758666268805873348252214521213829565908271795;
    uint256 constant IC13y = 21330940734646605924937003673939599562042809687074254894902761899284542725224;
    
    uint256 constant IC14x = 8480279145349625053619169845765937819708948812656971418696508787965085842185;
    uint256 constant IC14y = 16635251163041852162286253917531587406379447522343263215527351678812307434527;
    
    uint256 constant IC15x = 13571916519586949910828380666892765345740344437372852574827429008102678386861;
    uint256 constant IC15y = 9321093164803517099248602816261357266363662996885586849947483390288504747875;
    
    uint256 constant IC16x = 14683252848344211710528368733070925642233009263675030885229824018102391775695;
    uint256 constant IC16y = 18443380116996187441226038113560686481255696544899779888508634993016034144360;
    
    uint256 constant IC17x = 12077921357332833954318095879751456261596958162671333358723806262187873992831;
    uint256 constant IC17y = 17024122333872966583853229906073880151735477437821628645770427595717367385443;
    
    uint256 constant IC18x = 12158537206989171965876690150474060537056124024349660546343316268280031856074;
    uint256 constant IC18y = 247506004658339515602735450997174958430219944731978692520144580887527934023;
    
    uint256 constant IC19x = 11157753046193638000143385319839595015543425953180284245194345712481570884395;
    uint256 constant IC19y = 5937955827525727560845507668466661804659365200697666231245844233162728694662;
    
    uint256 constant IC20x = 4968839119864420387002242303438945716619844635591353120234098439345402857039;
    uint256 constant IC20y = 21009877075924415126348426133859297008391067636838606473128432013943830348647;
    
    uint256 constant IC21x = 2051672576876456516690671312967736574308291701841649892341217667403827267277;
    uint256 constant IC21y = 7624247179232741045376618119322796866860753694594233046289975316304723787714;
    
    uint256 constant IC22x = 4448249625799859703887015239778718614719423738585050461824930556645409112848;
    uint256 constant IC22y = 3068236677912513827249750557446599674379224511721417588609542968830198514964;
    
    uint256 constant IC23x = 4809497186867363793054688109563858928897120020274660852811740688737197065714;
    uint256 constant IC23y = 19728815759205662691938088007596942104707915823669274962912365332266337672355;
    
    uint256 constant IC24x = 7961725520844418670396170300780130967397615673555792718673688505632402042316;
    uint256 constant IC24y = 21735050018584012358864917098901286156243022332212847093952184029656961349155;
    
    uint256 constant IC25x = 2246200852303681660458479277928367351822525119466650113198983175921817762764;
    uint256 constant IC25y = 2442791736283556754769226642462283304709847841979347585950904689172130731431;
    
    uint256 constant IC26x = 15536075105775537949583880736583295839828683795306426780891662044820993847575;
    uint256 constant IC26y = 1643068591733179477992579113307635248100916897761611401080154436997782852573;
    
    uint256 constant IC27x = 9866681831385601473050595123742415044985172064163667016813717914114578449610;
    uint256 constant IC27y = 16577102649810265629589550651831998707214699978404417090017282548991337419727;
    
    uint256 constant IC28x = 16702436200643914667083389614322373998453349462460038023796207037940616521343;
    uint256 constant IC28y = 3755494165438545293113098849081007574892517864010624071347277934614576420076;
    
    uint256 constant IC29x = 2112353805253984701679065999738300166464245695508775567909468198770764079336;
    uint256 constant IC29y = 11254743585925909123780240294019951982558799802116576414683723760237333518531;
    
    uint256 constant IC30x = 3806185029271475610548231644139085332376318483696931791847403005574308047767;
    uint256 constant IC30y = 9355481787327567909508152534939159406858178716735997847370407418952416771219;
    
    uint256 constant IC31x = 9158387750070009639902663724201767945716530042735096817477745961473382572849;
    uint256 constant IC31y = 18991381772587394699145063371956395244828671007134540617041687243010521146256;
    
    uint256 constant IC32x = 12781394265424733097835209607440534176404555428918430890872941095965242699796;
    uint256 constant IC32y = 20953642912320450639238224664285296338506117230993928741135137415018233464781;
    
    uint256 constant IC33x = 2001355798949588236613996783238592665221798054610087405614227641485428919443;
    uint256 constant IC33y = 12433353974815947866334304632116590986775318428221641812441319537280423174128;
    
    uint256 constant IC34x = 10034598917804756994180276539579129773797805429334677051706277908547571373192;
    uint256 constant IC34y = 18737284786753790393458860550543131977904456350233044630651782464574340050895;
    
    uint256 constant IC35x = 622334727727084759408963117872685069146514889019399396077177691775961497666;
    uint256 constant IC35y = 11771532510556668212341223545276502634122443051711136791911819888247691652011;
    
    uint256 constant IC36x = 14950869046813893237549007897784280736178508782846797154788122680068706104922;
    uint256 constant IC36y = 7463997882984470381074566292259031717819208116734556371902628157333525122457;
    
    uint256 constant IC37x = 2624797300931487176941531473917297262831041116939674455034410445659079461036;
    uint256 constant IC37y = 13273853211683901515805571789986831889622318641660891017887385979696108501699;
    
    uint256 constant IC38x = 12353210673288369062861175621853844329096313565618433460779769755922853327186;
    uint256 constant IC38y = 21420104761366906416792655290457004411545138241083751767531460023688393223614;
    
    uint256 constant IC39x = 17805415344620033642999633461720271898782879705412408280965888668332026573028;
    uint256 constant IC39y = 490398149798324790614892248555569544648906565865880473347553664268911003545;
    
    uint256 constant IC40x = 6095416079620474856632341571873296505590568672364222329646190962803965242839;
    uint256 constant IC40y = 13510095267116739704877322501816091725621074804401308516036147958677859362789;
    
    uint256 constant IC41x = 6312810924822971647830003169161973352586665071133128619623581059777639810702;
    uint256 constant IC41y = 6208085976427959636021620878831229055952753431932514149100100236538039878452;
    
    uint256 constant IC42x = 70527702852550464013965321610393456069284414681540804863808854769639320664;
    uint256 constant IC42y = 13678458139115864206135952829230867987673536625707995161471496993617111805706;
    
    uint256 constant IC43x = 8787850151627511680744401331631318415030966454085843536262472930766041146116;
    uint256 constant IC43y = 4924230229345701570079598842030303634896395601960480598765370198086834782066;
    
    uint256 constant IC44x = 18402031271339669004661084842020601305197707936100850898774679944858965109128;
    uint256 constant IC44y = 1446594098726092237389603417452643239230101598380972000921945711322291474778;
    
    uint256 constant IC45x = 20592902877154216979380572622030493703083458637613881335221030326246136166134;
    uint256 constant IC45y = 21352439291199114639579326166615480356683848428672583131469558970488037008052;
    
    uint256 constant IC46x = 664037873812304109818356610004833435457727570357953157997862194204402640435;
    uint256 constant IC46y = 14325582832631203868423322578433512929623541153854807469312602445750269029096;
    
    uint256 constant IC47x = 7191358615503295116107355032519125547931584628441156576185708940602209568136;
    uint256 constant IC47y = 15029934144107892685416166055343294811011258012316469433213230967886269798479;
    
    uint256 constant IC48x = 8295197460194926601936758107884080888184114491911933935377097438268450916792;
    uint256 constant IC48y = 11704864623550084088494067636515932415978155438763703256294539142840607700280;
    
    uint256 constant IC49x = 20831894463899755612502949011733076809001939866956493904072583895808665697216;
    uint256 constant IC49y = 14898861980591327556653053388264946434528755047483884714694213623235241828548;
    
    uint256 constant IC50x = 19354090641925686770314209584642204778125542822961801873453595353478398682407;
    uint256 constant IC50y = 20777262478164288997340291562209591458766554525509197566017119451824794350757;
    
    uint256 constant IC51x = 15303621734957346887920268186714654929435319248257756589866835122645910768806;
    uint256 constant IC51y = 7583095570915010191244077378144656871513072622894985065675581093358498441547;
    
    uint256 constant IC52x = 2149998826935545582713048906374245525137506347671522687538751510860517699534;
    uint256 constant IC52y = 20868872156433691595246968333128720589242217815290244546479539334155490297279;
    
    uint256 constant IC53x = 8077869448833834737503438570176930135785139810878692342124057900742718154614;
    uint256 constant IC53y = 10488740781296743783176680430991623595727802486107318596640163847625555259885;
    
    uint256 constant IC54x = 14766915851365177963207994830640873126417241515412636847673952622213900982197;
    uint256 constant IC54y = 3508725755848338877014630712964212681724135171279574707037115568605036847992;
    
    uint256 constant IC55x = 14818078109234577044570905619516316119766201280243003912449567729784850843579;
    uint256 constant IC55y = 13931687190501146833689967811898461708703490030820694034387882669967816928645;
    
    uint256 constant IC56x = 13590793185100217362328314082423558011334060935643951057353858843442293657284;
    uint256 constant IC56y = 13817359812690973257858561399799996707829861504765037328836681912610218459318;
    
    uint256 constant IC57x = 9957327856344345594122915383070390177197382555783666753364084164595716814101;
    uint256 constant IC57y = 4950648100756466424123850574089141689740780988855383033442832283786961714104;
    
    uint256 constant IC58x = 10524964988162085594921683972074284247932458669191827684954209573826438424001;
    uint256 constant IC58y = 6668903120239498891417451708915794205615740403514801960091941501613075290571;
    
    uint256 constant IC59x = 20908322814845533891482821537214451214157044859395275749976264637552448070725;
    uint256 constant IC59y = 14985616750725612318777467893302747752772425883745744578373973155431463404954;
    
    uint256 constant IC60x = 11182377778774777330193217952257176329338773859475611721232501646457351475501;
    uint256 constant IC60y = 13893830368675818956742223954016039503259577390432535635544463007502065209034;
    
    uint256 constant IC61x = 12510142647692955438293210144477739703543686179321221323348499061504628287426;
    uint256 constant IC61y = 14042794298708310232878671215728460995341633424177005732321692989970291450767;
    
    uint256 constant IC62x = 10528538147418387513674478985808639053856403878729970786039842464505162911533;
    uint256 constant IC62y = 2409553938367998016659963934507395913957737975420227563470788348084463475363;
    
    uint256 constant IC63x = 10270305634686742465150925655807701578662336869720495304680370412739255068547;
    uint256 constant IC63y = 5734193457374211389551253031146432265849055849551760007359471989383094685564;
    
    uint256 constant IC64x = 20110119165993850750201601771366641763962021992299510613753473297920557818034;
    uint256 constant IC64y = 10106574360584048922749846433294356153780210470505977874219377326840772019867;
    
    uint256 constant IC65x = 1718856677354948825490084060319419439444554120869847466836974857695664515073;
    uint256 constant IC65y = 17635306505471079917618418600634096496684197275158010777330936558592800920114;
    
    uint256 constant IC66x = 16132798191992797746005270747066959181126024524175657836167254491357523097542;
    uint256 constant IC66y = 17671629721859883472572136548255280278585870544564867199969294526544087587993;
    
    uint256 constant IC67x = 11163930759609962996431820190115243626723626282185326147691979267907117751268;
    uint256 constant IC67y = 18207793309750757269304304332317260979038821693439512207580322439271044405542;
    
    uint256 constant IC68x = 17081404660573181838712669934968697135777303798595841966675323278807115665760;
    uint256 constant IC68y = 9200164677347148487574201848360266486677001871327183977329702166773031213677;
    
    uint256 constant IC69x = 17365421388495456874205104994699525125435877962080159264240578132171600398324;
    uint256 constant IC69y = 17678499375933754972175530046950983604707133641435097491753788444101724081082;
    
    uint256 constant IC70x = 8483726865698594916593958292389045541570010339951910119761667226840467390415;
    uint256 constant IC70y = 1407855032561864559256116892403551877299610254667704901023142423181976889794;
    
    uint256 constant IC71x = 769261197974346294656215492652395405340972493232641480713764897222384220020;
    uint256 constant IC71y = 10485831221131253750559013809446483353033925352438098026355987686706480259892;
    
    uint256 constant IC72x = 5402110809827582316387033378820986880644808234800788348787499022883231827233;
    uint256 constant IC72y = 13699147863646902236808332769442890283484057115850545342625290162854136736911;
    
    uint256 constant IC73x = 21769650864006516761401928885420437731569918582276687026971142157572042343948;
    uint256 constant IC73y = 12453021901150771470869398561225044628185378498921287417784296682498441471164;
    
    uint256 constant IC74x = 2581100361561074936621510662037458714934249618471474116195872958275064574360;
    uint256 constant IC74y = 16376651117667506102696735797135330971332751498910302692186345690084257744738;
    
    uint256 constant IC75x = 9718889931340212663935605221084333096625715729182539387618444835087865773540;
    uint256 constant IC75y = 15916321616481750590146648560847449026405766255570844808898304046295283483526;
    
 
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
