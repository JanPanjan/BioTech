    pres <- read.table(file = "plasmid_REs.tsv", sep = "\t", header = T)
    fres <- read.table(file = "fragment_REs.tsv", sep = "\t", header = T)

    head(pres)

    ##   Enzyme
    ## 1  AatII
    ## 2   AccI
    ## 3  AflII
    ## 4   AhdI
    ## 5  AlwNI
    ## 6   ApoI

    head(fres)

    ##   Enzyme
    ## 1   AccI
    ## 2 AflIII
    ## 3   ApaI
    ## 4  ApaLI
    ## 5   BbsI
    ## 6   BlpI

    pvec <- pres[, 1]
    fvec <- fres[, 1]

    print(pvec)

    ##  [1] "AatII"    "AccI"     "AflII"    "AhdI"     "AlwNI"    "ApoI"    
    ##  [7] "BmgBI"    "BsaI"     "BsaBI"    "BspQI"    "BsrGI"    "BstAPI"  
    ## [13] "BtgI"     "EagI"     "EcoO109I" "EcoRI"    "EcoRV"    "HincII"  
    ## [19] "HindIII"  "KasI"     "MauBI"    "NarI"     "NcoI"     "NdeI"    
    ## [25] "NotI"     "NsiI"     "PluTI"    "PshAI"    "SalI"     "SapI"    
    ## [31] "SbfI"     "ScaI"     "SfoI"     "SphI"     "SspI"     "StyI"    
    ## [37] "TsoI"     "ZraI"

    print(fvec)

    ##  [1] "AccI"   "AflIII" "ApaI"   "ApaLI"  "BbsI"   "BlpI"   "BpuEI"  "BsaI"  
    ##  [9] "BseRI"  "BsmBI"  "BstXI"  "BtgZI"  "DraIII" "Esp3I"  "HincII" "MluI"  
    ## [17] "MreI"   "MscI"   "NaeI"   "NgoMIV" "NspI"   "PaeR7I" "PaqCI"  "PpuMI" 
    ## [25] "PspOMI" "PstI"   "SalI"   "Sau3AI" "SphI"   "TsoI"   "XbaI"   "XhoI"  
    ## [33] "XmnI"

    common_res <- pvec[which(pvec %in% fvec)]
    uncommon_p <- pvec[which(!(pvec %in% fvec))]
    uncommon_f <- fvec[which(!(fvec %in% pvec))]

------------------------------------------------------------------------

Encimi prisotni v obeh:

    common_res

    ## [1] "AccI"   "BsaI"   "HincII" "SalI"   "SphI"   "TsoI"

Encimi prisotni samo v plazmidu:

    uncommon_p

    ##  [1] "AatII"    "AflII"    "AhdI"     "AlwNI"    "ApoI"     "BmgBI"   
    ##  [7] "BsaBI"    "BspQI"    "BsrGI"    "BstAPI"   "BtgI"     "EagI"    
    ## [13] "EcoO109I" "EcoRI"    "EcoRV"    "HindIII"  "KasI"     "MauBI"   
    ## [19] "NarI"     "NcoI"     "NdeI"     "NotI"     "NsiI"     "PluTI"   
    ## [25] "PshAI"    "SapI"     "SbfI"     "ScaI"     "SfoI"     "SspI"    
    ## [31] "StyI"     "ZraI"

Encimi prisotni sami v cry genu:

    uncommon_f

    ##  [1] "AflIII" "ApaI"   "ApaLI"  "BbsI"   "BlpI"   "BpuEI"  "BseRI"  "BsmBI" 
    ##  [9] "BstXI"  "BtgZI"  "DraIII" "Esp3I"  "MluI"   "MreI"   "MscI"   "NaeI"  
    ## [17] "NgoMIV" "NspI"   "PaeR7I" "PaqCI"  "PpuMI"  "PspOMI" "PstI"   "Sau3AI"
    ## [25] "XbaI"   "XhoI"   "XmnI"

------------------------------------------------------------------------

Encim za vstavljanje

1.  ne sme biti prisoten v fragmentu
2.  mora se nahajati med promotorjem in GFP genom

Ker jih je malo med promotorjem in GFPjem, sem jih prepisal.

Moti me ker je `StyI` v fragmentu, ampak ga ni prikazalo na seznamu
encimov za fragment.. Dodal ga bom zraven.

    fvec2 <- c(fvec, "StyI")

    plasmid_candidates <- c("StyI", "BtgI", "NcoI", "AccI", "SalI", "HincII")

Kateri od njih je prisoten v fragmentu?

    plasmid_candidates[which(plasmid_candidates %in% fvec2)]

    ## [1] "StyI"   "AccI"   "SalI"   "HincII"

Kateri od njih ni prisoten v fragmentu?

    plasmid_candidates[which(!(plasmid_candidates %in% fvec2))]

    ## [1] "BtgI" "NcoI"
