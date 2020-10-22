Class msg.basic.reponse Extends (Ens.Response, %JSON.Adaptor)
{

Property codeRetour As %String;

Storage Default
{
<Data name="reponseDefaultData">
<Subscript>"reponse"</Subscript>
<Value name="1">
<Value>codeRetour</Value>
</Value>
</Data>
<DefaultData>reponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
