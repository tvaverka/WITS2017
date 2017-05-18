Class tv.test1 Extends (%Persistent, %Populate, %XML.Adaptor)
{

Property Name As %String;

Property MyStream As %Stream.GlobalCharacter(LOCATION = "^MyStream");

Storage Default
{
<Data name="test1DefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
<Value name="3">
<Value>MyStream</Value>
</Value>
</Data>
<DataLocation>^tv.test1D</DataLocation>
<DefaultData>test1DefaultData</DefaultData>
<IdLocation>^tv.test1D</IdLocation>
<IndexLocation>^tv.test1I</IndexLocation>
<StreamLocation>^tv.test1S</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
