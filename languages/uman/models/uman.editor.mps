<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d262a5e6-4187-4e60-93ee-2511c8cafa56(uman.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="15" />
  </languages>
  <imports>
    <import index="b1ln" ref="r:22b0f938-2771-480c-8e65-411380d57efc(uman.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1239814640496" name="jetbrains.mps.lang.editor.structure.CellLayout_VerticalGrid" flags="nn" index="2EHx9g" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ngI" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="6Rk79gbjKtp">
    <ref role="1XX52x" to="b1ln:6Rk79gbjazd" resolve="Field" />
    <node concept="3EZMnI" id="6Rk79gbjKtr" role="2wV5jI">
      <node concept="3XFhqQ" id="6Rk79gblCR1" role="3EZMnx" />
      <node concept="3F0A7n" id="6Rk79gbjKtv" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0A7n" id="6Rk79gbjKt_" role="3EZMnx">
        <ref role="1NtTu8" to="b1ln:6Rk79gbjbxG" resolve="dataType" />
        <node concept="ljvvj" id="6Rk79gbjKtA" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="6Rk79gbjKtI" role="3EZMnx">
        <property role="3F0ifm" value=" " />
      </node>
      <node concept="3F0ifn" id="6Rk79gblazN" role="3EZMnx">
        <property role="3F0ifm" value="index:" />
      </node>
      <node concept="3F0A7n" id="6Rk79gbjKtL" role="3EZMnx">
        <ref role="1NtTu8" to="b1ln:6Rk79gbjbP9" resolve="Index" />
      </node>
      <node concept="3F0ifn" id="6Rk79gblazS" role="3EZMnx">
        <property role="3F0ifm" value="sensitive:" />
      </node>
      <node concept="3F0A7n" id="6Rk79gblazH" role="3EZMnx">
        <ref role="1NtTu8" to="b1ln:6Rk79gbjbPa" resolve="Sensitive" />
      </node>
      <node concept="3F0ifn" id="6Rk79gbqH7y" role="3EZMnx">
        <property role="3F0ifm" value=" null?" />
      </node>
      <node concept="3F0A7n" id="6Rk79gbqH7r" role="3EZMnx">
        <ref role="1NtTu8" to="b1ln:6Rk79gbqH7m" resolve="CanBeNull" />
      </node>
      <node concept="3EZMnI" id="6Rk79gblazV" role="3EZMnx">
        <node concept="VPM3Z" id="6Rk79gblazX" role="3F10Kt" />
        <node concept="3F2HdR" id="6Rk79gbla$5" role="3EZMnx">
          <ref role="1NtTu8" to="b1ln:6Rk79gbla$1" resolve="rest" />
          <node concept="2EHx9g" id="6Rk79gbla$9" role="2czzBx" />
        </node>
        <node concept="2iRkQZ" id="6Rk79gbla$0" role="2iSdaV" />
      </node>
      <node concept="2iRfu4" id="6Rk79gbjKtu" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6Rk79gblkU$">
    <ref role="1XX52x" to="b1ln:6Rk79gbjaz9" resolve="Schema" />
    <node concept="3EZMnI" id="6Rk79gblkUC" role="2wV5jI">
      <node concept="2iRkQZ" id="6Rk79gblkUD" role="2iSdaV" />
      <node concept="3EZMnI" id="6Rk79gblkUF" role="3EZMnx">
        <node concept="2iRfu4" id="6Rk79gblkUG" role="2iSdaV" />
        <node concept="3F0ifn" id="6Rk79gblkUN" role="3EZMnx">
          <property role="3F0ifm" value="schema:" />
        </node>
        <node concept="3F0A7n" id="6Rk79gblkUA" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
      <node concept="3F2HdR" id="6Rk79gblkUS" role="3EZMnx">
        <ref role="1NtTu8" to="b1ln:6Rk79gbjazc" resolve="Fields" />
        <node concept="2EHx9g" id="6Rk79gbmtIe" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="6Rk79gblxW_" role="3EZMnx" />
    </node>
  </node>
  <node concept="24kQdi" id="6Rk79gblqXH">
    <property role="3GE5qa" value="Roots" />
    <ref role="1XX52x" to="b1ln:6Rk79gbjaz6" resolve="Models" />
    <node concept="3EZMnI" id="6Rk79gblCR5" role="2wV5jI">
      <node concept="2iRfu4" id="6Rk79gblCR6" role="2iSdaV" />
      <node concept="3XFhqQ" id="6Rk79gblCR9" role="3EZMnx" />
      <node concept="3EZMnI" id="6Rk79gblqXN" role="3EZMnx">
        <node concept="2iRkQZ" id="6Rk79gblqXO" role="2iSdaV" />
        <node concept="3EZMnI" id="6Rk79gblqXQ" role="3EZMnx">
          <node concept="2iRfu4" id="6Rk79gblqXR" role="2iSdaV" />
          <node concept="3F0ifn" id="6Rk79gblqXV" role="3EZMnx">
            <property role="3F0ifm" value="model:" />
          </node>
          <node concept="3F0A7n" id="6Rk79gblqXL" role="3EZMnx">
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
        <node concept="3F2HdR" id="6Rk79gblqXY" role="3EZMnx">
          <ref role="1NtTu8" to="b1ln:6Rk79gbjaz8" resolve="schemas" />
          <node concept="2iRkQZ" id="6Rk79gblqY0" role="2czzBx" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6Rk79gblKi2">
    <ref role="1XX52x" to="b1ln:6Rk79gbjbPd" resolve="FieldRefrence" />
    <node concept="3EZMnI" id="6Rk79gblKii" role="2wV5jI">
      <node concept="3XFhqQ" id="6Rk79gblSKN" role="3EZMnx" />
      <node concept="2iRfu4" id="6Rk79gblKij" role="2iSdaV" />
      <node concept="3F0A7n" id="6Rk79gbn5j0" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="4RkLmywVU9l" role="3EZMnx">
        <property role="3F0ifm" value="@" />
      </node>
      <node concept="1iCGBv" id="6Rk79gblKi4" role="3EZMnx">
        <ref role="1NtTu8" to="b1ln:6Rk79gbjbPh" resolve="target_schema" />
        <node concept="1sVBvm" id="6Rk79gblKi6" role="1sWHZn">
          <node concept="3EZMnI" id="6Rk79gbnqvy" role="2wV5jI">
            <node concept="2iRfu4" id="6Rk79gbnqvz" role="2iSdaV" />
            <node concept="3F0A7n" id="6Rk79gblKia" role="3EZMnx">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="6Rk79gbm9Gt" role="3EZMnx">
        <node concept="VPM3Z" id="6Rk79gbm9Gv" role="3F10Kt" />
        <node concept="3EZMnI" id="6Rk79gbm9GG" role="3EZMnx">
          <node concept="2iRfu4" id="6Rk79gbm9GH" role="2iSdaV" />
          <node concept="3F0ifn" id="6Rk79gbm9GJ" role="3EZMnx">
            <property role="3F0ifm" value="relationName" />
          </node>
          <node concept="3F0A7n" id="6Rk79gbm9Gz" role="3EZMnx">
            <ref role="1NtTu8" to="b1ln:6Rk79gbjbPe" resolve="name_of_relation" />
          </node>
        </node>
        <node concept="2iRkQZ" id="6Rk79gbm9Gy" role="2iSdaV" />
        <node concept="3EZMnI" id="6Rk79gbm9GM" role="3EZMnx">
          <node concept="2iRfu4" id="6Rk79gbm9GN" role="2iSdaV" />
          <node concept="3F0ifn" id="6Rk79gbm9GP" role="3EZMnx">
            <property role="3F0ifm" value="relationType" />
          </node>
          <node concept="3F0A7n" id="6Rk79gbm9GD" role="3EZMnx">
            <ref role="1NtTu8" to="b1ln:6Rk79gbjbPf" resolve="type_of_relation" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6Rk79gbo_Ra">
    <property role="3GE5qa" value="Roots" />
    <ref role="1XX52x" to="b1ln:6Rk79gbo_R7" resolve="SQL" />
    <node concept="1iCGBv" id="6Rk79gbo_Rc" role="2wV5jI">
      <ref role="1NtTu8" to="b1ln:6Rk79gbo_R8" resolve="targetScemaFilde" />
      <node concept="1sVBvm" id="6Rk79gbo_Re" role="1sWHZn">
        <node concept="3F0A7n" id="6Rk79gbo_Ri" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
</model>

