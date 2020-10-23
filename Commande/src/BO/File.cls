Class BO.File Extends Ens.BusinessOperation
{

Property Adapter As EnsLib.File.InboundAdapter;

Parameter ADAPTER = "EnsLib.File.InboundAdapter";

Parameter INVOCATION = "Queue";

Method pushVoitureFile(pRequest As msg.pushVoitureFileDmde, Output pResponse As msg.pushVoitureFileRpse) As %Status
{
    set pResponse = ##class(msg.pushVoitureFileRpse).%New()

    set file = ##class(%Library.FileBinaryStream).%New()

    do file.Write(pRequest.voiture.marque_";"_pRequest.voiture.modele_";"_pRequest.voiture.categorie_";"_pRequest.voiture.plaque_";"_pRequest.voiture.couleur_";"_pRequest.voiture.nbPlaces)

    set tsc = ..Adapter.PutStream("fichierVoiture"_$TR($TR($ZDT($ZDTH($ZTS,-3),3,9),":/-","")," ","_")_".csv",file)
    
    Quit $$$OK
}

XData MessageMap
{
<MapItems>
    <MapItem MessageType="msg.pushVoitureFileDmde">
        <Method>pushVoitureFile</Method>
    </MapItem>
</MapItems>
}

}
