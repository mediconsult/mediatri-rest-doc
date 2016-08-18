#import "enunciate-common.h"

@class COREWEBNS0Date;
@class COREWEBNS0AbstractDTO;
@class COREWEBNS0TutkimuspyyntoMikrobi;
@class COREWEBNS0Hoito;
@class COREWEBNS0TutkimuspyyntoTiedot;
@class COREWEBNS0TutkimuspyyntoHerkkyys;
@class COREWEBNS0Tutkimuspyynto;
@class COREWEBNS0LaakitysAnto;

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
