<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:22b0f938-2771-480c-8e65-411380d57efc(uman.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="3348158742936976480" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ng" index="25R33">
        <property id="1421157252384165432" name="memberId" index="3tVfz5" />
      </concept>
      <concept id="3348158742936976479" name="jetbrains.mps.lang.structure.structure.EnumerationDeclaration" flags="ng" index="25R3W">
        <child id="3348158742936976577" name="members" index="25R1y" />
      </concept>
      <concept id="1082978164218" name="jetbrains.mps.lang.structure.structure.DataTypeDeclaration" flags="ng" index="AxPO6">
        <property id="7791109065626895363" name="datatypeId" index="3F6X1D" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="6Rk79gbjaz6">
    <property role="EcuMT" value="7913981867367114950" />
    <property role="TrG5h" value="Models" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6Rk79gbjaz7" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="6Rk79gbjaz8" role="1TKVEi">
      <property role="IQ2ns" value="7913981867367114952" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="schemas" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="6Rk79gbjaz9" resolve="ModelSchema" />
    </node>
  </node>
  <node concept="1TIwiD" id="6Rk79gbjaz9">
    <property role="TrG5h" value="ModelSchema" />
    <property role="EcuMT" value="7913981867367114953" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6Rk79gbjazb" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="6Rk79gbjazc" role="1TKVEi">
      <property role="IQ2ns" value="7913981867367114956" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="Fields" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="6Rk79gbjpI1" resolve="Field_PlaceHolder" />
    </node>
  </node>
  <node concept="1TIwiD" id="6Rk79gbjazd">
    <property role="TrG5h" value="Field" />
    <property role="EcuMT" value="7913981867367114957" />
    <property role="34LRSv" value="field" />
    <ref role="1TJDcQ" node="6Rk79gbjpI1" resolve="Field_PlaceHolder" />
    <node concept="PrWs8" id="6Rk79gbjaze" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="6Rk79gbjbxG" role="1TKVEl">
      <property role="IQ2nx" value="7913981867367118956" />
      <property role="TrG5h" value="dataType" />
      <ref role="AX2Wp" node="6Rk79gbjbxH" resolve="DataType" />
    </node>
    <node concept="1TJgyi" id="6Rk79gbjbP9" role="1TKVEl">
      <property role="IQ2nx" value="7913981867367120201" />
      <property role="TrG5h" value="Index" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="6Rk79gbjbPa" role="1TKVEl">
      <property role="IQ2nx" value="7913981867367120202" />
      <property role="TrG5h" value="Sensitive" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="6Rk79gbqH7m" role="1TKVEl">
      <property role="IQ2nx" value="7913981867369091542" />
      <property role="TrG5h" value="CanBeNull" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="6Rk79gbla$1" role="1TKVEi">
      <property role="IQ2ns" value="7913981867367639297" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="rest" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6Rk79gbla$2" resolve="FieldProperties" />
    </node>
  </node>
  <node concept="25R3W" id="6Rk79gbjbxH">
    <property role="3F6X1D" value="7913981867367118957" />
    <property role="TrG5h" value="DataType" />
    <node concept="25R33" id="6Rk79gbjbxI" role="25R1y">
      <property role="3tVfz5" value="7913981867367118958" />
      <property role="TrG5h" value="int64" />
    </node>
    <node concept="25R33" id="6Rk79gbjbxJ" role="25R1y">
      <property role="3tVfz5" value="7913981867367118959" />
      <property role="TrG5h" value="string" />
    </node>
    <node concept="25R33" id="6Rk79gbjbxK" role="25R1y">
      <property role="3tVfz5" value="7913981867367118960" />
      <property role="TrG5h" value="float" />
    </node>
    <node concept="25R33" id="6Rk79gbjbxL" role="25R1y">
      <property role="3tVfz5" value="7913981867367118961" />
      <property role="TrG5h" value="boolean" />
    </node>
    <node concept="25R33" id="6Rk79gbjbxM" role="25R1y">
      <property role="3tVfz5" value="7913981867367118962" />
      <property role="TrG5h" value="timestamp" />
    </node>
  </node>
  <node concept="1TIwiD" id="6Rk79gbjbPd">
    <property role="EcuMT" value="7913981867367120205" />
    <property role="TrG5h" value="FieldRefrence" />
    <property role="34LRSv" value="relation" />
    <ref role="1TJDcQ" node="6Rk79gbjpI1" resolve="Field_PlaceHolder" />
    <node concept="1TJgyi" id="6Rk79gbjbPe" role="1TKVEl">
      <property role="IQ2nx" value="7913981867367120206" />
      <property role="TrG5h" value="name_of_relation" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="6Rk79gbjbPf" role="1TKVEl">
      <property role="IQ2nx" value="7913981867367120207" />
      <property role="TrG5h" value="type_of_relation" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="6Rk79gbjbPh" role="1TKVEi">
      <property role="IQ2ns" value="7913981867367120209" />
      <property role="20kJfa" value="target_schema" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6Rk79gbjaz9" resolve="ModelSchema" />
    </node>
    <node concept="PrWs8" id="6Rk79gbn5iV" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="6Rk79gbjpI1">
    <property role="EcuMT" value="7913981867367177089" />
    <property role="TrG5h" value="Field_PlaceHolder" />
    <property role="R5$K7" value="true" />
  </node>
  <node concept="1TIwiD" id="6Rk79gbla$2">
    <property role="EcuMT" value="7913981867367639298" />
    <property role="TrG5h" value="FieldProperties" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="6Rk79gbo_R7">
    <property role="EcuMT" value="7913981867368537543" />
    <property role="TrG5h" value="SQL" />
    <property role="19KtqR" value="true" />
    <property role="3GE5qa" value="Roots" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6Rk79gbo_R8" role="1TKVEi">
      <property role="IQ2ns" value="7913981867368537544" />
      <property role="20kJfa" value="targetScemaFilde" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6Rk79gbjaz6" resolve="Models" />
    </node>
    <node concept="PrWs8" id="6Rk79gboW5B" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
</model>

