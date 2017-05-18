Class tv.testclass Extends (%Persistent, %Populate, %XML.Adaptor)
{
/// My Name
Property Name As %String;

Property HomeAddress As %String;

Storage Default
{
<Data name="testclassDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
<Value name="3">
<Value>HomeAddress</Value>
</Value>
</Data>
<DataLocation>^tv.testclassD</DataLocation>
<DefaultData>testclassDefaultData</DefaultData>
<IdLocation>^tv.testclassD</IdLocation>
<IndexLocation>^tv.testclassI</IndexLocation>
<StreamLocation>^tv.testclassS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
