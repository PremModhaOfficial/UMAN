<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:800e8e49-eaac-41f7-aec9-90bb1fd1ca38(uman.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="1" />
    <devkit ref="fa73d85a-ac7f-447b-846c-fcdc41caa600(jetbrains.mps.devkit.aspect.textgen)" />
  </languages>
  <imports>
    <import index="b1ln" ref="r:22b0f938-2771-480c-8e65-411380d57efc(uman.structure)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
    </language>
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen">
      <concept id="45307784116571022" name="jetbrains.mps.lang.textGen.structure.FilenameFunction" flags="ig" index="29tfMY" />
      <concept id="8931911391946696733" name="jetbrains.mps.lang.textGen.structure.ExtensionDeclaration" flags="in" index="9MYSb" />
      <concept id="1237305115734" name="jetbrains.mps.lang.textGen.structure.AbstractAppendPart" flags="ng" index="l8slQ" />
      <concept id="1237306079178" name="jetbrains.mps.lang.textGen.structure.AppendOperation" flags="nn" index="lc7rE">
        <child id="1237306115446" name="part" index="lcghm" />
      </concept>
      <concept id="1233670071145" name="jetbrains.mps.lang.textGen.structure.ConceptTextGenDeclaration" flags="ig" index="WtQ9Q">
        <reference id="1233670257997" name="conceptDeclaration" index="WuzLi" />
        <child id="45307784116711884" name="filename" index="29tGrW" />
        <child id="1233749296504" name="textGenBlock" index="11c4hB" />
        <child id="7991274449437422201" name="extension" index="33IsuW" />
        <child id="7844911294523354450" name="filePath" index="1Knhgg" />
      </concept>
      <concept id="1233748055915" name="jetbrains.mps.lang.textGen.structure.NodeParameter" flags="nn" index="117lpO" />
      <concept id="1233749247888" name="jetbrains.mps.lang.textGen.structure.GenerateTextDeclaration" flags="in" index="11bSqf" />
      <concept id="7844911294523361055" name="jetbrains.mps.lang.textGen.structure.FilePathQuery" flags="ig" index="1KnnTt" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
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
  <node concept="WtQ9Q" id="6Rk79gbp9Ob">
    <property role="3GE5qa" value="Roots" />
    <ref role="WuzLi" to="b1ln:6Rk79gbo_R7" resolve="SQL" />
    <node concept="29tfMY" id="6Rk79gbp9Od" role="29tGrW">
      <node concept="3clFbS" id="6Rk79gbp9Oe" role="2VODD2">
        <node concept="3clFbF" id="6Rk79gbp9Uv" role="3cqZAp">
          <node concept="Xl_RD" id="6Rk79gbp9Uu" role="3clFbG">
            <property role="Xl_RC" value="user_management_sql" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="6Rk79gbp9Z5" role="1Knhgg">
      <node concept="3clFbS" id="6Rk79gbp9Z7" role="2VODD2">
        <node concept="3clFbF" id="6Rk79gbp9ZC" role="3cqZAp">
          <node concept="Xl_RD" id="6Rk79gbpa0Q" role="3clFbG">
            <property role="Xl_RC" value="sql/" />
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="6Rk79gbpa3l" role="33IsuW">
      <node concept="3clFbS" id="6Rk79gbpa3m" role="2VODD2">
        <node concept="3clFbF" id="6Rk79gbpa9K" role="3cqZAp">
          <node concept="Xl_RD" id="6Rk79gbpa9J" role="3clFbG">
            <property role="Xl_RC" value="sql" />
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="6Rk79gbrQco" role="11c4hB">
      <node concept="3clFbS" id="6Rk79gbrQcp" role="2VODD2">
        <node concept="3cpWs8" id="6Rk79gbrQr7" role="3cqZAp">
          <node concept="3cpWsn" id="6Rk79gbrQr8" role="3cpWs9">
            <property role="TrG5h" value="n" />
            <node concept="3Tqbb2" id="6Rk79gbrQoO" role="1tU5fm">
              <ref role="ehGHo" to="b1ln:6Rk79gbo_R7" resolve="SQL" />
            </node>
            <node concept="117lpO" id="6Rk79gbrQr9" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="6Rk79gbrR9$" role="3cqZAp">
          <node concept="3cpWsn" id="6Rk79gbrR9_" role="3cpWs9">
            <property role="TrG5h" value="models" />
            <node concept="3Tqbb2" id="6Rk79gbrR7b" role="1tU5fm">
              <ref role="ehGHo" to="b1ln:6Rk79gbjaz6" resolve="Models" />
            </node>
            <node concept="2OqwBi" id="6Rk79gbrR9A" role="33vP2m">
              <node concept="37vLTw" id="6Rk79gbrR9B" role="2Oq$k0">
                <ref role="3cqZAo" node="6Rk79gbrQr8" resolve="n" />
              </node>
              <node concept="3TrEf2" id="6Rk79gbrR9C" role="2OqNvi">
                <ref role="3Tt5mk" to="b1ln:6Rk79gbo_R8" resolve="targetScemaFilde" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6Rk79gbrQxT" role="3cqZAp" />
        <node concept="lc7rE" id="6Rk79gbrRsJ" role="3cqZAp">
          <node concept="l8slQ" id="6Rk79gbrRsL" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
</model>

