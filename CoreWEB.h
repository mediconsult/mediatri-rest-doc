#import "enunciate-common.h"

@class COREWEBNS0LaakitysKayttoaiheView;
@class COREWEBNS0Laakitys;
@class COREWEBNS0Date;
@class COREWEBNS0AbstractDTO;
@class COREWEBNS0TutkimuspyyntoTiedot;
@class COREWEBNS0Laake;
@class COREWEBNS0LaakeAnnostus;
@class COREWEBNS0LaakeAtc;
@class COREWEBNS0LaakeSeloste;
@class COREWEBNS0LaakeTerapiaryhma;
@class COREWEBNS0LaakeTiivistelmaTeksti;
@class COREWEBNS0LaakitysKayttoaihe;
@class COREWEBNS0LaakitysTapa;
@class COREWEBNS0LaakitysTauko;
@class COREWEBNS0LaakitysKuittaus;
@class COREWEBNS0LaakeYhteisvaikutus;
@class COREWEBNS0LaakeVastaAihe;
@class COREWEBNS0LaakeTiivistelma;
@class COREWEBNS0LaakeSelosteTeksti;
@class COREWEBNS0LaakeKoostumus;
@class COREWEBNS0LaakeAnnostusSoveltuvuus;
@class COREWEBNS0LaakeAine;
@class COREWEBNS0Hoito;
@class COREWEBNS0TutkimuspyyntoMikrobi;
@class COREWEBNS0TutkimuspyyntoHerkkyys;
@class COREWEBNS0Tutkimuspyynto;
@class COREWEBNS0LaakitysAnto;

#ifndef DEF_COREWEBNS0LaakitysKayttoaiheView_H
#define DEF_COREWEBNS0LaakitysKayttoaiheView_H

/**
 *  DTO for LaakitysKayttoaihe

 A class to present LAAKITYS_KAYTTOAIHE and KAYTTOAIHE tables in medication functionality
 Used to carry the data from database to the client side.


 */
@interface COREWEBNS0LaakitysKayttoaiheView : NSObject <EnunciateXML>
{
  @private
    int _omistaja;
    int _osa;
    int _rivi;
    int _numero;
    NSString *_selite;
    NSString *_reseptiteksti;
    unsigned short _alkupera;
    unsigned short _tyyppi;
    unsigned short _poistettu;
    NSDate *_muutosaika;
    int _muutospaikka;
}

/**
 * (no documentation provided)
 */
- (int) omistaja;

/**
 * (no documentation provided)
 */
- (void) setOmistaja: (int) newOmistaja;

/**
 * (no documentation provided)
 */
- (int) osa;

/**
 * (no documentation provided)
 */
- (void) setOsa: (int) newOsa;

/**
 * (no documentation provided)
 */
- (int) rivi;

/**
 * (no documentation provided)
 */
- (void) setRivi: (int) newRivi;

/**
 * (no documentation provided)
 */
- (int) numero;

/**
 * (no documentation provided)
 */
- (void) setNumero: (int) newNumero;

/**
 * (no documentation provided)
 */
- (NSString *) selite;

/**
 * (no documentation provided)
 */
- (void) setSelite: (NSString *) newSelite;

/**
 * (no documentation provided)
 */
- (NSString *) reseptiteksti;

/**
 * (no documentation provided)
 */
- (void) setReseptiteksti: (NSString *) newReseptiteksti;

/**
 * (no documentation provided)
 */
- (unsigned short) alkupera;

/**
 * (no documentation provided)
 */
- (void) setAlkupera: (unsigned short) newAlkupera;

/**
 * (no documentation provided)
 */
- (unsigned short) tyyppi;

/**
 * (no documentation provided)
 */
- (void) setTyyppi: (unsigned short) newTyyppi;

/**
 * (no documentation provided)
 */
- (unsigned short) poistettu;

/**
 * (no documentation provided)
 */
- (void) setPoistettu: (unsigned short) newPoistettu;

/**
 * (no documentation provided)
 */
- (NSDate *) muutosaika;

/**
 * (no documentation provided)
 */
- (void) setMuutosaika: (NSDate *) newMuutosaika;

/**
 * (no documentation provided)
 */
- (int) muutospaikka;

/**
 * (no documentation provided)
 */
- (void) setMuutospaikka: (int) newMuutospaikka;
@end /* interface COREWEBNS0LaakitysKayttoaiheView */

#endif /* DEF_COREWEBNS0LaakitysKayttoaiheView_H */
#ifndef DEF_COREWEBNS0Laakitys_H
#define DEF_COREWEBNS0Laakitys_H

/**
 * 
 DTO for Laakitys


 */
@interface COREWEBNS0Laakitys : NSObject <EnunciateXML>
{
  @private
    int _omistaja;
    int _osa;
    COREWEBNS0Laake *_laakevalmiste;
    NSString *_laake;
    NSDate *_aloitettu;
    NSDate *_tapahtunut;
    unsigned short _tapahtuma;
    NSDate *_riittoisuus;
    NSDate *_lopetettu;
    NSString *_lopetussyy;
    NSString *_reseptiteksti;
    NSString *_malli;
    NSString *_lyhyesti;
    unsigned short _vaihdettavuus;
    float _annettavaMaara;
    float *_annettavaMaksimi;
    NSString *_annettavaYksikko;
    NSString *_kertaAnnos;
    NSString *_annosteluteksti;
    short _desimaaleja;
    float *_paino;
    float *_lapsenPaino;
    NSString *_toisto;
    NSString *_toistokuvaus;
    NSString *_kellonajat;
    NSString *_kellonajatString;
    NSString *_aikayksikko;
    float *_antotahti;
    NSString *_antotahtiString;
    NSString *_antotahtiyksikko;
    float *_vrkMaara;
    NSString *_vrkMaaraYksikko;
    NSString *_kokonaiskesto;
    float *_kokonaismaara;
    NSString *_kokonaismaarayksikko;
    int *_pakkauksia;
    int _kirjaaja;
    NSString *_kirjaajaString;
    int _maaraaja;
    NSString *_maaraajaString;
    int *_maaraysyksikko;
    unsigned short _varmistus;
    NSString *_kayttotarkoitus;
    NSString *_ohjeet;
    NSString *_perustelu;
    int *_iterointi;
    int *_uusittu;
    unsigned short *_kuitattava;
    unsigned short _pysyva;
    unsigned short _tarvittaessa;
    NSString *_terapiaryhma;
    unsigned short _soveltumaton;
    NSString *_vaikutus;
    NSString *_huomautuksia;
    unsigned short *_reseptityyppi;
    NSString *_reseptityyppiString;
    int *_tulostaja;
    NSDate *_tulostettu;
    NSString *_oid;
    NSString *_tunnistustapa;
    NSString *_tunnistustapaselite;
    NSString *_annosjakeluperuste;
    int *_iterointivali;
    NSString *_erillisselvityskoodi;
    NSString *_erillisselvitys;
    NSString *_apteekkiviesti;
    unsigned short *_ereseptikielto;
    NSString *_hoitolaji;
    unsigned short *_uusi;
    NSDate *_lahetetty;
    NSString *_reseptinLaji;
    NSString *_muutoksenSyy;
    NSString *_muutoksenPerustelu;
    unsigned short *_uusimiskielto;
    NSString *_uusimiskiellonSyy;
    NSString *_uusimiskiellonPerustelu;
    unsigned short *_potilasohjekielto;
    NSString *_tyonantaja;
    NSString *_vakuutusyhtio;
    NSDate *_voimassaoloLoppu;
    int *_annostuslinkki;
    int *_hoitojakso;
    int *_alkuperainen;
    float *_palkkio;
    unsigned short *_palkkioErikoislaakarina;
    unsigned short *_tartuntatautilaake;
    int *_palvelutapahtuma;
    NSString *_palvelutapahtumaOid;
    NSString *_sairaalaApteekkiOid;
    NSString *_sairaalaApteekkiNimi;
    int *_tarkistus;
    NSString *_poistosyy;
    unsigned short _poistettu;
    NSDate *_muutosaika;
    short _muutospaikka;
    NSString *_pysyvyys;
    NSString *_nimi;
    NSString *_annostus;
    BOOL _vaihteleva;
    NSString *_vaihtelevaAnnostus;
    NSString *_sic;
    NSString *_kokoNimi;
    NSString *_laakeaineet;
    long long _tauonAloitusPvm;
    long long _tauonLopetusPvm;
    NSString *_taukohuomautuksia;
    float *_annettavaMaaraTimesPaino;
    float *_vrkmaara;
    int _vrkkerratCalc;
    float *_vrkmaaraCalc;
    NSString *_vrkmaaraYksikko;
    NSArray *_tauot;
    NSArray *_annot;
    NSArray *_tavat;
    NSArray *_kayttoaiheet;
    NSArray *_laakitysKayttoaiheList;
    NSArray *_kuittaukset;
}

/**
 * (no documentation provided)
 */
- (int) omistaja;

/**
 * (no documentation provided)
 */
- (void) setOmistaja: (int) newOmistaja;

/**
 * (no documentation provided)
 */
- (int) osa;

/**
 * (no documentation provided)
 */
- (void) setOsa: (int) newOsa;

/**
 * (no documentation provided)
 */
- (COREWEBNS0Laake *) laakevalmiste;

/**
 * (no documentation provided)
 */
- (void) setLaakevalmiste: (COREWEBNS0Laake *) newLaakevalmiste;

/**
 * (no documentation provided)
 */
- (NSString *) laake;

/**
 * (no documentation provided)
 */
- (void) setLaake: (NSString *) newLaake;

/**
 * (no documentation provided)
 */
- (NSDate *) aloitettu;

/**
 * (no documentation provided)
 */
- (void) setAloitettu: (NSDate *) newAloitettu;

/**
 * (no documentation provided)
 */
- (NSDate *) tapahtunut;

/**
 * (no documentation provided)
 */
- (void) setTapahtunut: (NSDate *) newTapahtunut;

/**
 * (no documentation provided)
 */
- (unsigned short) tapahtuma;

/**
 * (no documentation provided)
 */
- (void) setTapahtuma: (unsigned short) newTapahtuma;

/**
 * (no documentation provided)
 */
- (NSDate *) riittoisuus;

/**
 * (no documentation provided)
 */
- (void) setRiittoisuus: (NSDate *) newRiittoisuus;

/**
 * (no documentation provided)
 */
- (NSDate *) lopetettu;

/**
 * (no documentation provided)
 */
- (void) setLopetettu: (NSDate *) newLopetettu;

/**
 * (no documentation provided)
 */
- (NSString *) lopetussyy;

/**
 * (no documentation provided)
 */
- (void) setLopetussyy: (NSString *) newLopetussyy;

/**
 * (no documentation provided)
 */
- (NSString *) reseptiteksti;

/**
 * (no documentation provided)
 */
- (void) setReseptiteksti: (NSString *) newReseptiteksti;

/**
 * (no documentation provided)
 */
- (NSString *) malli;

/**
 * (no documentation provided)
 */
- (void) setMalli: (NSString *) newMalli;

/**
 * (no documentation provided)
 */
- (NSString *) lyhyesti;

/**
 * (no documentation provided)
 */
- (void) setLyhyesti: (NSString *) newLyhyesti;

/**
 * (no documentation provided)
 */
- (unsigned short) vaihdettavuus;

/**
 * (no documentation provided)
 */
- (void) setVaihdettavuus: (unsigned short) newVaihdettavuus;

/**
 * (no documentation provided)
 */
- (float) annettavaMaara;

/**
 * (no documentation provided)
 */
- (void) setAnnettavaMaara: (float) newAnnettavaMaara;

/**
 * (no documentation provided)
 */
- (float *) annettavaMaksimi;

/**
 * (no documentation provided)
 */
- (void) setAnnettavaMaksimi: (float *) newAnnettavaMaksimi;

/**
 * (no documentation provided)
 */
- (NSString *) annettavaYksikko;

/**
 * (no documentation provided)
 */
- (void) setAnnettavaYksikko: (NSString *) newAnnettavaYksikko;

/**
 * (no documentation provided)
 */
- (NSString *) kertaAnnos;

/**
 * (no documentation provided)
 */
- (void) setKertaAnnos: (NSString *) newKertaAnnos;

/**
 * (no documentation provided)
 */
- (NSString *) annosteluteksti;

/**
 * (no documentation provided)
 */
- (void) setAnnosteluteksti: (NSString *) newAnnosteluteksti;

/**
 * (no documentation provided)
 */
- (short) desimaaleja;

/**
 * (no documentation provided)
 */
- (void) setDesimaaleja: (short) newDesimaaleja;

/**
 * (no documentation provided)
 */
- (float *) paino;

/**
 * (no documentation provided)
 */
- (void) setPaino: (float *) newPaino;

/**
 * (no documentation provided)
 */
- (float *) lapsenPaino;

/**
 * (no documentation provided)
 */
- (void) setLapsenPaino: (float *) newLapsenPaino;

/**
 * (no documentation provided)
 */
- (NSString *) toisto;

/**
 * (no documentation provided)
 */
- (void) setToisto: (NSString *) newToisto;

/**
 * (no documentation provided)
 */
- (NSString *) toistokuvaus;

/**
 * (no documentation provided)
 */
- (void) setToistokuvaus: (NSString *) newToistokuvaus;

/**
 * (no documentation provided)
 */
- (NSString *) kellonajat;

/**
 * (no documentation provided)
 */
- (void) setKellonajat: (NSString *) newKellonajat;

/**
 * (no documentation provided)
 */
- (NSString *) kellonajatString;

/**
 * (no documentation provided)
 */
- (void) setKellonajatString: (NSString *) newKellonajatString;

/**
 * (no documentation provided)
 */
- (NSString *) aikayksikko;

/**
 * (no documentation provided)
 */
- (void) setAikayksikko: (NSString *) newAikayksikko;

/**
 * (no documentation provided)
 */
- (float *) antotahti;

/**
 * (no documentation provided)
 */
- (void) setAntotahti: (float *) newAntotahti;

/**
 * (no documentation provided)
 */
- (NSString *) antotahtiString;

/**
 * (no documentation provided)
 */
- (void) setAntotahtiString: (NSString *) newAntotahtiString;

/**
 * (no documentation provided)
 */
- (NSString *) antotahtiyksikko;

/**
 * (no documentation provided)
 */
- (void) setAntotahtiyksikko: (NSString *) newAntotahtiyksikko;

/**
 * (no documentation provided)
 */
- (float *) vrkMaara;

/**
 * (no documentation provided)
 */
- (void) setVrkMaara: (float *) newVrkMaara;

/**
 * (no documentation provided)
 */
- (NSString *) vrkMaaraYksikko;

/**
 * (no documentation provided)
 */
- (void) setVrkMaaraYksikko: (NSString *) newVrkMaaraYksikko;

/**
 * (no documentation provided)
 */
- (NSString *) kokonaiskesto;

/**
 * (no documentation provided)
 */
- (void) setKokonaiskesto: (NSString *) newKokonaiskesto;

/**
 * (no documentation provided)
 */
- (float *) kokonaismaara;

/**
 * (no documentation provided)
 */
- (void) setKokonaismaara: (float *) newKokonaismaara;

/**
 * (no documentation provided)
 */
- (NSString *) kokonaismaarayksikko;

/**
 * (no documentation provided)
 */
- (void) setKokonaismaarayksikko: (NSString *) newKokonaismaarayksikko;

/**
 * (no documentation provided)
 */
- (int *) pakkauksia;

/**
 * (no documentation provided)
 */
- (void) setPakkauksia: (int *) newPakkauksia;

/**
 * (no documentation provided)
 */
- (int) kirjaaja;

/**
 * (no documentation provided)
 */
- (void) setKirjaaja: (int) newKirjaaja;

/**
 * (no documentation provided)
 */
- (NSString *) kirjaajaString;

/**
 * (no documentation provided)
 */
- (void) setKirjaajaString: (NSString *) newKirjaajaString;

/**
 * (no documentation provided)
 */
- (int) maaraaja;

/**
 * (no documentation provided)
 */
- (void) setMaaraaja: (int) newMaaraaja;

/**
 * (no documentation provided)
 */
- (NSString *) maaraajaString;

/**
 * (no documentation provided)
 */
- (void) setMaaraajaString: (NSString *) newMaaraajaString;

/**
 * (no documentation provided)
 */
- (int *) maaraysyksikko;

/**
 * (no documentation provided)
 */
- (void) setMaaraysyksikko: (int *) newMaaraysyksikko;

/**
 * (no documentation provided)
 */
- (unsigned short) varmistus;

/**
 * (no documentation provided)
 */
- (void) setVarmistus: (unsigned short) newVarmistus;

/**
 * (no documentation provided)
 */
- (NSString *) kayttotarkoitus;

/**
 * (no documentation provided)
 */
- (void) setKayttotarkoitus: (NSString *) newKayttotarkoitus;

/**
 * (no documentation provided)
 */
- (NSString *) ohjeet;

/**
 * (no documentation provided)
 */
- (void) setOhjeet: (NSString *) newOhjeet;

/**
 * (no documentation provided)
 */
- (NSString *) perustelu;

/**
 * (no documentation provided)
 */
- (void) setPerustelu: (NSString *) newPerustelu;

/**
 * (no documentation provided)
 */
- (int *) iterointi;

/**
 * (no documentation provided)
 */
- (void) setIterointi: (int *) newIterointi;

/**
 * (no documentation provided)
 */
- (int *) uusittu;

/**
 * (no documentation provided)
 */
- (void) setUusittu: (int *) newUusittu;

/**
 * (no documentation provided)
 */
- (unsigned short *) kuitattava;

/**
 * (no documentation provided)
 */
- (void) setKuitattava: (unsigned short *) newKuitattava;

/**
 * (no documentation provided)
 */
- (unsigned short) pysyva;

/**
 * (no documentation provided)
 */
- (void) setPysyva: (unsigned short) newPysyva;

/**
 * (no documentation provided)
 */
- (unsigned short) tarvittaessa;

/**
 * (no documentation provided)
 */
- (void) setTarvittaessa: (unsigned short) newTarvittaessa;

/**
 * (no documentation provided)
 */
- (NSString *) terapiaryhma;

/**
 * (no documentation provided)
 */
- (void) setTerapiaryhma: (NSString *) newTerapiaryhma;

/**
 * (no documentation provided)
 */
- (unsigned short) soveltumaton;

/**
 * (no documentation provided)
 */
- (void) setSoveltumaton: (unsigned short) newSoveltumaton;

/**
 * (no documentation provided)
 */
- (NSString *) vaikutus;

/**
 * (no documentation provided)
 */
- (void) setVaikutus: (NSString *) newVaikutus;

/**
 * (no documentation provided)
 */
- (NSString *) huomautuksia;

/**
 * (no documentation provided)
 */
- (void) setHuomautuksia: (NSString *) newHuomautuksia;

/**
 * (no documentation provided)
 */
- (unsigned short *) reseptityyppi;

/**
 * (no documentation provided)
 */
- (void) setReseptityyppi: (unsigned short *) newReseptityyppi;

/**
 * (no documentation provided)
 */
- (NSString *) reseptityyppiString;

/**
 * (no documentation provided)
 */
- (void) setReseptityyppiString: (NSString *) newReseptityyppiString;

/**
 * (no documentation provided)
 */
- (int *) tulostaja;

/**
 * (no documentation provided)
 */
- (void) setTulostaja: (int *) newTulostaja;

/**
 * (no documentation provided)
 */
- (NSDate *) tulostettu;

/**
 * (no documentation provided)
 */
- (void) setTulostettu: (NSDate *) newTulostettu;

/**
 * (no documentation provided)
 */
- (NSString *) oid;

/**
 * (no documentation provided)
 */
- (void) setOid: (NSString *) newOid;

/**
 * (no documentation provided)
 */
- (NSString *) tunnistustapa;

/**
 * (no documentation provided)
 */
- (void) setTunnistustapa: (NSString *) newTunnistustapa;

/**
 * (no documentation provided)
 */
- (NSString *) tunnistustapaselite;

/**
 * (no documentation provided)
 */
- (void) setTunnistustapaselite: (NSString *) newTunnistustapaselite;

/**
 * (no documentation provided)
 */
- (NSString *) annosjakeluperuste;

/**
 * (no documentation provided)
 */
- (void) setAnnosjakeluperuste: (NSString *) newAnnosjakeluperuste;

/**
 * (no documentation provided)
 */
- (int *) iterointivali;

/**
 * (no documentation provided)
 */
- (void) setIterointivali: (int *) newIterointivali;

/**
 * (no documentation provided)
 */
- (NSString *) erillisselvityskoodi;

/**
 * (no documentation provided)
 */
- (void) setErillisselvityskoodi: (NSString *) newErillisselvityskoodi;

/**
 * (no documentation provided)
 */
- (NSString *) erillisselvitys;

/**
 * (no documentation provided)
 */
- (void) setErillisselvitys: (NSString *) newErillisselvitys;

/**
 * (no documentation provided)
 */
- (NSString *) apteekkiviesti;

/**
 * (no documentation provided)
 */
- (void) setApteekkiviesti: (NSString *) newApteekkiviesti;

/**
 * (no documentation provided)
 */
- (unsigned short *) ereseptikielto;

/**
 * (no documentation provided)
 */
- (void) setEreseptikielto: (unsigned short *) newEreseptikielto;

/**
 * (no documentation provided)
 */
- (NSString *) hoitolaji;

/**
 * (no documentation provided)
 */
- (void) setHoitolaji: (NSString *) newHoitolaji;

/**
 * (no documentation provided)
 */
- (unsigned short *) uusi;

/**
 * (no documentation provided)
 */
- (void) setUusi: (unsigned short *) newUusi;

/**
 * (no documentation provided)
 */
- (NSDate *) lahetetty;

/**
 * (no documentation provided)
 */
- (void) setLahetetty: (NSDate *) newLahetetty;

/**
 * (no documentation provided)
 */
- (NSString *) reseptinLaji;

/**
 * (no documentation provided)
 */
- (void) setReseptinLaji: (NSString *) newReseptinLaji;

/**
 * (no documentation provided)
 */
- (NSString *) muutoksenSyy;

/**
 * (no documentation provided)
 */
- (void) setMuutoksenSyy: (NSString *) newMuutoksenSyy;

/**
 * (no documentation provided)
 */
- (NSString *) muutoksenPerustelu;

/**
 * (no documentation provided)
 */
- (void) setMuutoksenPerustelu: (NSString *) newMuutoksenPerustelu;

/**
 * (no documentation provided)
 */
- (unsigned short *) uusimiskielto;

/**
 * (no documentation provided)
 */
- (void) setUusimiskielto: (unsigned short *) newUusimiskielto;

/**
 * (no documentation provided)
 */
- (NSString *) uusimiskiellonSyy;

/**
 * (no documentation provided)
 */
- (void) setUusimiskiellonSyy: (NSString *) newUusimiskiellonSyy;

/**
 * (no documentation provided)
 */
- (NSString *) uusimiskiellonPerustelu;

/**
 * (no documentation provided)
 */
- (void) setUusimiskiellonPerustelu: (NSString *) newUusimiskiellonPerustelu;

/**
 * (no documentation provided)
 */
- (unsigned short *) potilasohjekielto;

/**
 * (no documentation provided)
 */
- (void) setPotilasohjekielto: (unsigned short *) newPotilasohjekielto;

/**
 * (no documentation provided)
 */
- (NSString *) tyonantaja;

/**
 * (no documentation provided)
 */
- (void) setTyonantaja: (NSString *) newTyonantaja;

/**
 * (no documentation provided)
 */
- (NSString *) vakuutusyhtio;

/**
 * (no documentation provided)
 */
- (void) setVakuutusyhtio: (NSString *) newVakuutusyhtio;

/**
 * (no documentation provided)
 */
- (NSDate *) voimassaoloLoppu;

/**
 * (no documentation provided)
 */
- (void) setVoimassaoloLoppu: (NSDate *) newVoimassaoloLoppu;

/**
 * (no documentation provided)
 */
- (int *) annostuslinkki;

/**
 * (no documentation provided)
 */
- (void) setAnnostuslinkki: (int *) newAnnostuslinkki;

/**
 * (no documentation provided)
 */
- (int *) hoitojakso;

/**
 * (no documentation provided)
 */
- (void) setHoitojakso: (int *) newHoitojakso;

/**
 * (no documentation provided)
 */
- (int *) alkuperainen;

/**
 * (no documentation provided)
 */
- (void) setAlkuperainen: (int *) newAlkuperainen;

/**
 * (no documentation provided)
 */
- (float *) palkkio;

/**
 * (no documentation provided)
 */
- (void) setPalkkio: (float *) newPalkkio;

/**
 * (no documentation provided)
 */
- (unsigned short *) palkkioErikoislaakarina;

/**
 * (no documentation provided)
 */
- (void) setPalkkioErikoislaakarina: (unsigned short *) newPalkkioErikoislaakarina;

/**
 * (no documentation provided)
 */
- (unsigned short *) tartuntatautilaake;

/**
 * (no documentation provided)
 */
- (void) setTartuntatautilaake: (unsigned short *) newTartuntatautilaake;

/**
 * (no documentation provided)
 */
- (int *) palvelutapahtuma;

/**
 * (no documentation provided)
 */
- (void) setPalvelutapahtuma: (int *) newPalvelutapahtuma;

/**
 * (no documentation provided)
 */
- (NSString *) palvelutapahtumaOid;

/**
 * (no documentation provided)
 */
- (void) setPalvelutapahtumaOid: (NSString *) newPalvelutapahtumaOid;

/**
 * (no documentation provided)
 */
- (NSString *) sairaalaApteekkiOid;

/**
 * (no documentation provided)
 */
- (void) setSairaalaApteekkiOid: (NSString *) newSairaalaApteekkiOid;

/**
 * (no documentation provided)
 */
- (NSString *) sairaalaApteekkiNimi;

/**
 * (no documentation provided)
 */
- (void) setSairaalaApteekkiNimi: (NSString *) newSairaalaApteekkiNimi;

/**
 * (no documentation provided)
 */
- (int *) tarkistus;

/**
 * (no documentation provided)
 */
- (void) setTarkistus: (int *) newTarkistus;

/**
 * (no documentation provided)
 */
- (NSString *) poistosyy;

/**
 * (no documentation provided)
 */
- (void) setPoistosyy: (NSString *) newPoistosyy;

/**
 * (no documentation provided)
 */
- (unsigned short) poistettu;

/**
 * (no documentation provided)
 */
- (void) setPoistettu: (unsigned short) newPoistettu;

/**
 * (no documentation provided)
 */
- (NSDate *) muutosaika;

/**
 * (no documentation provided)
 */
- (void) setMuutosaika: (NSDate *) newMuutosaika;

/**
 * (no documentation provided)
 */
- (short) muutospaikka;

/**
 * (no documentation provided)
 */
- (void) setMuutospaikka: (short) newMuutospaikka;

/**
 * (no documentation provided)
 */
- (NSString *) pysyvyys;

/**
 * (no documentation provided)
 */
- (void) setPysyvyys: (NSString *) newPysyvyys;

/**
 * (no documentation provided)
 */
- (NSString *) nimi;

/**
 * (no documentation provided)
 */
- (void) setNimi: (NSString *) newNimi;

/**
 * (no documentation provided)
 */
- (NSString *) annostus;

/**
 * (no documentation provided)
 */
- (void) setAnnostus: (NSString *) newAnnostus;

/**
 * (no documentation provided)
 */
- (BOOL) vaihteleva;

/**
 * (no documentation provided)
 */
- (void) setVaihteleva: (BOOL) newVaihteleva;

/**
 * (no documentation provided)
 */
- (NSString *) vaihtelevaAnnostus;

/**
 * (no documentation provided)
 */
- (void) setVaihtelevaAnnostus: (NSString *) newVaihtelevaAnnostus;

/**
 * (no documentation provided)
 */
- (NSString *) sic;

/**
 * (no documentation provided)
 */
- (void) setSic: (NSString *) newSic;

/**
 * (no documentation provided)
 */
- (NSString *) kokoNimi;

/**
 * (no documentation provided)
 */
- (void) setKokoNimi: (NSString *) newKokoNimi;

/**
 * (no documentation provided)
 */
- (NSString *) laakeaineet;

/**
 * (no documentation provided)
 */
- (void) setLaakeaineet: (NSString *) newLaakeaineet;

/**
 * (no documentation provided)
 */
- (long long) tauonAloitusPvm;

/**
 * (no documentation provided)
 */
- (void) setTauonAloitusPvm: (long long) newTauonAloitusPvm;

/**
 * (no documentation provided)
 */
- (long long) tauonLopetusPvm;

/**
 * (no documentation provided)
 */
- (void) setTauonLopetusPvm: (long long) newTauonLopetusPvm;

/**
 * (no documentation provided)
 */
- (NSString *) taukohuomautuksia;

/**
 * (no documentation provided)
 */
- (void) setTaukohuomautuksia: (NSString *) newTaukohuomautuksia;

/**
 * (no documentation provided)
 */
- (float *) annettavaMaaraTimesPaino;

/**
 * (no documentation provided)
 */
- (void) setAnnettavaMaaraTimesPaino: (float *) newAnnettavaMaaraTimesPaino;

/**
 * (no documentation provided)
 */
- (float *) vrkmaara;

/**
 * (no documentation provided)
 */
- (void) setVrkmaara: (float *) newVrkmaara;

/**
 * (no documentation provided)
 */
- (int) vrkkerratCalc;

/**
 * (no documentation provided)
 */
- (void) setVrkkerratCalc: (int) newVrkkerratCalc;

/**
 * (no documentation provided)
 */
- (float *) vrkmaaraCalc;

/**
 * (no documentation provided)
 */
- (void) setVrkmaaraCalc: (float *) newVrkmaaraCalc;

/**
 * (no documentation provided)
 */
- (NSString *) vrkmaaraYksikko;

/**
 * (no documentation provided)
 */
- (void) setVrkmaaraYksikko: (NSString *) newVrkmaaraYksikko;

/**
 * (no documentation provided)
 */
- (NSArray *) tauot;

/**
 * (no documentation provided)
 */
- (void) setTauot: (NSArray *) newTauot;

/**
 * (no documentation provided)
 */
- (NSArray *) annot;

/**
 * (no documentation provided)
 */
- (void) setAnnot: (NSArray *) newAnnot;

/**
 * (no documentation provided)
 */
- (NSArray *) tavat;

/**
 * (no documentation provided)
 */
- (void) setTavat: (NSArray *) newTavat;

/**
 * (no documentation provided)
 */
- (NSArray *) kayttoaiheet;

/**
 * (no documentation provided)
 */
- (void) setKayttoaiheet: (NSArray *) newKayttoaiheet;

/**
 * (no documentation provided)
 */
- (NSArray *) laakitysKayttoaiheList;

/**
 * (no documentation provided)
 */
- (void) setLaakitysKayttoaiheList: (NSArray *) newLaakitysKayttoaiheList;

/**
 * (no documentation provided)
 */
- (NSArray *) kuittaukset;

/**
 * (no documentation provided)
 */
- (void) setKuittaukset: (NSArray *) newKuittaukset;
@end /* interface COREWEBNS0Laakitys */

#endif /* DEF_COREWEBNS0Laakitys_H */
#ifndef DEF_COREWEBNS0Date_H
#define DEF_COREWEBNS0Date_H

/**
 * (no documentation provided)
 */
@interface COREWEBNS0Date : NSObject
{
  @private
}
@end /* interface COREWEBNS0Date */

#endif /* DEF_COREWEBNS0Date_H */
#ifndef DEF_COREWEBNS0AbstractDTO_H
#define DEF_COREWEBNS0AbstractDTO_H

/**
 * (no documentation provided)
 */
@interface COREWEBNS0AbstractDTO : NSObject
{
  @private
}
@end /* interface COREWEBNS0AbstractDTO */

#endif /* DEF_COREWEBNS0AbstractDTO_H */
#ifndef DEF_COREWEBNS0TutkimuspyyntoTiedot_H
#define DEF_COREWEBNS0TutkimuspyyntoTiedot_H

/**
 *  DTO for Lab Examination Details

 A class to present TUTKIMUSPYYNTO table in laboratory examination functionality.
 Used to carry the data from database to the client side.


 */
@interface COREWEBNS0TutkimuspyyntoTiedot : COREWEBNS0AbstractDTO <EnunciateXML>
{
  @private
    int _pyynto;
    short _rivi;
    NSString *_tutkimus;
    NSString *_versio;
    unsigned short *_hajautettu;
    int *_hoitojakso;
    NSString *_huomautuksia;
    COREWEBNS0Date *_kontrolloitava;
    unsigned short *_korvausluokka;
    int *_kunta;
    int *_kustannuslinkki;
    unsigned short *_lisatietoja;
    int *_lomakelinkki;
    int *_maksaja;
    unsigned short *_mikrobitietoja;
    NSDate *_muutosaika;
    short _muutospaikka;
    int *_nayte;
    unsigned short *_naytetietoja;
    double *_numerotulos;
    NSString *_numeroyksikko;
    int *_osalinkki;
    int *_osasto;
    NSDate *_ottoaika;
    NSString *_paketti;
    int *_piiri;
    NSString *_poistettu;
    NSDate *_pyydetty;
    NSString *_sanallinenvastaus;
    NSString *_sijaintiosasto;
    NSString *_sijaintipaikka;
    NSString *_sisainenMaksaja;
    int *_suoritelinkki;
    NSDate *_tehty;
    int *_tekopaikka;
    NSString *_tekstitulos;
    int *_tekstiviesti;
    unsigned short _tila;
    int _tilaaja;
    NSString *_tilaajaNimi;
    int *_tilaajayksikko;
    NSString *_tilaustunnus;
    COREWEBNS0Date *_toistoloppuu;
    int *_toistovali;
    NSString *_tulkinta;
    int *_tuottaja;
    int *_tyonantaja;
    unsigned short *_vastaustietoja;
    NSString *_viitearvot;
    int *_kirjaaja;
    NSString *_tilaKoodi;
    int *_poikkeava;
    NSArray *_mikrobit;
}

/**
 * Returns the pyynto id
 */
- (int) pyynto;

/**
 * Returns the pyynto id
 */
- (void) setPyynto: (int) newPyynto;

/**
 * Returns the row number
 */
- (short) rivi;

/**
 * Returns the row number
 */
- (void) setRivi: (short) newRivi;

/**
 * Returns the Tutkimus name
 */
- (NSString *) tutkimus;

/**
 * Returns the Tutkimus name
 */
- (void) setTutkimus: (NSString *) newTutkimus;

/**
 * Returns the version
 */
- (NSString *) versio;

/**
 * Returns the version
 */
- (void) setVersio: (NSString *) newVersio;

/**
 * Returns the char value for Hajautettu
 */
- (unsigned short *) hajautettu;

/**
 * Returns the char value for Hajautettu
 */
- (void) setHajautettu: (unsigned short *) newHajautettu;

/**
 * Returns the Hoitojakso
 */
- (int *) hoitojakso;

/**
 * Returns the Hoitojakso
 */
- (void) setHoitojakso: (int *) newHoitojakso;

/**
 * Returns the notifications
 */
- (NSString *) huomautuksia;

/**
 * Returns the notifications
 */
- (void) setHuomautuksia: (NSString *) newHuomautuksia;

/**
 * Returns the possible control date
 */
- (COREWEBNS0Date *) kontrolloitava;

/**
 * Returns the possible control date
 */
- (void) setKontrolloitava: (COREWEBNS0Date *) newKontrolloitava;

/**
 * Returns the korvausluokka
 */
- (unsigned short *) korvausluokka;

/**
 * Returns the korvausluokka
 */
- (void) setKorvausluokka: (unsigned short *) newKorvausluokka;

/**
 * Returns the county council
 */
- (int *) kunta;

/**
 * Returns the county council
 */
- (void) setKunta: (int *) newKunta;

/**
 * Returns the Kustannuslinkki
 */
- (int *) kustannuslinkki;

/**
 * Returns the Kustannuslinkki
 */
- (void) setKustannuslinkki: (int *) newKustannuslinkki;

/**
 * Return the info about if there is some extra information
 */
- (unsigned short *) lisatietoja;

/**
 * Return the info about if there is some extra information
 */
- (void) setLisatietoja: (unsigned short *) newLisatietoja;

/**
 * Return the Lomakelinkki
 */
- (int *) lomakelinkki;

/**
 * Return the Lomakelinkki
 */
- (void) setLomakelinkki: (int *) newLomakelinkki;

/**
 * Return the payer
 */
- (int *) maksaja;

/**
 * Return the payer
 */
- (void) setMaksaja: (int *) newMaksaja;

/**
 * Return the info about if there is Mikrobitietoja available
 */
- (unsigned short *) mikrobitietoja;

/**
 * Return the info about if there is Mikrobitietoja available
 */
- (void) setMikrobitietoja: (unsigned short *) newMikrobitietoja;

/**
 * Return the time of change
 */
- (NSDate *) muutosaika;

/**
 * Return the time of change
 */
- (void) setMuutosaika: (NSDate *) newMuutosaika;

/**
 * Return the place of change
 */
- (short) muutospaikka;

/**
 * Return the place of change
 */
- (void) setMuutospaikka: (short) newMuutospaikka;

/**
 * Return the sample
 */
- (int *) nayte;

/**
 * Return the sample
 */
- (void) setNayte: (int *) newNayte;

/**
 * Return the info about if there is sample information
 */
- (unsigned short *) naytetietoja;

/**
 * Return the info about if there is sample information
 */
- (void) setNaytetietoja: (unsigned short *) newNaytetietoja;

/**
 * Return the result in numeric format
 */
- (double *) numerotulos;

/**
 * Return the result in numeric format
 */
- (void) setNumerotulos: (double *) newNumerotulos;

/**
 * Return the unit of the result
 */
- (NSString *) numeroyksikko;

/**
 * Return the unit of the result
 */
- (void) setNumeroyksikko: (NSString *) newNumeroyksikko;

/**
 * Return the Osalinkki
 */
- (int *) osalinkki;

/**
 * Return the Osalinkki
 */
- (void) setOsalinkki: (int *) newOsalinkki;

/**
 * Return the department
 */
- (int *) osasto;

/**
 * Return the department
 */
- (void) setOsasto: (int *) newOsasto;

/**
 * Return the time when the lab examination is done
 */
- (NSDate *) ottoaika;

/**
 * Return the time when the lab examination is done
 */
- (void) setOttoaika: (NSDate *) newOttoaika;

/**
 * Return the package
 */
- (NSString *) paketti;

/**
 * Return the package
 */
- (void) setPaketti: (NSString *) newPaketti;

/**
 * Return the V�est�vastuupiiri
 */
- (int *) piiri;

/**
 * Return the V�est�vastuupiiri
 */
- (void) setPiiri: (int *) newPiiri;

/**
 * Return the info about if the result is removed
 */
- (NSString *) poistettu;

/**
 * Return the info about if the result is removed
 */
- (void) setPoistettu: (NSString *) newPoistettu;

/**
 * 
 */
- (NSDate *) pyydetty;

/**
 * 
 */
- (void) setPyydetty: (NSDate *) newPyydetty;

/**
 * Return the verbal result
 */
- (NSString *) sanallinenvastaus;

/**
 * Return the verbal result
 */
- (void) setSanallinenvastaus: (NSString *) newSanallinenvastaus;

/**
 * Return the location (department)
 */
- (NSString *) sijaintiosasto;

/**
 * Return the location (department)
 */
- (void) setSijaintiosasto: (NSString *) newSijaintiosasto;

/**
 * Return the location (place)
 */
- (NSString *) sijaintipaikka;

/**
 * Return the location (place)
 */
- (void) setSijaintipaikka: (NSString *) newSijaintipaikka;

/**
 * Return the internal payer
 */
- (NSString *) sisainenMaksaja;

/**
 * Return the internal payer
 */
- (void) setSisainenMaksaja: (NSString *) newSisainenMaksaja;

/**
 * Return the Suoritelinkki
 */
- (int *) suoritelinkki;

/**
 * Return the Suoritelinkki
 */
- (void) setSuoritelinkki: (int *) newSuoritelinkki;

/**
 * Return the time when lab examination is done
 */
- (NSDate *) tehty;

/**
 * Return the time when lab examination is done
 */
- (void) setTehty: (NSDate *) newTehty;

/**
 * Return the place where lab examination is done
 */
- (int *) tekopaikka;

/**
 * Return the place where lab examination is done
 */
- (void) setTekopaikka: (int *) newTekopaikka;

/**
 * Return the result in textual format
 */
- (NSString *) tekstitulos;

/**
 * Return the result in textual format
 */
- (void) setTekstitulos: (NSString *) newTekstitulos;

/**
 * Return the SMS
 */
- (int *) tekstiviesti;

/**
 * Return the SMS
 */
- (void) setTekstiviesti: (int *) newTekstiviesti;

/**
 * Return the state
 */
- (unsigned short) tila;

/**
 * Return the state
 */
- (void) setTila: (unsigned short) newTila;

/**
 * Return the orderer
 */
- (int) tilaaja;

/**
 * Return the orderer
 */
- (void) setTilaaja: (int) newTilaaja;

/**
 * Return the name of the orderer
 */
- (NSString *) tilaajaNimi;

/**
 * Return the name of the orderer
 */
- (void) setTilaajaNimi: (NSString *) newTilaajaNimi;

/**
 * Return the unit of the orderer
 */
- (int *) tilaajayksikko;

/**
 * Return the unit of the orderer
 */
- (void) setTilaajayksikko: (int *) newTilaajayksikko;

/**
 * Return the identifier of the order
 */
- (NSString *) tilaustunnus;

/**
 * Return the identifier of the order
 */
- (void) setTilaustunnus: (NSString *) newTilaustunnus;

/**
 * Return the date when the repetition ends
 */
- (COREWEBNS0Date *) toistoloppuu;

/**
 * Return the date when the repetition ends
 */
- (void) setToistoloppuu: (COREWEBNS0Date *) newToistoloppuu;

/**
 * Return the interval of the repetition
 */
- (int *) toistovali;

/**
 * Return the interval of the repetition
 */
- (void) setToistovali: (int *) newToistovali;

/**
 * Return the interpretation
 */
- (NSString *) tulkinta;

/**
 * Return the interpretation
 */
- (void) setTulkinta: (NSString *) newTulkinta;

/**
 * Return the producer
 */
- (int *) tuottaja;

/**
 * Return the producer
 */
- (void) setTuottaja: (int *) newTuottaja;

/**
 * Return the employer
 */
- (int *) tyonantaja;

/**
 * Return the employer
 */
- (void) setTyonantaja: (int *) newTyonantaja;

/**
 * Return the info about if there is Vastaustietoja available
 */
- (unsigned short *) vastaustietoja;

/**
 * Return the info about if there is Vastaustietoja available
 */
- (void) setVastaustietoja: (unsigned short *) newVastaustietoja;

/**
 * Return the Viitearvot, which contains min and max values for the
 * result. Result is normal, if the value is between the min and max values.
 */
- (NSString *) viitearvot;

/**
 * Return the Viitearvot, which contains min and max values for the
 * result. Result is normal, if the value is between the min and max values.
 */
- (void) setViitearvot: (NSString *) newViitearvot;

/**
 * Return the recorder of the result
 */
- (int *) kirjaaja;

/**
 * Return the recorder of the result
 */
- (void) setKirjaaja: (int *) newKirjaaja;

/**
 * (no documentation provided)
 */
- (NSString *) tilaKoodi;

/**
 * (no documentation provided)
 */
- (void) setTilaKoodi: (NSString *) newTilaKoodi;

/**
 * (no documentation provided)
 */
- (int *) poikkeava;

/**
 * (no documentation provided)
 */
- (void) setPoikkeava: (int *) newPoikkeava;

/**
 * (no documentation provided)
 */
- (NSArray *) mikrobit;

/**
 * (no documentation provided)
 */
- (void) setMikrobit: (NSArray *) newMikrobit;
@end /* interface COREWEBNS0TutkimuspyyntoTiedot */

#endif /* DEF_COREWEBNS0TutkimuspyyntoTiedot_H */
#ifndef DEF_COREWEBNS0Laake_H
#define DEF_COREWEBNS0Laake_H

/**
 *  DTO for Laake, data base table LAAKE_VALMISTE

 */
@interface COREWEBNS0Laake : COREWEBNS0AbstractDTO <EnunciateXML>
{
  @private
    NSString *_koodi;
    NSString *_nimi;
    int *_valmistaja;
    NSString *_ehto;
    NSString *_varoituksia;
    NSString *_erityispiirre;
    unsigned short _erityisluvallinen;
    NSString *_laakemuoto;
    NSString *_vahvuus;
    float *_vahvuusarvo;
    NSString *_vahvuusyksikko;
    NSString *_pakkaus;
    float *_pakkauskerroin;
    float *_pakkausarvo;
    NSString *_pakkausyksikko;
    NSString *_pakkaustyyppi;
    NSString *_laite;
    float *_hinta;
    NSString *_reseptiteksti;
    NSString *_korvattavuus;
    NSString *_substituutioryhma;
    unsigned short _alkupera;
    unsigned short _tila;
    NSString *_halytys;
    NSDate *_erityislupaVanhenee;
    NSString *_vero;
    unsigned short *_peruslaakevalikoima;
    NSString *_kelpoisuusaika;
    NSString *_sailytys;
    int *_velvoitevarasto;
    int *_varoitusraja;
    unsigned short *_kappalevarasto;
    float *_tukkuhinta;
    float *_tarjoushinta;
    int *_sopimustoimittaja;
    NSString *_huomautuksia;
    int *_suoritelinkki;
    int *_kustannuslinkki;
    unsigned short _poistettu;
    NSDate *_muutosaika;
    short _muutospaikka;
    NSString *_tilasto1;
    NSString *_tilasto2;
    NSString *_tilasto3;
    NSString *_laaketietokantaversio;
    NSString *_koodityyppi;
    NSString *_tukkunumero;
    NSString *_laji;
    NSString *_myyntiluvanHaltija;
    NSString *_myyntilupanumero;
    unsigned short *_rinnakkaisvalmiste;
    NSString *_laakemuototunnus;
    NSString *_substituutiokoodi;
    unsigned short *_laakevaihto;
    float *_viitehinta;
    float *_hintaputki;
    unsigned short *_reseptivalmiste;
    NSString *_maaraamisehto;
    unsigned short *_huume;
    unsigned short *_liikennevaara;
    unsigned short *_lapsille;
    unsigned short *_annosjakelu;
    unsigned short *_jakouurre;
    NSString *_hintamuutos;
    NSString *_suorakorvauskoodi;
    NSString *_pkv;
    NSString *_valmistusohje;
    NSString *_markkinoija;
    unsigned short *_veriplasmavalmiste;
    unsigned short *_biologinenLaake;
    unsigned short *_lisaseurannassa;
    NSString *_lisatiedot;
    NSArray *_atc;
    NSArray *_annostusSoveltuvuus;
    NSArray *_yhteisvaikutus;
    NSArray *_vastaAihe;
    NSArray *_terapiaryhma;
    NSArray *_koostumus;
    NSArray *_tiivistelma;
    NSArray *_seloste;
    NSArray *_laakeaineet;
}

/**
 * (no documentation provided)
 */
- (NSString *) koodi;

/**
 * (no documentation provided)
 */
- (void) setKoodi: (NSString *) newKoodi;

/**
 * (no documentation provided)
 */
- (NSString *) nimi;

/**
 * (no documentation provided)
 */
- (void) setNimi: (NSString *) newNimi;

/**
 * (no documentation provided)
 */
- (int *) valmistaja;

/**
 * (no documentation provided)
 */
- (void) setValmistaja: (int *) newValmistaja;

/**
 * (no documentation provided)
 */
- (NSString *) ehto;

/**
 * (no documentation provided)
 */
- (void) setEhto: (NSString *) newEhto;

/**
 * (no documentation provided)
 */
- (NSString *) varoituksia;

/**
 * (no documentation provided)
 */
- (void) setVaroituksia: (NSString *) newVaroituksia;

/**
 * (no documentation provided)
 */
- (NSString *) erityispiirre;

/**
 * (no documentation provided)
 */
- (void) setErityispiirre: (NSString *) newErityispiirre;

/**
 * (no documentation provided)
 */
- (unsigned short) erityisluvallinen;

/**
 * (no documentation provided)
 */
- (void) setErityisluvallinen: (unsigned short) newErityisluvallinen;

/**
 * (no documentation provided)
 */
- (NSString *) laakemuoto;

/**
 * (no documentation provided)
 */
- (void) setLaakemuoto: (NSString *) newLaakemuoto;

/**
 * (no documentation provided)
 */
- (NSString *) vahvuus;

/**
 * (no documentation provided)
 */
- (void) setVahvuus: (NSString *) newVahvuus;

/**
 * (no documentation provided)
 */
- (float *) vahvuusarvo;

/**
 * (no documentation provided)
 */
- (void) setVahvuusarvo: (float *) newVahvuusarvo;

/**
 * (no documentation provided)
 */
- (NSString *) vahvuusyksikko;

/**
 * (no documentation provided)
 */
- (void) setVahvuusyksikko: (NSString *) newVahvuusyksikko;

/**
 * (no documentation provided)
 */
- (NSString *) pakkaus;

/**
 * (no documentation provided)
 */
- (void) setPakkaus: (NSString *) newPakkaus;

/**
 * (no documentation provided)
 */
- (float *) pakkauskerroin;

/**
 * (no documentation provided)
 */
- (void) setPakkauskerroin: (float *) newPakkauskerroin;

/**
 * (no documentation provided)
 */
- (float *) pakkausarvo;

/**
 * (no documentation provided)
 */
- (void) setPakkausarvo: (float *) newPakkausarvo;

/**
 * (no documentation provided)
 */
- (NSString *) pakkausyksikko;

/**
 * (no documentation provided)
 */
- (void) setPakkausyksikko: (NSString *) newPakkausyksikko;

/**
 * (no documentation provided)
 */
- (NSString *) pakkaustyyppi;

/**
 * (no documentation provided)
 */
- (void) setPakkaustyyppi: (NSString *) newPakkaustyyppi;

/**
 * (no documentation provided)
 */
- (NSString *) laite;

/**
 * (no documentation provided)
 */
- (void) setLaite: (NSString *) newLaite;

/**
 * (no documentation provided)
 */
- (float *) hinta;

/**
 * (no documentation provided)
 */
- (void) setHinta: (float *) newHinta;

/**
 * (no documentation provided)
 */
- (NSString *) reseptiteksti;

/**
 * (no documentation provided)
 */
- (void) setReseptiteksti: (NSString *) newReseptiteksti;

/**
 * (no documentation provided)
 */
- (NSString *) korvattavuus;

/**
 * (no documentation provided)
 */
- (void) setKorvattavuus: (NSString *) newKorvattavuus;

/**
 * (no documentation provided)
 */
- (NSString *) substituutioryhma;

/**
 * (no documentation provided)
 */
- (void) setSubstituutioryhma: (NSString *) newSubstituutioryhma;

/**
 * (no documentation provided)
 */
- (unsigned short) alkupera;

/**
 * (no documentation provided)
 */
- (void) setAlkupera: (unsigned short) newAlkupera;

/**
 * (no documentation provided)
 */
- (unsigned short) tila;

/**
 * (no documentation provided)
 */
- (void) setTila: (unsigned short) newTila;

/**
 * (no documentation provided)
 */
- (NSString *) halytys;

/**
 * (no documentation provided)
 */
- (void) setHalytys: (NSString *) newHalytys;

/**
 * (no documentation provided)
 */
- (NSDate *) erityislupaVanhenee;

/**
 * (no documentation provided)
 */
- (void) setErityislupaVanhenee: (NSDate *) newErityislupaVanhenee;

/**
 * (no documentation provided)
 */
- (NSString *) vero;

/**
 * (no documentation provided)
 */
- (void) setVero: (NSString *) newVero;

/**
 * (no documentation provided)
 */
- (unsigned short *) peruslaakevalikoima;

/**
 * (no documentation provided)
 */
- (void) setPeruslaakevalikoima: (unsigned short *) newPeruslaakevalikoima;

/**
 * (no documentation provided)
 */
- (NSString *) kelpoisuusaika;

/**
 * (no documentation provided)
 */
- (void) setKelpoisuusaika: (NSString *) newKelpoisuusaika;

/**
 * (no documentation provided)
 */
- (NSString *) sailytys;

/**
 * (no documentation provided)
 */
- (void) setSailytys: (NSString *) newSailytys;

/**
 * (no documentation provided)
 */
- (int *) velvoitevarasto;

/**
 * (no documentation provided)
 */
- (void) setVelvoitevarasto: (int *) newVelvoitevarasto;

/**
 * (no documentation provided)
 */
- (int *) varoitusraja;

/**
 * (no documentation provided)
 */
- (void) setVaroitusraja: (int *) newVaroitusraja;

/**
 * (no documentation provided)
 */
- (unsigned short *) kappalevarasto;

/**
 * (no documentation provided)
 */
- (void) setKappalevarasto: (unsigned short *) newKappalevarasto;

/**
 * (no documentation provided)
 */
- (float *) tukkuhinta;

/**
 * (no documentation provided)
 */
- (void) setTukkuhinta: (float *) newTukkuhinta;

/**
 * (no documentation provided)
 */
- (float *) tarjoushinta;

/**
 * (no documentation provided)
 */
- (void) setTarjoushinta: (float *) newTarjoushinta;

/**
 * (no documentation provided)
 */
- (int *) sopimustoimittaja;

/**
 * (no documentation provided)
 */
- (void) setSopimustoimittaja: (int *) newSopimustoimittaja;

/**
 * (no documentation provided)
 */
- (NSString *) huomautuksia;

/**
 * (no documentation provided)
 */
- (void) setHuomautuksia: (NSString *) newHuomautuksia;

/**
 * (no documentation provided)
 */
- (int *) suoritelinkki;

/**
 * (no documentation provided)
 */
- (void) setSuoritelinkki: (int *) newSuoritelinkki;

/**
 * (no documentation provided)
 */
- (int *) kustannuslinkki;

/**
 * (no documentation provided)
 */
- (void) setKustannuslinkki: (int *) newKustannuslinkki;

/**
 * (no documentation provided)
 */
- (unsigned short) poistettu;

/**
 * (no documentation provided)
 */
- (void) setPoistettu: (unsigned short) newPoistettu;

/**
 * (no documentation provided)
 */
- (NSDate *) muutosaika;

/**
 * (no documentation provided)
 */
- (void) setMuutosaika: (NSDate *) newMuutosaika;

/**
 * (no documentation provided)
 */
- (short) muutospaikka;

/**
 * (no documentation provided)
 */
- (void) setMuutospaikka: (short) newMuutospaikka;

/**
 * (no documentation provided)
 */
- (NSString *) tilasto1;

/**
 * (no documentation provided)
 */
- (void) setTilasto1: (NSString *) newTilasto1;

/**
 * (no documentation provided)
 */
- (NSString *) tilasto2;

/**
 * (no documentation provided)
 */
- (void) setTilasto2: (NSString *) newTilasto2;

/**
 * (no documentation provided)
 */
- (NSString *) tilasto3;

/**
 * (no documentation provided)
 */
- (void) setTilasto3: (NSString *) newTilasto3;

/**
 * (no documentation provided)
 */
- (NSString *) laaketietokantaversio;

/**
 * (no documentation provided)
 */
- (void) setLaaketietokantaversio: (NSString *) newLaaketietokantaversio;

/**
 * (no documentation provided)
 */
- (NSString *) koodityyppi;

/**
 * (no documentation provided)
 */
- (void) setKoodityyppi: (NSString *) newKoodityyppi;

/**
 * (no documentation provided)
 */
- (NSString *) tukkunumero;

/**
 * (no documentation provided)
 */
- (void) setTukkunumero: (NSString *) newTukkunumero;

/**
 * (no documentation provided)
 */
- (NSString *) laji;

/**
 * (no documentation provided)
 */
- (void) setLaji: (NSString *) newLaji;

/**
 * (no documentation provided)
 */
- (NSString *) myyntiluvanHaltija;

/**
 * (no documentation provided)
 */
- (void) setMyyntiluvanHaltija: (NSString *) newMyyntiluvanHaltija;

/**
 * (no documentation provided)
 */
- (NSString *) myyntilupanumero;

/**
 * (no documentation provided)
 */
- (void) setMyyntilupanumero: (NSString *) newMyyntilupanumero;

/**
 * (no documentation provided)
 */
- (unsigned short *) rinnakkaisvalmiste;

/**
 * (no documentation provided)
 */
- (void) setRinnakkaisvalmiste: (unsigned short *) newRinnakkaisvalmiste;

/**
 * (no documentation provided)
 */
- (NSString *) laakemuototunnus;

/**
 * (no documentation provided)
 */
- (void) setLaakemuototunnus: (NSString *) newLaakemuototunnus;

/**
 * (no documentation provided)
 */
- (NSString *) substituutiokoodi;

/**
 * (no documentation provided)
 */
- (void) setSubstituutiokoodi: (NSString *) newSubstituutiokoodi;

/**
 * (no documentation provided)
 */
- (unsigned short *) laakevaihto;

/**
 * (no documentation provided)
 */
- (void) setLaakevaihto: (unsigned short *) newLaakevaihto;

/**
 * (no documentation provided)
 */
- (float *) viitehinta;

/**
 * (no documentation provided)
 */
- (void) setViitehinta: (float *) newViitehinta;

/**
 * (no documentation provided)
 */
- (float *) hintaputki;

/**
 * (no documentation provided)
 */
- (void) setHintaputki: (float *) newHintaputki;

/**
 * (no documentation provided)
 */
- (unsigned short *) reseptivalmiste;

/**
 * (no documentation provided)
 */
- (void) setReseptivalmiste: (unsigned short *) newReseptivalmiste;

/**
 * (no documentation provided)
 */
- (NSString *) maaraamisehto;

/**
 * (no documentation provided)
 */
- (void) setMaaraamisehto: (NSString *) newMaaraamisehto;

/**
 * (no documentation provided)
 */
- (unsigned short *) huume;

/**
 * (no documentation provided)
 */
- (void) setHuume: (unsigned short *) newHuume;

/**
 * (no documentation provided)
 */
- (unsigned short *) liikennevaara;

/**
 * (no documentation provided)
 */
- (void) setLiikennevaara: (unsigned short *) newLiikennevaara;

/**
 * (no documentation provided)
 */
- (unsigned short *) lapsille;

/**
 * (no documentation provided)
 */
- (void) setLapsille: (unsigned short *) newLapsille;

/**
 * (no documentation provided)
 */
- (unsigned short *) annosjakelu;

/**
 * (no documentation provided)
 */
- (void) setAnnosjakelu: (unsigned short *) newAnnosjakelu;

/**
 * (no documentation provided)
 */
- (unsigned short *) jakouurre;

/**
 * (no documentation provided)
 */
- (void) setJakouurre: (unsigned short *) newJakouurre;

/**
 * (no documentation provided)
 */
- (NSString *) hintamuutos;

/**
 * (no documentation provided)
 */
- (void) setHintamuutos: (NSString *) newHintamuutos;

/**
 * (no documentation provided)
 */
- (NSString *) suorakorvauskoodi;

/**
 * (no documentation provided)
 */
- (void) setSuorakorvauskoodi: (NSString *) newSuorakorvauskoodi;

/**
 * (no documentation provided)
 */
- (NSString *) pkv;

/**
 * (no documentation provided)
 */
- (void) setPkv: (NSString *) newPkv;

/**
 * (no documentation provided)
 */
- (NSString *) valmistusohje;

/**
 * (no documentation provided)
 */
- (void) setValmistusohje: (NSString *) newValmistusohje;

/**
 * (no documentation provided)
 */
- (NSString *) markkinoija;

/**
 * (no documentation provided)
 */
- (void) setMarkkinoija: (NSString *) newMarkkinoija;

/**
 * (no documentation provided)
 */
- (unsigned short *) veriplasmavalmiste;

/**
 * (no documentation provided)
 */
- (void) setVeriplasmavalmiste: (unsigned short *) newVeriplasmavalmiste;

/**
 * (no documentation provided)
 */
- (unsigned short *) biologinenLaake;

/**
 * (no documentation provided)
 */
- (void) setBiologinenLaake: (unsigned short *) newBiologinenLaake;

/**
 * (no documentation provided)
 */
- (unsigned short *) lisaseurannassa;

/**
 * (no documentation provided)
 */
- (void) setLisaseurannassa: (unsigned short *) newLisaseurannassa;

/**
 * (no documentation provided)
 */
- (NSString *) lisatiedot;

/**
 * (no documentation provided)
 */
- (void) setLisatiedot: (NSString *) newLisatiedot;

/**
 * (no documentation provided)
 */
- (NSArray *) atc;

/**
 * (no documentation provided)
 */
- (void) setAtc: (NSArray *) newAtc;

/**
 * (no documentation provided)
 */
- (NSArray *) annostusSoveltuvuus;

/**
 * (no documentation provided)
 */
- (void) setAnnostusSoveltuvuus: (NSArray *) newAnnostusSoveltuvuus;

/**
 * (no documentation provided)
 */
- (NSArray *) yhteisvaikutus;

/**
 * (no documentation provided)
 */
- (void) setYhteisvaikutus: (NSArray *) newYhteisvaikutus;

/**
 * (no documentation provided)
 */
- (NSArray *) vastaAihe;

/**
 * (no documentation provided)
 */
- (void) setVastaAihe: (NSArray *) newVastaAihe;

/**
 * (no documentation provided)
 */
- (NSArray *) terapiaryhma;

/**
 * (no documentation provided)
 */
- (void) setTerapiaryhma: (NSArray *) newTerapiaryhma;

/**
 * (no documentation provided)
 */
- (NSArray *) koostumus;

/**
 * (no documentation provided)
 */
- (void) setKoostumus: (NSArray *) newKoostumus;

/**
 * (no documentation provided)
 */
- (NSArray *) tiivistelma;

/**
 * (no documentation provided)
 */
- (void) setTiivistelma: (NSArray *) newTiivistelma;

/**
 * (no documentation provided)
 */
- (NSArray *) seloste;

/**
 * (no documentation provided)
 */
- (void) setSeloste: (NSArray *) newSeloste;

/**
 * (no documentation provided)
 */
- (NSArray *) laakeaineet;

/**
 * (no documentation provided)
 */
- (void) setLaakeaineet: (NSArray *) newLaakeaineet;
@end /* interface COREWEBNS0Laake */

#endif /* DEF_COREWEBNS0Laake_H */
#ifndef DEF_COREWEBNS0LaakeAnnostus_H
#define DEF_COREWEBNS0LaakeAnnostus_H

/**
 *  DTO for LaakeAnnostus

 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKE_ANNOSTUS.html

 */
@interface COREWEBNS0LaakeAnnostus : COREWEBNS0AbstractDTO <EnunciateXML>
{
  @private
    int _numero;
    NSString *_selite;
    int *_alaikaraja;
    int *_ylaikaraja;
    int *_alapainoraja;
    int *_ylapainoraja;
    NSString *_malli;
    short _desimaaleja;
    unsigned short _painokerroin;
    float _annettavaMaara;
    float *_annettavaMaksimi;
    NSString *_annettavaYksikko;
    float *_antotahti;
    NSString *_antotahtiYksikko;
    NSString *_kokonaiskesto;
    float *_kokonaismaara;
    NSString *_kokonaismaaraYksikko;
    unsigned short _varmistus;
    NSString *_kayttotarkoitus;
    NSString *_ohjeet;
    int *_iterointi;
    unsigned short _pysyva;
    unsigned short _tarvittaessa;
    unsigned short _perusteluVaaditaan;
    NSString *_antoreitit;
    NSString *_antopaikat;
    NSString *_antovalineet;
    NSString *_antotavat;
    unsigned short _alkupera;
    unsigned short _poistettu;
    NSDate *_muutosaika;
    int _muutospaikka;
    int *_kenen;
    NSString *_lyhyesti;
    NSString *_toisto;
    NSString *_toistokuvaus;
    NSString *_aikayksikko;
}

/**
 * Returns the id of the dosage
 */
- (int) numero;

/**
 * Returns the id of the dosage
 */
- (void) setNumero: (int) newNumero;

/**
 * Returns the explanation of the dosage
 */
- (NSString *) selite;

/**
 * Returns the explanation of the dosage
 */
- (void) setSelite: (NSString *) newSelite;

/**
 * Returns the lower age limit
 */
- (int *) alaikaraja;

/**
 * Returns the lower age limit
 */
- (void) setAlaikaraja: (int *) newAlaikaraja;

/**
 * Returns the upper age limit
 */
- (int *) ylaikaraja;

/**
 * Returns the upper age limit
 */
- (void) setYlaikaraja: (int *) newYlaikaraja;

/**
 * Returns the lower weight limit
 */
- (int *) alapainoraja;

/**
 * Returns the lower weight limit
 */
- (void) setAlapainoraja: (int *) newAlapainoraja;

/**
 * Returns the upper weight limit
 */
- (int *) ylapainoraja;

/**
 * Returns the upper weight limit
 */
- (void) setYlapainoraja: (int *) newYlapainoraja;

/**
 * Returns the model for the prescription text
 */
- (NSString *) malli;

/**
 * Returns the model for the prescription text
 */
- (void) setMalli: (NSString *) newMalli;

/**
 * Returns the amount of decimals in prescription text
 */
- (short) desimaaleja;

/**
 * Returns the amount of decimals in prescription text
 */
- (void) setDesimaaleja: (short) newDesimaaleja;

/**
 * Returns 'K' if dosage should be multiplied by patients weight
 */
- (unsigned short) painokerroin;

/**
 * Returns 'K' if dosage should be multiplied by patients weight
 */
- (void) setPainokerroin: (unsigned short) newPainokerroin;

/**
 * Returns the size of the single dosage
 */
- (float) annettavaMaara;

/**
 * Returns the size of the single dosage
 */
- (void) setAnnettavaMaara: (float) newAnnettavaMaara;

/**
 * Returns the maximum size of a single dosage
 */
- (float *) annettavaMaksimi;

/**
 * Returns the maximum size of a single dosage
 */
- (void) setAnnettavaMaksimi: (float *) newAnnettavaMaksimi;

/**
 * Returns the unit of the single dosage
 */
- (NSString *) annettavaYksikko;

/**
 * Returns the unit of the single dosage
 */
- (void) setAnnettavaYksikko: (NSString *) newAnnettavaYksikko;

/**
 * Returns the speed of dosing
 */
- (float *) antotahti;

/**
 * Returns the speed of dosing
 */
- (void) setAntotahti: (float *) newAntotahti;

/**
 * Returns the unit of the dosing speed
 */
- (NSString *) antotahtiYksikko;

/**
 * Returns the unit of the dosing speed
 */
- (void) setAntotahtiYksikko: (NSString *) newAntotahtiYksikko;

/**
 * Returns the total duratio of the dosage
 */
- (NSString *) kokonaiskesto;

/**
 * Returns the total duratio of the dosage
 */
- (void) setKokonaiskesto: (NSString *) newKokonaiskesto;

/**
 * Returns the total amount of the dosage
 */
- (float *) kokonaismaara;

/**
 * Returns the total amount of the dosage
 */
- (void) setKokonaismaara: (float *) newKokonaismaara;

/**
 * Returns the unit of total amount of the dosage
 */
- (NSString *) kokonaismaaraYksikko;

/**
 * Returns the unit of total amount of the dosage
 */
- (void) setKokonaismaaraYksikko: (NSString *) newKokonaismaaraYksikko;

/**
 * Returns the confirmation for the dosage
 * -'K' if "sic!" should be added to the prescription text
 * -'E' otherwise
 */
- (unsigned short) varmistus;

/**
 * Returns the confirmation for the dosage
 * -'K' if "sic!" should be added to the prescription text
 * -'E' otherwise
 */
- (void) setVarmistus: (unsigned short) newVarmistus;

/**
 * Returns the use of the dosage
 */
- (NSString *) kayttotarkoitus;

/**
 * Returns the use of the dosage
 */
- (void) setKayttotarkoitus: (NSString *) newKayttotarkoitus;

/**
 * Returns the instructions of the dosage
 */
- (NSString *) ohjeet;

/**
 * Returns the instructions of the dosage
 */
- (void) setOhjeet: (NSString *) newOhjeet;

/**
 * Returns the iteration
 */
- (int *) iterointi;

/**
 * Returns the iteration
 */
- (void) setIterointi: (int *) newIterointi;

/**
 * Returns the permanence of the dosage
 * -'K' pysyv�
 * -'E' otherwise
 */
- (unsigned short) pysyva;

/**
 * Returns the permanence of the dosage
 * -'K' pysyv�
 * -'E' otherwise
 */
- (void) setPysyva: (unsigned short) newPysyva;

/**
 * Returns if the medicine is taken when needed
 * -'K' tarvittaessa
 * -'E' otherwise
 */
- (unsigned short) tarvittaessa;

/**
 * Returns if the medicine is taken when needed
 * -'K' tarvittaessa
 * -'E' otherwise
 */
- (void) setTarvittaessa: (unsigned short) newTarvittaessa;

/**
 * Returns 'K' if Kela wants user to explain the usage of medicine. 'E' otherwise.
 */
- (unsigned short) perusteluVaaditaan;

/**
 * Returns 'K' if Kela wants user to explain the usage of medicine. 'E' otherwise.
 */
- (void) setPerusteluVaaditaan: (unsigned short) newPerusteluVaaditaan;

/**
 * Returns "antoreitit" for the medicine
 */
- (NSString *) antoreitit;

/**
 * Returns "antoreitit" for the medicine
 */
- (void) setAntoreitit: (NSString *) newAntoreitit;

/**
 * Returns "antopaikat" for the medicine
 */
- (NSString *) antopaikat;

/**
 * Returns "antopaikat" for the medicine
 */
- (void) setAntopaikat: (NSString *) newAntopaikat;

/**
 * Returns "antov�lineet" for the medicine
 */
- (NSString *) antovalineet;

/**
 * Returns "antov�lineet" for the medicine
 */
- (void) setAntovalineet: (NSString *) newAntovalineet;

/**
 * Returns "antotavat" for the medicine
 */
- (NSString *) antotavat;

/**
 * Returns "antotavat" for the medicine
 */
- (void) setAntotavat: (NSString *) newAntotavat;

/**
 * Returns the origin of the dosage
 * -'O' if current organization
 * -'A' or 'M' otherwise
 */
- (unsigned short) alkupera;

/**
 * Returns the origin of the dosage
 * -'O' if current organization
 * -'A' or 'M' otherwise
 */
- (void) setAlkupera: (unsigned short) newAlkupera;

/**
 * Returns the code of the dosage removal. 'E' - not removed, 'K' = removed
 */
- (unsigned short) poistettu;

/**
 * Returns the code of the dosage removal. 'E' - not removed, 'K' = removed
 */
- (void) setPoistettu: (unsigned short) newPoistettu;

/**
 * Returns the actual DB-change time of the dosage
 */
- (NSDate *) muutosaika;

/**
 * Returns the actual DB-change time of the dosage
 */
- (void) setMuutosaika: (NSDate *) newMuutosaika;

/**
 * Returns the organization in which the change has been made
 */
- (int) muutospaikka;

/**
 * Returns the organization in which the change has been made
 */
- (void) setMuutospaikka: (int) newMuutospaikka;

/**
 * Returns whose dosage it is
 */
- (int *) kenen;

/**
 * Returns whose dosage it is
 */
- (void) setKenen: (int *) newKenen;

/**
 * Returns a summary of the dosage
 */
- (NSString *) lyhyesti;

/**
 * Returns a summary of the dosage
 */
- (void) setLyhyesti: (NSString *) newLyhyesti;

/**
 * Returns the repetition of the dosage
 */
- (NSString *) toisto;

/**
 * Returns the repetition of the dosage
 */
- (void) setToisto: (NSString *) newToisto;

/**
 * Returns the repetition in plain language
 */
- (NSString *) toistokuvaus;

/**
 * Returns the repetition in plain language
 */
- (void) setToistokuvaus: (NSString *) newToistokuvaus;

/**
 * Returns the time unit used
 */
- (NSString *) aikayksikko;

/**
 * Returns the time unit used
 */
- (void) setAikayksikko: (NSString *) newAikayksikko;
@end /* interface COREWEBNS0LaakeAnnostus */

#endif /* DEF_COREWEBNS0LaakeAnnostus_H */
#ifndef DEF_COREWEBNS0LaakeAtc_H
#define DEF_COREWEBNS0LaakeAtc_H

/**
 *  DTO for LaakeAtc, data base table LAAKE_ATC

 */
@interface COREWEBNS0LaakeAtc : COREWEBNS0AbstractDTO <EnunciateXML>
{
  @private
    NSString *_atc;
    unsigned short _alkupera;
}

/**
 * (no documentation provided)
 */
- (NSString *) atc;

/**
 * (no documentation provided)
 */
- (void) setAtc: (NSString *) newAtc;

/**
 * (no documentation provided)
 */
- (unsigned short) alkupera;

/**
 * (no documentation provided)
 */
- (void) setAlkupera: (unsigned short) newAlkupera;
@end /* interface COREWEBNS0LaakeAtc */

#endif /* DEF_COREWEBNS0LaakeAtc_H */
#ifndef DEF_COREWEBNS0LaakeSeloste_H
#define DEF_COREWEBNS0LaakeSeloste_H

/**
 *  DTO for LaakeSeloste

 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKE_SELOSTE.html
 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKE_SELOSTE_SOVELTUVUUS.html

 */
@interface COREWEBNS0LaakeSeloste : COREWEBNS0AbstractDTO <EnunciateXML>
{
  @private
    int _seloste;
    NSString *_nimi;
    NSString *_ehto;
    NSString *_valmistaja;
    unsigned short _poistettu;
    NSDate *_muutosaika;
    short _muutospaikka;
    NSArray *_tekstit;
}

/**
 * Returns the id of the medication description
 */
- (int) seloste;

/**
 * Returns the id of the medication description
 */
- (void) setSeloste: (int) newSeloste;

/**
 * Returns the name of the medication
 */
- (NSString *) nimi;

/**
 * Returns the name of the medication
 */
- (void) setNimi: (NSString *) newNimi;

/**
 * Returns the preconditions for the medicine
 * (m��r�ys-/toimitusehto)
 */
- (NSString *) ehto;

/**
 * Returns the preconditions for the medicine
 * (m��r�ys-/toimitusehto)
 */
- (void) setEhto: (NSString *) newEhto;

/**
 * Returns the manufacturer of the medicine
 */
- (NSString *) valmistaja;

/**
 * Returns the manufacturer of the medicine
 */
- (void) setValmistaja: (NSString *) newValmistaja;

/**
 * Returns the code of the description removal. 'E' - not removed, 'K' = removed
 */
- (unsigned short) poistettu;

/**
 * Returns the code of the description removal. 'E' - not removed, 'K' = removed
 */
- (void) setPoistettu: (unsigned short) newPoistettu;

/**
 * Returns the actual DB-change time of the desctription
 */
- (NSDate *) muutosaika;

/**
 * Returns the actual DB-change time of the desctription
 */
- (void) setMuutosaika: (NSDate *) newMuutosaika;

/**
 * Returns the organization in which the change has been made
 */
- (short) muutospaikka;

/**
 * Returns the organization in which the change has been made
 */
- (void) setMuutospaikka: (short) newMuutospaikka;

/**
 * Returns a list of description texts
 */
- (NSArray *) tekstit;

/**
 * Returns a list of description texts
 */
- (void) setTekstit: (NSArray *) newTekstit;
@end /* interface COREWEBNS0LaakeSeloste */

#endif /* DEF_COREWEBNS0LaakeSeloste_H */
#ifndef DEF_COREWEBNS0LaakeTerapiaryhma_H
#define DEF_COREWEBNS0LaakeTerapiaryhma_H

/**
 *  DTO for LaakeTerapiaryhma

 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKE_TERAPIARYHMA.html
 http://vc-buildsrv1/documents/mediatridocs/latest/tables/TERAPIARYHMA.html

 */
@interface COREWEBNS0LaakeTerapiaryhma : COREWEBNS0AbstractDTO <EnunciateXML>
{
  @private
    NSString *_terapiaryhma;
    unsigned short _alkupera;
    NSString *_nimi;
    int *_taso;
    unsigned short _poistettu;
}

/**
 * Returns the code of the therapy group
 */
- (NSString *) terapiaryhma;

/**
 * Returns the code of the therapy group
 */
- (void) setTerapiaryhma: (NSString *) newTerapiaryhma;

/**
 * Returns the origin of the therapy group
 * -'O' if therapy group is linked in the current organization
 * -'A' or 'M' otherwise
 */
- (unsigned short) alkupera;

/**
 * Returns the origin of the therapy group
 * -'O' if therapy group is linked in the current organization
 * -'A' or 'M' otherwise
 */
- (void) setAlkupera: (unsigned short) newAlkupera;

/**
 * Returns the name of the therapy group
 */
- (NSString *) nimi;

/**
 * Returns the name of the therapy group
 */
- (void) setNimi: (NSString *) newNimi;

/**
 * Returns the level of the therapy group
 * -1 is the highest level, lower levels are >1
 */
- (int *) taso;

/**
 * Returns the level of the therapy group
 * -1 is the highest level, lower levels are >1
 */
- (void) setTaso: (int *) newTaso;

/**
 * Returns the code of the therapy group removal. 'E' - not removed, 'K' = removed
 */
- (unsigned short) poistettu;

/**
 * Returns the code of the therapy group removal. 'E' - not removed, 'K' = removed
 */
- (void) setPoistettu: (unsigned short) newPoistettu;
@end /* interface COREWEBNS0LaakeTerapiaryhma */

#endif /* DEF_COREWEBNS0LaakeTerapiaryhma_H */
#ifndef DEF_COREWEBNS0LaakeTiivistelmaTeksti_H
#define DEF_COREWEBNS0LaakeTiivistelmaTeksti_H

/**
 *  DTO for LaakeTiivistelmaTeksti

 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKE_TIIVISTELMA_TEKSTI.html

 */
@interface COREWEBNS0LaakeTiivistelmaTeksti : COREWEBNS0AbstractDTO <EnunciateXML>
{
  @private
    int _osa;
    int _otsikko;
    NSString *_teksti;
}

/**
 * Returns the part number of the summary text, can be used to order summaries
 */
- (int) osa;

/**
 * Returns the part number of the summary text, can be used to order summaries
 */
- (void) setOsa: (int) newOsa;

/**
 * Returns the header of the
 */
- (int) otsikko;

/**
 * Returns the header of the
 */
- (void) setOtsikko: (int) newOtsikko;

/**
 * Returns the summary text
 */
- (NSString *) teksti;

/**
 * Returns the summary text
 */
- (void) setTeksti: (NSString *) newTeksti;
@end /* interface COREWEBNS0LaakeTiivistelmaTeksti */

#endif /* DEF_COREWEBNS0LaakeTiivistelmaTeksti_H */
#ifndef DEF_COREWEBNS0LaakitysKayttoaihe_H
#define DEF_COREWEBNS0LaakitysKayttoaihe_H

/**
 *  DTO for LAAKITYS_KAYTTOAIHE and KAYTTOAIHE database tables

 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKITYS_KAYTTOAIHE.html
 http://vc-buildsrv1/documents/mediatridocs/latest/tables/KAYTTOAIHE.html

 */
@interface COREWEBNS0LaakitysKayttoaihe : COREWEBNS0AbstractDTO <EnunciateXML>
{
  @private
    int _rivi;
    int _numero;
    NSString *_selite;
    NSString *_reseptiteksti;
    unsigned short _alkupera;
    unsigned short _tyyppi;
    unsigned short _poistettu;
    NSDate *_muutosaika;
    short _muutospaikka;
}

/**
 * Returns the row number, which arranges the LaakitysKayttoaihe entities in order of importance
 */
- (int) rivi;

/**
 * Returns the row number, which arranges the LaakitysKayttoaihe entities in order of importance
 */
- (void) setRivi: (int) newRivi;

/**
 * Returns the unique id of Kayttoaihe
 */
- (int) numero;

/**
 * Returns the unique id of Kayttoaihe
 */
- (void) setNumero: (int) newNumero;

/**
 * Returns the name of the Kayttoaihe in plain languate
 */
- (NSString *) selite;

/**
 * Returns the name of the Kayttoaihe in plain languate
 */
- (void) setSelite: (NSString *) newSelite;

/**
 * Returns the name of the Kayttoaihe which is printed to the prescription
 */
- (NSString *) reseptiteksti;

/**
 * Returns the name of the Kayttoaihe which is printed to the prescription
 */
- (void) setReseptiteksti: (NSString *) newReseptiteksti;

/**
 * Returns the origin of the Kayttoaihe
 * -"O" if added by organization itself
 * -"A" or "M" otherwise
 */
- (unsigned short) alkupera;

/**
 * Returns the origin of the Kayttoaihe
 * -"O" if added by organization itself
 * -"A" or "M" otherwise
 */
- (void) setAlkupera: (unsigned short) newAlkupera;

/**
 * Returns the type of the Kayttoaihe
 * -"C" if Kayttoaihe
 * -"G" if group
 * -"D" if deleted
 */
- (unsigned short) tyyppi;

/**
 * Returns the type of the Kayttoaihe
 * -"C" if Kayttoaihe
 * -"G" if group
 * -"D" if deleted
 */
- (void) setTyyppi: (unsigned short) newTyyppi;

/**
 * Returns the code of the kayttoaihe removal. 'E' - not removed, 'K' = removed
 */
- (unsigned short) poistettu;

/**
 * Returns the code of the kayttoaihe removal. 'E' - not removed, 'K' = removed
 */
- (void) setPoistettu: (unsigned short) newPoistettu;

/**
 * Returns the actual DB-change time of the Kayttoaihe
 */
- (NSDate *) muutosaika;

/**
 * Returns the actual DB-change time of the Kayttoaihe
 */
- (void) setMuutosaika: (NSDate *) newMuutosaika;

/**
 * Returns the organization in which the change has been made
 */
- (short) muutospaikka;

/**
 * Returns the organization in which the change has been made
 */
- (void) setMuutospaikka: (short) newMuutospaikka;
@end /* interface COREWEBNS0LaakitysKayttoaihe */

#endif /* DEF_COREWEBNS0LaakitysKayttoaihe_H */
#ifndef DEF_COREWEBNS0LaakitysTapa_H
#define DEF_COREWEBNS0LaakitysTapa_H

/**
 *  DTO for LAAKITYS_TAPA

 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKITYS_TAPA.html

 */
@interface COREWEBNS0LaakitysTapa : COREWEBNS0AbstractDTO <EnunciateXML>
{
  @private
    NSString *_reittikoodi;
    NSString *_reittiteksti;
    NSString *_paikkakoodi;
    NSString *_paikkateksti;
    NSString *_valinekoodi;
    NSString *_valineteksti;
    NSString *_tapakoodi;
    NSString *_tapateksti;
}

/**
 * Returns the "antoreitti" in code
 */
- (NSString *) reittikoodi;

/**
 * Returns the "antoreitti" in code
 */
- (void) setReittikoodi: (NSString *) newReittikoodi;

/**
 * Returns the "antoreitti" in text
 */
- (NSString *) reittiteksti;

/**
 * Returns the "antoreitti" in text
 */
- (void) setReittiteksti: (NSString *) newReittiteksti;

/**
 * Returns the "antopaikka" in code
 */
- (NSString *) paikkakoodi;

/**
 * Returns the "antopaikka" in code
 */
- (void) setPaikkakoodi: (NSString *) newPaikkakoodi;

/**
 * Returns the "antopaikka" in text
 */
- (NSString *) paikkateksti;

/**
 * Returns the "antopaikka" in text
 */
- (void) setPaikkateksti: (NSString *) newPaikkateksti;

/**
 * Returns the "antov�line" in code
 */
- (NSString *) valinekoodi;

/**
 * Returns the "antov�line" in code
 */
- (void) setValinekoodi: (NSString *) newValinekoodi;

/**
 * Returns the "antov�line" in text
 */
- (NSString *) valineteksti;

/**
 * Returns the "antov�line" in text
 */
- (void) setValineteksti: (NSString *) newValineteksti;

/**
 * Returns the "antotapa" in code
 */
- (NSString *) tapakoodi;

/**
 * Returns the "antotapa" in code
 */
- (void) setTapakoodi: (NSString *) newTapakoodi;

/**
 * Returns the "antotapa" in text
 */
- (NSString *) tapateksti;

/**
 * Returns the "antotapa" in text
 */
- (void) setTapateksti: (NSString *) newTapateksti;
@end /* interface COREWEBNS0LaakitysTapa */

#endif /* DEF_COREWEBNS0LaakitysTapa_H */
#ifndef DEF_COREWEBNS0LaakitysTauko_H
#define DEF_COREWEBNS0LaakitysTauko_H

/**
 *  DTO for LaakitysTauko

 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKITYS_TAUKO.html

 */
@interface COREWEBNS0LaakitysTauko : COREWEBNS0AbstractDTO <EnunciateXML>
{
  @private
    NSDate *_alkaa;
    NSDate *_loppuu;
    NSString *_huomautuksia;
    int _aloittaja;
    int *_lopettaja;
    unsigned short _poistettu;
    NSDate *_muutosaika;
    short _muutospaikka;
}

/**
 * Returns the starting time of the medication break
 */
- (NSDate *) alkaa;

/**
 * Returns the starting time of the medication break
 */
- (void) setAlkaa: (NSDate *) newAlkaa;

/**
 * Returns the ending time of the medication break
 */
- (NSDate *) loppuu;

/**
 * Returns the ending time of the medication break
 */
- (void) setLoppuu: (NSDate *) newLoppuu;

/**
 * Returns the notes about the medication break
 */
- (NSString *) huomautuksia;

/**
 * Returns the notes about the medication break
 */
- (void) setHuomautuksia: (NSString *) newHuomautuksia;

/**
 * Returns the id of an user who started the medication break
 */
- (int) aloittaja;

/**
 * Returns the id of an user who started the medication break
 */
- (void) setAloittaja: (int) newAloittaja;

/**
 * Returns the id of an user who ended the medication break
 */
- (int *) lopettaja;

/**
 * Returns the id of an user who ended the medication break
 */
- (void) setLopettaja: (int *) newLopettaja;

/**
 * Returns the code of the medication break removal. 'E' - not removed, 'K' = removed
 */
- (unsigned short) poistettu;

/**
 * Returns the code of the medication break removal. 'E' - not removed, 'K' = removed
 */
- (void) setPoistettu: (unsigned short) newPoistettu;

/**
 * Returns the actual DB-change time of the medication break
 */
- (NSDate *) muutosaika;

/**
 * Returns the actual DB-change time of the medication break
 */
- (void) setMuutosaika: (NSDate *) newMuutosaika;

/**
 * Returns the organization in which the change has been made
 */
- (short) muutospaikka;

/**
 * Returns the organization in which the change has been made
 */
- (void) setMuutospaikka: (short) newMuutospaikka;
@end /* interface COREWEBNS0LaakitysTauko */

#endif /* DEF_COREWEBNS0LaakitysTauko_H */
#ifndef DEF_COREWEBNS0LaakitysKuittaus_H
#define DEF_COREWEBNS0LaakitysKuittaus_H

/**
 *  DTO for LaakitysKuittaus

 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKITYS_KUITTAUS.html

 */
@interface COREWEBNS0LaakitysKuittaus : COREWEBNS0AbstractDTO <EnunciateXML>
{
  @private
    unsigned short _rooli;
    NSDate *_kuitattu;
    int _kuittaaja;
}

/**
 * Returns the role of the user who has made an acknowledgement
 * -"H" if user is a nurse
 */
- (unsigned short) rooli;

/**
 * Returns the role of the user who has made an acknowledgement
 * -"H" if user is a nurse
 */
- (void) setRooli: (unsigned short) newRooli;

/**
 * Returns the time of the acknowledgement
 */
- (NSDate *) kuitattu;

/**
 * Returns the time of the acknowledgement
 */
- (void) setKuitattu: (NSDate *) newKuitattu;

/**
 * Returns the user who made the acknowledgement
 */
- (int) kuittaaja;

/**
 * Returns the user who made the acknowledgement
 */
- (void) setKuittaaja: (int) newKuittaaja;
@end /* interface COREWEBNS0LaakitysKuittaus */

#endif /* DEF_COREWEBNS0LaakitysKuittaus_H */
#ifndef DEF_COREWEBNS0LaakeYhteisvaikutus_H
#define DEF_COREWEBNS0LaakeYhteisvaikutus_H

/**
 *  DTO for Yhteisvaikutus

 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKE_YHTEISVAIKUTUS.html

 */
@interface COREWEBNS0LaakeYhteisvaikutus : COREWEBNS0AbstractDTO <EnunciateXML>
{
  @private
    NSString *_aine;
    NSString *_koodisto;
    unsigned short _alkupera;
}

/**
 * Returns the ATC code or the name of the agent (atc tai vaikuttava aine)
 */
- (NSString *) aine;

/**
 * Returns the ATC code or the name of the agent (atc tai vaikuttava aine)
 */
- (void) setAine: (NSString *) newAine;

/**
 * Returns the used code system
 * -If getAine returns an ATC code, getKoodisto returns "ATC"
 */
- (NSString *) koodisto;

/**
 * Returns the used code system
 * -If getAine returns an ATC code, getKoodisto returns "ATC"
 */
- (void) setKoodisto: (NSString *) newKoodisto;

/**
 * Returns the origin of interaction
 * -'O' if interaction is linked in the current organization
 * -'A' or 'M' otherwise
 */
- (unsigned short) alkupera;

/**
 * Returns the origin of interaction
 * -'O' if interaction is linked in the current organization
 * -'A' or 'M' otherwise
 */
- (void) setAlkupera: (unsigned short) newAlkupera;
@end /* interface COREWEBNS0LaakeYhteisvaikutus */

#endif /* DEF_COREWEBNS0LaakeYhteisvaikutus_H */
#ifndef DEF_COREWEBNS0LaakeVastaAihe_H
#define DEF_COREWEBNS0LaakeVastaAihe_H

/**
 *  DTO for LaakeVastaAihe

 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKE_VASTA_AIHE.html
 http://vc-buildsrv1/documents/mediatridocs/latest/tables/VASTA_AIHE.html

 */
@interface COREWEBNS0LaakeVastaAihe : COREWEBNS0AbstractDTO <EnunciateXML>
{
  @private
    int _vastaAihe;
    unsigned short _vastaAiheAlkupera;
    NSString *_selite;
    unsigned short _rajoite;
    int *_alaraja;
    int *_ylaraja;
    unsigned short _alkupera;
    unsigned short _poistettu;
    NSDate *_muutosaika;
    short _muutospaikka;
}

/**
 * Returns the id
 */
- (int) vastaAihe;

/**
 * Returns the id
 */
- (void) setVastaAihe: (int) newVastaAihe;

/**
 * Returns the origin of the contraindication
 */
- (unsigned short) vastaAiheAlkupera;

/**
 * Returns the origin of the contraindication
 */
- (void) setVastaAiheAlkupera: (unsigned short) newVastaAiheAlkupera;

/**
 * Returns the name of the contraindication in plain language
 */
- (NSString *) selite;

/**
 * Returns the name of the contraindication in plain language
 */
- (void) setSelite: (NSString *) newSelite;

/**
 * Returns the type of the contraindication
 * -'Y' age in years
 * -'M' age in months
 * -'W' age in weeks
 * -'G' weight
 * -'P' pregnancy
 * -'B' breastfeeding
 * -'D' diagnose
 * -'1' male
 * -'2' female
 */
- (unsigned short) rajoite;

/**
 * Returns the type of the contraindication
 * -'Y' age in years
 * -'M' age in months
 * -'W' age in weeks
 * -'G' weight
 * -'P' pregnancy
 * -'B' breastfeeding
 * -'D' diagnose
 * -'1' male
 * -'2' female
 */
- (void) setRajoite: (unsigned short) newRajoite;

/**
 * Returns the lower limit of the contraindication
 */
- (int *) alaraja;

/**
 * Returns the lower limit of the contraindication
 */
- (void) setAlaraja: (int *) newAlaraja;

/**
 * Returns the upper limit of the contraindication
 */
- (int *) ylaraja;

/**
 * Returns the upper limit of the contraindication
 */
- (void) setYlaraja: (int *) newYlaraja;

/**
 * Returns the origin of the contraindication
 * -'O' if therapy group is linked in the current organization
 * -'A' or 'M' otherwise
 */
- (unsigned short) alkupera;

/**
 * Returns the origin of the contraindication
 * -'O' if therapy group is linked in the current organization
 * -'A' or 'M' otherwise
 */
- (void) setAlkupera: (unsigned short) newAlkupera;

/**
 * Returns the code of the contraindication removal. 'E' - not removed, 'K' = removed
 */
- (unsigned short) poistettu;

/**
 * Returns the code of the contraindication removal. 'E' - not removed, 'K' = removed
 */
- (void) setPoistettu: (unsigned short) newPoistettu;

/**
 * Returns the actual DB-change time of the contraindication
 */
- (NSDate *) muutosaika;

/**
 * Returns the actual DB-change time of the contraindication
 */
- (void) setMuutosaika: (NSDate *) newMuutosaika;

/**
 * Returns the organization in which the change has been made
 */
- (short) muutospaikka;

/**
 * Returns the organization in which the change has been made
 */
- (void) setMuutospaikka: (short) newMuutospaikka;
@end /* interface COREWEBNS0LaakeVastaAihe */

#endif /* DEF_COREWEBNS0LaakeVastaAihe_H */
#ifndef DEF_COREWEBNS0LaakeTiivistelma_H
#define DEF_COREWEBNS0LaakeTiivistelma_H

/**
 *  DTO for LaakeTiivistelma

 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKE_TIIVISTELMA.html
 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKE_TIIVISTELMA_SOVELTUVUUS.html

 */
@interface COREWEBNS0LaakeTiivistelma : COREWEBNS0AbstractDTO <EnunciateXML>
{
  @private
    int _tiivistelma;
    NSString *_nimi;
    NSString *_ehto;
    NSString *_valmistaja;
    NSString *_korvattavuus;
    unsigned short _poistettu;
    NSDate *_muutosaika;
    short _muutospaikka;
    NSArray *_tekstit;
}

/**
 * Returns the id of the summary
 */
- (int) tiivistelma;

/**
 * Returns the id of the summary
 */
- (void) setTiivistelma: (int) newTiivistelma;

/**
 * Returns the name of the medicine the summary is about
 */
- (NSString *) nimi;

/**
 * Returns the name of the medicine the summary is about
 */
- (void) setNimi: (NSString *) newNimi;

/**
 * Returns the preconditions for the medicine
 * (m��r�ys-/toimitusehto)
 */
- (NSString *) ehto;

/**
 * Returns the preconditions for the medicine
 * (m��r�ys-/toimitusehto)
 */
- (void) setEhto: (NSString *) newEhto;

/**
 * Returns the manufacturer
 */
- (NSString *) valmistaja;

/**
 * Returns the manufacturer
 */
- (void) setValmistaja: (NSString *) newValmistaja;

/**
 * Returns the refundability
 */
- (NSString *) korvattavuus;

/**
 * Returns the refundability
 */
- (void) setKorvattavuus: (NSString *) newKorvattavuus;

/**
 * Returns the code of the summary removal. 'E' - not removed, 'K' = removed
 */
- (unsigned short) poistettu;

/**
 * Returns the code of the summary removal. 'E' - not removed, 'K' = removed
 */
- (void) setPoistettu: (unsigned short) newPoistettu;

/**
 * Returns the actual DB-change time of the summary
 */
- (NSDate *) muutosaika;

/**
 * Returns the actual DB-change time of the summary
 */
- (void) setMuutosaika: (NSDate *) newMuutosaika;

/**
 * Returns the organization in which the change has been made
 */
- (short) muutospaikka;

/**
 * Returns the organization in which the change has been made
 */
- (void) setMuutospaikka: (short) newMuutospaikka;

/**
 * Returns a list of summary texts
 */
- (NSArray *) tekstit;

/**
 * Returns a list of summary texts
 */
- (void) setTekstit: (NSArray *) newTekstit;
@end /* interface COREWEBNS0LaakeTiivistelma */

#endif /* DEF_COREWEBNS0LaakeTiivistelma_H */
#ifndef DEF_COREWEBNS0LaakeSelosteTeksti_H
#define DEF_COREWEBNS0LaakeSelosteTeksti_H

/**
 *  DTO for LaakeSelosteTeksti

 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKE_SELOSTE_TEKSTI.html

 */
@interface COREWEBNS0LaakeSelosteTeksti : COREWEBNS0AbstractDTO <EnunciateXML>
{
  @private
    int _osa;
    int _otsikko;
    NSString *_teksti;
}

/**
 * Returns the part number of the description, can be used to order descriptions
 */
- (int) osa;

/**
 * Returns the part number of the description, can be used to order descriptions
 */
- (void) setOsa: (int) newOsa;

/**
 * 
 */
- (int) otsikko;

/**
 * 
 */
- (void) setOtsikko: (int) newOtsikko;

/**
 * Returns the text of the description
 */
- (NSString *) teksti;

/**
 * Returns the text of the description
 */
- (void) setTeksti: (NSString *) newTeksti;
@end /* interface COREWEBNS0LaakeSelosteTeksti */

#endif /* DEF_COREWEBNS0LaakeSelosteTeksti_H */
#ifndef DEF_COREWEBNS0LaakeKoostumus_H
#define DEF_COREWEBNS0LaakeKoostumus_H

/**
 *  DTO for LaakeKoostumus

 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKE_KOOSTUMUS.html

 */
@interface COREWEBNS0LaakeKoostumus : COREWEBNS0AbstractDTO <EnunciateXML>
{
  @private
    int _osa;
    unsigned short _tyyppi;
    NSString *_komponentinKoodi;
    NSString *_komponentti;
    float *_maara;
    NSString *_yksikko;
    float *_vahvuus;
    NSString *_vahvuusyksikko;
}

/**
 * Returns the part number of the medicine component
 */
- (int) osa;

/**
 * Returns the part number of the medicine component
 */
- (void) setOsa: (int) newOsa;

/**
 * Returns the type of the medicine component
 * -'B' if "pohja-aine"
 * -Perusaine, johon lis�aineet sekoitetaan
 * -'A' if "lis�aine"
 * -Lis�aineet ovat yleens� varsinaisia vaikuttavia aineita
 */
- (unsigned short) tyyppi;

/**
 * Returns the type of the medicine component
 * -'B' if "pohja-aine"
 * -Perusaine, johon lis�aineet sekoitetaan
 * -'A' if "lis�aine"
 * -Lis�aineet ovat yleens� varsinaisia vaikuttavia aineita
 */
- (void) setTyyppi: (unsigned short) newTyyppi;

/**
 * Returns the component code (VNR code)
 */
- (NSString *) komponentinKoodi;

/**
 * Returns the component code (VNR code)
 */
- (void) setKomponentinKoodi: (NSString *) newKomponentinKoodi;

/**
 * Returns the component in text format
 */
- (NSString *) komponentti;

/**
 * Returns the component in text format
 */
- (void) setKomponentti: (NSString *) newKomponentti;

/**
 * Returns the amount of component
 */
- (float *) maara;

/**
 * Returns the amount of component
 */
- (void) setMaara: (float *) newMaara;

/**
 * Returns the unit of amount
 */
- (NSString *) yksikko;

/**
 * Returns the unit of amount
 */
- (void) setYksikko: (NSString *) newYksikko;

/**
 * Returns the strength of the component
 */
- (float *) vahvuus;

/**
 * Returns the strength of the component
 */
- (void) setVahvuus: (float *) newVahvuus;

/**
 * Returns the unit of strength
 */
- (NSString *) vahvuusyksikko;

/**
 * Returns the unit of strength
 */
- (void) setVahvuusyksikko: (NSString *) newVahvuusyksikko;
@end /* interface COREWEBNS0LaakeKoostumus */

#endif /* DEF_COREWEBNS0LaakeKoostumus_H */
#ifndef DEF_COREWEBNS0LaakeAnnostusSoveltuvuus_H
#define DEF_COREWEBNS0LaakeAnnostusSoveltuvuus_H

/**
 *  DTO for LaakeAnnostusSoveltuvuus

 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKE_ANNOSTUS_SOVELTUVUUS.html

 */
@interface COREWEBNS0LaakeAnnostusSoveltuvuus : COREWEBNS0AbstractDTO <EnunciateXML>
{
  @private
    NSString *_laake;
    unsigned short *_alkupera;
    COREWEBNS0LaakeAnnostus *_annostus;
}

/**
 * Returns the vnr code of the medicine
 */
- (NSString *) laake;

/**
 * Returns the vnr code of the medicine
 */
- (void) setLaake: (NSString *) newLaake;

/**
 * Returns the origin of the dosage
 * -'O' if current organization
 * -'A' or 'M' otherwise
 */
- (unsigned short *) alkupera;

/**
 * Returns the origin of the dosage
 * -'O' if current organization
 * -'A' or 'M' otherwise
 */
- (void) setAlkupera: (unsigned short *) newAlkupera;

/**
 * 
 */
- (COREWEBNS0LaakeAnnostus *) annostus;

/**
 * 
 */
- (void) setAnnostus: (COREWEBNS0LaakeAnnostus *) newAnnostus;
@end /* interface COREWEBNS0LaakeAnnostusSoveltuvuus */

#endif /* DEF_COREWEBNS0LaakeAnnostusSoveltuvuus_H */
#ifndef DEF_COREWEBNS0LaakeAine_H
#define DEF_COREWEBNS0LaakeAine_H

/**
 *  DTO for LaakeAine, data base table LAAKE_AINE

 http://vc-buildsrv1/documents/mediatridocs/latest/tables/LAAKE_AINE.html

 */
@interface COREWEBNS0LaakeAine : COREWEBNS0AbstractDTO <EnunciateXML>
{
  @private
    NSString *_laake;
    NSString *_aine;
    float *_maara;
    NSString *_yksikko;
    unsigned short _alkupera;
    NSString *_ainekoodi;
    NSString *_atc;
    int *_jarjestys;
}

/**
 * Get medicine vnr code
 */
- (NSString *) laake;

/**
 * Get medicine vnr code
 */
- (void) setLaake: (NSString *) newLaake;

/**
 * Get medicine ingredient
 */
- (NSString *) aine;

/**
 * Get medicine ingredient
 */
- (void) setAine: (NSString *) newAine;

/**
 * Get ingredient amount
 */
- (float *) maara;

/**
 * Get ingredient amount
 */
- (void) setMaara: (float *) newMaara;

/**
 * Get ingredient amount unit
 */
- (NSString *) yksikko;

/**
 * Get ingredient amount unit
 */
- (void) setYksikko: (NSString *) newYksikko;

/**
 * Get the origin
 * -'O' if added by organization
 * -'A' or 'M' otherwise
 */
- (unsigned short) alkupera;

/**
 * Get the origin
 * -'O' if added by organization
 * -'A' or 'M' otherwise
 */
- (void) setAlkupera: (unsigned short) newAlkupera;

/**
 * Get the code for the ingredient (l��ketietokannasta)
 */
- (NSString *) ainekoodi;

/**
 * Get the code for the ingredient (l��ketietokannasta)
 */
- (void) setAinekoodi: (NSString *) newAinekoodi;

/**
 * Get the ATC code, if available
 */
- (NSString *) atc;

/**
 * Get the ATC code, if available
 */
- (void) setAtc: (NSString *) newAtc;

/**
 * Get the order number for the ingredient, if available
 */
- (int *) jarjestys;

/**
 * Get the order number for the ingredient, if available
 */
- (void) setJarjestys: (int *) newJarjestys;
@end /* interface COREWEBNS0LaakeAine */

#endif /* DEF_COREWEBNS0LaakeAine_H */
#ifndef DEF_COREWEBNS0Hoito_H
#define DEF_COREWEBNS0Hoito_H

/**
 *  DTO for Hoito

 A class to present HOITO table in hoito-ohjeet ja -m��r�ykset functionality.
 Used to carry the data from database to the client side.


 */
@interface COREWEBNS0Hoito : COREWEBNS0AbstractDTO <EnunciateXML>
{
  @private
    COREWEBNS0Date *_alkaa;
    COREWEBNS0Date *_loppuu;
    int *_maaraaja;
    int *_tekija;
    NSString *_otsikko;
    NSString *_vakio;
    NSString *_vapaa;
    NSString *_huomautuksia;
    NSString *_kellonajat;
    int *_kirjaaja;
    int *_lopettaja;
    NSDate *_lopetettu;
    unsigned short _kerta;
    NSDate *_tehty;
    int _lomake;
    int _rivi;
    NSDate *_muutosaika;
    NSString *_maaraajaNimi;
    NSString *_kirjaajaNimi;
    NSString *_tekijaNimi;
    NSString *_lopettajaNimi;
    NSString *_lomakeNimi;
}

/**
 * Returns the alkaa date
 */
- (COREWEBNS0Date *) alkaa;

/**
 * Returns the alkaa date
 */
- (void) setAlkaa: (COREWEBNS0Date *) newAlkaa;

/**
 * Returns the loppuu date
 */
- (COREWEBNS0Date *) loppuu;

/**
 * Returns the loppuu date
 */
- (void) setLoppuu: (COREWEBNS0Date *) newLoppuu;

/**
 * Returns the maaraaja id
 */
- (int *) maaraaja;

/**
 * Returns the maaraaja id
 */
- (void) setMaaraaja: (int *) newMaaraaja;

/**
 * Returns the tekija id
 */
- (int *) tekija;

/**
 * Returns the tekija id
 */
- (void) setTekija: (int *) newTekija;

/**
 * Returns the header (otsikko)
 */
- (NSString *) otsikko;

/**
 * Returns the header (otsikko)
 */
- (void) setOtsikko: (NSString *) newOtsikko;

/**
 * Returns the constant string (vakio)
 */
- (NSString *) vakio;

/**
 * Returns the constant string (vakio)
 */
- (void) setVakio: (NSString *) newVakio;

/**
 * Returns the free string (vapaa)
 */
- (NSString *) vapaa;

/**
 * Returns the free string (vapaa)
 */
- (void) setVapaa: (NSString *) newVapaa;

/**
 * Returns the notifications (huomautuksia)
 */
- (NSString *) huomautuksia;

/**
 * Returns the notifications (huomautuksia)
 */
- (void) setHuomautuksia: (NSString *) newHuomautuksia;

/**
 * Returns the times as a string
 */
- (NSString *) kellonajat;

/**
 * Returns the times as a string
 */
- (void) setKellonajat: (NSString *) newKellonajat;

/**
 * Returns the recorder (kirjaaja)
 */
- (int *) kirjaaja;

/**
 * Returns the recorder (kirjaaja)
 */
- (void) setKirjaaja: (int *) newKirjaaja;

/**
 * Returns the ender (lopettaja)
 */
- (int *) lopettaja;

/**
 * Returns the ender (lopettaja)
 */
- (void) setLopettaja: (int *) newLopettaja;

/**
 * Returns the time of ending (lopetettu)
 */
- (NSDate *) lopetettu;

/**
 * Returns the time of ending (lopetettu)
 */
- (void) setLopetettu: (NSDate *) newLopetettu;

/**
 * 
 */
- (unsigned short) kerta;

/**
 * 
 */
- (void) setKerta: (unsigned short) newKerta;

/**
 * Returns the time when Hoito is done
 */
- (NSDate *) tehty;

/**
 * Returns the time when Hoito is done
 */
- (void) setTehty: (NSDate *) newTehty;

/**
 * 
 */
- (int) lomake;

/**
 * 
 */
- (void) setLomake: (int) newLomake;

/**
 * Returns the row number (rivi)
 */
- (int) rivi;

/**
 * Returns the row number (rivi)
 */
- (void) setRivi: (int) newRivi;

/**
 * Returns the time of change
 */
- (NSDate *) muutosaika;

/**
 * Returns the time of change
 */
- (void) setMuutosaika: (NSDate *) newMuutosaika;

/**
 * (no documentation provided)
 */
- (NSString *) maaraajaNimi;

/**
 * (no documentation provided)
 */
- (void) setMaaraajaNimi: (NSString *) newMaaraajaNimi;

/**
 * (no documentation provided)
 */
- (NSString *) kirjaajaNimi;

/**
 * (no documentation provided)
 */
- (void) setKirjaajaNimi: (NSString *) newKirjaajaNimi;

/**
 * (no documentation provided)
 */
- (NSString *) tekijaNimi;

/**
 * (no documentation provided)
 */
- (void) setTekijaNimi: (NSString *) newTekijaNimi;

/**
 * (no documentation provided)
 */
- (NSString *) lopettajaNimi;

/**
 * (no documentation provided)
 */
- (void) setLopettajaNimi: (NSString *) newLopettajaNimi;

/**
 * (no documentation provided)
 */
- (NSString *) lomakeNimi;

/**
 * (no documentation provided)
 */
- (void) setLomakeNimi: (NSString *) newLomakeNimi;
@end /* interface COREWEBNS0Hoito */

#endif /* DEF_COREWEBNS0Hoito_H */
#ifndef DEF_COREWEBNS0TutkimuspyyntoMikrobi_H
#define DEF_COREWEBNS0TutkimuspyyntoMikrobi_H

/**
 *  DTO for Lab Examination Microbe

 A class to present TUTKIMUSPYYNTOMIKROBI table in laboratory examination functionality.
 Used to carry the data from database to the client side.


 */
@interface COREWEBNS0TutkimuspyyntoMikrobi : COREWEBNS0AbstractDTO <EnunciateXML>
{
  @private
    short _rivi;
    NSString *_mikrobi;
    unsigned short *_tutkimustyyppi;
    NSString *_maara;
    NSString *_numero;
    NSString *_kommentti;
    unsigned short _poistettu;
    NSDate *_muutosaika;
    short _muutospaikka;
    NSArray *_herkkyydet;
}

/**
 * (no documentation provided)
 */
- (short) rivi;

/**
 * (no documentation provided)
 */
- (void) setRivi: (short) newRivi;

/**
 * (no documentation provided)
 */
- (NSString *) mikrobi;

/**
 * (no documentation provided)
 */
- (void) setMikrobi: (NSString *) newMikrobi;

/**
 * (no documentation provided)
 */
- (unsigned short *) tutkimustyyppi;

/**
 * (no documentation provided)
 */
- (void) setTutkimustyyppi: (unsigned short *) newTutkimustyyppi;

/**
 * (no documentation provided)
 */
- (NSString *) maara;

/**
 * (no documentation provided)
 */
- (void) setMaara: (NSString *) newMaara;

/**
 * (no documentation provided)
 */
- (NSString *) numero;

/**
 * (no documentation provided)
 */
- (void) setNumero: (NSString *) newNumero;

/**
 * (no documentation provided)
 */
- (NSString *) kommentti;

/**
 * (no documentation provided)
 */
- (void) setKommentti: (NSString *) newKommentti;

/**
 * (no documentation provided)
 */
- (unsigned short) poistettu;

/**
 * (no documentation provided)
 */
- (void) setPoistettu: (unsigned short) newPoistettu;

/**
 * (no documentation provided)
 */
- (NSDate *) muutosaika;

/**
 * (no documentation provided)
 */
- (void) setMuutosaika: (NSDate *) newMuutosaika;

/**
 * (no documentation provided)
 */
- (short) muutospaikka;

/**
 * (no documentation provided)
 */
- (void) setMuutospaikka: (short) newMuutospaikka;

/**
 * (no documentation provided)
 */
- (NSArray *) herkkyydet;

/**
 * (no documentation provided)
 */
- (void) setHerkkyydet: (NSArray *) newHerkkyydet;
@end /* interface COREWEBNS0TutkimuspyyntoMikrobi */

#endif /* DEF_COREWEBNS0TutkimuspyyntoMikrobi_H */
#ifndef DEF_COREWEBNS0TutkimuspyyntoHerkkyys_H
#define DEF_COREWEBNS0TutkimuspyyntoHerkkyys_H

/**
 *  DTO for TutkimuspyyntoHerkkyys

 A class to present TUTKIMUSPYYNTOHERKKYYS table in laboratory examination functionality.
 Used to carry the data from database to the client side.


 */
@interface COREWEBNS0TutkimuspyyntoHerkkyys : COREWEBNS0AbstractDTO <EnunciateXML>
{
  @private
    short _rivi;
    NSString *_antibiootti;
    unsigned short *_kiekkoherkkyys;
    NSString *_micherkkyys;
    NSString *_lyhenne;
    NSString *_numero;
    NSString *_ryhma;
}

/**
 * (no documentation provided)
 */
- (short) rivi;

/**
 * (no documentation provided)
 */
- (void) setRivi: (short) newRivi;

/**
 * (no documentation provided)
 */
- (NSString *) antibiootti;

/**
 * (no documentation provided)
 */
- (void) setAntibiootti: (NSString *) newAntibiootti;

/**
 * (no documentation provided)
 */
- (unsigned short *) kiekkoherkkyys;

/**
 * (no documentation provided)
 */
- (void) setKiekkoherkkyys: (unsigned short *) newKiekkoherkkyys;

/**
 * (no documentation provided)
 */
- (NSString *) micherkkyys;

/**
 * (no documentation provided)
 */
- (void) setMicherkkyys: (NSString *) newMicherkkyys;

/**
 * (no documentation provided)
 */
- (NSString *) lyhenne;

/**
 * (no documentation provided)
 */
- (void) setLyhenne: (NSString *) newLyhenne;

/**
 * (no documentation provided)
 */
- (NSString *) numero;

/**
 * (no documentation provided)
 */
- (void) setNumero: (NSString *) newNumero;

/**
 * (no documentation provided)
 */
- (NSString *) ryhma;

/**
 * (no documentation provided)
 */
- (void) setRyhma: (NSString *) newRyhma;
@end /* interface COREWEBNS0TutkimuspyyntoHerkkyys */

#endif /* DEF_COREWEBNS0TutkimuspyyntoHerkkyys_H */
#ifndef DEF_COREWEBNS0Tutkimuspyynto_H
#define DEF_COREWEBNS0Tutkimuspyynto_H

/**
 *  DTO for LabExamination

 A class to present TUTKIMUSPYYNTO table in laboratory examination functionality.
 Used to carry the data from database to the client side.


 */
@interface COREWEBNS0Tutkimuspyynto : COREWEBNS0AbstractDTO <EnunciateXML>
{
  @private
    NSString *_tutkimus;
    NSArray *_tutkimuspyyntoTiedotList;
    NSString *_kategoria;
    NSDate *_latestTime;
}

/**
 * Returns the name of the Tutkimus
 */
- (NSString *) tutkimus;

/**
 * Returns the name of the Tutkimus
 */
- (void) setTutkimus: (NSString *) newTutkimus;

/**
 * Returns a list of Tutkimus details under the same tutkimus name
 */
- (NSArray *) tutkimuspyyntoTiedotList;

/**
 * Returns a list of Tutkimus details under the same tutkimus name
 */
- (void) setTutkimuspyyntoTiedotList: (NSArray *) newTutkimuspyyntoTiedotList;

/**
 * Returns the category of the tutkimus. Category could be
 * "tilattu", "kuittaamaton" or "tulos"
 */
- (NSString *) kategoria;

/**
 * Returns the category of the tutkimus. Category could be
 * "tilattu", "kuittaamaton" or "tulos"
 */
- (void) setKategoria: (NSString *) newKategoria;

/**
 * (no documentation provided)
 */
- (NSDate *) latestTime;

/**
 * (no documentation provided)
 */
- (void) setLatestTime: (NSDate *) newLatestTime;
@end /* interface COREWEBNS0Tutkimuspyynto */

#endif /* DEF_COREWEBNS0Tutkimuspyynto_H */
#ifndef DEF_COREWEBNS0LaakitysAnto_H
#define DEF_COREWEBNS0LaakitysAnto_H

/**
 *  DTO for LaakitysAnto.

  * A class to present LAAKITYS_ANTO table in medication functionality.
 Used to carry the data from database to the client side.

 <table style="border: 1px solid black;">
 <tr><th>property</th><th>only for frontend</th><th>obligatory from api</th><th>editable</th><th>must be same as laakityshistorias</th></tr>
 <tr><td>antaja</td><td>no</td><td>yes</td><td>yes</td><td>no</td></tr>
 <tr><td>huomautuksia</td><td>no</td><td>no</td><td>yes</td><td>no</td></tr>
 <tr><td>kello</td><td>no</td><td>yes (in planned)</td><td>yes</td><td>yes (all in one field)</td></tr>
 <tr><td>kirjaaja</td><td>no</td><td>no (added by api)</td><td>no</td><td>no</td></tr>
 <tr><td>laake</td><td>yes</td><td>no (added by api)</td><td>no</td><td>yes</td></tr>
 <tr><td>maara</td><td>no</td><td>yes</td><td>yes</td><td>no</td></tr>
 <tr><td>muutosAika</td><td>no</td><td>no (added by api)</td><td>no</td><td>no</td></tr>
 <tr><td>omistaja</td><td>no</td><td>yes (doublechecked)</td><td>no</td><td>yes</td></tr>
 <tr><td>osa</td><td>no</td><td>yes (doublechecked)</td><td>no</td><td>yes</td></tr>
 <tr><td>poistettu</td><td>no</td><td>no (added by api)</td><td>no</td><td>no</td></tr>
 <tr><td>toteutunutAika</td><td>no</td><td>yes</td><td>yes</td><td>no</td></tr>
 <tr><td>toteutunutAikaOriginal</td><td>no</td><td>yes (only for editing)</td><td>no</td><td>no</td></tr>
 <tr><td>toteutunutAikaLoppu</td><td>no</td><td>no</td><td>yes</td><td>no</td></tr>
 <tr><td>tyyppi</td><td>no</td><td>yes</td><td>no</td><td>no</td></tr>
 <tr><td>yksikko</td><td>no</td><td>yes (doublechecked)</td><td>no</td><td>yes</td></tr>
 <tr><td>kirjaajaName</td><td>yes</td><td>no</td><td>no</td><td>no</td></tr>
 <tr><td>antajaName</td><td>yes</td><td>no</td><td>no</td><td>no</td></tr>
 <tr><td>annettavaMaara</td><td>yes</td><td>no</td><td>no</td><td>no</td></tr>
 <tr><td>annettavaYksikko</td><td>yes</td><td>no</td><td>no</td><td>no</td></tr>
 <tr><td>annettavaMaksimi</td><td>yes</td><td>no</td><td>no</td><td>no</td></tr>
 </table>

 */
@interface COREWEBNS0LaakitysAnto : COREWEBNS0AbstractDTO <EnunciateXML>
{
  @private
    int _antaja;
    NSString *_huomautuksia;
    int _kirjaaja;
    NSString *_laake;
    float _maara;
    int _omistaja;
    int _osa;
    unsigned short _poistettu;
    NSDate *_suunniteltuAika;
    NSDate *_toteutunutAika;
    int _tyyppi;
    NSString *_yksikko;
    NSString *_kirjaajaName;
    NSString *_antajaName;
    NSDecimalNumber *_annettavaMaara;
    NSString *_annettavaYksikko;
    NSDecimalNumber *_annettavaMaksimi;
    NSDate *_toteutunutAikaOriginal;
}

/**
 * Returns the id of the medication giver
 */
- (int) antaja;

/**
 * Returns the id of the medication giver
 */
- (void) setAntaja: (int) newAntaja;

/**
 * Returns the observetion comments related to the medication giving
 */
- (NSString *) huomautuksia;

/**
 * Returns the observetion comments related to the medication giving
 */
- (void) setHuomautuksia: (NSString *) newHuomautuksia;

/**
 * Returns the id of the actual person that fed this info to the DB/system
 */
- (int) kirjaaja;

/**
 * Returns the id of the actual person that fed this info to the DB/system
 */
- (void) setKirjaaja: (int) newKirjaaja;

/**
 * Returns the laake VNR. VNR is a code that is used to identify the medication. @see http://www.laaketietokeskus.fi/vnr
 */
- (NSString *) laake;

/**
 * Returns the laake VNR. VNR is a code that is used to identify the medication. @see http://www.laaketietokeskus.fi/vnr
 */
- (void) setLaake: (NSString *) newLaake;

/**
 * Returns the medication amount
 */
- (float) maara;

/**
 * Returns the medication amount
 */
- (void) setMaara: (float) newMaara;

/**
 * Returns the owner ie. patients mediatri id.
 */
- (int) omistaja;

/**
 * Returns the owner ie. patients mediatri id.
 */
- (void) setOmistaja: (int) newOmistaja;

/**
 * Retuns the part number that is the id of the medication together with alku and omistaja
 */
- (int) osa;

/**
 * Retuns the part number that is the id of the medication together with alku and omistaja
 */
- (void) setOsa: (int) newOsa;

/**
 * Returns the code of the medication time removal. 'E' - not removed, 'K' = removed
 */
- (unsigned short) poistettu;

/**
 * Returns the code of the medication time removal. 'E' - not removed, 'K' = removed
 */
- (void) setPoistettu: (unsigned short) newPoistettu;

/**
 * Returns the planned time for medication. Tells which time the medication should be given
 */
- (NSDate *) suunniteltuAika;

/**
 * Returns the planned time for medication. Tells which time the medication should be given
 */
- (void) setSuunniteltuAika: (NSDate *) newSuunniteltuAika;

/**
 * Returns the actual time of medication. Mapped from PK id ALKU
 */
- (NSDate *) toteutunutAika;

/**
 * Returns the actual time of medication. Mapped from PK id ALKU
 */
- (void) setToteutunutAika: (NSDate *) newToteutunutAika;

/**
 * Returns the type of LaakitysAnto object, 1 = planned and given, 2 = planned but not yet given, 3 = extra
 */
- (int) tyyppi;

/**
 * Returns the type of LaakitysAnto object, 1 = planned and given, 2 = planned but not yet given, 3 = extra
 */
- (void) setTyyppi: (int) newTyyppi;

/**
 * Returns the used unit. ml, l, etc.
 */
- (NSString *) yksikko;

/**
 * Returns the used unit. ml, l, etc.
 */
- (void) setYksikko: (NSString *) newYksikko;

/**
 * Returns the name of the actual person that fed this info to the DB/system
 */
- (NSString *) kirjaajaName;

/**
 * Returns the name of the actual person that fed this info to the DB/system
 */
- (void) setKirjaajaName: (NSString *) newKirjaajaName;

/**
 * Returns the name of the medication giver
 */
- (NSString *) antajaName;

/**
 * Returns the name of the medication giver
 */
- (void) setAntajaName: (NSString *) newAntajaName;

/**
 * Returns the base amount that is given if swiped. Also the lower border of the amount.
 */
- (NSDecimalNumber *) annettavaMaara;

/**
 * Returns the base amount that is given if swiped. Also the lower border of the amount.
 */
- (void) setAnnettavaMaara: (NSDecimalNumber *) newAnnettavaMaara;

/**
 * Returns the base unit that is described by laakityshistoria.
 */
- (NSString *) annettavaYksikko;

/**
 * Returns the base unit that is described by laakityshistoria.
 */
- (void) setAnnettavaYksikko: (NSString *) newAnnettavaYksikko;

/**
 * Returns the uuper border of the amount.
 */
- (NSDecimalNumber *) annettavaMaksimi;

/**
 * Returns the uuper border of the amount.
 */
- (void) setAnnettavaMaksimi: (NSDecimalNumber *) newAnnettavaMaksimi;

/**
 * Original time of medication. mapped from PK id ALKU. This PK is modified so to find the modifiable row the old row must be also given.
 */
- (NSDate *) toteutunutAikaOriginal;

/**
 * Original time of medication. mapped from PK id ALKU. This PK is modified so to find the modifiable row the old row must be also given.
 */
- (void) setToteutunutAikaOriginal: (NSDate *) newToteutunutAikaOriginal;
@end /* interface COREWEBNS0LaakitysAnto */

#endif /* DEF_COREWEBNS0LaakitysAnto_H */
