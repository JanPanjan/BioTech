---
tags:
  - vaje
  - biotech
---
# **Insertion of gene for cry protein in a plasmid with the sequence of GFP protein, called 35S-eGFP-nosT, and used for transient expression**

*To complete this task follow the steps described in 2.1 section, except two important things:*

- *sequences for the restriction enzymes should be replaced. Which restriction enzymes can be used to open the plasmid between CaMV 35S promoter and eGFP gene? You  have to select restriction enzymes which don’t have recognition sites in the cry gene.*
    
- *when you will design reverse primer you should skip the last three nucleotides (represent stop codon) in order to keep ORF open*

---

1. Importam plasmid

![[Pasted image 20260102221047.png]]

Da vstavim cry gen moram izbrat restrikcijska mesta ki niso v njemu, torej.. če grem na `Enzymes` tab od cry gena in izberem print lahko dobim seznam:

![[BioTech/notes/files/encimi.png]]

Moram pa odpret med `CaMV 35S promoter` in `eGFP gene`...

![[BioTech/notes/files/promotorGeneMap.png]]

Okej, sem kopiral seznam encimov od obeh v svoje datoteke, jih odpr z R-jem in preveril kateri so unikatni za gen (glej `candidate_REs.html`):

![[Pasted image 20260102225450.png]]

In zdaj lahko bi sporgramiral da najde še kateri so med promotorjem in GFPjem, ampak bom na oko pogledal ker jih ni precej. Mislim da moram te gledat:

![[Pasted image 20260102225719.png]]

In dobim:

![[Pasted image 20260102232223.png]]

Te lahko zdaj uporabim za PCR in vstavljanje... to pomeni, da moram prilagoditi svoj gen - mu spremeniti primerje, narediti PCR in vstaviti. Hmm... a naj dam vsakega na en konec ali uporabim samo enega...?  Glede na to, da smo prej tudi izbrali različna za isto regijo, se mi zdi prav da tudi zdaj naredim tako.

`BtgI` na začetek in `NcoI` na konec. Pazi, da dodaš encima za primerji (primerji so samo za PCR). Rekel je, da naj dodamo še en random site pred tem, da ni takoj za promotorjem.. ampak verjetno ne sme biti site prisoten v fragmentu..? Idk, prej sem dal za `SauAI3` pa je bilo okej... idk. Bom zdaj tudi.

No in tudi `BtgI` je med encimi ampak ga ni označilo v export... I dont fucking know.

`NcoI` se osveti odebeljeno, `BtgI` pa ne.... bom `NcoI` uporabu...

No itak mi kaže da je isti site...

![[Pasted image 20260102233606.png]]

Pazil, da sem preskočil stop kodon.

![[Pasted image 20260103000728.png]]

In dobim tole

![[Amplified Map 1.png]]

In zdaj to vstavim v plazmid...

Hold up...

![[Pasted image 20260102234059.png]]

Pač kaže mi da ne morem izbrat dva na istem baznem paru... ampak vsi te ki so na desni, so prisotni v fragmentu in jih ne smem izbrat...

Siva regija pa je enhancer in tega ne smem izrezat, kot smo imeli pri [[021-practicals#*Click the tab “Insertions” and select HindIII sequence to be attached to the 5’ end to the forward primer and since restriction will be more efficient if recognition site is not at the beginning of the DNA, add additional restriction site of any other restriction enzyme.|2.1 MCS]]... I don't know what to do.

![[Pasted image 20260102234908.png]]

---

Pusti mi če izberem samo eno regijo pri plazmidu in encimu... sem izbral `NcoI`. Anyways,

![[Pasted image 20260103000930.png]]

![[Pasted image 20260103001003.png]]

![[Pasted image 20260103001025.png]]

![[BioTech/practicals/2/2.2/Cloned Map.png]]

> [!note] Misli glede dileme o encimih
> Zdi se mi, da je logično, da imajo restrikcijski encimi več regij v genu, ki jih lahko razrežejo (verjetnost, da se pojavijo vzorci N nukleotidov; večji N, manjša verjetnost + degeneriranost nekaterih prepoznavnih regij). To je tudi en faktor, poleg mutacij oziroma napak pri ligaciji ali nekaj, ki je kriv, da se fragment ne vstavi v vsako celico. Zaradi tega imamo selektivne markerje itn. Je pa čudno, ker mi je logično, da če uporabiš encim za vstavljanje, ki ima prepoznavno mesto tudi v fragmentu, je zelo verjetno, da se bo tvoj fragment razkosal. Zato mi ni čisto jasno, zakaj je okej, če uporabim regije, ki sem jih določil.