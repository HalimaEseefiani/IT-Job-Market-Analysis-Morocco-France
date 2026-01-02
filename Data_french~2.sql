SELECT *
FROM DATAFRANCE;

SELECT COUNT(*) As valu_null

FROM DATAFRANCE

Where  Titre is null;


SELECT COUNT(*) As valu_null

FROM DATAFRANCE

Where  Localisation is null;



SELECT COUNT(*) As valu_null

FROM DATAFRANCE

Where  Localisation is null;


 SELECT COUNT(*) As valu_null

FROM DATAFRANCE

Where  Contrat is null;


SElect COUNT (*) As valu_null

FROM  DATAFRANCE

WHERE Entreprise is null;

// Data Cleaning/////////////////////////////////////////////////////////////////////



UPDATE   DATAFRANCE
set Entreprise = (

SELECT Entreprise 
FROM  DATAFRANCE
Where  Entreprise is  not null
GROUP BY Entreprise
ORDER BY COUNT(*) DESC 
FETCH FIRST 1 ROW ONLY
 )
 WHERE ENTREPRISE  is null;
 
 
 COMMIT;










SELECT LOCALISATION , COUNT(*) AS nb
FROM  DATAFRANCE;
Where localisation  is  not null
GROUP BY Localisation
ORDER BY COUNT(*) DESC ;



UPDATE   DATAFRANCE
set LOCALISATION = (

SELECT LOCALISATION 
FROM  DATAFRANCE
Where localisation  is  not null
GROUP BY Localisation
ORDER BY COUNT(*) DESC 
FETCH FIRST 1 ROW ONLY
 )
 WHERE Localisation  is null;
 
 
 COMMIT;
 
 
 
 UPDATE DATAFRANCE; 
 set Contrat  = 'INCONNU'
 WHERE  Contrat is null
 
 COMMIT ;
 
 
 CREATE TABLE IT_JOB  as 
 
SELECT *
 
FROM DATAFRANCE; 



 
 SELECT * 
 FROM  IT_JOB;
 
 ALTER  TABLE  IT_JOB  ADD  domaine VARCHAR(50)
 
 
 

 
UPDATE IT_JOB
 
SET domaine = 
 
    CASE 
  
    /* Data Science */
    WHEN LOWER(Titre) LIKE '%data analyst%'
      OR LOWER(Titre) LIKE '%business analyst%'
      OR LOWER(Titre) LIKE '%data scientist%'
      OR LOWER(Titre) LIKE '%analyst%'
      OR LOWER(Titre) LIKE '%business intelligence analyst%'
      OR LOWER(Titre) LIKE '%data visualization analyst%'
      OR LOWER(Titre) LIKE '%quantitative analyst%'
      OR LOWER(Titre) LIKE '%operations research analyst%'
      OR LOWER(Titre) LIKE '%dataops engineer%'
      OR LOWER(Titre) LIKE '%dataeps engineer%'
      OR LOWER(Titre) LIKE '%intelligence artificielle%'
      OR LOWER(Titre) LIKE '%machine learning%'
      OR LOWER(Titre) LIKE '%test validation engineer%'
      OR LOWER(Titre) LIKE '%test automation engineer%'
      OR LOWER(Titre) LIKE '%cloud computing and vitulisation enginner%'
      OR LOWER(Titre) LIKE '%analytics engineer%'
      OR LOWER(Titre) LIKE '%data engineer%'
      OR LOWER(Titre) LIKE '%data manager%'
    THEN 'Data Science'

    /* Développement */
    WHEN LOWER(Titre) LIKE '%développeur%'
      OR LOWER(Titre) LIKE '%developpeur%'
      OR LOWER(Titre) LIKE '%dev%'
      OR LOWER(Titre) LIKE '%développement logiciel%'
      OR LOWER(Titre) LIKE '%fullstack%'
      OR LOWER(Titre) LIKE '%backend%'
      OR LOWER(Titre) LIKE '%frontend%'
      OR LOWER(Titre) LIKE '%vhdl%'
      OR LOWER(Titre) LIKE '%c++%'
      OR LOWER(Titre) LIKE '%java%'
      OR LOWER(Titre) LIKE '%python%'
      OR LOWER(Titre) LIKE '%embarqué%'
      OR LOWER(Titre) LIKE '%logiciel%'
      OR LOWER(Titre) LIKE '%interconnect%'
      OR LOWER(Titre) LIKE '%software engineer%'
      OR LOWER(Titre) LIKE '%ingénieur commercial en it%'
      OR LOWER(Titre) LIKE '% développement informatique %'
      OR LOWER(Titre) LIKE '% ingénieur innovation informatique%'
      OR LOWER(Titre) LIKE '%ingénieure ievOps%'
      OR LOWER(Titre) LIKE '%ingénieur développement%'
       OR LOWER(Titre) LIKE '% ingénieur informatique %'
      
     
                                
    THEN 'Développement'

    /* Cybersécurité */
    WHEN LOWER(Titre) LIKE '%cyber%'
      OR LOWER(Titre) LIKE '%cybersécurité%'
      OR LOWER(Titre) LIKE '%sécurité%'
      OR LOWER(Titre) LIKE '%conformité%'
      OR LOWER(Titre) LIKE '%gouvernance%'
      OR LOWER(Titre) LIKE '%isp%'
      OR LOWER(Titre) LIKE '%integration of security in projects%'
      OR LOWER(Titre) LIKE '%security%'
      
    THEN 'Cybersécurité'

    /* Infrastructure */
    WHEN LOWER(Titre) LIKE '%réseau%'
      OR LOWER(Titre) LIKE '%système%'
      OR LOWER(Titre) LIKE '%infra%'
      OR LOWER(Titre) LIKE '%administrateur%'
      OR LOWER(Titre) LIKE '%windows server%'
      OR LOWER(Titre) LIKE '%serveur%'
      OR LOWER(Titre) LIKE '%cloud%'
      OR LOWER(Titre) LIKE '%architecte technique%'
      OR LOWER(Titre) LIKE '%architecte système%'
      OR LOWER(Titre) LIKE '%hpc%'
      OR LOWER(Titre) LIKE '%exploit%'
      OR LOWER(Titre) LIKE '%ldap%'
      OR LOWER(Titre) LIKE '%sso%'
      OR LOWER(Titre) LIKE '%responsable informatique%'
      OR LOWER(Titre) LIKE '%it sme%'
      OR LOWER(Titre) LIKE '%transition manager%'
      
      OR LOWER(Titre) LIKE '%Juriste -IT%'
    THEN 'Infrastructure'

    /* Gestion de projet */
    WHEN LOWER(Titre) LIKE '%chef de projet%'
      OR LOWER(Titre) LIKE '%project manager%'
      OR LOWER(Titre) LIKE '%scrum%'
      OR LOWER(Titre) LIKE '%agile%'
      OR LOWER(Titre) LIKE '%product owner%'
      OR LOWER(Titre) LIKE '%moa%'
      OR LOWER(Titre) LIKE '%pmo%'
      OR LOWER(Titre) LIKE '%pilotage%'
      OR LOWER(Titre) LIKE '%coordonnateur%'
      OR LOWER(Titre) LIKE '%programme%'
      OR LOWER(Titre) LIKE '%run manager%'
      OR LOWER(Titre) LIKE '%proxy po%'
      OR LOWER(Titre) LIKE '%chargé de projet%'
      OR LOWER(Titre) LIKE   '%manager coordinateur %'
      OR LOWER(Titre) LIKE  '%directeur %'
      OR LOWER(Titre) LIKE  '%service %'
      OR LOWER(Titre) LIKE  '%chef %'
        
       
    THEN 'Gestion de projet'

    /* Tests / Validation */
    WHEN LOWER(Titre) LIKE '%testeur%'
      OR LOWER(Titre) LIKE '%test%'
      OR LOWER(Titre) LIKE '%qa%'
      OR LOWER(Titre) LIKE '%validation%'
      OR LOWER(Titre) LIKE '%recette%'
    THEN 'Tests / Validation'

    /* Support technique */
    WHEN LOWER(Titre) LIKE '%technicien%'
      OR LOWER(Titre) LIKE '%support%'
      OR LOWER(Titre) LIKE '%maintenance%'
      OR LOWER(Titre) LIKE '%helpdesk%'
      OR LOWER(Titre) LIKE '%parc informatique%'
      OR LOWER(Titre) LIKE '%opérateur pc%'
      OR LOWER(Titre) LIKE '%correspondant informatique%'
      OR LOWER(Titre) LIKE '%suivi technique%'
    THEN 'Support technique'

    /* SIG / Cartographie */
    WHEN LOWER(Titre) LIKE '%cartographe%'
      OR LOWER(Titre) LIKE '%sig%'
      OR LOWER(Titre) LIKE '%géomatique%'
    THEN 'SIG / Cartographie'

    /* Conseil / ERP / AMOA */
    WHEN LOWER(Titre) LIKE '%consultant%'
      OR LOWER(Titre) LIKE '%amoa%'
      OR LOWER(Titre) LIKE '%fonctionnel%'
      OR LOWER(Titre) LIKE '%avant-vente%'
      OR LOWER(Titre) LIKE '%sap%'
      OR LOWER(Titre) LIKE '%oracle%'
      OR LOWER(Titre) LIKE '%ebs%'
      OR LOWER(Titre) LIKE '%sirh%'
      
    THEN 'Conseil / ERP / AMOA'

    /* Systèmes métiers */
    WHEN LOWER(Titre) LIKE '%crm%'
      OR LOWER(Titre) LIKE '%référentiels%'
      OR LOWER(Titre) LIKE '%assistant recette%'
    THEN 'Systèmes métiers'

    /* Formation / Alternance */
    WHEN LOWER(Titre) LIKE '%apprenti%'
      OR LOWER(Titre) LIKE '%alternant%'
      OR LOWER(Titre) LIKE '%bachelor%'
      OR LOWER(Titre) LIKE '%formation%'
    THEN 'Formation / Alternance'

    /* Architecture SI */
    WHEN LOWER(Titre) LIKE '%architecte d''entreprise%'
      OR LOWER(Titre) LIKE '%architecte applicatif%'
      OR LOWER(Titre) LIKE '%responsable domaine it%'
      OR LOWER(Titre) LIKE '%responsable applicatif it%'
      OR LOWER(Titre) LIKE '%architecte%'
    THEN 'Architecture SI'

    ELSE 'Autre'

END

COMMIT;
   
    
    
    DESC IT_JOB;
    
    
    SELECT * FROM IT_JOB

    
    
UPDATE IT_JOB
 
  SET domaine = Null
 
   WHERE domaine ='Autre';
   
   
 
 
   
 







SELECT COUNT(*)


FROM  IT_JOB

WHERE domaine = 'Autre';
   
    


SELECT * from
IT_JOB


UPDATE IT_JOB
SET Contrat = 'sans preciser'
WHERE LOWER(TRIM(Contrat)) IN (
    'temps plein',
    'inconnu',
    'inconnus',
    'non precise',
    'non précisé',
    'n/a',
    'na',
    'null',
    ''
);





// requete pour trouver  les doublons  absolus ( le meme id )

SELECT COUNT (*) AS numb_doublon,ENTREPRISE ,Localisation,Contrat ,domaine

FROM IT_JOB

GROUP BY ENTREPRISE ,Localisation,Contrat ,domaine

HAVING  count(*) >1



DELETE FROM IT_JOB

WHERE ROWID NOT IN (

SELECT MIN(ROWID)
FROM IT_JOB

GROUP BY ENTREPRISE ,Localisation,Contrat ,domaine  

)

COMMIT;


SELECT * FROM IT_JOB



 ////
SELECT COUNT(*) as value_Null

FROM IT_JOB
WHERE domaine  is NULL
 
 
SELECT  domaine,  COUNT(*)  AS freq   
FROM  IT_JOB 
WHERE domaine IS NOT NULL
GROUP BY  domaine
ORDER BY freq  DESC
FETCH FIRST 1 ROW ONLY;




UPDATE IT_JOB 
 set domaine =(
 
 select domaine 
 FROM IT_JOB
 where domaine is not null
 group by domaine
 ORDER BY  count(*) DESC
 FETCH FIRST 1 ROW ONLY 
 )
 where domaine is null ;
 
 commit ;
 
 select * from it_job;
 
 // EXploration et analyse des données EDA
 

SELECT  domaine, COUNT(*) as nb_offres
FROM IT_JOB
GROUP BY domaine;


 
//  top domaine les plus demandés 

SELECT domaine , COUNT(*) AS domaine_plus_demandé
FROM IT_JOB
GROUP BY domaine
ORDER BY  domaine_plus_demandé DESC
FETCH  FIRST 5 ROW ONLY;
 
 
 //   ofres par ville
 
 SELECT  LOCALISATION ,domaine, COUNT(*)AS  OFRES_DEMPLOIS_local
FROM IT_JOB
GROUP BY Localisation, domaine;
 
 
 // offres les plus demandé dans 5 localisation avec le nom de job 
 
SELECT  LOCALISATION ,domaine, COUNT(*)AS  OFRES_DEMPLOIS_local
FROM IT_JOB
GROUP BY Localisation, domaine
ORDER BY OFRES_DEMPLOIS_local DESC
FETCH FIRST 5 ROWS ONLY;


//ofres par entreprise  avec le type de contrat  et le nom de l entreprise 

SELECT Entreprise , Count(*) as nb_offres_par_entre,
 SUM(case when LOWER(Contrat) ='cdi' Then  1 Else 0 End) AS CDI, 
 SUM(case when LOWER(Contrat) = 'cdd' Then 1 Else 0 End) AS CDD,
 SUM(CASE WHEN LOWER(Contrat) = 'interim' THEN 1 ELSE 0 END) AS Interim,
 SUM(CASE WHEN LOWER(Contrat) = 'freelance' THEN 1 ELSE 0 END) AS Freelance,
  SUM(CASE WHEN LOWER(Contrat) = 'sans preciser' THEN 1 ELSE 0 END) AS sans_preciser ,
 
 SUM(case When LOWER(Contrat) = 'stage' THEN 1 ELSE 0 END ) AS Stage
FROM IT_JOB
GROUP BY Entreprise
ORDER By Entreprise; 


//  tops entreprise  avec le no m de job 

SELECT Entreprise,domaine, COUNT(*)AS ofres_par_entreprise
FROM IT_JOB
GROUP BY Entreprise,domaine
ORDER BY ofres_par_entreprise DESC
FETCH FIRST 10 ROW ONLY;




 
  
 
 
 