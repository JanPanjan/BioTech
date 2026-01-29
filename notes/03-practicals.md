---
tags:
  - vaje
  - biotech
---
Start in SnapGene: Import -> AddGene Plasmids -> write pUC119-gRNA

The goal is to replace the 20 bp sequence between AtU6-1 promoter and gRNA scaffold. 

Once you have the nucl. sequence for the target protein (link [HERE](https://drive.google.com/file/d/1tp8bOtzt1doeybjte29s4mK3qh-dNLqK/view?usp=sharing)), you can paste it into ChopChop website to find which 20 bp sequence would be most suitable to cut with Cas9 nuclease - that is the chop chop sequence above. 

Import the second plasmid pRGEB31. 

HindIII (primerR2) and SbfI (primerF1) are restriction enzymes. 

From the article take primer F1 sequence (AGAAATCTCAAAATTCCG) and in pUC199 tab add primer F1 pasting the sequence, adding SbfI Enzyme site with 3 upstream bases at the beginning. Do the same for R2 using seq. TAATGCCAACTTTGTACA and enzyme site HindIII. 

For F2 and R1 elongate them on 5’ end with the ChopChop-determined gRNA target site (AATTGTTGTTGTTGTACCAA) or its reverse complement. 

Simulate PCR twice (Actions -> PCR), once with primers F1 and R1, once with F2 and R2, to get two amplicons. Then we can do Overlap Extension PCR with them + choose Use directly as fragment. 

In pRGEB31 tab do Actions -> Restriction and Insertion Cloning -> Insert Fragment and choose HindIII and SbfI for the cuts and the combined fragment as the fragment.**