Class tv.test Extends (%Persistent, %Populate, %XML.Adaptor)
{

Property Name As %String;

Property HomeAddress As tv.address;

Property OfficeAddress As tv.OfficeAddress(CLASSNAME = 1);

Property normalname As %Library.String [ Calculated, SqlComputeCode = { set {normalname} = $translate({Name},"äâàáãôöóòõêéèëüúùûïîìíçÀÁÂÃÇÉÊÍÓÕÔÚÜ","aaaaaoooooeeeeuuuuiiiicAAAACEEIOOOUU") }, SqlComputed ];

Property MyStream As %Stream.GlobalCharacter(LOCATION = "^MyStream");

Index ByNormalname On normalname [ Data = Name ];

// Index ByName On Name;

Storage Default
{
<Data name="testDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
<Value name="3">
<Value>HomeAddress</Value>
</Value>
<Value name="4">
<Value>MyStream</Value>
</Value>
<Value name="5">
<Value>OfficeAddress</Value>
</Value>
</Data>
<DataLocation>^tv.testD</DataLocation>
<DefaultData>testDefaultData</DefaultData>
<ExtentSize>5</ExtentSize>
<IdLocation>^tv.testD</IdLocation>
<IndexLocation>^tv.testI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="HomeAddress">
<AverageFieldSize>26.2,City:7.6,Street:14.6</AverageFieldSize>
<Selectivity>20.0000%,City:20.0000%,Street:20.0000%</Selectivity>
</Property>
<Property name="Name">
<AverageFieldSize>15.6</AverageFieldSize>
<Selectivity>20.0000%</Selectivity>
</Property>
<Property name="normalname">
<AverageFieldSize>15.6</AverageFieldSize>
<Selectivity>20.0000%</Selectivity>
</Property>
<SQLMap name="ByName">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="ByNormalname">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^tv.testS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
