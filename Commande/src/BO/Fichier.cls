Class BO.Fichier Extends Ens.BusinessOperation
{

Property Adapter As Ens.OutboundAdapter;

Parameter ADAPTER = "EnsLib.File.OutboundAdapter";

Parameter INVOCATION = "Queue";

Method creerFichier(pRequest As msg.creerFichierDmde, Output pResponse As msg.creerFichierRpse) As %Status
{
}

XData MessageMap
{
<MapItems>
            <MapItem MessageType="msg.creerFichierDmde">
                <Method>creerFichier</Method>
            </MapItem>
        </MapItems>
}

}
