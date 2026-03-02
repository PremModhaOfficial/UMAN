<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f2b26e0d-72d3-4896-8420-6fde0ea6104e(uman.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="1347621f-0e53-4de9-a452-6f9ea85ed21f" name="uman" version="0" />
  </languages>
  <imports>
    <import index="m5zv" ref="r:4a4f1034-b85f-4855-876e-2beabc181650(com.dslfoundry.plaintextflow.textGen)" />
    <import index="5u88" ref="r:4752c29d-6163-4693-b1d7-3c8befc060cd(com.dslfoundry.plaintextgen.textGen)" />
  </imports>
  <registry>
    <language id="1347621f-0e53-4de9-a452-6f9ea85ed21f" name="uman">
      <concept id="7913981867367114950" name="uman.structure.Models" flags="ng" index="1AAbhi">
        <child id="7913981867367114952" name="schemas" index="1AAbhs" />
      </concept>
      <concept id="7913981867367114957" name="uman.structure.Field" flags="ng" index="1AAbhp">
        <property id="7913981867367118956" name="dataType" index="1AAajS" />
      </concept>
      <concept id="7913981867367114953" name="uman.structure.ModelSchema" flags="ng" index="1AAbht">
        <child id="7913981867367114956" name="Fields" index="1AAbho" />
      </concept>
      <concept id="7913981867368537543" name="uman.structure.SQL" flags="ng" index="1AH$5j">
        <reference id="7913981867368537544" name="targetScemaFilde" index="1AH$5s" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1AAbhi" id="6Rk79gbjaMP">
    <property role="TrG5h" value="PremNCo" />
    <node concept="1AAbht" id="6Rk79gbmtHj" role="1AAbhs">
      <property role="TrG5h" value="users" />
      <node concept="1AAbhp" id="6Rk79gbmtHm" role="1AAbho">
        <property role="TrG5h" value="name" />
        <property role="1AAajS" value="6Rk79gbjbxJ/string" />
      </node>
      <node concept="1AAbhp" id="6Rk79gbmtHu" role="1AAbho">
        <property role="TrG5h" value="department" />
        <property role="1AAajS" value="6Rk79gbjbxJ/string" />
      </node>
      <node concept="1AAbhp" id="6Rk79gbmBAk" role="1AAbho">
        <property role="TrG5h" value="email" />
        <property role="1AAajS" value="6Rk79gbjbxJ/string" />
      </node>
      <node concept="1AAbhp" id="6Rk79gbmBAm" role="1AAbho">
        <property role="TrG5h" value="password" />
        <property role="1AAajS" value="6Rk79gbjbxJ/string" />
      </node>
      <node concept="1AAbhp" id="6Rk79gbmBAs" role="1AAbho">
        <property role="TrG5h" value="firstName" />
        <property role="1AAajS" value="6Rk79gbjbxJ/string" />
      </node>
      <node concept="1AAbhp" id="6Rk79gbmBAu" role="1AAbho">
        <property role="TrG5h" value="lastName" />
        <property role="1AAajS" value="6Rk79gbjbxJ/string" />
      </node>
      <node concept="1AAbhp" id="6Rk79gbmBAw" role="1AAbho">
        <property role="TrG5h" value="IsActibe" />
        <property role="1AAajS" value="6Rk79gbjbxL/boolean" />
      </node>
      <node concept="1AAbhp" id="6Rk79gbmBAz" role="1AAbho">
        <property role="TrG5h" value="createdAt" />
        <property role="1AAajS" value="6Rk79gbjbxL/boolean" />
      </node>
      <node concept="1AAbhp" id="6Rk79gbmBAA" role="1AAbho">
        <property role="TrG5h" value="updatedAt" />
        <property role="1AAajS" value="6Rk79gbjbxL/boolean" />
      </node>
    </node>
    <node concept="1AAbht" id="6Rk79gbmBAC" role="1AAbhs">
      <property role="TrG5h" value="Roles" />
      <node concept="1AAbhp" id="6Rk79gbmBAE" role="1AAbho">
        <property role="TrG5h" value="name" />
        <property role="1AAajS" value="6Rk79gbjbxJ/string" />
      </node>
      <node concept="1AAbhp" id="6Rk79gbmBAI" role="1AAbho">
        <property role="TrG5h" value="Description" />
        <property role="1AAajS" value="6Rk79gbjbxJ/string" />
      </node>
      <node concept="1AAbhp" id="6Rk79gbmBAK" role="1AAbho">
        <property role="TrG5h" value="created_at" />
        <property role="1AAajS" value="6Rk79gbjbxJ/string" />
      </node>
    </node>
  </node>
  <node concept="1AH$5j" id="6Rk79gboKVe">
    <ref role="1AH$5s" node="6Rk79gbjaMP" resolve="PremNCo" />
  </node>
</model>

