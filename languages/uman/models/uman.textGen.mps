<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:800e8e49-eaac-41f7-aec9-90bb1fd1ca38(uman.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="1" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="2" />
    <devkit ref="fa73d85a-ac7f-447b-846c-fcdc41caa600(jetbrains.mps.devkit.aspect.textgen)" />
  </languages>
  <imports>
    <import index="b1ln" ref="r:22b0f938-2771-480c-8e65-411380d57efc(uman.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="h9pt" ref="r:6918c30d-03a1-4852-b9d8-c951fd07387f(uman.behavior)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <property id="2523873803623706117" name="isMultiline" index="hSjvv" />
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="2621000434129553333" name="jetbrains.mps.baseLanguage.structure.UnknownDotCall" flags="nn" index="Wc6QR">
        <property id="4872723285943177972" name="callee" index="10XrrR" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="6528213125912070246" name="jetbrains.mps.baseLanguage.structure.Tokens" flags="ngI" index="1u$dsA">
        <property id="1843920760191311250" name="tokens" index="1CJj6V" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="5497648299878491908" name="jetbrains.mps.baseLanguage.structure.BaseVariableReference" flags="nn" index="1M0zk4">
        <reference id="5497648299878491909" name="baseVariableDeclaration" index="1M0zk5" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="2524418899405758586" name="jetbrains.mps.baseLanguage.closures.structure.InferredClosureParameterDeclaration" flags="ig" index="gl6BB" />
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen">
      <concept id="45307784116571022" name="jetbrains.mps.lang.textGen.structure.FilenameFunction" flags="ig" index="29tfMY" />
      <concept id="8931911391946696733" name="jetbrains.mps.lang.textGen.structure.ExtensionDeclaration" flags="in" index="9MYSb" />
      <concept id="1237305208784" name="jetbrains.mps.lang.textGen.structure.NewLineAppendPart" flags="ng" index="l8MVK" />
      <concept id="1237305334312" name="jetbrains.mps.lang.textGen.structure.NodeAppendPart" flags="ng" index="l9hG8">
        <child id="1237305790512" name="value" index="lb14g" />
      </concept>
      <concept id="1237305557638" name="jetbrains.mps.lang.textGen.structure.ConstantStringAppendPart" flags="ng" index="la8eA">
        <property id="1237305576108" name="value" index="lacIc" />
      </concept>
      <concept id="1237306079178" name="jetbrains.mps.lang.textGen.structure.AppendOperation" flags="nn" index="lc7rE">
        <child id="1237306115446" name="part" index="lcghm" />
      </concept>
      <concept id="4357423944233036906" name="jetbrains.mps.lang.textGen.structure.IndentPart" flags="ng" index="2BGw6n" />
      <concept id="1233670071145" name="jetbrains.mps.lang.textGen.structure.ConceptTextGenDeclaration" flags="ig" index="WtQ9Q">
        <reference id="1233670257997" name="conceptDeclaration" index="WuzLi" />
        <child id="45307784116711884" name="filename" index="29tGrW" />
        <child id="1233749296504" name="textGenBlock" index="11c4hB" />
        <child id="7991274449437422201" name="extension" index="33IsuW" />
        <child id="7844911294523354450" name="filePath" index="1Knhgg" />
      </concept>
      <concept id="1233748055915" name="jetbrains.mps.lang.textGen.structure.NodeParameter" flags="nn" index="117lpO" />
      <concept id="1233749247888" name="jetbrains.mps.lang.textGen.structure.GenerateTextDeclaration" flags="in" index="11bSqf" />
      <concept id="1236188139846" name="jetbrains.mps.lang.textGen.structure.WithIndentOperation" flags="nn" index="3izx1p">
        <child id="1236188238861" name="list" index="3izTki" />
      </concept>
      <concept id="7844911294523361055" name="jetbrains.mps.lang.textGen.structure.FilePathQuery" flags="ig" index="1KnnTt" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="4705942098322467729" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="ng" index="21nZrQ">
        <reference id="4705942098322467736" name="decl" index="21nZrZ" />
      </concept>
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1883223317721008708" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfStatement" flags="nn" index="Jncv_">
        <reference id="1883223317721008712" name="nodeConcept" index="JncvD" />
        <child id="1883223317721008709" name="body" index="Jncv$" />
        <child id="1883223317721008711" name="variable" index="JncvA" />
        <child id="1883223317721008710" name="nodeExpression" index="JncvB" />
      </concept>
      <concept id="1883223317721008713" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVariable" flags="ng" index="JncvC" />
      <concept id="1883223317721107059" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVarReference" flags="nn" index="Jnkvi" />
      <concept id="1212008292747" name="jetbrains.mps.lang.smodel.structure.Model_GetLongNameOperation" flags="nn" index="LkI2h" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
      <concept id="2453008993612717253" name="jetbrains.mps.lang.smodel.structure.EnumSwitchCaseBody_Expression" flags="ng" index="3X5gDF">
        <child id="2453008993612717254" name="expression" index="3X5gDC" />
      </concept>
      <concept id="2453008993612559843" name="jetbrains.mps.lang.smodel.structure.EnumSwitchCase" flags="ng" index="3X5Udd">
        <child id="2453008993612717146" name="body" index="3X5gFO" />
        <child id="2453008993612559844" name="members" index="3X5Uda" />
      </concept>
      <concept id="2453008993612559839" name="jetbrains.mps.lang.smodel.structure.EnumSwitchExpression" flags="ng" index="3X5UdL">
        <child id="2453008993612714935" name="cases" index="3X5gkp" />
        <child id="2453008993612559840" name="enumExpression" index="3X5Ude" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
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
          <node concept="la8eA" id="6Rk79gbrSAl" role="lcghm">
            <property role="lacIc" value="-- ============================================================\n" />
          </node>
        </node>
        <node concept="lc7rE" id="6Rk79gbrSEf" role="3cqZAp">
          <node concept="la8eA" id="6Rk79gbrSF3" role="lcghm">
            <property role="lacIc" value="-- " />
          </node>
          <node concept="l9hG8" id="6Rk79gbrSTN" role="lcghm">
            <node concept="2OqwBi" id="6Rk79gbrT3t" role="lb14g">
              <node concept="37vLTw" id="6Rk79gbrSUm" role="2Oq$k0">
                <ref role="3cqZAo" node="6Rk79gbrR9_" resolve="models" />
              </node>
              <node concept="3TrcHB" id="6Rk79gbrUv1" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="6Rk79gbrSHS" role="lcghm">
            <property role="lacIc" value=" Schema" />
          </node>
          <node concept="l8MVK" id="6Rk79gbrSL8" role="lcghm" />
        </node>
        <node concept="lc7rE" id="6Rk79gbrSQ4" role="3cqZAp">
          <node concept="la8eA" id="6Rk79gbrSQS" role="lcghm">
            <property role="lacIc" value="-- ============================================================\n\n" />
          </node>
        </node>
        <node concept="3clFbH" id="6Rk79gbs6P1" role="3cqZAp" />
        <node concept="2Gpval" id="6Rk79gbs6Q9" role="3cqZAp">
          <node concept="2GrKxI" id="6Rk79gbs6Qb" role="2Gsz3X">
            <property role="TrG5h" value="s" />
          </node>
          <node concept="2OqwBi" id="6Rk79gbs74$" role="2GsD0m">
            <node concept="37vLTw" id="6Rk79gbs6VL" role="2Oq$k0">
              <ref role="3cqZAo" node="6Rk79gbrR9_" resolve="models" />
            </node>
            <node concept="3Tsc0h" id="6Rk79gbs7n1" role="2OqNvi">
              <ref role="3TtcxE" to="b1ln:6Rk79gbjaz8" resolve="schemas" />
            </node>
          </node>
          <node concept="3clFbS" id="6Rk79gbs6Qf" role="2LFqv$">
            <node concept="lc7rE" id="6Rk79gbs7po" role="3cqZAp">
              <node concept="la8eA" id="6Rk79gbs7pO" role="lcghm">
                <property role="lacIc" value="CREATE TABLE IF NOT EXISTS " />
              </node>
              <node concept="l9hG8" id="6Rk79gbs7vz" role="lcghm">
                <node concept="2OqwBi" id="6Rk79gbs7AZ" role="lb14g">
                  <node concept="2GrUjf" id="6Rk79gbs7w6" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="6Rk79gbs6Qb" resolve="s" />
                  </node>
                  <node concept="3TrcHB" id="6Rk79gbs8lI" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="6Rk79gbs8qP" role="lcghm">
                <property role="lacIc" value=" (" />
              </node>
              <node concept="l8MVK" id="6Rk79gbs7sL" role="lcghm" />
            </node>
            <node concept="lc7rE" id="6Rk79gbs8st" role="3cqZAp">
              <node concept="la8eA" id="6Rk79gbs8sV" role="lcghm">
                <property role="lacIc" value="    id            BIGSERIAL       PRIMARY KEY" />
              </node>
            </node>
            <node concept="2Gpval" id="6Rk79gbs8y9" role="3cqZAp">
              <node concept="2GrKxI" id="6Rk79gbs8yb" role="2Gsz3X">
                <property role="TrG5h" value="f" />
              </node>
              <node concept="2OqwBi" id="6Rk79gbs8Ht" role="2GsD0m">
                <node concept="2GrUjf" id="6Rk79gbs8z8" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="6Rk79gbs6Qb" resolve="s" />
                </node>
                <node concept="3Tsc0h" id="6Rk79gbs9lZ" role="2OqNvi">
                  <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                </node>
              </node>
              <node concept="3clFbS" id="6Rk79gbs8yf" role="2LFqv$">
                <node concept="3izx1p" id="6Rk79gbuFVV" role="3cqZAp">
                  <node concept="3clFbS" id="6Rk79gbuFVX" role="3izTki">
                    <node concept="lc7rE" id="6Rk79gbs9qw" role="3cqZAp">
                      <node concept="la8eA" id="6Rk79gbs9qW" role="lcghm">
                        <property role="lacIc" value="," />
                      </node>
                      <node concept="l8MVK" id="6Rk79gbs9rQ" role="lcghm" />
                    </node>
                    <node concept="Jncv_" id="6Rk79gbs9xP" role="3cqZAp">
                      <ref role="JncvD" to="b1ln:6Rk79gbjazd" resolve="Field" />
                      <node concept="2GrUjf" id="6Rk79gbs9yx" role="JncvB">
                        <ref role="2Gs0qQ" node="6Rk79gbs8yb" resolve="f" />
                      </node>
                      <node concept="3clFbS" id="6Rk79gbs9xT" role="Jncv$">
                        <node concept="lc7rE" id="6Rk79gbsaji" role="3cqZAp">
                          <node concept="2BGw6n" id="6Rk79gbuGoF" role="lcghm" />
                          <node concept="2BGw6n" id="6Rk79gbuVXf" role="lcghm" />
                          <node concept="l9hG8" id="6Rk79gbsajL" role="lcghm">
                            <node concept="2OqwBi" id="6Rk79gbsauW" role="lb14g">
                              <node concept="Jnkvi" id="6Rk79gbsb9U" role="2Oq$k0">
                                <ref role="1M0zk5" node="6Rk79gbs9xV" resolve="fp" />
                              </node>
                              <node concept="3TrcHB" id="6Rk79gbsaD$" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                          <node concept="2BGw6n" id="6Rk79gbuVWl" role="lcghm" />
                        </node>
                        <node concept="3cpWs8" id="6Rk79gbscme" role="3cqZAp">
                          <node concept="3cpWsn" id="6Rk79gbscmf" role="3cpWs9">
                            <property role="TrG5h" value="a" />
                            <node concept="3uibUv" id="6Rk79gbscmg" role="1tU5fm">
                              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                            </node>
                            <node concept="Xl_RD" id="6Rk79gbscsK" role="33vP2m">
                              <property role="Xl_RC" value="!!??!!" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="6Rk79gbsch3" role="3cqZAp" />
                        <node concept="3clFbF" id="6Rk79gbsaGW" role="3cqZAp">
                          <node concept="3X5UdL" id="6Rk79gbsaGS" role="3clFbG">
                            <node concept="2OqwBi" id="6Rk79gbsbdr" role="3X5Ude">
                              <node concept="Jnkvi" id="6Rk79gbsbcN" role="2Oq$k0">
                                <ref role="1M0zk5" node="6Rk79gbs9xV" resolve="fp" />
                              </node>
                              <node concept="3TrcHB" id="6Rk79gbsbuF" role="2OqNvi">
                                <ref role="3TsBF5" to="b1ln:6Rk79gbjbxG" resolve="dataType" />
                              </node>
                            </node>
                            <node concept="3X5Udd" id="6Rk79gbscup" role="3X5gkp">
                              <node concept="21nZrQ" id="6Rk79gbscuo" role="3X5Uda">
                                <ref role="21nZrZ" to="b1ln:6Rk79gbjbxI" resolve="int64" />
                              </node>
                              <node concept="3X5gDF" id="6Rk79gbsczE" role="3X5gFO">
                                <node concept="37vLTI" id="6Rk79gbscLO" role="3X5gDC">
                                  <node concept="Xl_RD" id="6Rk79gbscM3" role="37vLTx">
                                    <property role="Xl_RC" value="BINGINT" />
                                  </node>
                                  <node concept="37vLTw" id="6Rk79gbsczC" role="37vLTJ">
                                    <ref role="3cqZAo" node="6Rk79gbscmf" resolve="a" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3X5Udd" id="6Rk79gbscOu" role="3X5gkp">
                              <node concept="21nZrQ" id="6Rk79gbscOv" role="3X5Uda">
                                <ref role="21nZrZ" to="b1ln:6Rk79gbjbxL" resolve="boolean" />
                              </node>
                              <node concept="3X5gDF" id="6Rk79gbsd0r" role="3X5gFO">
                                <node concept="37vLTI" id="6Rk79gbsdD9" role="3X5gDC">
                                  <node concept="Xl_RD" id="6Rk79gbsdDo" role="37vLTx">
                                    <property role="Xl_RC" value="BOOLEAN" />
                                  </node>
                                  <node concept="37vLTw" id="6Rk79gbsd0p" role="37vLTJ">
                                    <ref role="3cqZAo" node="6Rk79gbscmf" resolve="a" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3X5Udd" id="6Rk79gbsdFM" role="3X5gkp">
                              <node concept="3X5gDF" id="6Rk79gbsdM1" role="3X5gFO">
                                <node concept="37vLTI" id="6Rk79gbsdMM" role="3X5gDC">
                                  <node concept="Xl_RD" id="6Rk79gbsdN1" role="37vLTx">
                                    <property role="Xl_RC" value="FLOAT" />
                                  </node>
                                  <node concept="37vLTw" id="6Rk79gbsdLZ" role="37vLTJ">
                                    <ref role="3cqZAo" node="6Rk79gbscmf" resolve="a" />
                                  </node>
                                </node>
                              </node>
                              <node concept="21nZrQ" id="6Rk79gbsdLy" role="3X5Uda">
                                <ref role="21nZrZ" to="b1ln:6Rk79gbjbxK" resolve="float" />
                              </node>
                            </node>
                            <node concept="3X5Udd" id="6Rk79gbsdQD" role="3X5gkp">
                              <node concept="21nZrQ" id="6Rk79gbsdQE" role="3X5Uda">
                                <ref role="21nZrZ" to="b1ln:6Rk79gbjbxJ" resolve="string" />
                              </node>
                              <node concept="3X5gDF" id="6Rk79gbse2$" role="3X5gFO">
                                <node concept="37vLTI" id="6Rk79gbsegC" role="3X5gDC">
                                  <node concept="Xl_RD" id="6Rk79gbsegR" role="37vLTx">
                                    <property role="Xl_RC" value="TEXT" />
                                  </node>
                                  <node concept="37vLTw" id="6Rk79gbse2y" role="37vLTJ">
                                    <ref role="3cqZAo" node="6Rk79gbscmf" resolve="a" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3X5Udd" id="6Rk79gbsehv" role="3X5gkp">
                              <node concept="21nZrQ" id="6Rk79gbsehw" role="3X5Uda">
                                <ref role="21nZrZ" to="b1ln:6Rk79gbjbxM" resolve="timestamp" />
                              </node>
                              <node concept="3X5gDF" id="6Rk79gbsene" role="3X5gFO">
                                <node concept="37vLTI" id="6Rk79gbsenW" role="3X5gDC">
                                  <node concept="Xl_RD" id="6Rk79gbseob" role="37vLTx">
                                    <property role="Xl_RC" value="TIMESTAMPTZ" />
                                  </node>
                                  <node concept="37vLTw" id="6Rk79gbsenc" role="37vLTJ">
                                    <ref role="3cqZAo" node="6Rk79gbscmf" resolve="a" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="lc7rE" id="6Rk79gbseE1" role="3cqZAp">
                          <node concept="2BGw6n" id="6Rk79gbuW16" role="lcghm" />
                          <node concept="l9hG8" id="6Rk79gbseJi" role="lcghm">
                            <node concept="37vLTw" id="6Rk79gbseJQ" role="lb14g">
                              <ref role="3cqZAo" node="6Rk79gbscmf" resolve="a" />
                            </node>
                          </node>
                          <node concept="2BGw6n" id="6Rk79gbuW20" role="lcghm" />
                          <node concept="l9hG8" id="6Rk79gbsfbY" role="lcghm">
                            <node concept="3K4zz7" id="6Rk79gbsh2Q" role="lb14g">
                              <node concept="Xl_RD" id="6Rk79gbsh8r" role="3K4E3e" />
                              <node concept="Xl_RD" id="6Rk79gbshoW" role="3K4GZi">
                                <property role="Xl_RC" value="NOT NULL" />
                              </node>
                              <node concept="2OqwBi" id="6Rk79gbsg3o" role="3K4Cdx">
                                <node concept="Jnkvi" id="6Rk79gbsfPB" role="2Oq$k0">
                                  <ref role="1M0zk5" node="6Rk79gbs9xV" resolve="fp" />
                                </node>
                                <node concept="3TrcHB" id="6Rk79gbsgty" role="2OqNvi">
                                  <ref role="3TsBF5" to="b1ln:6Rk79gbqH7m" resolve="CanBeNull" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="6Rk79gbseV0" role="3cqZAp" />
                      </node>
                      <node concept="JncvC" id="6Rk79gbs9xV" role="JncvA">
                        <property role="TrG5h" value="fp" />
                        <node concept="2jxLKc" id="6Rk79gbs9xW" role="1tU5fm" />
                      </node>
                    </node>
                    <node concept="Jncv_" id="6Rk79gbshEL" role="3cqZAp">
                      <ref role="JncvD" to="b1ln:6Rk79gbjbPd" resolve="FieldRefrence" />
                      <node concept="2GrUjf" id="6Rk79gbshR6" role="JncvB">
                        <ref role="2Gs0qQ" node="6Rk79gbs8yb" resolve="f" />
                      </node>
                      <node concept="3clFbS" id="6Rk79gbshEP" role="Jncv$">
                        <node concept="lc7rE" id="6Rk79gbsi3C" role="3cqZAp">
                          <node concept="2BGw6n" id="6Rk79gbuVY9" role="lcghm" />
                          <node concept="2BGw6n" id="6Rk79gbuVZ2" role="lcghm" />
                          <node concept="l9hG8" id="6Rk79gbsi45" role="lcghm">
                            <node concept="2OqwBi" id="6Rk79gbsier" role="lb14g">
                              <node concept="Jnkvi" id="6Rk79gbsi4D" role="2Oq$k0">
                                <ref role="1M0zk5" node="6Rk79gbshER" resolve="fr" />
                              </node>
                              <node concept="3TrcHB" id="6Rk79gbsiMF" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                          <node concept="2BGw6n" id="6Rk79gbuW0c" role="lcghm" />
                          <node concept="la8eA" id="6Rk79gbsiVD" role="lcghm">
                            <property role="lacIc" value=" BIGINT NOT NULL REFERENCES " />
                          </node>
                          <node concept="l9hG8" id="6Rk79gbsiYG" role="lcghm">
                            <node concept="2OqwBi" id="6Rk79gbsjXj" role="lb14g">
                              <node concept="2OqwBi" id="6Rk79gbsj6G" role="2Oq$k0">
                                <node concept="Jnkvi" id="6Rk79gbsiZh" role="2Oq$k0">
                                  <ref role="1M0zk5" node="6Rk79gbshER" resolve="fr" />
                                </node>
                                <node concept="3TrEf2" id="6Rk79gbsjHp" role="2OqNvi">
                                  <ref role="3Tt5mk" to="b1ln:6Rk79gbjbPh" resolve="target_schema" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="6Rk79gbskgs" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                          <node concept="la8eA" id="6Rk79gbsknL" role="lcghm">
                            <property role="lacIc" value="(id) ON DELETE CASCADE" />
                          </node>
                        </node>
                      </node>
                      <node concept="JncvC" id="6Rk79gbshER" role="JncvA">
                        <property role="TrG5h" value="fr" />
                        <node concept="2jxLKc" id="6Rk79gbshES" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="6Rk79gbskC8" role="3cqZAp">
              <node concept="la8eA" id="6Rk79gbskJ1" role="lcghm">
                <property role="lacIc" value="\n);\n\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="6Rk79gbskRy" role="3cqZAp">
          <node concept="la8eA" id="6Rk79gbskYs" role="lcghm">
            <property role="lacIc" value="-- Indexes\n" />
          </node>
        </node>
        <node concept="3clFbH" id="6Rk79gbskZI" role="3cqZAp" />
        <node concept="2Gpval" id="6Rk79gbsleQ" role="3cqZAp">
          <node concept="2GrKxI" id="6Rk79gbsleS" role="2Gsz3X">
            <property role="TrG5h" value="sc" />
          </node>
          <node concept="2OqwBi" id="6Rk79gbslv5" role="2GsD0m">
            <node concept="37vLTw" id="6Rk79gbslmh" role="2Oq$k0">
              <ref role="3cqZAo" node="6Rk79gbrR9_" resolve="models" />
            </node>
            <node concept="3Tsc0h" id="6Rk79gbslLz" role="2OqNvi">
              <ref role="3TtcxE" to="b1ln:6Rk79gbjaz8" resolve="schemas" />
            </node>
          </node>
          <node concept="3clFbS" id="6Rk79gbsleW" role="2LFqv$">
            <node concept="2Gpval" id="6Rk79gbslNV" role="3cqZAp">
              <node concept="2GrKxI" id="6Rk79gbslNW" role="2Gsz3X">
                <property role="TrG5h" value="fh" />
              </node>
              <node concept="3clFbS" id="6Rk79gbslNY" role="2LFqv$">
                <node concept="Jncv_" id="6Rk79gbsnUi" role="3cqZAp">
                  <ref role="JncvD" to="b1ln:6Rk79gbjazd" resolve="Field" />
                  <node concept="2GrUjf" id="6Rk79gbsnUY" role="JncvB">
                    <ref role="2Gs0qQ" node="6Rk79gbslNW" resolve="fh" />
                  </node>
                  <node concept="3clFbS" id="6Rk79gbsnUm" role="Jncv$">
                    <node concept="3clFbJ" id="6Rk79gbsp3A" role="3cqZAp">
                      <node concept="2OqwBi" id="6Rk79gbspdq" role="3clFbw">
                        <node concept="Jnkvi" id="6Rk79gbsp47" role="2Oq$k0">
                          <ref role="1M0zk5" node="6Rk79gbsnUo" resolve="fp" />
                        </node>
                        <node concept="3TrcHB" id="6Rk79gbsqd1" role="2OqNvi">
                          <ref role="3TsBF5" to="b1ln:6Rk79gbjbP9" resolve="Index" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="6Rk79gbsp3C" role="3clFbx">
                        <node concept="lc7rE" id="6Rk79gbsqnV" role="3cqZAp">
                          <node concept="la8eA" id="6Rk79gbsqq8" role="lcghm">
                            <property role="lacIc" value="CREATE INDEX IF NOT EXISTS idx_" />
                          </node>
                          <node concept="l9hG8" id="6Rk79gbsqxM" role="lcghm">
                            <node concept="2OqwBi" id="6Rk79gbsrMW" role="lb14g">
                              <node concept="2GrUjf" id="6Rk79gbsrxQ" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="6Rk79gbsleS" resolve="sc" />
                              </node>
                              <node concept="3TrcHB" id="6Rk79gbssCg" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                          <node concept="la8eA" id="6Rk79gbsquQ" role="lcghm">
                            <property role="lacIc" value="_" />
                          </node>
                          <node concept="l9hG8" id="6Rk79gbssRh" role="lcghm">
                            <node concept="2OqwBi" id="6Rk79gbst1B" role="lb14g">
                              <node concept="Jnkvi" id="6Rk79gbssRP" role="2Oq$k0">
                                <ref role="1M0zk5" node="6Rk79gbsnUo" resolve="fp" />
                              </node>
                              <node concept="3TrcHB" id="6Rk79gbstxZ" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                          <node concept="la8eA" id="6Rk79gbsqoo" role="lcghm">
                            <property role="lacIc" value=" ON " />
                          </node>
                          <node concept="l9hG8" id="6Rk79gbstU6" role="lcghm">
                            <node concept="2OqwBi" id="6Rk79gbsu1z" role="lb14g">
                              <node concept="2GrUjf" id="6Rk79gbstUE" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="6Rk79gbsleS" resolve="sc" />
                              </node>
                              <node concept="3TrcHB" id="6Rk79gbsuR_" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                          <node concept="la8eA" id="6Rk79gbstSK" role="lcghm">
                            <property role="lacIc" value="(" />
                          </node>
                          <node concept="l9hG8" id="6Rk79gbsviT" role="lcghm">
                            <node concept="2OqwBi" id="6Rk79gbsvt6" role="lb14g">
                              <node concept="Jnkvi" id="6Rk79gbsvjt" role="2Oq$k0">
                                <ref role="1M0zk5" node="6Rk79gbsnUo" resolve="fp" />
                              </node>
                              <node concept="3TrcHB" id="6Rk79gbsvSt" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                          <node concept="la8eA" id="6Rk79gbsvhe" role="lcghm">
                            <property role="lacIc" value=");\n" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="JncvC" id="6Rk79gbsnUo" role="JncvA">
                    <property role="TrG5h" value="fp" />
                    <node concept="2jxLKc" id="6Rk79gbsnUp" role="1tU5fm" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6Rk79gbsmNw" role="2GsD0m">
                <node concept="2GrUjf" id="6Rk79gbsm$M" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="6Rk79gbsleS" resolve="sc" />
                </node>
                <node concept="3Tsc0h" id="6Rk79gbsnJk" role="2OqNvi">
                  <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="4RkLmywXupY">
    <property role="3GE5qa" value="Roots" />
    <ref role="WuzLi" to="b1ln:4RkLmywW935" resolve="Code" />
    <node concept="29tfMY" id="4RkLmywXuq0" role="29tGrW">
      <node concept="3clFbS" id="4RkLmywXuq1" role="2VODD2">
        <node concept="3clFbF" id="4RkLmywXuwj" role="3cqZAp">
          <node concept="2OqwBi" id="4RkLmywXvcp" role="3clFbG">
            <node concept="2OqwBi" id="4RkLmywXuJK" role="2Oq$k0">
              <node concept="117lpO" id="4RkLmywXuwi" role="2Oq$k0" />
              <node concept="I4A8Y" id="4RkLmywXv$6" role="2OqNvi" />
            </node>
            <node concept="LkI2h" id="4RkLmywXvN7" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="4RkLmywXvNX" role="33IsuW">
      <node concept="3clFbS" id="4RkLmywXvNY" role="2VODD2">
        <node concept="3clFbF" id="4RkLmywXvPd" role="3cqZAp">
          <node concept="Xl_RD" id="4RkLmywXvPc" role="3clFbG">
            <property role="Xl_RC" value="go" />
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="4RkLmywXw8Q" role="11c4hB">
      <node concept="3clFbS" id="4RkLmywXw8R" role="2VODD2">
        <node concept="3cpWs8" id="4TZlN6tf1WM" role="3cqZAp">
          <node concept="3cpWsn" id="4TZlN6tf1WP" role="3cpWs9">
            <property role="TrG5h" value="n" />
            <node concept="3Tqbb2" id="4TZlN6tf1WK" role="1tU5fm">
              <ref role="ehGHo" to="b1ln:4RkLmywW935" resolve="Code" />
            </node>
            <node concept="117lpO" id="4TZlN6tf2nV" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="4TZlN6tf6hI" role="3cqZAp">
          <node concept="3cpWsn" id="4TZlN6tf6hJ" role="3cpWs9">
            <property role="TrG5h" value="models" />
            <node concept="3Tqbb2" id="4TZlN6tf6hg" role="1tU5fm">
              <ref role="ehGHo" to="b1ln:6Rk79gbjaz6" resolve="Models" />
            </node>
            <node concept="2OqwBi" id="4TZlN6tf6hK" role="33vP2m">
              <node concept="37vLTw" id="4TZlN6tf6hL" role="2Oq$k0">
                <ref role="3cqZAo" node="4TZlN6tf1WP" resolve="n" />
              </node>
              <node concept="3TrEf2" id="4TZlN6tf6hM" role="2OqNvi">
                <ref role="3Tt5mk" to="b1ln:4RkLmywW939" resolve="models" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4TZlN6tf6Ky" role="3cqZAp">
          <node concept="3cpWsn" id="4TZlN6tf6Kz" role="3cpWs9">
            <property role="TrG5h" value="infra" />
            <node concept="3Tqbb2" id="4TZlN6tf6K4" role="1tU5fm">
              <ref role="ehGHo" to="b1ln:4RkLmywW93b" resolve="Infra" />
            </node>
            <node concept="2OqwBi" id="4TZlN6tf6K$" role="33vP2m">
              <node concept="37vLTw" id="4TZlN6tf6K_" role="2Oq$k0">
                <ref role="3cqZAo" node="4TZlN6tf1WP" resolve="n" />
              </node>
              <node concept="3TrEf2" id="4TZlN6tf6KA" role="2OqNvi">
                <ref role="3Tt5mk" to="b1ln:4RkLmywW93a" resolve="infra" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4TZlN6teQwC" role="3cqZAp" />
        <node concept="lc7rE" id="4RkLmywXwc3" role="3cqZAp">
          <node concept="la8eA" id="4TZlN6teQe6" role="lcghm">
            <property role="lacIc" value="package main\n\nimport (\n\t&quot;database/sql&quot;\n\t_ &quot;embed&quot;\n\t&quot;encoding/json&quot;\n\t&quot;fmt&quot;\n\t&quot;log&quot;\n\t&quot;net/http&quot;\n\t&quot;os&quot;\n\t&quot;strconv&quot;\n\t&quot;time&quot;\n\n\t_ &quot;github.com/lib/pq&quot;\n\thttpSwagger &quot;github.com/swaggo/http-swagger&quot;\n\t_ &quot;" />
          </node>
          <node concept="l9hG8" id="4TZlN6teQw6" role="lcghm">
            <node concept="2OqwBi" id="4TZlN6tf7mO" role="lb14g">
              <node concept="37vLTw" id="4TZlN6tf6RH" role="2Oq$k0">
                <ref role="3cqZAo" node="4TZlN6tf6Kz" resolve="infra" />
              </node>
              <node concept="3TrcHB" id="4TZlN6tf7u_" role="2OqNvi">
                <ref role="3TsBF5" to="b1ln:4RkLmywWHsa" resolve="modulePath" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="4TZlN6tf7xG" role="lcghm">
            <property role="lacIc" value="/docs&quot;\n)\n\n//go:embed user_management_init.sql\nvar migrationSQL string\n\n// @title         " />
          </node>
          <node concept="l9hG8" id="4TZlN6tf7yD" role="lcghm">
            <node concept="2OqwBi" id="4TZlN6tf7Gl" role="lb14g">
              <node concept="37vLTw" id="4TZlN6tf7zd" role="2Oq$k0">
                <ref role="3cqZAo" node="4TZlN6tf6hJ" resolve="models" />
              </node>
              <node concept="3TrcHB" id="4TZlN6tf7Rt" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="4TZlN6tf7UG" role="lcghm">
            <property role="lacIc" value=" API\n// @version       1.0\n// @description   CRUD service for " />
          </node>
          <node concept="l9hG8" id="4TZlN6tf7W0" role="lcghm">
            <node concept="2OqwBi" id="4TZlN6tf85G" role="lb14g">
              <node concept="37vLTw" id="4TZlN6tf7W$" role="2Oq$k0">
                <ref role="3cqZAo" node="4TZlN6tf6hJ" resolve="models" />
              </node>
              <node concept="3TrcHB" id="4TZlN6tf8gO" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="4TZlN6tf8k3" role="lcghm">
            <property role="lacIc" value="\n// @host          localhost:" />
          </node>
          <node concept="l9hG8" id="4TZlN6tf8ns" role="lcghm">
            <node concept="3cpWs3" id="4TZlN6tf9Ys" role="lb14g">
              <node concept="Xl_RD" id="4TZlN6tfa10" role="3uHU7w">
                <property role="Xl_RC" value="" />
              </node>
              <node concept="2OqwBi" id="4TZlN6tf8ws" role="3uHU7B">
                <node concept="37vLTw" id="4TZlN6tf8o0" role="2Oq$k0">
                  <ref role="3cqZAo" node="4TZlN6tf6Kz" resolve="infra" />
                </node>
                <node concept="3TrcHB" id="4TZlN6tf8Kv" role="2OqNvi">
                  <ref role="3TsBF5" to="b1ln:4RkLmywWHs9" resolve="port" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="4TZlN6tfafe" role="lcghm">
            <property role="lacIc" value="\n// @BasePath      /\n// @schemes       http\n// @produce       json\n// @consumes      json\n\n// ============================================================\n// Models\n// ============================================================\n\n" />
          </node>
        </node>
        <node concept="3clFbH" id="4TZlN6tfafG" role="3cqZAp" />
        <node concept="3SKdUt" id="4TZlN6tfaoE" role="3cqZAp">
          <node concept="1PaTwC" id="4TZlN6tfaoF" role="1aUNEU">
            <node concept="3oM_SD" id="4TZlN6tfaU0" role="1PaTwD">
              <property role="3oM_SC" value="//" />
            </node>
            <node concept="3oM_SD" id="4TZlN6tfaU1" role="1PaTwD">
              <property role="3oM_SC" value="----" />
            </node>
            <node concept="3oM_SD" id="4TZlN6tfaU2" role="1PaTwD">
              <property role="3oM_SC" value="Regular" />
            </node>
            <node concept="3oM_SD" id="4TZlN6tfaU3" role="1PaTwD">
              <property role="3oM_SC" value="schema" />
            </node>
            <node concept="3oM_SD" id="4TZlN6tfaU4" role="1PaTwD">
              <property role="3oM_SC" value="structs" />
            </node>
            <node concept="3oM_SD" id="4TZlN6tfaU5" role="1PaTwD">
              <property role="3oM_SC" value="----" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4TZlN6tfaUu" role="3cqZAp" />
        <node concept="2Gpval" id="4TZlN6tfbyv" role="3cqZAp">
          <node concept="2GrKxI" id="4TZlN6tfbyx" role="2Gsz3X">
            <property role="TrG5h" value="schema" />
          </node>
          <node concept="2OqwBi" id="4TZlN6tfbIy" role="2GsD0m">
            <node concept="37vLTw" id="4TZlN6tfb_I" role="2Oq$k0">
              <ref role="3cqZAo" node="4TZlN6tf6hJ" resolve="models" />
            </node>
            <node concept="3Tsc0h" id="4TZlN6tfc10" role="2OqNvi">
              <ref role="3TtcxE" to="b1ln:6Rk79gbjaz8" resolve="schemas" />
            </node>
          </node>
          <node concept="3clFbS" id="4TZlN6tfby_" role="2LFqv$">
            <node concept="3clFbJ" id="4TZlN6tfc5m" role="3cqZAp">
              <node concept="3fqX7Q" id="4TZlN6tfc5S" role="3clFbw">
                <node concept="1eOMI4" id="4TZlN6tfc6v" role="3fr31v">
                  <node concept="2OqwBi" id="4TZlN6tfcfy" role="1eOMHV">
                    <node concept="2GrUjf" id="4TZlN6tfc78" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="4TZlN6tfbyx" resolve="schema" />
                    </node>
                    <node concept="2qgKlT" id="4TZlN6tfd6$" role="2OqNvi">
                      <ref role="37wK5l" to="h9pt:4RkLmywWXpy" resolve="hasReferences" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="4TZlN6tfc5o" role="3clFbx">
                <node concept="lc7rE" id="4TZlN6tfddV" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6tfdep" role="lcghm">
                    <property role="lacIc" value="type " />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tfdnL" role="lcghm">
                    <node concept="2OqwBi" id="4TZlN6tfdve" role="lb14g">
                      <node concept="2GrUjf" id="4TZlN6tfdol" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="4TZlN6tfbyx" resolve="schema" />
                      </node>
                      <node concept="2qgKlT" id="4TZlN6tfdSm" role="2OqNvi">
                        <ref role="37wK5l" to="h9pt:4RkLmywWSH4" resolve="structName" />
                      </node>
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tfdlh" role="lcghm">
                    <property role="lacIc" value=" struct " />
                  </node>
                  <node concept="la8eA" id="4TZlN6tfdiH" role="lcghm">
                    <property role="lacIc" value="\n\tID int64 `json:&quot;id&quot; db:&quot;id&quot; example:&quot;1&quot;`\n" />
                  </node>
                </node>
                <node concept="2Gpval" id="4TZlN6tfeEA" role="3cqZAp">
                  <node concept="2GrKxI" id="4TZlN6tfeEC" role="2Gsz3X">
                    <property role="TrG5h" value="field" />
                  </node>
                  <node concept="2OqwBi" id="4TZlN6tfeYG" role="2GsD0m">
                    <node concept="2GrUjf" id="4TZlN6tfePS" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="4TZlN6tfbyx" resolve="schema" />
                    </node>
                    <node concept="3Tsc0h" id="4TZlN6tffoe" role="2OqNvi">
                      <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="4TZlN6tfeEG" role="2LFqv$">
                    <node concept="Jncv_" id="4TZlN6tfOR7" role="3cqZAp">
                      <ref role="JncvD" to="b1ln:6Rk79gbjazd" resolve="Field" />
                      <node concept="2GrUjf" id="4TZlN6tfORK" role="JncvB">
                        <ref role="2Gs0qQ" node="4TZlN6tfeEC" resolve="field" />
                      </node>
                      <node concept="3clFbS" id="4TZlN6tfOR9" role="Jncv$">
                        <node concept="lc7rE" id="4TZlN6tfPet" role="3cqZAp">
                          <node concept="la8eA" id="4TZlN6tfPeW" role="lcghm">
                            <property role="lacIc" value="\t" />
                          </node>
                          <node concept="l9hG8" id="4TZlN6tfPfS" role="lcghm">
                            <node concept="2OqwBi" id="4TZlN6tgrNI" role="lb14g">
                              <node concept="Jnkvi" id="4TZlN6tfPgs" role="2Oq$k0">
                                <ref role="1M0zk5" node="4TZlN6tfORa" resolve="f" />
                              </node>
                              <node concept="2qgKlT" id="4TZlN6tgs7P" role="2OqNvi">
                                <ref role="37wK5l" to="h9pt:4TZlN6tfVyQ" resolve="pascalCase" />
                                <node concept="2OqwBi" id="4TZlN6tgspg" role="37wK5m">
                                  <node concept="Jnkvi" id="4TZlN6tgscQ" role="2Oq$k0">
                                    <ref role="1M0zk5" node="4TZlN6tfORa" resolve="f" />
                                  </node>
                                  <node concept="3TrcHB" id="4TZlN6tgsKd" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="la8eA" id="4TZlN6tfPYh" role="lcghm">
                            <property role="lacIc" value=" " />
                          </node>
                          <node concept="l9hG8" id="4TZlN6tfQ3W" role="lcghm">
                            <node concept="2OqwBi" id="4TZlN6tfQ7m" role="lb14g">
                              <node concept="Jnkvi" id="4TZlN6tfQ6T" role="2Oq$k0">
                                <ref role="1M0zk5" node="4TZlN6tfORa" resolve="f" />
                              </node>
                              <node concept="2qgKlT" id="4TZlN6tfQcU" role="2OqNvi">
                                <ref role="37wK5l" to="h9pt:4RkLmywX45R" resolve="goType" />
                              </node>
                            </node>
                          </node>
                          <node concept="la8eA" id="4TZlN6tfQqy" role="lcghm">
                            <property role="lacIc" value=" `json:&quot;" />
                          </node>
                          <node concept="l9hG8" id="4TZlN6tfQDh" role="lcghm">
                            <node concept="2OqwBi" id="4TZlN6tfQO6" role="lb14g">
                              <node concept="Jnkvi" id="4TZlN6tfQGF" role="2Oq$k0">
                                <ref role="1M0zk5" node="4TZlN6tfORa" resolve="f" />
                              </node>
                              <node concept="3TrcHB" id="4TZlN6tfR4f" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                          <node concept="la8eA" id="4TZlN6tfRby" role="lcghm">
                            <property role="lacIc" value="&quot; db:&quot;" />
                          </node>
                          <node concept="l9hG8" id="4TZlN6tfRqt" role="lcghm">
                            <node concept="2OqwBi" id="4TZlN6tfR_D" role="lb14g">
                              <node concept="Jnkvi" id="4TZlN6tfRue" role="2Oq$k0">
                                <ref role="1M0zk5" node="4TZlN6tfORa" resolve="f" />
                              </node>
                              <node concept="3TrcHB" id="4TZlN6tfRQ9" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                          <node concept="la8eA" id="4TZlN6tfRYa" role="lcghm">
                            <property role="lacIc" value="&quot;`\n" />
                          </node>
                        </node>
                      </node>
                      <node concept="JncvC" id="4TZlN6tfORa" role="JncvA">
                        <property role="TrG5h" value="f" />
                        <node concept="2jxLKc" id="4TZlN6tfORb" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="4TZlN6tfSsm" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6tfSDV" role="lcghm">
                    <property role="lacIc" value="}\n\n" />
                  </node>
                </node>
                <node concept="3SKdUt" id="4TZlN6tgL4r" role="3cqZAp">
                  <node concept="1PaTwC" id="4TZlN6tgL4s" role="1aUNEU">
                    <node concept="3oM_SD" id="4TZlN6tgL4t" role="1PaTwD">
                      <property role="3oM_SC" value="marshal" />
                    </node>
                    <node concept="3oM_SD" id="4TZlN6tgLdD" role="1PaTwD">
                      <property role="3oM_SC" value="jason" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="4TZlN6th5tk" role="3cqZAp">
                  <node concept="3cpWsn" id="4TZlN6th5tl" role="3cpWs9">
                    <property role="TrG5h" value="hasSensitive" />
                    <node concept="10P_77" id="4TZlN6th5ra" role="1tU5fm" />
                    <node concept="2OqwBi" id="4TZlN6th5tm" role="33vP2m">
                      <node concept="2OqwBi" id="4TZlN6th5tn" role="2Oq$k0">
                        <node concept="2OqwBi" id="4TZlN6th5to" role="2Oq$k0">
                          <node concept="2GrUjf" id="4TZlN6th5tp" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="4TZlN6tfbyx" resolve="schema" />
                          </node>
                          <node concept="3Tsc0h" id="4TZlN6th5tq" role="2OqNvi">
                            <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                          </node>
                        </node>
                        <node concept="v3k3i" id="4TZlN6th5tr" role="2OqNvi">
                          <node concept="chp4Y" id="4TZlN6th5ts" role="v3oSu">
                            <ref role="cht4Q" to="b1ln:6Rk79gbjazd" resolve="Field" />
                          </node>
                        </node>
                      </node>
                      <node concept="2HwmR7" id="4TZlN6th5tt" role="2OqNvi">
                        <node concept="1bVj0M" id="4TZlN6th5tu" role="23t8la">
                          <node concept="3clFbS" id="4TZlN6th5tv" role="1bW5cS">
                            <node concept="3clFbF" id="4TZlN6th5tw" role="3cqZAp">
                              <node concept="2OqwBi" id="4TZlN6th5tx" role="3clFbG">
                                <node concept="37vLTw" id="4TZlN6th5ty" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4TZlN6th5t$" resolve="it" />
                                </node>
                                <node concept="3TrcHB" id="4TZlN6th5tz" role="2OqNvi">
                                  <ref role="3TsBF5" to="b1ln:6Rk79gbjbPa" resolve="Sensitive" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="gl6BB" id="4TZlN6th5t$" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="4TZlN6th5t_" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="4TZlN6th3G7" role="3cqZAp" />
                <node concept="3clFbJ" id="4TZlN6th6sT" role="3cqZAp">
                  <node concept="3clFbS" id="4TZlN6th6sV" role="3clFbx">
                    <node concept="lc7rE" id="4TZlN6th6Ac" role="3cqZAp">
                      <node concept="la8eA" id="4TZlN6th6CO" role="lcghm">
                        <property role="lacIc" value="func (u " />
                      </node>
                      <node concept="l9hG8" id="4TZlN6th6DL" role="lcghm">
                        <node concept="2OqwBi" id="4TZlN6th6Nv" role="lb14g">
                          <node concept="2GrUjf" id="4TZlN6th6Em" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="4TZlN6tfbyx" resolve="schema" />
                          </node>
                          <node concept="2qgKlT" id="4TZlN6th8vu" role="2OqNvi">
                            <ref role="37wK5l" to="h9pt:4RkLmywWSH4" resolve="structName" />
                          </node>
                        </node>
                      </node>
                      <node concept="la8eA" id="4TZlN6th8Lm" role="lcghm">
                        <property role="lacIc" value=") MarshalJSON() ([]byte, error) {\n\ttype Alias " />
                      </node>
                      <node concept="l9hG8" id="4TZlN6th93G" role="lcghm">
                        <node concept="2OqwBi" id="4TZlN6th9AN" role="lb14g">
                          <node concept="2GrUjf" id="4TZlN6th9nu" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="4TZlN6tfbyx" resolve="schema" />
                          </node>
                          <node concept="2qgKlT" id="4TZlN6thahC" role="2OqNvi">
                            <ref role="37wK5l" to="h9pt:4RkLmywWSH4" resolve="structName" />
                          </node>
                        </node>
                      </node>
                      <node concept="la8eA" id="4TZlN6thbgo" role="lcghm">
                        <property role="lacIc" value="\n\treturn json.Marshal(&amp;struct {\n\t\tAlias\n" />
                      </node>
                    </node>
                    <node concept="3clFbF" id="4TZlN6thbVp" role="3cqZAp">
                      <node concept="2OqwBi" id="4TZlN6thf8O" role="3clFbG">
                        <node concept="2OqwBi" id="4TZlN6thcd4" role="2Oq$k0">
                          <node concept="2GrUjf" id="4TZlN6thbVn" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="4TZlN6tfbyx" resolve="schema" />
                          </node>
                          <node concept="3Tsc0h" id="4TZlN6thd5F" role="2OqNvi">
                            <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                          </node>
                        </node>
                        <node concept="2es0OD" id="4TZlN6thjhs" role="2OqNvi">
                          <node concept="1bVj0M" id="4TZlN6thjhu" role="23t8la">
                            <node concept="3clFbS" id="4TZlN6thjhv" role="1bW5cS">
                              <node concept="9aQIb" id="4TZlN6thjjG" role="3cqZAp">
                                <node concept="3clFbS" id="4TZlN6thjjH" role="9aQI4">
                                  <node concept="Jncv_" id="4TZlN6thjpi" role="3cqZAp">
                                    <ref role="JncvD" to="b1ln:6Rk79gbjazd" resolve="Field" />
                                    <node concept="37vLTw" id="4TZlN6thjrL" role="JncvB">
                                      <ref role="3cqZAo" node="4TZlN6thjhw" resolve="it" />
                                    </node>
                                    <node concept="3clFbS" id="4TZlN6thjpk" role="Jncv$">
                                      <node concept="3clFbJ" id="4TZlN6thjAA" role="3cqZAp">
                                        <node concept="2OqwBi" id="4TZlN6thjQm" role="3clFbw">
                                          <node concept="Jnkvi" id="4TZlN6thjD9" role="2Oq$k0">
                                            <ref role="1M0zk5" node="4TZlN6thjpl" resolve="f" />
                                          </node>
                                          <node concept="3TrcHB" id="4TZlN6thkgN" role="2OqNvi">
                                            <ref role="3TsBF5" to="b1ln:6Rk79gbjbPa" resolve="Sensitive" />
                                          </node>
                                        </node>
                                        <node concept="3clFbS" id="4TZlN6thjAC" role="3clFbx">
                                          <node concept="3SKdUt" id="4TZlN6thpJ3" role="3cqZAp">
                                            <node concept="1PaTwC" id="4TZlN6thpJ4" role="1aUNEU">
                                              <node concept="3oM_SD" id="4TZlN6thpJ6" role="1PaTwD">
                                                <property role="3oM_SC" value="appen" />
                                              </node>
                                              <node concept="3oM_SD" id="4TZlN6thpJ7" role="1PaTwD">
                                                <property role="3oM_SC" value="" />
                                              </node>
                                              <node concept="3oM_SD" id="4TZlN6thpJ8" role="1PaTwD">
                                                <property role="3oM_SC" value="{\t\t}" />
                                              </node>
                                              <node concept="3oM_SD" id="4TZlN6thpJ9" role="1PaTwD">
                                                <property role="3oM_SC" value="${f.pascalName()}" />
                                              </node>
                                              <node concept="3oM_SD" id="4TZlN6thpJa" role="1PaTwD">
                                                <property role="3oM_SC" value="{" />
                                              </node>
                                              <node concept="3oM_SD" id="4TZlN6thpJb" role="1PaTwD">
                                                <property role="3oM_SC" value="string" />
                                              </node>
                                              <node concept="3oM_SD" id="4TZlN6thpJc" role="1PaTwD">
                                                <property role="3oM_SC" value="`json:&quot;}" />
                                              </node>
                                              <node concept="3oM_SD" id="4TZlN6thpJd" role="1PaTwD">
                                                <property role="3oM_SC" value="${f.name}" />
                                              </node>
                                              <node concept="3oM_SD" id="4TZlN6thpJe" role="1PaTwD">
                                                <property role="3oM_SC" value="{&quot;`\n}" />
                                              </node>
                                              <node concept="3oM_SD" id="4TZlN6thpJf" role="1PaTwD">
                                                <property role="3oM_SC" value=";" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="lc7rE" id="4TZlN6thkp0" role="3cqZAp">
                                            <node concept="la8eA" id="4TZlN6thkue" role="lcghm">
                                              <property role="lacIc" value="\t\t" />
                                            </node>
                                            <node concept="l9hG8" id="4TZlN6thkFC" role="lcghm">
                                              <node concept="2OqwBi" id="4TZlN6thkYg" role="lb14g">
                                                <node concept="Jnkvi" id="4TZlN6thkMs" role="2Oq$k0">
                                                  <ref role="1M0zk5" node="4TZlN6thjpl" resolve="f" />
                                                </node>
                                                <node concept="2qgKlT" id="4TZlN6thoi6" role="2OqNvi">
                                                  <ref role="37wK5l" to="h9pt:4TZlN6thmic" resolve="pascalName" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="la8eA" id="4TZlN6thowN" role="lcghm">
                                              <property role="lacIc" value=" string `json:&quot;" />
                                            </node>
                                            <node concept="l9hG8" id="4TZlN6thoTm" role="lcghm">
                                              <node concept="2OqwBi" id="4TZlN6thphm" role="lb14g">
                                                <node concept="Jnkvi" id="4TZlN6thp58" role="2Oq$k0">
                                                  <ref role="1M0zk5" node="4TZlN6thjpl" resolve="f" />
                                                </node>
                                                <node concept="3TrcHB" id="4TZlN6thpxi" role="2OqNvi">
                                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="la8eA" id="4TZlN6thpCb" role="lcghm">
                                              <property role="lacIc" value="&quot;`\n" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="JncvC" id="4TZlN6thjpl" role="JncvA">
                                      <property role="TrG5h" value="f" />
                                      <node concept="2jxLKc" id="4TZlN6thjpm" role="1tU5fm" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="4TZlN6thjhw" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="4TZlN6thjhx" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="lc7rE" id="4TZlN6thqTi" role="3cqZAp">
                      <node concept="la8eA" id="4TZlN6thr5N" role="lcghm">
                        <property role="lacIc" value="\t" />
                      </node>
                      <node concept="la8eA" id="4TZlN6thr7b" role="lcghm">
                        <property role="lacIc" value="\n\t\tAlias: (Alias)(u),\n" />
                      </node>
                    </node>
                    <node concept="3clFbF" id="4TZlN6thsS1" role="3cqZAp">
                      <node concept="2OqwBi" id="4TZlN6th$1u" role="3clFbG">
                        <node concept="2OqwBi" id="4TZlN6thvXy" role="2Oq$k0">
                          <node concept="2OqwBi" id="4TZlN6thttv" role="2Oq$k0">
                            <node concept="2GrUjf" id="4TZlN6thsRZ" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="4TZlN6tfbyx" resolve="schema" />
                            </node>
                            <node concept="3Tsc0h" id="4TZlN6thtUp" role="2OqNvi">
                              <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                            </node>
                          </node>
                          <node concept="v3k3i" id="4TZlN6thzJx" role="2OqNvi">
                            <node concept="chp4Y" id="4TZlN6thzKL" role="v3oSu">
                              <ref role="cht4Q" to="b1ln:6Rk79gbjazd" resolve="Field" />
                            </node>
                          </node>
                        </node>
                        <node concept="2es0OD" id="4TZlN6th$TG" role="2OqNvi">
                          <node concept="1bVj0M" id="4TZlN6th$TI" role="23t8la">
                            <node concept="3clFbS" id="4TZlN6th$TJ" role="1bW5cS">
                              <node concept="9aQIb" id="4TZlN6th$Vv" role="3cqZAp">
                                <node concept="3clFbS" id="4TZlN6th$Vw" role="9aQI4">
                                  <node concept="3clFbJ" id="4TZlN6th_fA" role="3cqZAp">
                                    <node concept="2OqwBi" id="4TZlN6th_wO" role="3clFbw">
                                      <node concept="37vLTw" id="4TZlN6th_iw" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4TZlN6th$TK" resolve="it" />
                                      </node>
                                      <node concept="3TrcHB" id="4TZlN6thAtV" role="2OqNvi">
                                        <ref role="3TsBF5" to="b1ln:6Rk79gbjbPa" resolve="Sensitive" />
                                      </node>
                                    </node>
                                    <node concept="3clFbS" id="4TZlN6th_fC" role="3clFbx">
                                      <node concept="lc7rE" id="4TZlN6thAZj" role="3cqZAp">
                                        <node concept="la8eA" id="4TZlN6thB2n" role="lcghm">
                                          <property role="lacIc" value="\t\t" />
                                        </node>
                                        <node concept="l9hG8" id="4TZlN6thBbp" role="lcghm">
                                          <node concept="2OqwBi" id="4TZlN6thBrv" role="lb14g">
                                            <node concept="37vLTw" id="4TZlN6thBey" role="2Oq$k0">
                                              <ref role="3cqZAo" node="4TZlN6th$TK" resolve="it" />
                                            </node>
                                            <node concept="2qgKlT" id="4TZlN6thDdu" role="2OqNvi">
                                              <ref role="37wK5l" to="h9pt:4TZlN6thmic" resolve="pascalName" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="la8eA" id="4TZlN6thDsC" role="lcghm">
                                          <property role="lacIc" value=": &quot;[REDACTED]&quot;,\n" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="gl6BB" id="4TZlN6th$TK" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="4TZlN6th$TL" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="lc7rE" id="4TZlN6thrWr" role="3cqZAp">
                      <node concept="la8eA" id="4TZlN6ths8U" role="lcghm">
                        <property role="lacIc" value="\t" />
                      </node>
                      <node concept="la8eA" id="4TZlN6thsaI" role="lcghm">
                        <property role="lacIc" value="})\n" />
                      </node>
                      <node concept="la8eA" id="4TZlN6thsc7" role="lcghm">
                        <property role="lacIc" value="}\n\n" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="4TZlN6th6_r" role="3clFbw">
                    <ref role="3cqZAo" node="4TZlN6th5tl" resolve="hasSensitive" />
                  </node>
                </node>
                <node concept="3SKdUt" id="4TZlN6thEfM" role="3cqZAp">
                  <node concept="1PaTwC" id="4TZlN6thEfN" role="1aUNEU">
                    <node concept="3oM_SD" id="4TZlN6thEfP" role="1PaTwD">
                      <property role="3oM_SC" value="Create" />
                    </node>
                    <node concept="3oM_SD" id="4TZlN6thEfQ" role="1PaTwD">
                      <property role="3oM_SC" value="struct" />
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="4TZlN6thFrg" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6thFPF" role="lcghm">
                    <property role="lacIc" value="type " />
                  </node>
                  <node concept="l9hG8" id="4TZlN6thFQD" role="lcghm">
                    <node concept="2OqwBi" id="4TZlN6thG0n" role="lb14g">
                      <node concept="2GrUjf" id="4TZlN6thFRe" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="4TZlN6tfbyx" resolve="schema" />
                      </node>
                      <node concept="2qgKlT" id="4TZlN6thGWs" role="2OqNvi">
                        <ref role="37wK5l" to="h9pt:4RkLmywWW1l" resolve="CreateStructName" />
                      </node>
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6thHsk" role="lcghm">
                    <property role="lacIc" value=" struct {\n" />
                  </node>
                </node>
                <node concept="3clFbF" id="4TZlN6thInZ" role="3cqZAp">
                  <node concept="2OqwBi" id="4TZlN6thXyG" role="3clFbG">
                    <property role="hSjvv" value="true" />
                    <node concept="2OqwBi" id="4TZlN6thQmQ" role="2Oq$k0">
                      <property role="hSjvv" value="true" />
                      <node concept="2OqwBi" id="4TZlN6thMln" role="2Oq$k0">
                        <property role="hSjvv" value="true" />
                        <node concept="2OqwBi" id="4TZlN6thJ2m" role="2Oq$k0">
                          <property role="hSjvv" value="true" />
                          <node concept="2GrUjf" id="4TZlN6thInX" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="4TZlN6tfbyx" resolve="schema" />
                          </node>
                          <node concept="3Tsc0h" id="4TZlN6thJyM" role="2OqNvi">
                            <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                          </node>
                        </node>
                        <node concept="v3k3i" id="4TZlN6thQaS" role="2OqNvi">
                          <node concept="chp4Y" id="4TZlN6thQc8" role="v3oSu">
                            <ref role="cht4Q" to="b1ln:6Rk79gbjazd" resolve="Field" />
                          </node>
                        </node>
                      </node>
                      <node concept="3zZkjj" id="4TZlN6thRIl" role="2OqNvi">
                        <node concept="1bVj0M" id="4TZlN6thRIn" role="23t8la">
                          <node concept="3clFbS" id="4TZlN6thRIo" role="1bW5cS">
                            <node concept="3clFbF" id="4TZlN6thRMQ" role="3cqZAp">
                              <node concept="2OqwBi" id="4TZlN6tmQ0p" role="3clFbG">
                                <node concept="2OqwBi" id="4TZlN6thUX9" role="2Oq$k0">
                                  <node concept="2OqwBi" id="4TZlN6thS21" role="2Oq$k0">
                                    <node concept="37vLTw" id="4TZlN6thRMP" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4TZlN6thRIp" resolve="it" />
                                    </node>
                                    <node concept="3TrcHB" id="4TZlN6thTTM" role="2OqNvi">
                                      <ref role="3TsBF5" to="b1ln:6Rk79gbjbxG" resolve="dataType" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4TZlN6thV7x" role="2OqNvi">
                                    <ref role="37wK5l" to="c17a:~SEnumerationLiteral.getPresentation()" resolve="getPresentation" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="4TZlN6tmRT5" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                  <node concept="Xl_RD" id="4TZlN6tmStI" role="37wK5m">
                                    <property role="Xl_RC" value="timestamp" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="gl6BB" id="4TZlN6thRIp" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="4TZlN6thRIq" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2es0OD" id="4TZlN6thYcy" role="2OqNvi">
                      <node concept="1bVj0M" id="4TZlN6thYc$" role="23t8la">
                        <node concept="3clFbS" id="4TZlN6thYc_" role="1bW5cS">
                          <node concept="9aQIb" id="4TZlN6thYoH" role="3cqZAp">
                            <node concept="3clFbS" id="4TZlN6thYoI" role="9aQI4">
                              <node concept="3cpWs8" id="4TZlN6ti0oh" role="3cqZAp">
                                <node concept="3cpWsn" id="4TZlN6ti0oi" role="3cpWs9">
                                  <property role="TrG5h" value="f" />
                                  <node concept="3Tqbb2" id="4TZlN6ti0kn" role="1tU5fm">
                                    <ref role="ehGHo" to="b1ln:6Rk79gbjazd" resolve="Field" />
                                  </node>
                                  <node concept="37vLTw" id="4TZlN6ti0oj" role="33vP2m">
                                    <ref role="3cqZAo" node="4TZlN6thYcA" resolve="it" />
                                  </node>
                                </node>
                              </node>
                              <node concept="lc7rE" id="4TZlN6thYZY" role="3cqZAp">
                                <node concept="la8eA" id="4TZlN6thZ5e" role="lcghm">
                                  <property role="lacIc" value="\t" />
                                </node>
                                <node concept="l9hG8" id="4TZlN6thZq2" role="lcghm">
                                  <node concept="2OqwBi" id="4TZlN6ti0Z2" role="lb14g">
                                    <node concept="37vLTw" id="4TZlN6ti0Em" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4TZlN6ti0oi" resolve="f" />
                                    </node>
                                    <node concept="2qgKlT" id="4TZlN6ti1Pd" role="2OqNvi">
                                      <ref role="37wK5l" to="h9pt:4TZlN6thmic" resolve="pascalName" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="la8eA" id="4TZlN6ti2s7" role="lcghm">
                                  <property role="lacIc" value=" " />
                                </node>
                                <node concept="l9hG8" id="4TZlN6ti2BK" role="lcghm">
                                  <node concept="2OqwBi" id="4TZlN6ti2Ye" role="lb14g">
                                    <node concept="37vLTw" id="4TZlN6ti2HG" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4TZlN6ti0oi" resolve="f" />
                                    </node>
                                    <node concept="2qgKlT" id="4TZlN6ti3pP" role="2OqNvi">
                                      <ref role="37wK5l" to="h9pt:4RkLmywX45R" resolve="goType" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="la8eA" id="4TZlN6ti3Al" role="lcghm">
                                  <property role="lacIc" value=" `json:&quot;" />
                                </node>
                                <node concept="l9hG8" id="4TZlN6ti3MV" role="lcghm">
                                  <node concept="2OqwBi" id="4TZlN6ti4eO" role="lb14g">
                                    <node concept="37vLTw" id="4TZlN6ti3Tk" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4TZlN6ti0oi" resolve="f" />
                                    </node>
                                    <node concept="3TrcHB" id="4TZlN6ti4UY" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="la8eA" id="4TZlN6ti59h" role="lcghm">
                                  <property role="lacIc" value="&quot;`\n" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="4TZlN6thYcA" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="4TZlN6thYcB" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="4TZlN6ti6_M" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6ti6W9" role="lcghm">
                    <property role="lacIc" value="}\n\n" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4TZlN6ti6X3" role="3cqZAp" />
        <node concept="3SKdUt" id="4TZlN6ti_Qn" role="3cqZAp">
          <node concept="1PaTwC" id="4TZlN6ti_Qo" role="1aUNEU">
            <node concept="3oM_SD" id="4TZlN6ti_Qq" role="1PaTwD">
              <property role="3oM_SC" value="----" />
            </node>
            <node concept="3oM_SD" id="4TZlN6ti_Qr" role="1PaTwD">
              <property role="3oM_SC" value="Join" />
            </node>
            <node concept="3oM_SD" id="4TZlN6ti_Qs" role="1PaTwD">
              <property role="3oM_SC" value="schema" />
            </node>
            <node concept="3oM_SD" id="4TZlN6ti_Qt" role="1PaTwD">
              <property role="3oM_SC" value="structs" />
            </node>
            <node concept="3oM_SD" id="4TZlN6ti_Qu" role="1PaTwD">
              <property role="3oM_SC" value="----" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4TZlN6ti_Qm" role="3cqZAp" />
        <node concept="2Gpval" id="4TZlN6tiXjK" role="3cqZAp">
          <node concept="2GrKxI" id="4TZlN6tiXjM" role="2Gsz3X">
            <property role="TrG5h" value="sch" />
          </node>
          <node concept="2OqwBi" id="4TZlN6tiZiV" role="2GsD0m">
            <node concept="37vLTw" id="4TZlN6tiYS2" role="2Oq$k0">
              <ref role="3cqZAo" node="4TZlN6tf6hJ" resolve="models" />
            </node>
            <node concept="3Tsc0h" id="4TZlN6tiZRu" role="2OqNvi">
              <ref role="3TtcxE" to="b1ln:6Rk79gbjaz8" resolve="schemas" />
            </node>
          </node>
          <node concept="3clFbS" id="4TZlN6tiXjQ" role="2LFqv$">
            <node concept="3clFbJ" id="4TZlN6tj0bV" role="3cqZAp">
              <node concept="2OqwBi" id="4TZlN6tj0rr" role="3clFbw">
                <node concept="2GrUjf" id="4TZlN6tj0ct" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="4TZlN6tiXjM" resolve="sch" />
                </node>
                <node concept="2qgKlT" id="4TZlN6tj23x" role="2OqNvi">
                  <ref role="37wK5l" to="h9pt:4RkLmywWXpy" resolve="hasReferences" />
                </node>
              </node>
              <node concept="3clFbS" id="4TZlN6tj0bX" role="3clFbx">
                <node concept="lc7rE" id="4TZlN6tj74b" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6tj74E" role="lcghm">
                    <property role="lacIc" value="type " />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tj7cW" role="lcghm">
                    <node concept="2OqwBi" id="4TZlN6tj7mE" role="lb14g">
                      <node concept="2GrUjf" id="4TZlN6tj7dx" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="4TZlN6tiXjM" resolve="sch" />
                      </node>
                      <node concept="2qgKlT" id="4TZlN6tj8IW" role="2OqNvi">
                        <ref role="37wK5l" to="h9pt:4RkLmywWSH4" resolve="structName" />
                      </node>
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tj79W" role="lcghm">
                    <property role="lacIc" value=" struct {\n" />
                  </node>
                </node>
                <node concept="3clFbH" id="4TZlN6tjVyf" role="3cqZAp" />
                <node concept="3clFbF" id="4TZlN6tjWcA" role="3cqZAp">
                  <node concept="2OqwBi" id="4TZlN6tjZ$1" role="3clFbG">
                    <node concept="2OqwBi" id="4TZlN6tjWE4" role="2Oq$k0">
                      <node concept="2GrUjf" id="4TZlN6tjWc$" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="4TZlN6tiXjM" resolve="sch" />
                      </node>
                      <node concept="3Tsc0h" id="4TZlN6tjXwS" role="2OqNvi">
                        <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                      </node>
                    </node>
                    <node concept="2es0OD" id="4TZlN6tk3Ss" role="2OqNvi">
                      <node concept="1bVj0M" id="4TZlN6tk3Su" role="23t8la">
                        <node concept="3clFbS" id="4TZlN6tk3Sv" role="1bW5cS">
                          <node concept="Jncv_" id="4TZlN6tk5jZ" role="3cqZAp">
                            <ref role="JncvD" to="b1ln:6Rk79gbjbPd" resolve="FieldRefrence" />
                            <node concept="37vLTw" id="4TZlN6tk5mx" role="JncvB">
                              <ref role="3cqZAo" node="4TZlN6tk3Sw" resolve="it" />
                            </node>
                            <node concept="3clFbS" id="4TZlN6tk5k3" role="Jncv$">
                              <node concept="lc7rE" id="4TZlN6tk5wb" role="3cqZAp">
                                <node concept="la8eA" id="4TZlN6tk7Xv" role="lcghm">
                                  <property role="lacIc" value="\t" />
                                </node>
                                <node concept="l9hG8" id="4TZlN6tk8ad" role="lcghm">
                                  <node concept="2OqwBi" id="4TZlN6tk8pR" role="lb14g">
                                    <node concept="Jnkvi" id="4TZlN6tk8dx" role="2Oq$k0">
                                      <ref role="1M0zk5" node="4TZlN6tk5k5" resolve="fr" />
                                    </node>
                                    <node concept="2qgKlT" id="4TZlN6tk8TM" role="2OqNvi">
                                      <ref role="37wK5l" to="h9pt:4RkLmywXs7j" resolve="pascalName" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="la8eA" id="4TZlN6tk7Er" role="lcghm">
                                  <property role="lacIc" value=" int64 `json:&quot;" />
                                </node>
                                <node concept="l9hG8" id="4TZlN6tk70D" role="lcghm">
                                  <node concept="2OqwBi" id="4TZlN6tk7h9" role="lb14g">
                                    <node concept="Jnkvi" id="4TZlN6tk73A" role="2Oq$k0">
                                      <ref role="1M0zk5" node="4TZlN6tk5k5" resolve="fr" />
                                    </node>
                                    <node concept="3TrcHB" id="4TZlN6tk7wP" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="la8eA" id="4TZlN6tk6MC" role="lcghm">
                                  <property role="lacIc" value="&quot; db:&quot;" />
                                </node>
                                <node concept="l9hG8" id="4TZlN6tk63_" role="lcghm">
                                  <node concept="2OqwBi" id="4TZlN6tk6j5" role="lb14g">
                                    <node concept="Jnkvi" id="4TZlN6tk66b" role="2Oq$k0">
                                      <ref role="1M0zk5" node="4TZlN6tk5k5" resolve="fr" />
                                    </node>
                                    <node concept="3TrcHB" id="4TZlN6tk6yq" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="la8eA" id="4TZlN6tk5Mp" role="lcghm">
                                  <property role="lacIc" value="&quot;`\n" />
                                </node>
                              </node>
                            </node>
                            <node concept="JncvC" id="4TZlN6tk5k5" role="JncvA">
                              <property role="TrG5h" value="fr" />
                              <node concept="2jxLKc" id="4TZlN6tk5k6" role="1tU5fm" />
                            </node>
                          </node>
                          <node concept="Jncv_" id="4TZlN6tk9f$" role="3cqZAp">
                            <ref role="JncvD" to="b1ln:6Rk79gbjazd" resolve="Field" />
                            <node concept="37vLTw" id="4TZlN6tk9jt" role="JncvB">
                              <ref role="3cqZAo" node="4TZlN6tk3Sw" resolve="it" />
                            </node>
                            <node concept="3clFbS" id="4TZlN6tk9fC" role="Jncv$">
                              <node concept="lc7rE" id="4TZlN6tka1A" role="3cqZAp">
                                <node concept="la8eA" id="4TZlN6tkacZ" role="lcghm">
                                  <property role="lacIc" value="\t" />
                                </node>
                                <node concept="l9hG8" id="4TZlN6tkegI" role="lcghm">
                                  <node concept="2OqwBi" id="4TZlN6tkezQ" role="lb14g">
                                    <node concept="Jnkvi" id="4TZlN6tkelQ" role="2Oq$k0">
                                      <ref role="1M0zk5" node="4TZlN6tk9fE" resolve="f" />
                                    </node>
                                    <node concept="2qgKlT" id="4TZlN6tkePH" role="2OqNvi">
                                      <ref role="37wK5l" to="h9pt:4TZlN6thmic" resolve="pascalName" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="la8eA" id="4TZlN6tkdP4" role="lcghm">
                                  <property role="lacIc" value=" " />
                                </node>
                                <node concept="l9hG8" id="4TZlN6tkd0$" role="lcghm">
                                  <node concept="2OqwBi" id="4TZlN6tkdhc" role="lb14g">
                                    <node concept="Jnkvi" id="4TZlN6tkd5h" role="2Oq$k0">
                                      <ref role="1M0zk5" node="4TZlN6tk9fE" resolve="f" />
                                    </node>
                                    <node concept="2qgKlT" id="4TZlN6tkdyN" role="2OqNvi">
                                      <ref role="37wK5l" to="h9pt:4RkLmywX45R" resolve="goType" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="la8eA" id="4TZlN6tkcIr" role="lcghm">
                                  <property role="lacIc" value=" `json:&quot;" />
                                </node>
                                <node concept="l9hG8" id="4TZlN6tkbOv" role="lcghm">
                                  <node concept="2OqwBi" id="4TZlN6tkc64" role="lb14g">
                                    <node concept="Jnkvi" id="4TZlN6tkbSN" role="2Oq$k0">
                                      <ref role="1M0zk5" node="4TZlN6tk9fE" resolve="f" />
                                    </node>
                                    <node concept="3TrcHB" id="4TZlN6tkcwK" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="la8eA" id="4TZlN6tkbBW" role="lcghm">
                                  <property role="lacIc" value="&quot; db:&quot;" />
                                </node>
                                <node concept="l9hG8" id="4TZlN6tkaJn" role="lcghm">
                                  <node concept="2OqwBi" id="4TZlN6tkb0g" role="lb14g">
                                    <node concept="Jnkvi" id="4TZlN6tkaNk" role="2Oq$k0">
                                      <ref role="1M0zk5" node="4TZlN6tk9fE" resolve="f" />
                                    </node>
                                    <node concept="3TrcHB" id="4TZlN6tkbgW" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="la8eA" id="4TZlN6tkasj" role="lcghm">
                                  <property role="lacIc" value="&quot;`\n" />
                                </node>
                              </node>
                            </node>
                            <node concept="JncvC" id="4TZlN6tk9fE" role="JncvA">
                              <property role="TrG5h" value="f" />
                              <node concept="2jxLKc" id="4TZlN6tk9fF" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="4TZlN6tk3Sw" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="4TZlN6tk3Sx" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="4TZlN6tk4mb" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6tk5hh" role="lcghm">
                    <property role="lacIc" value="}\n\n" />
                  </node>
                </node>
                <node concept="3cpWs8" id="4TZlN6tkg4T" role="3cqZAp">
                  <node concept="3cpWsn" id="4TZlN6tkg4W" role="3cpWs9">
                    <property role="TrG5h" value="refC" />
                    <node concept="10Oyi0" id="4TZlN6tkg4R" role="1tU5fm" />
                    <node concept="3cmrfG" id="4TZlN6tkgw_" role="33vP2m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4TZlN6tkgVY" role="3cqZAp">
                  <node concept="2OqwBi" id="4TZlN6tkpF1" role="3clFbG">
                    <node concept="2OqwBi" id="4TZlN6tkkT3" role="2Oq$k0">
                      <node concept="2OqwBi" id="4TZlN6tkhuv" role="2Oq$k0">
                        <node concept="2GrUjf" id="4TZlN6tkgVW" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="4TZlN6tiXjM" resolve="sch" />
                        </node>
                        <node concept="3Tsc0h" id="4TZlN6tkiFg" role="2OqNvi">
                          <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                        </node>
                      </node>
                      <node concept="v3k3i" id="4TZlN6tkpub" role="2OqNvi">
                        <node concept="chp4Y" id="4TZlN6tkpvt" role="v3oSu">
                          <ref role="cht4Q" to="b1ln:6Rk79gbjbPd" resolve="FieldRefrence" />
                        </node>
                      </node>
                    </node>
                    <node concept="2es0OD" id="4TZlN6tksuv" role="2OqNvi">
                      <node concept="1bVj0M" id="4TZlN6tksux" role="23t8la">
                        <node concept="3clFbS" id="4TZlN6tksuy" role="1bW5cS">
                          <node concept="3clFbJ" id="4TZlN6tksAZ" role="3cqZAp">
                            <node concept="3clFbS" id="4TZlN6tksB1" role="3clFbx">
                              <node concept="lc7rE" id="4TZlN6tku99" role="3cqZAp">
                                <node concept="la8eA" id="4TZlN6tkueQ" role="lcghm">
                                  <property role="lacIc" value="type Assign" />
                                </node>
                                <node concept="l9hG8" id="4TZlN6tkuW9" role="lcghm">
                                  <node concept="2OqwBi" id="4TZlN6tkwGO" role="lb14g">
                                    <node concept="2OqwBi" id="4TZlN6tkvbU" role="2Oq$k0">
                                      <node concept="37vLTw" id="4TZlN6tkuZ7" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4TZlN6tksuz" resolve="it" />
                                      </node>
                                      <node concept="3TrEf2" id="4TZlN6tkwbS" role="2OqNvi">
                                        <ref role="3Tt5mk" to="b1ln:6Rk79gbjbPh" resolve="target_schema" />
                                      </node>
                                    </node>
                                    <node concept="2qgKlT" id="4TZlN6tkx5j" role="2OqNvi">
                                      <ref role="37wK5l" to="h9pt:4RkLmywWSH4" resolve="structName" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="la8eA" id="4TZlN6tkxeK" role="lcghm">
                                  <property role="lacIc" value="Body struct {\n\t" />
                                </node>
                                <node concept="l9hG8" id="4TZlN6tkxLr" role="lcghm">
                                  <node concept="2OqwBi" id="4TZlN6tky2f" role="lb14g">
                                    <node concept="37vLTw" id="4TZlN6tkxOX" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4TZlN6tksuz" resolve="it" />
                                    </node>
                                    <node concept="2qgKlT" id="4TZlN6tkzAn" role="2OqNvi">
                                      <ref role="37wK5l" to="h9pt:4RkLmywXs7j" resolve="pascalName" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="la8eA" id="4TZlN6tkzLp" role="lcghm">
                                  <property role="lacIc" value=" int64 `json:&quot;" />
                                </node>
                                <node concept="l9hG8" id="4TZlN6tk$0U" role="lcghm">
                                  <node concept="2OqwBi" id="4TZlN6tk$tg" role="lb14g">
                                    <node concept="37vLTw" id="4TZlN6tk$fy" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4TZlN6tksuz" resolve="it" />
                                    </node>
                                    <node concept="3TrcHB" id="4TZlN6tkAl4" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="la8eA" id="4TZlN6tkuqe" role="lcghm">
                                  <property role="lacIc" value="&quot; binding:&quot;required&quot;`\n}\n\n" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbC" id="4TZlN6tktAi" role="3clFbw">
                              <node concept="3cmrfG" id="4TZlN6tktAm" role="3uHU7w">
                                <property role="3cmrfH" value="1" />
                              </node>
                              <node concept="37vLTw" id="4TZlN6tksDW" role="3uHU7B">
                                <ref role="3cqZAo" node="4TZlN6tkg4W" resolve="refC" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="4TZlN6tkAxR" role="3cqZAp">
                            <node concept="3uNrnE" id="4TZlN6tkBru" role="3clFbG">
                              <node concept="37vLTw" id="4TZlN6tkBrw" role="2$L3a6">
                                <ref role="3cqZAo" node="4TZlN6tkg4W" resolve="refC" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="4TZlN6tksuz" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="4TZlN6tksu$" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4TZlN6tlRsw" role="3cqZAp" />
        <node concept="3clFbH" id="4TZlN6tlRsy" role="3cqZAp" />
        <node concept="3SKdUt" id="4TZlN6tlS0S" role="3cqZAp">
          <node concept="1PaTwC" id="4TZlN6tlS0T" role="1aUNEU">
            <node concept="3oM_SD" id="4TZlN6tlS0V" role="1PaTwD">
              <property role="3oM_SC" value="============================================================" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4TZlN6tlS0W" role="3cqZAp">
          <node concept="1PaTwC" id="4TZlN6tlS0X" role="1aUNEU">
            <node concept="3oM_SD" id="4TZlN6tlS0Z" role="1PaTwD">
              <property role="3oM_SC" value="Repositories" />
            </node>
            <node concept="3oM_SD" id="4TZlN6tlS10" role="1PaTwD">
              <property role="3oM_SC" value="—" />
            </node>
            <node concept="3oM_SD" id="4TZlN6tlS11" role="1PaTwD">
              <property role="3oM_SC" value="regular" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4TZlN6tlS12" role="3cqZAp">
          <node concept="1PaTwC" id="4TZlN6tlS13" role="1aUNEU">
            <node concept="3oM_SD" id="4TZlN6tlS15" role="1PaTwD">
              <property role="3oM_SC" value="============================================================" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4TZlN6tlS0R" role="3cqZAp" />
        <node concept="lc7rE" id="4TZlN6tlTIA" role="3cqZAp">
          <node concept="la8eA" id="4TZlN6tlVfO" role="lcghm">
            <property role="lacIc" value="// ============================================================\n// Repositories\n// ============================================================\n\n" />
          </node>
        </node>
        <node concept="2Gpval" id="4TZlN6tlWPb" role="3cqZAp">
          <node concept="2GrKxI" id="4TZlN6tlWPd" role="2Gsz3X">
            <property role="TrG5h" value="sc" />
          </node>
          <node concept="2OqwBi" id="4TZlN6tm3yT" role="2GsD0m">
            <node concept="37vLTw" id="4TZlN6tm2Yc" role="2Oq$k0">
              <ref role="3cqZAo" node="4TZlN6tf6hJ" resolve="models" />
            </node>
            <node concept="3Tsc0h" id="4TZlN6tm47W" role="2OqNvi">
              <ref role="3TtcxE" to="b1ln:6Rk79gbjaz8" resolve="schemas" />
            </node>
          </node>
          <node concept="3clFbS" id="4TZlN6tlWPh" role="2LFqv$">
            <node concept="3clFbJ" id="4TZlN6tm5GD" role="3cqZAp">
              <node concept="3fqX7Q" id="4TZlN6tm5Hc" role="3clFbw">
                <node concept="2OqwBi" id="4TZlN6tm5Q0" role="3fr31v">
                  <node concept="2GrUjf" id="4TZlN6tm5Hf" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="4TZlN6tlWPd" resolve="sc" />
                  </node>
                  <node concept="2qgKlT" id="4TZlN6tm7gT" role="2OqNvi">
                    <ref role="37wK5l" to="h9pt:4RkLmywWXpy" resolve="hasReferences" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="4TZlN6tm5GF" role="3clFbx">
                <node concept="3cpWs8" id="4TZlN6tm8xe" role="3cqZAp">
                  <node concept="3cpWsn" id="4TZlN6tm8xd" role="3cpWs9">
                    <property role="TrG5h" value="sn" />
                    <node concept="17QB3L" id="4TZlN6tm8yQ" role="1tU5fm" />
                    <node concept="2OqwBi" id="4TZlN6tm8Iv" role="33vP2m">
                      <node concept="2GrUjf" id="4TZlN6tm8A9" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="4TZlN6tlWPd" resolve="sc" />
                      </node>
                      <node concept="2qgKlT" id="4TZlN6tm9YI" role="2OqNvi">
                        <ref role="37wK5l" to="h9pt:4RkLmywWSH4" resolve="structName" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="4TZlN6tm8xi" role="3cqZAp">
                  <node concept="3cpWsn" id="4TZlN6tm8xh" role="3cpWs9">
                    <property role="TrG5h" value="rn" />
                    <node concept="17QB3L" id="4TZlN6tm8$K" role="1tU5fm" />
                    <node concept="2OqwBi" id="4TZlN6tmc0A" role="33vP2m">
                      <node concept="2GrUjf" id="4TZlN6tmbM0" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="4TZlN6tlWPd" resolve="sc" />
                      </node>
                      <node concept="2qgKlT" id="4TZlN6tmdgu" role="2OqNvi">
                        <ref role="37wK5l" to="h9pt:4RkLmywWUlE" resolve="repoName" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="4TZlN6tm8xm" role="3cqZAp">
                  <node concept="3cpWsn" id="4TZlN6tm8xl" role="3cpWs9">
                    <property role="TrG5h" value="tn" />
                    <node concept="17QB3L" id="4TZlN6tmdLz" role="1tU5fm" />
                    <node concept="2OqwBi" id="4TZlN6tmeeE" role="33vP2m">
                      <node concept="2GrUjf" id="4TZlN6tme5S" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="4TZlN6tlWPd" resolve="sc" />
                      </node>
                      <node concept="3TrcHB" id="4TZlN6tmfJl" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="4TZlN6tmgMo" role="3cqZAp" />
                <node concept="lc7rE" id="4TZlN6tmiyS" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6tmj2o" role="lcghm">
                    <property role="lacIc" value="type " />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tmj7y" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tmj8b" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6tm8xh" resolve="rn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tmj4s" role="lcghm">
                    <property role="lacIc" value=" struct{ db *sql.DB }\n\n" />
                  </node>
                </node>
                <node concept="3clFbH" id="4TZlN6tmjaT" role="3cqZAp" />
                <node concept="3SKdUt" id="4TZlN6tmkW0" role="3cqZAp">
                  <node concept="1PaTwC" id="4TZlN6tmkW1" role="1aUNEU">
                    <node concept="3oM_SD" id="4TZlN6tmkW3" role="1PaTwD">
                      <property role="3oM_SC" value="Create" />
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="4TZlN6tmlrJ" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6tmlVx" role="lcghm">
                    <property role="lacIc" value="func (r *" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tmlZz" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tmm0c" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6tm8xh" resolve="rn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tmlXy" role="lcghm">
                    <property role="lacIc" value=") Create(u *" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tmnWm" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tmnWZ" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6tm8xd" resolve="sn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tmm3T" role="lcghm">
                    <property role="lacIc" value=") error {\n\treturn r.db.QueryRow(\n\t\t`INSERT INTO " />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tmnUr" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tmnV4" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6tm8xl" resolve="tn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tmm6t" role="lcghm">
                    <property role="lacIc" value=" (" />
                  </node>
                </node>
                <node concept="3cpWs8" id="4TZlN6tmpl1" role="3cqZAp">
                  <node concept="3cpWsn" id="4TZlN6tmpl4" role="3cpWs9">
                    <property role="TrG5h" value="idx" />
                    <node concept="10Oyi0" id="4TZlN6tmpkZ" role="1tU5fm" />
                    <node concept="3cmrfG" id="4TZlN6tmpQL" role="33vP2m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4TZlN6tmpRs" role="3cqZAp">
                  <node concept="2OqwBi" id="4TZlN6tmAo2" role="3clFbG">
                    <node concept="2OqwBi" id="4TZlN6tmu1J" role="2Oq$k0">
                      <node concept="2OqwBi" id="4TZlN6tmqTz" role="2Oq$k0">
                        <node concept="2GrUjf" id="4TZlN6tmpRq" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="4TZlN6tlWPd" resolve="sc" />
                        </node>
                        <node concept="3Tsc0h" id="4TZlN6tmrWz" role="2OqNvi">
                          <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                        </node>
                      </node>
                      <node concept="v3k3i" id="4TZlN6tmAaZ" role="2OqNvi">
                        <node concept="chp4Y" id="4TZlN6tmAcq" role="v3oSu">
                          <ref role="cht4Q" to="b1ln:6Rk79gbjazd" resolve="Field" />
                        </node>
                      </node>
                    </node>
                    <node concept="2es0OD" id="4TZlN6tmCa$" role="2OqNvi">
                      <node concept="1bVj0M" id="4TZlN6tmCaA" role="23t8la">
                        <node concept="3clFbS" id="4TZlN6tmCaB" role="1bW5cS">
                          <node concept="3clFbJ" id="4TZlN6tmLcu" role="3cqZAp">
                            <node concept="3clFbS" id="4TZlN6tmLcw" role="3clFbx">
                              <node concept="3clFbJ" id="4TZlN6tmTAd" role="3cqZAp">
                                <node concept="3clFbS" id="4TZlN6tmTAf" role="3clFbx">
                                  <node concept="lc7rE" id="4TZlN6tmUY6" role="3cqZAp">
                                    <node concept="la8eA" id="4TZlN6tmV20" role="lcghm">
                                      <property role="lacIc" value=", " />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3eOSWO" id="4TZlN6tmUMx" role="3clFbw">
                                  <node concept="3cmrfG" id="4TZlN6tmUM_" role="3uHU7w">
                                    <property role="3cmrfH" value="0" />
                                  </node>
                                  <node concept="37vLTw" id="4TZlN6tmTRZ" role="3uHU7B">
                                    <ref role="3cqZAo" node="4TZlN6tmpl4" resolve="idx" />
                                  </node>
                                </node>
                              </node>
                              <node concept="lc7rE" id="4TZlN6tmVrl" role="3cqZAp">
                                <node concept="l9hG8" id="4TZlN6tmVve" role="lcghm">
                                  <node concept="2OqwBi" id="4TZlN6tmVLH" role="lb14g">
                                    <node concept="37vLTw" id="4TZlN6tmVzc" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4TZlN6tmCaC" resolve="it" />
                                    </node>
                                    <node concept="3TrcHB" id="4TZlN6tmXbX" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="4TZlN6tmX_g" role="3cqZAp">
                                <node concept="3uNrnE" id="4TZlN6tmYGz" role="3clFbG">
                                  <node concept="37vLTw" id="4TZlN6tmYG_" role="2$L3a6">
                                    <ref role="3cqZAo" node="4TZlN6tmpl4" resolve="idx" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3fqX7Q" id="4TZlN6tnsF2" role="3clFbw">
                              <node concept="2OqwBi" id="4TZlN6tnsF4" role="3fr31v">
                                <node concept="2OqwBi" id="4TZlN6tnsF5" role="2Oq$k0">
                                  <node concept="2OqwBi" id="4TZlN6tnsF6" role="2Oq$k0">
                                    <node concept="37vLTw" id="4TZlN6tnsF7" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4TZlN6tmCaC" resolve="it" />
                                    </node>
                                    <node concept="3TrcHB" id="4TZlN6tnsF8" role="2OqNvi">
                                      <ref role="3TsBF5" to="b1ln:6Rk79gbjbxG" resolve="dataType" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4TZlN6tnsF9" role="2OqNvi">
                                    <ref role="37wK5l" to="c17a:~SEnumerationLiteral.getPresentation()" resolve="getPresentation" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="4TZlN6tnsFa" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                  <node concept="Xl_RD" id="4TZlN6tnsFb" role="37wK5m">
                                    <property role="Xl_RC" value="timestamp" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="4TZlN6tmCfj" role="3cqZAp" />
                        </node>
                        <node concept="gl6BB" id="4TZlN6tmCaC" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="4TZlN6tmCaD" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="4TZlN6tn0b9" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6tn0OK" role="lcghm">
                    <property role="lacIc" value=")\n\t\t VALUES (" />
                  </node>
                </node>
                <node concept="1Dw8fO" id="4TZlN6tn7QY" role="3cqZAp">
                  <node concept="3cpWsn" id="4TZlN6tn7QZ" role="1Duv9x">
                    <property role="TrG5h" value="i" />
                    <node concept="10Oyi0" id="4TZlN6tn7R1" role="1tU5fm" />
                    <node concept="3cmrfG" id="4TZlN6tn7R2" role="33vP2m">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                  <node concept="2dkUwp" id="4TZlN6tn7R3" role="1Dwp0S">
                    <node concept="37vLTw" id="4TZlN6tn7R4" role="3uHU7B">
                      <ref role="3cqZAo" node="4TZlN6tn7QZ" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="4TZlN6tn7R5" role="3uHU7w">
                      <ref role="3cqZAo" node="4TZlN6tmpl4" resolve="idx" />
                    </node>
                  </node>
                  <node concept="3uNrnE" id="4TZlN6tn7R7" role="1Dwrff">
                    <node concept="37vLTw" id="4TZlN6tn7R8" role="2$L3a6">
                      <ref role="3cqZAo" node="4TZlN6tn7QZ" resolve="i" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="4TZlN6tn7Ra" role="2LFqv$">
                    <node concept="3clFbJ" id="4TZlN6tn7Rb" role="3cqZAp">
                      <node concept="3eOSWO" id="4TZlN6tn7Rc" role="3clFbw">
                        <node concept="37vLTw" id="4TZlN6tn7Rd" role="3uHU7B">
                          <ref role="3cqZAo" node="4TZlN6tn7QZ" resolve="i" />
                        </node>
                        <node concept="3cmrfG" id="4TZlN6tn7Re" role="3uHU7w">
                          <property role="3cmrfH" value="1" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="4TZlN6tn7Rg" role="3clFbx">
                        <node concept="lc7rE" id="4TZlN6tn9Po" role="3cqZAp">
                          <node concept="la8eA" id="4TZlN6tn9PW" role="lcghm">
                            <property role="lacIc" value=", " />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="lc7rE" id="4TZlN6tn9S1" role="3cqZAp">
                      <node concept="la8eA" id="4TZlN6tn9SB" role="lcghm">
                        <property role="lacIc" value="$" />
                      </node>
                      <node concept="la8eA" id="4TZlN6tn9TM" role="lcghm">
                        <property role="lacIc" value="i" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="4TZlN6tnbdD" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6tnbRg" role="lcghm">
                    <property role="lacIc" value=")\n\t\t RETURNING id" />
                  </node>
                </node>
                <node concept="3clFbF" id="4TZlN6tncxT" role="3cqZAp">
                  <node concept="2OqwBi" id="4TZlN6tnkO8" role="3clFbG">
                    <node concept="2OqwBi" id="4TZlN6tngu3" role="2Oq$k0">
                      <node concept="2OqwBi" id="4TZlN6tndkQ" role="2Oq$k0">
                        <node concept="2GrUjf" id="4TZlN6tncxR" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="4TZlN6tlWPd" resolve="sc" />
                        </node>
                        <node concept="3Tsc0h" id="4TZlN6tneqO" role="2OqNvi">
                          <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                        </node>
                      </node>
                      <node concept="v3k3i" id="4TZlN6tnkBY" role="2OqNvi">
                        <node concept="chp4Y" id="4TZlN6tnkDk" role="v3oSu">
                          <ref role="cht4Q" to="b1ln:6Rk79gbjazd" resolve="Field" />
                        </node>
                      </node>
                    </node>
                    <node concept="2es0OD" id="4TZlN6tnmxS" role="2OqNvi">
                      <node concept="1bVj0M" id="4TZlN6tnmxU" role="23t8la">
                        <node concept="3clFbS" id="4TZlN6tnmxV" role="1bW5cS">
                          <node concept="3clFbJ" id="4TZlN6tnmIK" role="3cqZAp">
                            <node concept="3clFbS" id="4TZlN6tnmIM" role="3clFbx">
                              <node concept="lc7rE" id="4TZlN6tnn6n" role="3cqZAp">
                                <node concept="la8eA" id="4TZlN6tnng6" role="lcghm">
                                  <property role="lacIc" value=", " />
                                </node>
                                <node concept="l9hG8" id="4TZlN6tnnrF" role="lcghm">
                                  <node concept="2OqwBi" id="4TZlN6tnnIb" role="lb14g">
                                    <node concept="37vLTw" id="4TZlN6tnnvE" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4TZlN6tnmxW" resolve="it" />
                                    </node>
                                    <node concept="3TrcHB" id="4TZlN6tnp8r" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="4TZlN6tnmLN" role="3clFbw">
                              <node concept="2OqwBi" id="4TZlN6tnmLO" role="2Oq$k0">
                                <node concept="2OqwBi" id="4TZlN6tnmLP" role="2Oq$k0">
                                  <node concept="37vLTw" id="4TZlN6tnmLQ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4TZlN6tnmxW" resolve="it" />
                                  </node>
                                  <node concept="3TrcHB" id="4TZlN6tnmLR" role="2OqNvi">
                                    <ref role="3TsBF5" to="b1ln:6Rk79gbjbxG" resolve="dataType" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="4TZlN6tnmLS" role="2OqNvi">
                                  <ref role="37wK5l" to="c17a:~SEnumerationLiteral.getPresentation()" resolve="getPresentation" />
                                </node>
                              </node>
                              <node concept="liA8E" id="4TZlN6tnmLT" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                <node concept="Xl_RD" id="4TZlN6tnmLU" role="37wK5m">
                                  <property role="Xl_RC" value="timestamp" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="4TZlN6tnmxW" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="4TZlN6tnmxX" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="4TZlN6tnqrD" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6tnrS1" role="lcghm">
                    <property role="lacIc" value="`,\n" />
                  </node>
                </node>
                <node concept="3SKdUt" id="4TZlN6tnvTv" role="3cqZAp">
                  <node concept="1PaTwC" id="4TZlN6tnvTw" role="1aUNEU">
                    <node concept="3oM_SD" id="4TZlN6tnvTy" role="1PaTwD">
                      <property role="3oM_SC" value="non" />
                    </node>
                    <node concept="3oM_SD" id="4TZlN6tnvTz" role="1PaTwD">
                      <property role="3oM_SC" value="timestapm" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4TZlN6tnxmK" role="3cqZAp">
                  <node concept="2OqwBi" id="4TZlN6tnJpD" role="3clFbG">
                    <node concept="2OqwBi" id="4TZlN6tnD4u" role="2Oq$k0">
                      <node concept="2OqwBi" id="4TZlN6tn_ws" role="2Oq$k0">
                        <node concept="2OqwBi" id="4TZlN6tnyju" role="2Oq$k0">
                          <node concept="2GrUjf" id="4TZlN6tnxmI" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="4TZlN6tlWPd" resolve="sc" />
                          </node>
                          <node concept="3Tsc0h" id="4TZlN6tnztd" role="2OqNvi">
                            <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                          </node>
                        </node>
                        <node concept="v3k3i" id="4TZlN6tnCSl" role="2OqNvi">
                          <node concept="chp4Y" id="4TZlN6tnCTF" role="v3oSu">
                            <ref role="cht4Q" to="b1ln:6Rk79gbjazd" resolve="Field" />
                          </node>
                        </node>
                      </node>
                      <node concept="3zZkjj" id="4TZlN6tnEkt" role="2OqNvi">
                        <node concept="1bVj0M" id="4TZlN6tnEkv" role="23t8la">
                          <node concept="3clFbS" id="4TZlN6tnEkw" role="1bW5cS">
                            <node concept="3clFbF" id="4TZlN6tnEo0" role="3cqZAp">
                              <node concept="3fqX7Q" id="4TZlN6tnIZj" role="3clFbG">
                                <node concept="2OqwBi" id="4TZlN6tnIZl" role="3fr31v">
                                  <node concept="2OqwBi" id="4TZlN6tnIZm" role="2Oq$k0">
                                    <node concept="2OqwBi" id="4TZlN6tnIZn" role="2Oq$k0">
                                      <node concept="37vLTw" id="4TZlN6tnIZo" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4TZlN6tnEkx" resolve="it" />
                                      </node>
                                      <node concept="3TrcHB" id="4TZlN6tnIZp" role="2OqNvi">
                                        <ref role="3TsBF5" to="b1ln:6Rk79gbjbxG" resolve="dataType" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="4TZlN6tnIZq" role="2OqNvi">
                                      <ref role="37wK5l" to="c17a:~SEnumerationLiteral.getPresentation()" resolve="getPresentation" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4TZlN6tnIZr" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                    <node concept="Xl_RD" id="4TZlN6tnIZs" role="37wK5m">
                                      <property role="Xl_RC" value="timestamp" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="gl6BB" id="4TZlN6tnEkx" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="4TZlN6tnEky" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2es0OD" id="4TZlN6tnLad" role="2OqNvi">
                      <node concept="1bVj0M" id="4TZlN6tnLaf" role="23t8la">
                        <node concept="3clFbS" id="4TZlN6tnLag" role="1bW5cS">
                          <node concept="3SKdUt" id="4TZlN6tnORe" role="3cqZAp">
                            <node concept="1PaTwC" id="4TZlN6tnORf" role="1aUNEU">
                              <node concept="3oM_SD" id="4TZlN6tnORh" role="1PaTwD">
                                <property role="3oM_SC" value="append" />
                              </node>
                              <node concept="3oM_SD" id="4TZlN6tnORi" role="1PaTwD">
                                <property role="3oM_SC" value="{\t\tu.}" />
                              </node>
                              <node concept="3oM_SD" id="4TZlN6tnORj" role="1PaTwD">
                                <property role="3oM_SC" value="${f.pascalName()}" />
                              </node>
                              <node concept="3oM_SD" id="4TZlN6tnORk" role="1PaTwD">
                                <property role="3oM_SC" value="{,\n}" />
                              </node>
                              <node concept="3oM_SD" id="4TZlN6tnORl" role="1PaTwD">
                                <property role="3oM_SC" value=";" />
                              </node>
                            </node>
                          </node>
                          <node concept="lc7rE" id="4TZlN6tnLOe" role="3cqZAp">
                            <node concept="la8eA" id="4TZlN6tnLTT" role="lcghm">
                              <property role="lacIc" value="\t\tu." />
                            </node>
                            <node concept="l9hG8" id="4TZlN6tnMaK" role="lcghm">
                              <node concept="2OqwBi" id="4TZlN6tnMwt" role="lb14g">
                                <node concept="37vLTw" id="4TZlN6tnMgw" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4TZlN6tnLah" resolve="it" />
                                </node>
                                <node concept="2qgKlT" id="4TZlN6tnOqN" role="2OqNvi">
                                  <ref role="37wK5l" to="h9pt:4TZlN6thmic" resolve="pascalName" />
                                </node>
                              </node>
                            </node>
                            <node concept="la8eA" id="4TZlN6tnOF1" role="lcghm">
                              <property role="lacIc" value=",\n" />
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="4TZlN6tnLah" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="4TZlN6tnLai" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="4TZlN6tnP3u" role="3cqZAp" />
                <node concept="3SKdUt" id="4TZlN6tnRDj" role="3cqZAp">
                  <node concept="1PaTwC" id="4TZlN6tnRDk" role="1aUNEU">
                    <node concept="3oM_SD" id="4TZlN6tnRDm" role="1PaTwD">
                      <property role="3oM_SC" value="scanning" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="4TZlN6tnRDi" role="3cqZAp" />
                <node concept="lc7rE" id="4TZlN6tnT_n" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6tnUzw" role="lcghm">
                    <property role="lacIc" value="\t).Scan(&amp;u.ID" />
                  </node>
                </node>
                <node concept="3clFbF" id="4TZlN6tnUGA" role="3cqZAp">
                  <node concept="2OqwBi" id="4TZlN6tnUGB" role="3clFbG">
                    <node concept="2OqwBi" id="4TZlN6tnUGC" role="2Oq$k0">
                      <node concept="2OqwBi" id="4TZlN6tnUGD" role="2Oq$k0">
                        <node concept="2OqwBi" id="4TZlN6tnUGE" role="2Oq$k0">
                          <node concept="2GrUjf" id="4TZlN6tnUGF" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="4TZlN6tlWPd" resolve="sc" />
                          </node>
                          <node concept="3Tsc0h" id="4TZlN6tnUGG" role="2OqNvi">
                            <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                          </node>
                        </node>
                        <node concept="v3k3i" id="4TZlN6tnUGH" role="2OqNvi">
                          <node concept="chp4Y" id="4TZlN6tnUGI" role="v3oSu">
                            <ref role="cht4Q" to="b1ln:6Rk79gbjazd" resolve="Field" />
                          </node>
                        </node>
                      </node>
                      <node concept="3zZkjj" id="4TZlN6tnUGJ" role="2OqNvi">
                        <node concept="1bVj0M" id="4TZlN6tnUGK" role="23t8la">
                          <node concept="3clFbS" id="4TZlN6tnUGL" role="1bW5cS">
                            <node concept="3clFbF" id="4TZlN6tnUGM" role="3cqZAp">
                              <node concept="2OqwBi" id="4TZlN6tnUGO" role="3clFbG">
                                <node concept="2OqwBi" id="4TZlN6tnUGP" role="2Oq$k0">
                                  <node concept="2OqwBi" id="4TZlN6tnUGQ" role="2Oq$k0">
                                    <node concept="37vLTw" id="4TZlN6tnUGR" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4TZlN6tnUGW" resolve="it" />
                                    </node>
                                    <node concept="3TrcHB" id="4TZlN6tnUGS" role="2OqNvi">
                                      <ref role="3TsBF5" to="b1ln:6Rk79gbjbxG" resolve="dataType" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4TZlN6tnUGT" role="2OqNvi">
                                    <ref role="37wK5l" to="c17a:~SEnumerationLiteral.getPresentation()" resolve="getPresentation" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="4TZlN6tnUGU" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                  <node concept="Xl_RD" id="4TZlN6tnUGV" role="37wK5m">
                                    <property role="Xl_RC" value="timestamp" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="gl6BB" id="4TZlN6tnUGW" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="4TZlN6tnUGX" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2es0OD" id="4TZlN6tnUGY" role="2OqNvi">
                      <node concept="1bVj0M" id="4TZlN6tnUGZ" role="23t8la">
                        <node concept="3clFbS" id="4TZlN6tnUH0" role="1bW5cS">
                          <node concept="lc7rE" id="4TZlN6tnUH8" role="3cqZAp">
                            <node concept="la8eA" id="4TZlN6tnYXs" role="lcghm">
                              <property role="lacIc" value=", &amp;u." />
                            </node>
                            <node concept="l9hG8" id="4TZlN6tnZjc" role="lcghm">
                              <node concept="2OqwBi" id="4TZlN6tnZCY" role="lb14g">
                                <node concept="37vLTw" id="4TZlN6tnZoL" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4TZlN6tnUHf" resolve="it" />
                                </node>
                                <node concept="2qgKlT" id="4TZlN6to1z9" role="2OqNvi">
                                  <ref role="37wK5l" to="h9pt:4TZlN6thmic" resolve="pascalName" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="4TZlN6tnUHf" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="4TZlN6tnUHg" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="4TZlN6to24C" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6to3AK" role="lcghm">
                    <property role="lacIc" value=")\n}\n\n" />
                  </node>
                </node>
                <node concept="3clFbH" id="4TZlN6tnrSA" role="3cqZAp" />
                <node concept="3SKdUt" id="4TZlN6to5Us" role="3cqZAp">
                  <node concept="1PaTwC" id="4TZlN6to5Ut" role="1aUNEU">
                    <node concept="3oM_SD" id="4TZlN6to5Uv" role="1PaTwD">
                      <property role="3oM_SC" value="GetByID" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="4TZlN6to5Ur" role="3cqZAp" />
                <node concept="lc7rE" id="4TZlN6to7Mp" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6to9k1" role="lcghm">
                    <property role="lacIc" value="func (r *" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6to9FH" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6to9Go" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6tm8xh" resolve="rn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6to9D$" role="lcghm">
                    <property role="lacIc" value=") GetByID(id int64) (*" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6to9Ax" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6to9Bc" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6tm8xd" resolve="sn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6to9yh" role="lcghm">
                    <property role="lacIc" value=", error) {\n\tu := &amp;" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6to9oR" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6to9py" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6tm8xd" resolve="sn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6to9mF" role="lcghm">
                    <property role="lacIc" value="{}\n\terr := r.db.QueryRow(\n\t\t`SELECT id" />
                  </node>
                </node>
                <node concept="3clFbF" id="4TZlN6to9Jj" role="3cqZAp">
                  <node concept="2OqwBi" id="4TZlN6tokaq" role="3clFbG">
                    <node concept="2OqwBi" id="4TZlN6tofBn" role="2Oq$k0">
                      <node concept="2OqwBi" id="4TZlN6tobKo" role="2Oq$k0">
                        <node concept="2GrUjf" id="4TZlN6to9Jh" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="4TZlN6tlWPd" resolve="sc" />
                        </node>
                        <node concept="3Tsc0h" id="4TZlN6tocOF" role="2OqNvi">
                          <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                        </node>
                      </node>
                      <node concept="v3k3i" id="4TZlN6tojYg" role="2OqNvi">
                        <node concept="chp4Y" id="4TZlN6tojZB" role="v3oSu">
                          <ref role="cht4Q" to="b1ln:6Rk79gbjazd" resolve="Field" />
                        </node>
                      </node>
                    </node>
                    <node concept="2es0OD" id="4TZlN6tomdZ" role="2OqNvi">
                      <node concept="1bVj0M" id="4TZlN6tome1" role="23t8la">
                        <node concept="3clFbS" id="4TZlN6tome2" role="1bW5cS">
                          <node concept="3clFbH" id="4TZlN6tomfS" role="3cqZAp" />
                          <node concept="lc7rE" id="4TZlN6toml0" role="3cqZAp">
                            <node concept="la8eA" id="4TZlN6tomnZ" role="lcghm">
                              <property role="lacIc" value=", " />
                            </node>
                            <node concept="l9hG8" id="4TZlN6tomwN" role="lcghm">
                              <node concept="2OqwBi" id="4TZlN6tomLx" role="lb14g">
                                <node concept="37vLTw" id="4TZlN6tomzQ" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4TZlN6tome3" resolve="it" />
                                </node>
                                <node concept="3TrcHB" id="4TZlN6tood2" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="4TZlN6tome3" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="4TZlN6tome4" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="4TZlN6toogo" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6toq6O" role="lcghm">
                    <property role="lacIc" value="\n\t\t FROM " />
                  </node>
                  <node concept="l9hG8" id="4TZlN6toq8t" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6toq98" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6tm8xl" resolve="tn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6toqav" role="lcghm">
                    <property role="lacIc" value=" WHERE id = $1`, id,\n\t).Scan(&amp;u.ID" />
                  </node>
                </node>
                <node concept="3clFbF" id="4TZlN6toroS" role="3cqZAp">
                  <node concept="2OqwBi" id="4TZlN6to_FY" role="3clFbG">
                    <node concept="2OqwBi" id="4TZlN6towDh" role="2Oq$k0">
                      <node concept="2OqwBi" id="4TZlN6totuD" role="2Oq$k0">
                        <node concept="2GrUjf" id="4TZlN6toroQ" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="4TZlN6tlWPd" resolve="sc" />
                        </node>
                        <node concept="3Tsc0h" id="4TZlN6touA2" role="2OqNvi">
                          <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                        </node>
                      </node>
                      <node concept="v3k3i" id="4TZlN6to_vo" role="2OqNvi">
                        <node concept="chp4Y" id="4TZlN6to_wJ" role="v3oSu">
                          <ref role="cht4Q" to="b1ln:6Rk79gbjazd" resolve="Field" />
                        </node>
                      </node>
                    </node>
                    <node concept="2es0OD" id="4TZlN6toB68" role="2OqNvi">
                      <node concept="1bVj0M" id="4TZlN6toB6a" role="23t8la">
                        <node concept="3clFbS" id="4TZlN6toB6b" role="1bW5cS">
                          <node concept="lc7rE" id="4TZlN6toBeD" role="3cqZAp">
                            <node concept="la8eA" id="4TZlN6toBhB" role="lcghm">
                              <property role="lacIc" value=", &amp;u." />
                            </node>
                            <node concept="l9hG8" id="4TZlN6toBnx" role="lcghm">
                              <node concept="2OqwBi" id="4TZlN6toBCf" role="lb14g">
                                <node concept="37vLTw" id="4TZlN6toBq$" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4TZlN6toB6c" resolve="it" />
                                </node>
                                <node concept="2qgKlT" id="4TZlN6toE5v" role="2OqNvi">
                                  <ref role="37wK5l" to="h9pt:4TZlN6thmic" resolve="pascalName" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="4TZlN6toB6c" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="4TZlN6toB6d" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="4TZlN6toHmQ" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6toIAU" role="lcghm">
                    <property role="lacIc" value=")\n\treturn u, err\n}\n\n" />
                  </node>
                </node>
                <node concept="3clFbH" id="4TZlN6toL8S" role="3cqZAp" />
                <node concept="3SKdUt" id="4TZlN6toOqC" role="3cqZAp">
                  <node concept="1PaTwC" id="4TZlN6toOqD" role="1aUNEU">
                    <node concept="3oM_SD" id="4TZlN6toOqF" role="1PaTwD">
                      <property role="3oM_SC" value="List" />
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="4TZlN6toQTf" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6toSUT" role="lcghm">
                    <property role="lacIc" value="func (r *" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6toSWy" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6toSXd" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6tm8xh" resolve="rn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6toTh1" role="lcghm">
                    <property role="lacIc" value=") List() ([]" />
                  </node>
                </node>
                <node concept="lc7rE" id="4TZlN6tIgaF" role="3cqZAp">
                  <node concept="l9hG8" id="4TZlN6toTi9" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6toTiO" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6tm8xd" resolve="sn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6toTkk" role="lcghm">
                    <property role="lacIc" value=", error) {\n\trows, err := r.db.Query(\n\t\t`SELECT id" />
                  </node>
                </node>
                <node concept="3clFbF" id="4TZlN6toTmS" role="3cqZAp">
                  <node concept="2OqwBi" id="4TZlN6toTmT" role="3clFbG">
                    <node concept="2OqwBi" id="4TZlN6toTmU" role="2Oq$k0">
                      <node concept="2OqwBi" id="4TZlN6toTmV" role="2Oq$k0">
                        <node concept="2GrUjf" id="4TZlN6toTmW" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="4TZlN6tlWPd" resolve="sc" />
                        </node>
                        <node concept="3Tsc0h" id="4TZlN6toTmX" role="2OqNvi">
                          <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                        </node>
                      </node>
                      <node concept="v3k3i" id="4TZlN6toTmY" role="2OqNvi">
                        <node concept="chp4Y" id="4TZlN6toTmZ" role="v3oSu">
                          <ref role="cht4Q" to="b1ln:6Rk79gbjazd" resolve="Field" />
                        </node>
                      </node>
                    </node>
                    <node concept="2es0OD" id="4TZlN6toTn0" role="2OqNvi">
                      <node concept="1bVj0M" id="4TZlN6toTn1" role="23t8la">
                        <node concept="3clFbS" id="4TZlN6toTn2" role="1bW5cS">
                          <node concept="lc7rE" id="4TZlN6toTn3" role="3cqZAp">
                            <node concept="la8eA" id="4TZlN6toTn4" role="lcghm">
                              <property role="lacIc" value=", " />
                            </node>
                            <node concept="l9hG8" id="4TZlN6toTn5" role="lcghm">
                              <node concept="2OqwBi" id="4TZlN6toTn6" role="lb14g">
                                <node concept="37vLTw" id="4TZlN6toTn7" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4TZlN6toTn9" resolve="it" />
                                </node>
                                <node concept="2qgKlT" id="4TZlN6toTn8" role="2OqNvi">
                                  <ref role="37wK5l" to="h9pt:4TZlN6thmic" resolve="pascalName" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="4TZlN6toTn9" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="4TZlN6toTna" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="4TZlN6tp2t_" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6tp3Lu" role="lcghm">
                    <property role="lacIc" value="\n\t\t FROM " />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tp3N6" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tp3NL" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6tm8xl" resolve="tn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tp3P7" role="lcghm">
                    <property role="lacIc" value=" ORDER BY id`)\n\tif err != nil {\n\t\treturn nil, err\n\t}\n\tdefer rows.Close()\n\tvar items []" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tp5Y7" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tp5YM" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6tm8xd" resolve="sn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tp608" role="lcghm">
                    <property role="lacIc" value="\n\tfor rows.Next() {\n\t\tvar u " />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tp61K" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tp62r" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6tm8xd" resolve="sn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tp63L" role="lcghm">
                    <property role="lacIc" value="\n\t\tif err := rows.Scan(&amp;u.ID" />
                  </node>
                </node>
                <node concept="3clFbF" id="4TZlN6tpmxV" role="3cqZAp">
                  <node concept="2OqwBi" id="4TZlN6tpmxW" role="3clFbG">
                    <node concept="2OqwBi" id="4TZlN6tpmxX" role="2Oq$k0">
                      <node concept="2OqwBi" id="4TZlN6tpmxY" role="2Oq$k0">
                        <node concept="2GrUjf" id="4TZlN6tpmxZ" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="4TZlN6tlWPd" resolve="sc" />
                        </node>
                        <node concept="3Tsc0h" id="4TZlN6tpmy0" role="2OqNvi">
                          <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                        </node>
                      </node>
                      <node concept="v3k3i" id="4TZlN6tpmy1" role="2OqNvi">
                        <node concept="chp4Y" id="4TZlN6tpmy2" role="v3oSu">
                          <ref role="cht4Q" to="b1ln:6Rk79gbjazd" resolve="Field" />
                        </node>
                      </node>
                    </node>
                    <node concept="2es0OD" id="4TZlN6tpmy3" role="2OqNvi">
                      <node concept="1bVj0M" id="4TZlN6tpmy4" role="23t8la">
                        <node concept="3clFbS" id="4TZlN6tpmy5" role="1bW5cS">
                          <node concept="lc7rE" id="4TZlN6tpmy6" role="3cqZAp">
                            <node concept="la8eA" id="4TZlN6tpmy7" role="lcghm">
                              <property role="lacIc" value=", &amp;u." />
                            </node>
                            <node concept="l9hG8" id="4TZlN6tpmy8" role="lcghm">
                              <node concept="2OqwBi" id="4TZlN6tpmy9" role="lb14g">
                                <node concept="37vLTw" id="4TZlN6tpmya" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4TZlN6tpmyc" resolve="it" />
                                </node>
                                <node concept="2qgKlT" id="4TZlN6tpmyb" role="2OqNvi">
                                  <ref role="37wK5l" to="h9pt:4TZlN6thmic" resolve="pascalName" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="4TZlN6tpmyc" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="4TZlN6tpmyd" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="4TZlN6tpzEa" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6tp_1_" role="lcghm">
                    <property role="lacIc" value="); err != nil {\n\t\t\treturn nil, err\n\t\t}\n\t\titems = append(items, u)\n\t}\n\treturn items, rows.Err()\n}\n\n" />
                  </node>
                </node>
                <node concept="3clFbH" id="4TZlN6tpEPF" role="3cqZAp" />
                <node concept="3SKdUt" id="4TZlN6tpCEf" role="3cqZAp">
                  <node concept="1PaTwC" id="4TZlN6tpCEg" role="1aUNEU">
                    <node concept="3oM_SD" id="4TZlN6tpCEi" role="1PaTwD">
                      <property role="3oM_SC" value="Update" />
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="4TZlN6tqndu" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6tqo5C" role="lcghm">
                    <property role="lacIc" value="func (r *" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tqo7h" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tqo7W" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6tm8xh" resolve="rn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tqo9j" role="lcghm">
                    <property role="lacIc" value=") Update(u *" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tqoau" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tqob9" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6tm8xd" resolve="sn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tqocw" role="lcghm">
                    <property role="lacIc" value=") error {\n\treturn r.db.QueryRow(\n\t\t`UPDATE " />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tqoe9" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tqoeO" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6tm8xl" resolve="tn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tqoga" role="lcghm">
                    <property role="lacIc" value=" SET " />
                  </node>
                </node>
                <node concept="3cpWs8" id="4TZlN6tqpAV" role="3cqZAp">
                  <node concept="3cpWsn" id="4TZlN6tqpAY" role="3cpWs9">
                    <property role="TrG5h" value="uidx" />
                    <node concept="10Oyi0" id="4TZlN6tqpAT" role="1tU5fm" />
                    <node concept="3cmrfG" id="4TZlN6tqqwJ" role="33vP2m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4TZlN6tqrqB" role="3cqZAp">
                  <node concept="2OqwBi" id="4TZlN6tqy38" role="3clFbG">
                    <node concept="2OqwBi" id="4TZlN6tqrqC" role="2Oq$k0">
                      <node concept="2OqwBi" id="4TZlN6tqrqD" role="2Oq$k0">
                        <node concept="2OqwBi" id="4TZlN6tqrqE" role="2Oq$k0">
                          <node concept="2GrUjf" id="4TZlN6tqrqF" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="4TZlN6tlWPd" resolve="sc" />
                          </node>
                          <node concept="3Tsc0h" id="4TZlN6tqrqG" role="2OqNvi">
                            <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                          </node>
                        </node>
                        <node concept="v3k3i" id="4TZlN6tqrqH" role="2OqNvi">
                          <node concept="chp4Y" id="4TZlN6tqrqI" role="v3oSu">
                            <ref role="cht4Q" to="b1ln:6Rk79gbjazd" resolve="Field" />
                          </node>
                        </node>
                      </node>
                      <node concept="3zZkjj" id="4TZlN6tqwVg" role="2OqNvi">
                        <node concept="1bVj0M" id="4TZlN6tqwVi" role="23t8la">
                          <node concept="3clFbS" id="4TZlN6tqwVj" role="1bW5cS">
                            <node concept="3clFbF" id="4TZlN6tqx5T" role="3cqZAp">
                              <node concept="3fqX7Q" id="4TZlN6tqxIJ" role="3clFbG">
                                <node concept="2OqwBi" id="4TZlN6tqxIL" role="3fr31v">
                                  <node concept="2OqwBi" id="4TZlN6tqxIM" role="2Oq$k0">
                                    <node concept="2OqwBi" id="4TZlN6tqxIN" role="2Oq$k0">
                                      <node concept="37vLTw" id="4TZlN6tqxIO" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4TZlN6tqwVk" resolve="it" />
                                      </node>
                                      <node concept="3TrcHB" id="4TZlN6tqxIP" role="2OqNvi">
                                        <ref role="3TsBF5" to="b1ln:6Rk79gbjbxG" resolve="dataType" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="4TZlN6tqxIQ" role="2OqNvi">
                                      <ref role="37wK5l" to="c17a:~SEnumerationLiteral.getPresentation()" resolve="getPresentation" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4TZlN6tqxIR" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                    <node concept="Xl_RD" id="4TZlN6tqxIS" role="37wK5m">
                                      <property role="Xl_RC" value="timestamp" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="gl6BB" id="4TZlN6tqwVk" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="4TZlN6tqwVl" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2es0OD" id="4TZlN6tq$Ci" role="2OqNvi">
                      <node concept="1bVj0M" id="4TZlN6tq$Ck" role="23t8la">
                        <node concept="3clFbS" id="4TZlN6tq$Cl" role="1bW5cS">
                          <node concept="3clFbJ" id="4TZlN6tq$YT" role="3cqZAp">
                            <node concept="3clFbS" id="4TZlN6tq$YV" role="3clFbx">
                              <node concept="lc7rE" id="4TZlN6tqAc4" role="3cqZAp">
                                <node concept="la8eA" id="4TZlN6tqAhE" role="lcghm">
                                  <property role="lacIc" value=", " />
                                </node>
                              </node>
                            </node>
                            <node concept="3eOSWO" id="4TZlN6tqA0L" role="3clFbw">
                              <node concept="3cmrfG" id="4TZlN6tqA0P" role="3uHU7w">
                                <property role="3cmrfH" value="0" />
                              </node>
                              <node concept="37vLTw" id="4TZlN6tq_4y" role="3uHU7B">
                                <ref role="3cqZAo" node="4TZlN6tqpAY" resolve="uidx" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="4TZlN6tqASL" role="3cqZAp">
                            <node concept="3uNrnE" id="4TZlN6tqBNG" role="3clFbG">
                              <node concept="37vLTw" id="4TZlN6tqBNI" role="2$L3a6">
                                <ref role="3cqZAo" node="4TZlN6tqpAY" resolve="uidx" />
                              </node>
                            </node>
                          </node>
                          <node concept="lc7rE" id="4TZlN6tqC6N" role="3cqZAp">
                            <node concept="l9hG8" id="4TZlN6tqCcC" role="lcghm">
                              <node concept="2OqwBi" id="4TZlN6tqCE5" role="lb14g">
                                <node concept="37vLTw" id="4TZlN6tqCix" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4TZlN6tq$Cm" resolve="it" />
                                </node>
                                <node concept="3TrcHB" id="4TZlN6tqE$$" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                            <node concept="la8eA" id="4TZlN6tqES5" role="lcghm">
                              <property role="lacIc" value=" = $" />
                            </node>
                            <node concept="l9hG8" id="4TZlN6tqFaA" role="lcghm">
                              <node concept="3cpWs3" id="4TZlN6tqGz4" role="lb14g">
                                <node concept="Xl_RD" id="4TZlN6tqGz8" role="3uHU7w">
                                  <property role="Xl_RC" value="" />
                                </node>
                                <node concept="37vLTw" id="4TZlN6tqFgT" role="3uHU7B">
                                  <ref role="3cqZAo" node="4TZlN6tqpAY" resolve="uidx" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="4TZlN6tq$Cm" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="4TZlN6tq$Cn" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="4TZlN6tqqxp" role="3cqZAp" />
                <node concept="lc7rE" id="4TZlN6tqJD1" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6tqKH6" role="lcghm">
                    <property role="lacIc" value="\t\tu.ID,\n\t).Scan(&amp;u.UpdatedAt)\n}\n\n" />
                  </node>
                </node>
                <node concept="3clFbH" id="4TZlN6tpCEe" role="3cqZAp" />
                <node concept="3SKdUt" id="4TZlN6tqg7n" role="3cqZAp">
                  <node concept="1PaTwC" id="4TZlN6tqg7o" role="1aUNEU">
                    <node concept="3oM_SD" id="4TZlN6tqg7q" role="1PaTwD">
                      <property role="3oM_SC" value="Delete" />
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="4TZlN6tqjc9" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6tqk3O" role="lcghm">
                    <property role="lacIc" value="func (r *" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tqk5t" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tqk68" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6tm8xh" resolve="rn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tqk7v" role="lcghm">
                    <property role="lacIc" value=") Delete(id int64) error {\n\t_, err := r.db.Exec(`DELETE FROM } ${tn} { WHERE id = $1`, id)\n\treturn err\n}\n\n" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4TZlN6tlWgn" role="3cqZAp" />
        <node concept="3SKdUt" id="4TZlN6tqQbb" role="3cqZAp">
          <node concept="1PaTwC" id="4TZlN6tqQbc" role="1aUNEU">
            <node concept="3oM_SD" id="4TZlN6tqQbe" role="1PaTwD">
              <property role="3oM_SC" value="============================================================" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4TZlN6tqQbf" role="3cqZAp">
          <node concept="1PaTwC" id="4TZlN6tqQbg" role="1aUNEU">
            <node concept="3oM_SD" id="4TZlN6tqQbi" role="1PaTwD">
              <property role="3oM_SC" value="Repositories" />
            </node>
            <node concept="3oM_SD" id="4TZlN6tqQbj" role="1PaTwD">
              <property role="3oM_SC" value="—" />
            </node>
            <node concept="3oM_SD" id="4TZlN6tqQbk" role="1PaTwD">
              <property role="3oM_SC" value="join" />
            </node>
            <node concept="3oM_SD" id="4TZlN6tqQbl" role="1PaTwD">
              <property role="3oM_SC" value="schemas" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4TZlN6tqQbm" role="3cqZAp">
          <node concept="1PaTwC" id="4TZlN6tqQbn" role="1aUNEU">
            <node concept="3oM_SD" id="4TZlN6tqQbp" role="1PaTwD">
              <property role="3oM_SC" value="============================================================" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4TZlN6tqQba" role="3cqZAp" />
        <node concept="3clFbH" id="4TZlN6tqKIg" role="3cqZAp" />
        <node concept="3clFbH" id="4TZlN6tlWgp" role="3cqZAp" />
        <node concept="2Gpval" id="4TZlN6trCXh" role="3cqZAp">
          <node concept="2GrKxI" id="4TZlN6trCXj" role="2Gsz3X">
            <property role="TrG5h" value="schema" />
          </node>
          <node concept="2OqwBi" id="4TZlN6trNLX" role="2GsD0m">
            <node concept="37vLTw" id="4TZlN6trM_G" role="2Oq$k0">
              <ref role="3cqZAo" node="4TZlN6tf6hJ" resolve="models" />
            </node>
            <node concept="3Tsc0h" id="4TZlN6trP18" role="2OqNvi">
              <ref role="3TtcxE" to="b1ln:6Rk79gbjaz8" resolve="schemas" />
            </node>
          </node>
          <node concept="3clFbS" id="4TZlN6trCXn" role="2LFqv$">
            <node concept="3clFbJ" id="4TZlN6trQ6X" role="3cqZAp">
              <node concept="2OqwBi" id="4TZlN6trQgn" role="3clFbw">
                <node concept="2GrUjf" id="4TZlN6trQ7A" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="4TZlN6trCXj" resolve="schema" />
                </node>
                <node concept="2qgKlT" id="4TZlN6trSOJ" role="2OqNvi">
                  <ref role="37wK5l" to="h9pt:4RkLmywWXpy" resolve="hasReferences" />
                </node>
              </node>
              <node concept="3clFbS" id="4TZlN6trQ6Z" role="3clFbx">
                <node concept="3cpWs8" id="4TZlN6trUjm" role="3cqZAp">
                  <node concept="3cpWsn" id="4TZlN6trUjl" role="3cpWs9">
                    <property role="TrG5h" value="sn" />
                    <node concept="17QB3L" id="4TZlN6trUkv" role="1tU5fm" />
                    <node concept="2OqwBi" id="4TZlN6ts3Mi" role="33vP2m">
                      <node concept="2GrUjf" id="4TZlN6ts2_3" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="4TZlN6trCXj" resolve="schema" />
                      </node>
                      <node concept="2qgKlT" id="4TZlN6ts61K" role="2OqNvi">
                        <ref role="37wK5l" to="h9pt:4RkLmywWSH4" resolve="structName" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="4TZlN6trUjq" role="3cqZAp">
                  <node concept="3cpWsn" id="4TZlN6trUjp" role="3cpWs9">
                    <property role="TrG5h" value="rn" />
                    <node concept="17QB3L" id="4TZlN6trUld" role="1tU5fm" />
                    <node concept="2OqwBi" id="4TZlN6ts9n6" role="33vP2m">
                      <node concept="2GrUjf" id="4TZlN6ts8fS" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="4TZlN6trCXj" resolve="schema" />
                      </node>
                      <node concept="2qgKlT" id="4TZlN6tsbwi" role="2OqNvi">
                        <ref role="37wK5l" to="h9pt:4RkLmywWUlE" resolve="repoName" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="4TZlN6trUju" role="3cqZAp">
                  <node concept="3cpWsn" id="4TZlN6trUjt" role="3cpWs9">
                    <property role="TrG5h" value="tn" />
                    <node concept="17QB3L" id="4TZlN6trUlV" role="1tU5fm" />
                    <node concept="2OqwBi" id="4TZlN6trUxz" role="33vP2m">
                      <node concept="2GrUjf" id="4TZlN6trUoF" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="4TZlN6trCXj" resolve="schema" />
                      </node>
                      <node concept="3TrcHB" id="4TZlN6trWEm" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="4TZlN6tseQR" role="3cqZAp" />
                <node concept="lc7rE" id="4TZlN6tsh5m" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6tshYl" role="lcghm">
                    <property role="lacIc" value="type " />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tsiex" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tsifg" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6trUjp" resolve="rn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tsigJ" role="lcghm">
                    <property role="lacIc" value=" struct{ db *sql.DB }\n\n" />
                  </node>
                </node>
                <node concept="3SKdUt" id="4TZlN6tskgM" role="3cqZAp">
                  <node concept="1PaTwC" id="4TZlN6tskgN" role="1aUNEU">
                    <node concept="3oM_SD" id="4TZlN6tskgP" role="1PaTwD">
                      <property role="3oM_SC" value="Assign" />
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="4TZlN6tslon" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6tsmvY" role="lcghm">
                    <property role="lacIc" value="func (r *" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tsmxM" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tsmyx" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6trUjp" resolve="rn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tsmzZ" role="lcghm">
                    <property role="lacIc" value=") Assign(" />
                  </node>
                </node>
                <node concept="3cpWs8" id="4TZlN6tsrSR" role="3cqZAp">
                  <node concept="3cpWsn" id="4TZlN6tsrSQ" role="3cpWs9">
                    <property role="TrG5h" value="argIdx" />
                    <node concept="10Oyi0" id="4TZlN6tsrSS" role="1tU5fm" />
                    <node concept="3cmrfG" id="4TZlN6tsrST" role="33vP2m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4TZlN6tst0T" role="3cqZAp">
                  <node concept="2OqwBi" id="4TZlN6tsBh4" role="3clFbG">
                    <node concept="2OqwBi" id="4TZlN6tsxXN" role="2Oq$k0">
                      <node concept="2OqwBi" id="4TZlN6tsuh1" role="2Oq$k0">
                        <node concept="2GrUjf" id="4TZlN6tst0R" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="4TZlN6trCXj" resolve="schema" />
                        </node>
                        <node concept="3Tsc0h" id="4TZlN6tsvUv" role="2OqNvi">
                          <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                        </node>
                      </node>
                      <node concept="v3k3i" id="4TZlN6tsB4L" role="2OqNvi">
                        <node concept="chp4Y" id="4TZlN6tsB6c" role="v3oSu">
                          <ref role="cht4Q" to="b1ln:6Rk79gbjbPd" resolve="FieldRefrence" />
                        </node>
                      </node>
                    </node>
                    <node concept="2es0OD" id="4TZlN6tsCWD" role="2OqNvi">
                      <node concept="1bVj0M" id="4TZlN6tsCWF" role="23t8la">
                        <node concept="3clFbS" id="4TZlN6tsCWG" role="1bW5cS">
                          <node concept="3clFbJ" id="4TZlN6tsD4z" role="3cqZAp">
                            <node concept="3clFbS" id="4TZlN6tsD4_" role="3clFbx">
                              <node concept="lc7rE" id="4TZlN6tsE4D" role="3cqZAp">
                                <node concept="la8eA" id="4TZlN6tsEbS" role="lcghm">
                                  <property role="lacIc" value=", " />
                                </node>
                              </node>
                            </node>
                            <node concept="3eOSWO" id="4TZlN6tsE1m" role="3clFbw">
                              <node concept="3cmrfG" id="4TZlN6tsE1q" role="3uHU7w">
                                <property role="3cmrfH" value="0" />
                              </node>
                              <node concept="37vLTw" id="4TZlN6tsD7E" role="3uHU7B">
                                <ref role="3cqZAo" node="4TZlN6tsrSQ" resolve="argIdx" />
                              </node>
                            </node>
                          </node>
                          <node concept="lc7rE" id="4TZlN6tsEkP" role="3cqZAp">
                            <node concept="l9hG8" id="4TZlN6tsEnS" role="lcghm">
                              <node concept="2OqwBi" id="4TZlN6tsECT" role="lb14g">
                                <node concept="37vLTw" id="4TZlN6tsEr0" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4TZlN6tsCWH" resolve="it" />
                                </node>
                                <node concept="3TrcHB" id="4TZlN6tsGlv" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                            <node concept="la8eA" id="4TZlN6tsGKS" role="lcghm">
                              <property role="lacIc" value=" int64" />
                            </node>
                          </node>
                          <node concept="3clFbF" id="4TZlN6tsH4E" role="3cqZAp">
                            <node concept="3uNrnE" id="4TZlN6tsHXo" role="3clFbG">
                              <node concept="37vLTw" id="4TZlN6tsHXq" role="2$L3a6">
                                <ref role="3cqZAo" node="4TZlN6tsrSQ" resolve="argIdx" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="4TZlN6tsCWH" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="4TZlN6tsCWI" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="4TZlN6tsKi$" role="3cqZAp">
                  <node concept="1PaTwC" id="4TZlN6tsKi_" role="1aUNEU">
                    <node concept="3oM_SD" id="4TZlN6tsKiB" role="1PaTwD">
                      <property role="3oM_SC" value="query" />
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="4TZlN6tsLtw" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6tsMCu" role="lcghm">
                    <property role="lacIc" value=") (*" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tsMEm" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tsT6Y" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6trUjl" resolve="sn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tsT7S" role="lcghm">
                    <property role="lacIc" value=", error) {\n\tur := &amp;" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tsT9O" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tsTa_" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6trUjl" resolve="sn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tsTc8" role="lcghm">
                    <property role="lacIc" value="{}\n\terr := r.db.QueryRow(\n\t\t`INSERT INTO " />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tsTdv" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tsTeg" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6trUjt" resolve="tn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tsTfN" role="lcghm">
                    <property role="lacIc" value=" (" />
                  </node>
                </node>
                <node concept="3cpWs8" id="4TZlN6tsVi1" role="3cqZAp">
                  <node concept="3cpWsn" id="4TZlN6tsVi4" role="3cpWs9">
                    <property role="TrG5h" value="finx" />
                    <node concept="10Oyi0" id="4TZlN6tsVhZ" role="1tU5fm" />
                    <node concept="3cmrfG" id="4TZlN6tsWvO" role="33vP2m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4TZlN6tsXUy" role="3cqZAp">
                  <node concept="2OqwBi" id="4TZlN6tsXUz" role="3clFbG">
                    <node concept="2OqwBi" id="4TZlN6tsXU$" role="2Oq$k0">
                      <node concept="2OqwBi" id="4TZlN6tsXU_" role="2Oq$k0">
                        <node concept="2GrUjf" id="4TZlN6tsXUA" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="4TZlN6trCXj" resolve="schema" />
                        </node>
                        <node concept="3Tsc0h" id="4TZlN6tsXUB" role="2OqNvi">
                          <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                        </node>
                      </node>
                      <node concept="v3k3i" id="4TZlN6tsXUC" role="2OqNvi">
                        <node concept="chp4Y" id="4TZlN6tsXUD" role="v3oSu">
                          <ref role="cht4Q" to="b1ln:6Rk79gbjbPd" resolve="FieldRefrence" />
                        </node>
                      </node>
                    </node>
                    <node concept="2es0OD" id="4TZlN6tsXUE" role="2OqNvi">
                      <node concept="1bVj0M" id="4TZlN6tsXUF" role="23t8la">
                        <node concept="3clFbS" id="4TZlN6tsXUG" role="1bW5cS">
                          <node concept="3clFbJ" id="4TZlN6tsXUH" role="3cqZAp">
                            <node concept="3clFbS" id="4TZlN6tsXUI" role="3clFbx">
                              <node concept="lc7rE" id="4TZlN6tsXUJ" role="3cqZAp">
                                <node concept="la8eA" id="4TZlN6tsXUK" role="lcghm">
                                  <property role="lacIc" value=", " />
                                </node>
                              </node>
                            </node>
                            <node concept="3eOSWO" id="4TZlN6tsXUL" role="3clFbw">
                              <node concept="3cmrfG" id="4TZlN6tsXUM" role="3uHU7w">
                                <property role="3cmrfH" value="0" />
                              </node>
                              <node concept="37vLTw" id="4TZlN6tt0KN" role="3uHU7B">
                                <ref role="3cqZAo" node="4TZlN6tsVi4" resolve="finx" />
                              </node>
                            </node>
                          </node>
                          <node concept="lc7rE" id="4TZlN6tsXUO" role="3cqZAp">
                            <node concept="l9hG8" id="4TZlN6tsXUP" role="lcghm">
                              <node concept="2OqwBi" id="4TZlN6tsXUQ" role="lb14g">
                                <node concept="37vLTw" id="4TZlN6tsXUR" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4TZlN6tsXUX" resolve="it" />
                                </node>
                                <node concept="3TrcHB" id="4TZlN6tsXUS" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="4TZlN6tsXUU" role="3cqZAp">
                            <node concept="3uNrnE" id="4TZlN6tsXUV" role="3clFbG">
                              <node concept="37vLTw" id="4TZlN6tsXUW" role="2$L3a6">
                                <ref role="3cqZAo" node="4TZlN6tsVi4" resolve="finx" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="4TZlN6tsXUX" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="4TZlN6tsXUY" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="4TZlN6tt2Tf" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6tt488" role="lcghm">
                    <property role="lacIc" value=") VALUES (" />
                  </node>
                </node>
                <node concept="1Dw8fO" id="4TZlN6tt7tL" role="3cqZAp">
                  <node concept="3cpWsn" id="4TZlN6tt7tM" role="1Duv9x">
                    <property role="TrG5h" value="i" />
                    <node concept="10Oyi0" id="4TZlN6tt7tO" role="1tU5fm" />
                    <node concept="3cmrfG" id="4TZlN6tt7tP" role="33vP2m">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                  <node concept="2dkUwp" id="4TZlN6tt7tQ" role="1Dwp0S">
                    <node concept="37vLTw" id="4TZlN6tt7tR" role="3uHU7B">
                      <ref role="3cqZAo" node="4TZlN6tt7tM" resolve="i" />
                    </node>
                    <node concept="37vLTw" id="4TZlN6tt7tS" role="3uHU7w">
                      <ref role="3cqZAo" node="4TZlN6tsVi4" resolve="finx" />
                    </node>
                  </node>
                  <node concept="3uNrnE" id="4TZlN6tt7tU" role="1Dwrff">
                    <node concept="37vLTw" id="4TZlN6tt7tV" role="2$L3a6">
                      <ref role="3cqZAo" node="4TZlN6tt7tM" resolve="i" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="4TZlN6tt7tX" role="2LFqv$">
                    <node concept="3clFbJ" id="4TZlN6tt8It" role="3cqZAp">
                      <node concept="3eOSWO" id="4TZlN6tt9$s" role="3clFbw">
                        <node concept="3cmrfG" id="4TZlN6tt9$w" role="3uHU7w">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="37vLTw" id="4TZlN6tt8Je" role="3uHU7B">
                          <ref role="3cqZAo" node="4TZlN6tt7tM" resolve="i" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="4TZlN6tt8Iv" role="3clFbx">
                        <node concept="lc7rE" id="4TZlN6tt9GR" role="3cqZAp">
                          <node concept="la8eA" id="4TZlN6tt9H$" role="lcghm">
                            <property role="lacIc" value=", " />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="lc7rE" id="4TZlN6tt9Jz" role="3cqZAp">
                      <node concept="la8eA" id="4TZlN6tt9Ki" role="lcghm">
                        <property role="lacIc" value="$" />
                      </node>
                      <node concept="l9hG8" id="4TZlN6tt9NJ" role="lcghm">
                        <node concept="3cpWs3" id="4TZlN6ttaP9" role="lb14g">
                          <node concept="Xl_RD" id="4TZlN6ttaPd" role="3uHU7w" />
                          <node concept="37vLTw" id="4TZlN6tt9Oz" role="3uHU7B">
                            <ref role="3cqZAo" node="4TZlN6tt7tM" resolve="i" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="4TZlN6ttddL" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6ttesV" role="lcghm">
                    <property role="lacIc" value=")\n\t\t ON CONFLICT (" />
                  </node>
                </node>
                <node concept="3cpWs8" id="4TZlN6tteuj" role="3cqZAp">
                  <node concept="3cpWsn" id="4TZlN6tteum" role="3cpWs9">
                    <property role="TrG5h" value="ckIdx" />
                    <node concept="10Oyi0" id="4TZlN6tteuh" role="1tU5fm" />
                    <node concept="3cmrfG" id="4TZlN6ttfNy" role="33vP2m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4TZlN6ttfOm" role="3cqZAp">
                  <node concept="2OqwBi" id="4TZlN6ttfOn" role="3clFbG">
                    <node concept="2OqwBi" id="4TZlN6ttfOo" role="2Oq$k0">
                      <node concept="2OqwBi" id="4TZlN6ttfOp" role="2Oq$k0">
                        <node concept="2GrUjf" id="4TZlN6ttfOq" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="4TZlN6trCXj" resolve="schema" />
                        </node>
                        <node concept="3Tsc0h" id="4TZlN6ttfOr" role="2OqNvi">
                          <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                        </node>
                      </node>
                      <node concept="v3k3i" id="4TZlN6ttfOs" role="2OqNvi">
                        <node concept="chp4Y" id="4TZlN6ttfOt" role="v3oSu">
                          <ref role="cht4Q" to="b1ln:6Rk79gbjbPd" resolve="FieldRefrence" />
                        </node>
                      </node>
                    </node>
                    <node concept="2es0OD" id="4TZlN6ttfOu" role="2OqNvi">
                      <node concept="1bVj0M" id="4TZlN6ttfOv" role="23t8la">
                        <node concept="3clFbS" id="4TZlN6ttfOw" role="1bW5cS">
                          <node concept="3clFbJ" id="4TZlN6ttfOx" role="3cqZAp">
                            <node concept="3clFbS" id="4TZlN6ttfOy" role="3clFbx">
                              <node concept="lc7rE" id="4TZlN6ttfOz" role="3cqZAp">
                                <node concept="la8eA" id="4TZlN6ttfO$" role="lcghm">
                                  <property role="lacIc" value=", " />
                                </node>
                              </node>
                            </node>
                            <node concept="3eOSWO" id="4TZlN6ttfO_" role="3clFbw">
                              <node concept="3cmrfG" id="4TZlN6ttfOA" role="3uHU7w">
                                <property role="3cmrfH" value="0" />
                              </node>
                              <node concept="37vLTw" id="4TZlN6ttfOB" role="3uHU7B">
                                <ref role="3cqZAo" node="4TZlN6tteum" resolve="ckIdx" />
                              </node>
                            </node>
                          </node>
                          <node concept="lc7rE" id="4TZlN6ttfOC" role="3cqZAp">
                            <node concept="l9hG8" id="4TZlN6ttfOD" role="lcghm">
                              <node concept="2OqwBi" id="4TZlN6ttfOE" role="lb14g">
                                <node concept="37vLTw" id="4TZlN6ttfOF" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4TZlN6ttfOK" resolve="it" />
                                </node>
                                <node concept="3TrcHB" id="4TZlN6ttfOG" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="4TZlN6ttfOH" role="3cqZAp">
                            <node concept="3uNrnE" id="4TZlN6ttfOI" role="3clFbG">
                              <node concept="37vLTw" id="4TZlN6ttfOJ" role="2$L3a6">
                                <ref role="3cqZAo" node="4TZlN6tteum" resolve="ckIdx" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="4TZlN6ttfOK" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="4TZlN6ttfOL" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="4TZlN6tt4a4" role="3cqZAp" />
                <node concept="lc7rE" id="4TZlN6ttiwE" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6ttjOL" role="lcghm">
                    <property role="lacIc" value=") DO NOTHING\n\t\t RETURNING " />
                  </node>
                </node>
                <node concept="3cpWs8" id="4TZlN6ttl8m" role="3cqZAp">
                  <node concept="3cpWsn" id="4TZlN6ttl8l" role="3cpWs9">
                    <property role="TrG5h" value="retIdx" />
                    <node concept="10Oyi0" id="4TZlN6ttl8n" role="1tU5fm" />
                    <node concept="3cmrfG" id="4TZlN6ttl8o" role="33vP2m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4TZlN6tto$e" role="3cqZAp">
                  <node concept="2OqwBi" id="4TZlN6ttu7N" role="3clFbG">
                    <node concept="2OqwBi" id="4TZlN6ttpHW" role="2Oq$k0">
                      <node concept="2GrUjf" id="4TZlN6tto$c" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="4TZlN6trCXj" resolve="schema" />
                      </node>
                      <node concept="3Tsc0h" id="4TZlN6tts4o" role="2OqNvi">
                        <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                      </node>
                    </node>
                    <node concept="2es0OD" id="4TZlN6tt$Ac" role="2OqNvi">
                      <node concept="1bVj0M" id="4TZlN6tt$Ae" role="23t8la">
                        <node concept="3clFbS" id="4TZlN6tt$Af" role="1bW5cS">
                          <node concept="3clFbJ" id="4TZlN6tt$L6" role="3cqZAp">
                            <node concept="3clFbS" id="4TZlN6tt$L8" role="3clFbx">
                              <node concept="lc7rE" id="4TZlN6tt_TQ" role="3cqZAp">
                                <node concept="la8eA" id="4TZlN6tt_Wt" role="lcghm">
                                  <property role="lacIc" value=", " />
                                </node>
                              </node>
                            </node>
                            <node concept="3eOSWO" id="4TZlN6tt_H2" role="3clFbw">
                              <node concept="3cmrfG" id="4TZlN6tt_H6" role="3uHU7w">
                                <property role="3cmrfH" value="0" />
                              </node>
                              <node concept="37vLTw" id="4TZlN6tt$NL" role="3uHU7B">
                                <ref role="3cqZAo" node="4TZlN6ttl8l" resolve="retIdx" />
                              </node>
                            </node>
                          </node>
                          <node concept="Jncv_" id="4TZlN6ttA44" role="3cqZAp">
                            <ref role="JncvD" to="b1ln:6Rk79gbjbPd" resolve="FieldRefrence" />
                            <node concept="37vLTw" id="4TZlN6ttA8Q" role="JncvB">
                              <ref role="3cqZAo" node="4TZlN6tt$Ag" resolve="it" />
                            </node>
                            <node concept="3clFbS" id="4TZlN6ttA48" role="Jncv$">
                              <node concept="lc7rE" id="4TZlN6ttAh5" role="3cqZAp">
                                <node concept="l9hG8" id="4TZlN6ttAjQ" role="lcghm">
                                  <node concept="2OqwBi" id="4TZlN6ttA$l" role="lb14g">
                                    <node concept="Jnkvi" id="4TZlN6ttAmI" role="2Oq$k0">
                                      <ref role="1M0zk5" node="4TZlN6ttA4a" resolve="fr" />
                                    </node>
                                    <node concept="3TrcHB" id="4TZlN6ttB3U" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="JncvC" id="4TZlN6ttA4a" role="JncvA">
                              <property role="TrG5h" value="fr" />
                              <node concept="2jxLKc" id="4TZlN6ttA4b" role="1tU5fm" />
                            </node>
                          </node>
                          <node concept="Jncv_" id="4TZlN6ttBje" role="3cqZAp">
                            <ref role="JncvD" to="b1ln:6Rk79gbjazd" resolve="Field" />
                            <node concept="37vLTw" id="4TZlN6ttBm_" role="JncvB">
                              <ref role="3cqZAo" node="4TZlN6tt$Ag" resolve="it" />
                            </node>
                            <node concept="3clFbS" id="4TZlN6ttBji" role="Jncv$">
                              <node concept="lc7rE" id="4TZlN6ttBwk" role="3cqZAp">
                                <node concept="l9hG8" id="4TZlN6ttBO0" role="lcghm">
                                  <node concept="2OqwBi" id="4TZlN6ttC3C" role="lb14g">
                                    <node concept="Jnkvi" id="4TZlN6ttBRr" role="2Oq$k0">
                                      <ref role="1M0zk5" node="4TZlN6ttBjk" resolve="f" />
                                    </node>
                                    <node concept="3TrcHB" id="4TZlN6ttCjM" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="JncvC" id="4TZlN6ttBjk" role="JncvA">
                              <property role="TrG5h" value="f" />
                              <node concept="2jxLKc" id="4TZlN6ttBjl" role="1tU5fm" />
                            </node>
                          </node>
                          <node concept="3clFbF" id="4TZlN6ttF25" role="3cqZAp">
                            <node concept="3uNrnE" id="4TZlN6ttFV4" role="3clFbG">
                              <node concept="37vLTw" id="4TZlN6ttFV6" role="2$L3a6">
                                <ref role="3cqZAo" node="4TZlN6ttl8l" resolve="retIdx" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="4TZlN6tt$Ag" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="4TZlN6tt$Ah" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="4TZlN6ttG6r" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6ttHE3" role="lcghm">
                    <property role="lacIc" value="`,\n" />
                  </node>
                </node>
                <node concept="3clFbF" id="4TZlN6ttHJh" role="3cqZAp">
                  <node concept="2OqwBi" id="4TZlN6ttSXR" role="3clFbG">
                    <node concept="2OqwBi" id="4TZlN6ttNRW" role="2Oq$k0">
                      <node concept="2OqwBi" id="4TZlN6ttJyq" role="2Oq$k0">
                        <node concept="2GrUjf" id="4TZlN6ttHJf" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="4TZlN6trCXj" resolve="schema" />
                        </node>
                        <node concept="3Tsc0h" id="4TZlN6ttLOw" role="2OqNvi">
                          <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                        </node>
                      </node>
                      <node concept="v3k3i" id="4TZlN6ttSLi" role="2OqNvi">
                        <node concept="chp4Y" id="4TZlN6ttSMQ" role="v3oSu">
                          <ref role="cht4Q" to="b1ln:6Rk79gbjbPd" resolve="FieldRefrence" />
                        </node>
                      </node>
                    </node>
                    <node concept="2es0OD" id="4TZlN6ttVCI" role="2OqNvi">
                      <node concept="1bVj0M" id="4TZlN6ttVCK" role="23t8la">
                        <node concept="3clFbS" id="4TZlN6ttVCL" role="1bW5cS">
                          <node concept="lc7rE" id="4TZlN6ttVRb" role="3cqZAp">
                            <node concept="la8eA" id="4TZlN6ttVUm" role="lcghm">
                              <property role="lacIc" value="\t\t" />
                            </node>
                            <node concept="l9hG8" id="4TZlN6ttWd7" role="lcghm">
                              <node concept="2OqwBi" id="4TZlN6ttWxc" role="lb14g">
                                <node concept="37vLTw" id="4TZlN6ttWgn" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4TZlN6ttVCM" resolve="it" />
                                </node>
                                <node concept="3TrcHB" id="4TZlN6ttYof" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                            <node concept="la8eA" id="4TZlN6ttW3K" role="lcghm">
                              <property role="lacIc" value=",\n" />
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="4TZlN6ttVCM" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="4TZlN6ttVCN" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="4TZlN6ttY$P" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6tu0ha" role="lcghm">
                    <property role="lacIc" value="\t).Scan(" />
                  </node>
                </node>
                <node concept="3cpWs8" id="4TZlN6tu0iD" role="3cqZAp">
                  <node concept="3cpWsn" id="4TZlN6tu0iG" role="3cpWs9">
                    <property role="TrG5h" value="scanIdx" />
                    <node concept="10Oyi0" id="4TZlN6tu0iB" role="1tU5fm" />
                    <node concept="3cmrfG" id="4TZlN6tu2C0" role="33vP2m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4TZlN6tu2CU" role="3cqZAp">
                  <node concept="2OqwBi" id="4TZlN6tu8fp" role="3clFbG">
                    <node concept="2OqwBi" id="4TZlN6tu49q" role="2Oq$k0">
                      <node concept="2GrUjf" id="4TZlN6tu2CS" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="4TZlN6trCXj" resolve="schema" />
                      </node>
                      <node concept="3Tsc0h" id="4TZlN6tu63h" role="2OqNvi">
                        <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                      </node>
                    </node>
                    <node concept="2es0OD" id="4TZlN6tudHz" role="2OqNvi">
                      <node concept="1bVj0M" id="4TZlN6tudH_" role="23t8la">
                        <node concept="3clFbS" id="4TZlN6tudHA" role="1bW5cS">
                          <node concept="3clFbH" id="4TZlN6tudK6" role="3cqZAp" />
                          <node concept="3clFbJ" id="4TZlN6tudPe" role="3cqZAp">
                            <node concept="3clFbS" id="4TZlN6tudPg" role="3clFbx">
                              <node concept="Jncv_" id="4TZlN6tuny5" role="3cqZAp">
                                <ref role="JncvD" to="b1ln:6Rk79gbjazd" resolve="Field" />
                                <node concept="37vLTw" id="4TZlN6tun$V" role="JncvB">
                                  <ref role="3cqZAo" node="4TZlN6tudHB" resolve="it" />
                                </node>
                                <node concept="3clFbS" id="4TZlN6tuny9" role="Jncv$">
                                  <node concept="lc7rE" id="4TZlN6tunJn" role="3cqZAp">
                                    <node concept="la8eA" id="4TZlN6tunMb" role="lcghm">
                                      <property role="lacIc" value="&amp;ur." />
                                    </node>
                                    <node concept="l9hG8" id="4TZlN6tunTU" role="lcghm">
                                      <node concept="2OqwBi" id="4TZlN6tuo8x" role="lb14g">
                                        <node concept="Jnkvi" id="4TZlN6tunWP" role="2Oq$k0">
                                          <ref role="1M0zk5" node="4TZlN6tunyb" resolve="f" />
                                        </node>
                                        <node concept="2qgKlT" id="4TZlN6tuoxE" role="2OqNvi">
                                          <ref role="37wK5l" to="h9pt:4TZlN6thmic" resolve="pascalName" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="JncvC" id="4TZlN6tunyb" role="JncvA">
                                  <property role="TrG5h" value="f" />
                                  <node concept="2jxLKc" id="4TZlN6tunyc" role="1tU5fm" />
                                </node>
                              </node>
                              <node concept="Jncv_" id="4TZlN6tuoOA" role="3cqZAp">
                                <ref role="JncvD" to="b1ln:6Rk79gbjbPd" resolve="FieldRefrence" />
                                <node concept="37vLTw" id="4TZlN6tuoS5" role="JncvB">
                                  <ref role="3cqZAo" node="4TZlN6tudHB" resolve="it" />
                                </node>
                                <node concept="3clFbS" id="4TZlN6tuoOE" role="Jncv$">
                                  <node concept="lc7rE" id="4TZlN6tup2c" role="3cqZAp">
                                    <node concept="la8eA" id="4TZlN6tup2d" role="lcghm">
                                      <property role="lacIc" value="&amp;ur." />
                                    </node>
                                    <node concept="l9hG8" id="4TZlN6tup2e" role="lcghm">
                                      <node concept="2OqwBi" id="4TZlN6tup2f" role="lb14g">
                                        <node concept="Jnkvi" id="4TZlN6tup2g" role="2Oq$k0">
                                          <ref role="1M0zk5" node="4TZlN6tuoOG" resolve="f" />
                                        </node>
                                        <node concept="2qgKlT" id="4TZlN6tup2h" role="2OqNvi">
                                          <ref role="37wK5l" to="h9pt:4RkLmywXs7j" resolve="pascalName" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="JncvC" id="4TZlN6tuoOG" role="JncvA">
                                  <property role="TrG5h" value="f" />
                                  <node concept="2jxLKc" id="4TZlN6tuoOH" role="1tU5fm" />
                                </node>
                              </node>
                              <node concept="3clFbF" id="4TZlN6tuml3" role="3cqZAp">
                                <node concept="3uNrnE" id="4TZlN6tund5" role="3clFbG">
                                  <node concept="37vLTw" id="4TZlN6tund7" role="2$L3a6">
                                    <ref role="3cqZAo" node="4TZlN6tu0iG" resolve="scanIdx" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3eOSWO" id="4TZlN6tueLe" role="3clFbw">
                              <node concept="3cmrfG" id="4TZlN6tueLi" role="3uHU7w">
                                <property role="3cmrfH" value="0" />
                              </node>
                              <node concept="37vLTw" id="4TZlN6tudRV" role="3uHU7B">
                                <ref role="3cqZAo" node="4TZlN6tu0iG" resolve="scanIdx" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="4TZlN6tudHB" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="4TZlN6tudHC" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="4TZlN6tupXY" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6tuq1U" role="lcghm">
                    <property role="lacIc" value=")\n\treturn ur, err\n}\n\n" />
                  </node>
                </node>
                <node concept="3clFbH" id="4TZlN6tt4ac" role="3cqZAp" />
                <node concept="3SKdUt" id="4TZlN6turK8" role="3cqZAp">
                  <node concept="1PaTwC" id="4TZlN6turK9" role="1aUNEU">
                    <node concept="3oM_SD" id="4TZlN6turKa" role="1PaTwD">
                      <property role="3oM_SC" value="" />
                    </node>
                    <node concept="3oM_SD" id="4TZlN6turKe" role="1PaTwD">
                      <property role="3oM_SC" value="Remove" />
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="4TZlN6tus88" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6tusCJ" role="lcghm">
                    <property role="lacIc" value="func (r *" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tusDB" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tusEw" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6trUjp" resolve="rn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tusGf" role="lcghm">
                    <property role="lacIc" value=") Remove(" />
                  </node>
                </node>
                <node concept="3cpWs8" id="4TZlN6tusJj" role="3cqZAp">
                  <node concept="3cpWsn" id="4TZlN6tusJm" role="3cpWs9">
                    <property role="TrG5h" value="rmInd" />
                    <node concept="10Oyi0" id="4TZlN6tusJh" role="1tU5fm" />
                    <node concept="3cmrfG" id="4TZlN6tutfD" role="33vP2m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4TZlN6tutCL" role="3cqZAp">
                  <node concept="2OqwBi" id="4TZlN6tutCM" role="3clFbG">
                    <node concept="2OqwBi" id="4TZlN6tutCN" role="2Oq$k0">
                      <node concept="2OqwBi" id="4TZlN6tutCO" role="2Oq$k0">
                        <node concept="2GrUjf" id="4TZlN6tutCP" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="4TZlN6trCXj" resolve="schema" />
                        </node>
                        <node concept="3Tsc0h" id="4TZlN6tutCQ" role="2OqNvi">
                          <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                        </node>
                      </node>
                      <node concept="v3k3i" id="4TZlN6tutCR" role="2OqNvi">
                        <node concept="chp4Y" id="4TZlN6tutCS" role="v3oSu">
                          <ref role="cht4Q" to="b1ln:6Rk79gbjbPd" resolve="FieldRefrence" />
                        </node>
                      </node>
                    </node>
                    <node concept="2es0OD" id="4TZlN6tutCT" role="2OqNvi">
                      <node concept="1bVj0M" id="4TZlN6tutCU" role="23t8la">
                        <node concept="3clFbS" id="4TZlN6tutCV" role="1bW5cS">
                          <node concept="3clFbJ" id="4TZlN6tuK12" role="3cqZAp">
                            <node concept="3clFbS" id="4TZlN6tuK14" role="3clFbx">
                              <node concept="lc7rE" id="4TZlN6tuLyM" role="3cqZAp">
                                <node concept="la8eA" id="4TZlN6tuLDM" role="lcghm">
                                  <property role="lacIc" value=", " />
                                </node>
                              </node>
                            </node>
                            <node concept="3eOSWO" id="4TZlN6tuL60" role="3clFbw">
                              <node concept="3cmrfG" id="4TZlN6tuL64" role="3uHU7w">
                                <property role="3cmrfH" value="0" />
                              </node>
                              <node concept="37vLTw" id="4TZlN6tuK86" role="3uHU7B">
                                <ref role="3cqZAo" node="4TZlN6tusJm" resolve="rmInd" />
                              </node>
                            </node>
                          </node>
                          <node concept="lc7rE" id="4TZlN6tutCW" role="3cqZAp">
                            <node concept="l9hG8" id="4TZlN6tutCY" role="lcghm">
                              <node concept="2OqwBi" id="4TZlN6tutCZ" role="lb14g">
                                <node concept="37vLTw" id="4TZlN6tutD0" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4TZlN6tutD3" resolve="it" />
                                </node>
                                <node concept="3TrcHB" id="4TZlN6tutD1" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                            <node concept="la8eA" id="4TZlN6tutD2" role="lcghm">
                              <property role="lacIc" value=" int64" />
                            </node>
                          </node>
                          <node concept="3clFbF" id="4TZlN6tu$Pk" role="3cqZAp">
                            <node concept="3uNrnE" id="4TZlN6tu_Wr" role="3clFbG">
                              <node concept="37vLTw" id="4TZlN6tu_Wt" role="2$L3a6">
                                <ref role="3cqZAo" node="4TZlN6tusJm" resolve="rmInd" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="4TZlN6tutD3" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="4TZlN6tutD4" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="4TZlN6tuDen" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6tuE5g" role="lcghm">
                    <property role="lacIc" value=") error {\n\t_, err := r.db.Exec(`DELETE FROM " />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tuEbu" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tuEcp" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6trUjt" resolve="tn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tuE98" role="lcghm">
                    <property role="lacIc" value=" WHERE " />
                  </node>
                </node>
                <node concept="3cpWs8" id="4TZlN6tuEUr" role="3cqZAp">
                  <node concept="3cpWsn" id="4TZlN6tuEUq" role="3cpWs9">
                    <property role="TrG5h" value="wIdx" />
                    <node concept="10Oyi0" id="4TZlN6tuEUs" role="1tU5fm" />
                    <node concept="3cmrfG" id="4TZlN6tuEUt" role="33vP2m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4TZlN6tuFir" role="3cqZAp">
                  <node concept="2OqwBi" id="4TZlN6tuFis" role="3clFbG">
                    <node concept="2OqwBi" id="4TZlN6tuFit" role="2Oq$k0">
                      <node concept="2OqwBi" id="4TZlN6tuFiu" role="2Oq$k0">
                        <node concept="2GrUjf" id="4TZlN6tuFiv" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="4TZlN6trCXj" resolve="schema" />
                        </node>
                        <node concept="3Tsc0h" id="4TZlN6tuFiw" role="2OqNvi">
                          <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                        </node>
                      </node>
                      <node concept="v3k3i" id="4TZlN6tuFix" role="2OqNvi">
                        <node concept="chp4Y" id="4TZlN6tuFiy" role="v3oSu">
                          <ref role="cht4Q" to="b1ln:6Rk79gbjbPd" resolve="FieldRefrence" />
                        </node>
                      </node>
                    </node>
                    <node concept="2es0OD" id="4TZlN6tuFiz" role="2OqNvi">
                      <node concept="1bVj0M" id="4TZlN6tuFi$" role="23t8la">
                        <node concept="3clFbS" id="4TZlN6tuFi_" role="1bW5cS">
                          <node concept="3clFbJ" id="4TZlN6tuMuK" role="3cqZAp">
                            <node concept="3clFbS" id="4TZlN6tuMuM" role="3clFbx">
                              <node concept="lc7rE" id="4TZlN6tuNJ7" role="3cqZAp">
                                <node concept="la8eA" id="4TZlN6tuNN0" role="lcghm">
                                  <property role="lacIc" value=" AND " />
                                </node>
                              </node>
                            </node>
                            <node concept="3eOSWO" id="4TZlN6tuNEY" role="3clFbw">
                              <node concept="3cmrfG" id="4TZlN6tuNF2" role="3uHU7w">
                                <property role="3cmrfH" value="0" />
                              </node>
                              <node concept="37vLTw" id="4TZlN6tuMKr" role="3uHU7B">
                                <ref role="3cqZAo" node="4TZlN6tuEUq" resolve="wIdx" />
                              </node>
                            </node>
                          </node>
                          <node concept="lc7rE" id="4TZlN6tuFiA" role="3cqZAp">
                            <node concept="l9hG8" id="4TZlN6tuFiB" role="lcghm">
                              <node concept="2OqwBi" id="4TZlN6tuFiC" role="lb14g">
                                <node concept="37vLTw" id="4TZlN6tuFiD" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4TZlN6tuFiJ" resolve="it" />
                                </node>
                                <node concept="3TrcHB" id="4TZlN6tuFiE" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                            <node concept="la8eA" id="4TZlN6tuFiF" role="lcghm">
                              <property role="lacIc" value=" int64" />
                            </node>
                          </node>
                          <node concept="3clFbF" id="4TZlN6tuFiG" role="3cqZAp">
                            <node concept="3uNrnE" id="4TZlN6tuFiH" role="3clFbG">
                              <node concept="37vLTw" id="4TZlN6tuJFL" role="2$L3a6">
                                <ref role="3cqZAo" node="4TZlN6tuEUq" resolve="wIdx" />
                              </node>
                            </node>
                          </node>
                          <node concept="lc7rE" id="4TZlN6tuOnC" role="3cqZAp">
                            <node concept="l9hG8" id="4TZlN6tuOq_" role="lcghm">
                              <node concept="2OqwBi" id="4TZlN6tuONe" role="lb14g">
                                <node concept="37vLTw" id="4TZlN6tuOut" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4TZlN6tuFiJ" resolve="it" />
                                </node>
                                <node concept="3TrcHB" id="4TZlN6tuQEU" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                            <node concept="la8eA" id="4TZlN6tuRaz" role="lcghm">
                              <property role="lacIc" value=" = $" />
                            </node>
                            <node concept="l9hG8" id="4TZlN6tuRED" role="lcghm">
                              <node concept="3cpWs3" id="4TZlN6tuSZ6" role="lb14g">
                                <node concept="Xl_RD" id="4TZlN6tuSZa" role="3uHU7w">
                                  <property role="Xl_RC" value="" />
                                </node>
                                <node concept="37vLTw" id="4TZlN6tuRIV" role="3uHU7B">
                                  <ref role="3cqZAo" node="4TZlN6tuEUq" resolve="wIdx" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="4TZlN6tuFiJ" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="4TZlN6tuFiK" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="4TZlN6tuTJh" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6tuUaw" role="lcghm">
                    <property role="lacIc" value="`" />
                  </node>
                </node>
                <node concept="3clFbF" id="4TZlN6tuV_x" role="3cqZAp">
                  <node concept="2OqwBi" id="4TZlN6tv6fi" role="3clFbG">
                    <node concept="2OqwBi" id="4TZlN6tv0UU" role="2Oq$k0">
                      <node concept="2OqwBi" id="4TZlN6tuWDk" role="2Oq$k0">
                        <node concept="2GrUjf" id="4TZlN6tuV_v" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="4TZlN6trCXj" resolve="schema" />
                        </node>
                        <node concept="3Tsc0h" id="4TZlN6tuYRq" role="2OqNvi">
                          <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                        </node>
                      </node>
                      <node concept="v3k3i" id="4TZlN6tv62_" role="2OqNvi">
                        <node concept="chp4Y" id="4TZlN6tv64d" role="v3oSu">
                          <ref role="cht4Q" to="b1ln:6Rk79gbjbPd" resolve="FieldRefrence" />
                        </node>
                      </node>
                    </node>
                    <node concept="2es0OD" id="4TZlN6tva$O" role="2OqNvi">
                      <node concept="1bVj0M" id="4TZlN6tva$Q" role="23t8la">
                        <node concept="3clFbS" id="4TZlN6tva$R" role="1bW5cS">
                          <node concept="3clFbH" id="4TZlN6tvaAY" role="3cqZAp" />
                          <node concept="lc7rE" id="4TZlN6tvaHh" role="3cqZAp">
                            <node concept="la8eA" id="4TZlN6tvaKx" role="lcghm">
                              <property role="lacIc" value=", " />
                            </node>
                            <node concept="l9hG8" id="4TZlN6tvaTl" role="lcghm">
                              <node concept="2OqwBi" id="4TZlN6tvbcg" role="lb14g">
                                <node concept="37vLTw" id="4TZlN6tvaZt" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4TZlN6tva$S" resolve="it" />
                                </node>
                                <node concept="3TrcHB" id="4TZlN6tvd3n" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="gl6BB" id="4TZlN6tva$S" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="4TZlN6tva$T" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="4TZlN6tuUc3" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6tuV7D" role="lcghm">
                    <property role="lacIc" value=")\n\treturn err\n}\n\n" />
                  </node>
                </node>
                <node concept="3clFbH" id="4TZlN6tvdb2" role="3cqZAp" />
                <node concept="3clFbH" id="4TZlN6tvdYq" role="3cqZAp" />
                <node concept="3SKdUt" id="4TZlN6tvesp" role="3cqZAp">
                  <node concept="1PaTwC" id="4TZlN6tvesq" role="1aUNEU">
                    <node concept="3oM_SD" id="4TZlN6tvess" role="1PaTwD">
                      <property role="3oM_SC" value="Cross-queries" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="4TZlN6tveso" role="3cqZAp" />
                <node concept="3clFbF" id="4TZlN6tvffR" role="3cqZAp">
                  <node concept="2OqwBi" id="4TZlN6tvpNU" role="3clFbG">
                    <node concept="2OqwBi" id="4TZlN6tvkgD" role="2Oq$k0">
                      <node concept="2OqwBi" id="4TZlN6tvfQ5" role="2Oq$k0">
                        <node concept="2GrUjf" id="4TZlN6tvffP" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="4TZlN6trCXj" resolve="schema" />
                        </node>
                        <node concept="3Tsc0h" id="4TZlN6tvid9" role="2OqNvi">
                          <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                        </node>
                      </node>
                      <node concept="v3k3i" id="4TZlN6tvpBf" role="2OqNvi">
                        <node concept="chp4Y" id="4TZlN6tvpCQ" role="v3oSu">
                          <ref role="cht4Q" to="b1ln:6Rk79gbjbPd" resolve="FieldRefrence" />
                        </node>
                      </node>
                    </node>
                    <node concept="2es0OD" id="4TZlN6tvrSp" role="2OqNvi">
                      <node concept="1bVj0M" id="4TZlN6tvrSr" role="23t8la">
                        <node concept="3clFbS" id="4TZlN6tvrSs" role="1bW5cS">
                          <node concept="3clFbH" id="4TZlN6tvrUz" role="3cqZAp" />
                          <node concept="3cpWs8" id="4TZlN6tvu3j" role="3cqZAp">
                            <node concept="3cpWsn" id="4TZlN6tvu3k" role="3cpWs9">
                              <property role="TrG5h" value="frA" />
                              <node concept="3Tqbb2" id="4TZlN6tvtZG" role="1tU5fm">
                                <ref role="ehGHo" to="b1ln:6Rk79gbjbPd" resolve="FieldRefrence" />
                              </node>
                              <node concept="37vLTw" id="4TZlN6tvu3l" role="33vP2m">
                                <ref role="3cqZAo" node="4TZlN6tvrSt" resolve="it" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="4TZlN6tvuBU" role="3cqZAp">
                            <node concept="2OqwBi" id="4TZlN6tvuBV" role="3clFbG">
                              <node concept="2OqwBi" id="4TZlN6tvuBW" role="2Oq$k0">
                                <node concept="2OqwBi" id="4TZlN6tvuBX" role="2Oq$k0">
                                  <node concept="2GrUjf" id="4TZlN6tvuBY" role="2Oq$k0">
                                    <ref role="2Gs0qQ" node="4TZlN6trCXj" resolve="schema" />
                                  </node>
                                  <node concept="3Tsc0h" id="4TZlN6tvuBZ" role="2OqNvi">
                                    <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                                  </node>
                                </node>
                                <node concept="v3k3i" id="4TZlN6tvuC0" role="2OqNvi">
                                  <node concept="chp4Y" id="4TZlN6tvuC1" role="v3oSu">
                                    <ref role="cht4Q" to="b1ln:6Rk79gbjbPd" resolve="FieldRefrence" />
                                  </node>
                                </node>
                              </node>
                              <node concept="2es0OD" id="4TZlN6tvuC2" role="2OqNvi">
                                <node concept="1bVj0M" id="4TZlN6tvuC3" role="23t8la">
                                  <node concept="3clFbS" id="4TZlN6tvuC4" role="1bW5cS">
                                    <node concept="3cpWs8" id="4TZlN6tvuC6" role="3cqZAp">
                                      <node concept="3cpWsn" id="4TZlN6tvuC7" role="3cpWs9">
                                        <property role="TrG5h" value="frB" />
                                        <node concept="3Tqbb2" id="4TZlN6tvuC8" role="1tU5fm">
                                          <ref role="ehGHo" to="b1ln:6Rk79gbjbPd" resolve="FieldRefrence" />
                                        </node>
                                        <node concept="37vLTw" id="4TZlN6tvuC9" role="33vP2m">
                                          <ref role="3cqZAo" node="4TZlN6tvuCd" resolve="it" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3cpWs8" id="4TZlN6tv$3H" role="3cqZAp">
                                      <node concept="3cpWsn" id="4TZlN6tv$3K" role="3cpWs9">
                                        <property role="TrG5h" value="ts" />
                                        <node concept="17QB3L" id="4TZlN6tv$3F" role="1tU5fm" />
                                        <node concept="2OqwBi" id="4TZlN6tv_u7" role="33vP2m">
                                          <node concept="2OqwBi" id="4TZlN6tv$Le" role="2Oq$k0">
                                            <node concept="37vLTw" id="4TZlN6tv$ri" role="2Oq$k0">
                                              <ref role="3cqZAo" node="4TZlN6tvuC7" resolve="frB" />
                                            </node>
                                            <node concept="3TrEf2" id="4TZlN6tv_cV" role="2OqNvi">
                                              <ref role="3Tt5mk" to="b1ln:6Rk79gbjbPh" resolve="target_schema" />
                                            </node>
                                          </node>
                                          <node concept="2qgKlT" id="4TZlN6tv_Xc" role="2OqNvi">
                                            <ref role="37wK5l" to="h9pt:4RkLmywWSH4" resolve="structName" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3cpWs8" id="4TZlN6tvA5C" role="3cqZAp">
                                      <node concept="3cpWsn" id="4TZlN6tvA5D" role="3cpWs9">
                                        <property role="TrG5h" value="tt" />
                                        <node concept="17QB3L" id="4TZlN6tvA5E" role="1tU5fm" />
                                        <node concept="2OqwBi" id="4TZlN6tvA5F" role="33vP2m">
                                          <node concept="2OqwBi" id="4TZlN6tvA5G" role="2Oq$k0">
                                            <node concept="37vLTw" id="4TZlN6tvA5H" role="2Oq$k0">
                                              <ref role="3cqZAo" node="4TZlN6tvuC7" resolve="frB" />
                                            </node>
                                            <node concept="3TrEf2" id="4TZlN6tvA5I" role="2OqNvi">
                                              <ref role="3Tt5mk" to="b1ln:6Rk79gbjbPh" resolve="target_schema" />
                                            </node>
                                          </node>
                                          <node concept="3TrcHB" id="4TZlN6tvAKI" role="2OqNvi">
                                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="lc7rE" id="4TZlN6tvARo" role="3cqZAp">
                                      <node concept="la8eA" id="4TZlN6tvAY3" role="lcghm">
                                        <property role="lacIc" value="func (r *" />
                                      </node>
                                      <node concept="l9hG8" id="4TZlN6tvJ2K" role="lcghm">
                                        <node concept="37vLTw" id="4TZlN6tvJaX" role="lb14g">
                                          <ref role="3cqZAo" node="4TZlN6trUjp" resolve="rn" />
                                        </node>
                                      </node>
                                      <node concept="la8eA" id="4TZlN6tvIqs" role="lcghm">
                                        <property role="lacIc" value=") Get" />
                                      </node>
                                      <node concept="l9hG8" id="4TZlN6tvHix" role="lcghm">
                                        <node concept="37vLTw" id="4TZlN6tvHqs" role="lb14g">
                                          <ref role="3cqZAo" node="4TZlN6tv$3K" resolve="ts" />
                                        </node>
                                      </node>
                                      <node concept="la8eA" id="4TZlN6tvGzN" role="lcghm">
                                        <property role="lacIc" value="sBy" />
                                      </node>
                                      <node concept="l9hG8" id="4TZlN6tvEtt" role="lcghm">
                                        <node concept="2OqwBi" id="4TZlN6tvF_Q" role="lb14g">
                                          <node concept="2OqwBi" id="4TZlN6tvEQP" role="2Oq$k0">
                                            <node concept="37vLTw" id="4TZlN6tvE$Q" role="2Oq$k0">
                                              <ref role="3cqZAo" node="4TZlN6tvu3k" resolve="frA" />
                                            </node>
                                            <node concept="3TrEf2" id="4TZlN6tvFlb" role="2OqNvi">
                                              <ref role="3Tt5mk" to="b1ln:6Rk79gbjbPh" resolve="target_schema" />
                                            </node>
                                          </node>
                                          <node concept="2qgKlT" id="4TZlN6tvG2I" role="2OqNvi">
                                            <ref role="37wK5l" to="h9pt:4RkLmywWSH4" resolve="structName" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="la8eA" id="4TZlN6tvE0s" role="lcghm">
                                        <property role="lacIc" value="(" />
                                      </node>
                                      <node concept="l9hG8" id="4TZlN6tvCLH" role="lcghm">
                                        <node concept="2OqwBi" id="4TZlN6tvDan" role="lb14g">
                                          <node concept="37vLTw" id="4TZlN6tvCSJ" role="2Oq$k0">
                                            <ref role="3cqZAo" node="4TZlN6tvu3k" resolve="frA" />
                                          </node>
                                          <node concept="3TrcHB" id="4TZlN6tvDCm" role="2OqNvi">
                                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="la8eA" id="4TZlN6tvCm8" role="lcghm">
                                        <property role="lacIc" value=" int64) ([]" />
                                      </node>
                                      <node concept="l9hG8" id="4TZlN6tvBMX" role="lcghm">
                                        <node concept="37vLTw" id="4TZlN6tvBTH" role="lb14g">
                                          <ref role="3cqZAo" node="4TZlN6tv$3K" resolve="ts" />
                                        </node>
                                      </node>
                                      <node concept="la8eA" id="4TZlN6tvBow" role="lcghm">
                                        <property role="lacIc" value=", error) {\n\trows, err := r.db.Query(\n\t\t`SELECT t.id" />
                                      </node>
                                    </node>
                                    <node concept="3clFbF" id="4TZlN6tvJzr" role="3cqZAp">
                                      <node concept="2OqwBi" id="4TZlN6tvRwq" role="3clFbG">
                                        <node concept="2OqwBi" id="4TZlN6tvNog" role="2Oq$k0">
                                          <node concept="2OqwBi" id="4TZlN6tvKRu" role="2Oq$k0">
                                            <node concept="2OqwBi" id="4TZlN6tvJY1" role="2Oq$k0">
                                              <node concept="37vLTw" id="4TZlN6tvJzp" role="2Oq$k0">
                                                <ref role="3cqZAo" node="4TZlN6tvuC7" resolve="frB" />
                                              </node>
                                              <node concept="3TrEf2" id="4TZlN6tvKsM" role="2OqNvi">
                                                <ref role="3Tt5mk" to="b1ln:6Rk79gbjbPh" resolve="target_schema" />
                                              </node>
                                            </node>
                                            <node concept="3Tsc0h" id="4TZlN6tvLl1" role="2OqNvi">
                                              <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                                            </node>
                                          </node>
                                          <node concept="v3k3i" id="4TZlN6tvR3z" role="2OqNvi">
                                            <node concept="chp4Y" id="4TZlN6tvRcz" role="v3oSu">
                                              <ref role="cht4Q" to="b1ln:6Rk79gbjazd" resolve="Field" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="2es0OD" id="4TZlN6tvSo3" role="2OqNvi">
                                          <node concept="1bVj0M" id="4TZlN6tvSo5" role="23t8la">
                                            <node concept="3clFbS" id="4TZlN6tvSo6" role="1bW5cS">
                                              <node concept="lc7rE" id="4TZlN6tvSZA" role="3cqZAp">
                                                <node concept="la8eA" id="4TZlN6tvTaj" role="lcghm">
                                                  <property role="lacIc" value=", t." />
                                                </node>
                                                <node concept="l9hG8" id="4TZlN6tvTWy" role="lcghm">
                                                  <node concept="2OqwBi" id="4TZlN6tvUVd" role="lb14g">
                                                    <node concept="37vLTw" id="4TZlN6tvU7l" role="2Oq$k0">
                                                      <ref role="3cqZAo" node="4TZlN6tvSo7" resolve="it" />
                                                    </node>
                                                    <node concept="3TrcHB" id="4TZlN6tvXHg" role="2OqNvi">
                                                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="gl6BB" id="4TZlN6tvSo7" role="1bW2Oz">
                                              <property role="TrG5h" value="it" />
                                              <node concept="2jxLKc" id="4TZlN6tvSo8" role="1tU5fm" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="lc7rE" id="4TZlN6tvY$z" role="3cqZAp">
                                      <node concept="la8eA" id="4TZlN6tvYJ$" role="lcghm">
                                        <property role="lacIc" value="\n\t\t FROM " />
                                      </node>
                                      <node concept="l9hG8" id="4TZlN6tvYUC" role="lcghm">
                                        <node concept="37vLTw" id="4TZlN6tvZ5H" role="lb14g">
                                          <ref role="3cqZAo" node="4TZlN6tvA5D" resolve="tt" />
                                        </node>
                                      </node>
                                      <node concept="la8eA" id="4TZlN6tvZ_S" role="lcghm">
                                        <property role="lacIc" value=" t\n\t\t INNER JOIN " />
                                      </node>
                                      <node concept="l9hG8" id="4TZlN6tvZZ1" role="lcghm">
                                        <node concept="37vLTw" id="4TZlN6tw0ao" role="lb14g">
                                          <ref role="3cqZAo" node="4TZlN6trUjt" resolve="tn" />
                                        </node>
                                      </node>
                                      <node concept="la8eA" id="4TZlN6tw0sB" role="lcghm">
                                        <property role="lacIc" value=" j ON j." />
                                      </node>
                                      <node concept="l9hG8" id="4TZlN6tw0Na" role="lcghm">
                                        <node concept="2OqwBi" id="4TZlN6tw1kv" role="lb14g">
                                          <node concept="37vLTw" id="4TZlN6tw0Yy" role="2Oq$k0">
                                            <ref role="3cqZAo" node="4TZlN6tvuC7" resolve="frB" />
                                          </node>
                                          <node concept="3TrcHB" id="4TZlN6tw27$" role="2OqNvi">
                                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="la8eA" id="4TZlN6tw2jh" role="lcghm">
                                        <property role="lacIc" value=" = t.id\n\t\t WHERE j." />
                                      </node>
                                      <node concept="l9hG8" id="4TZlN6tw2uY" role="lcghm">
                                        <node concept="2OqwBi" id="4TZlN6tw2XZ" role="lb14g">
                                          <node concept="37vLTw" id="4TZlN6tw2C1" role="2Oq$k0">
                                            <ref role="3cqZAo" node="4TZlN6tvu3k" resolve="frA" />
                                          </node>
                                          <node concept="3TrcHB" id="4TZlN6tw3bX" role="2OqNvi">
                                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="la8eA" id="4TZlN6tw3w3" role="lcghm">
                                        <property role="lacIc" value=" = $1\n\t\t ORDER BY t.id`, " />
                                      </node>
                                      <node concept="l9hG8" id="4TZlN6tw45A" role="lcghm">
                                        <node concept="2OqwBi" id="4TZlN6tw4Cn" role="lb14g">
                                          <node concept="37vLTw" id="4TZlN6tw4hG" role="2Oq$k0">
                                            <ref role="3cqZAo" node="4TZlN6tvu3k" resolve="frA" />
                                          </node>
                                          <node concept="3TrcHB" id="4TZlN6tw51I" role="2OqNvi">
                                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="la8eA" id="4TZlN6tw5e9" role="lcghm">
                                        <property role="lacIc" value=",\n\t)\n\tif err != nil {\n\t\treturn nil, err\n\t}\n\tdefer rows.Close()\n\tvar items []" />
                                      </node>
                                      <node concept="l9hG8" id="4TZlN6tw60S" role="lcghm">
                                        <node concept="37vLTw" id="4TZlN6tw6dk" role="lb14g">
                                          <ref role="3cqZAo" node="4TZlN6tv$3K" resolve="ts" />
                                        </node>
                                      </node>
                                      <node concept="la8eA" id="4TZlN6tw6Av" role="lcghm">
                                        <property role="lacIc" value="\n\tfor rows.Next() {\n\t\tvar item " />
                                      </node>
                                      <node concept="l9hG8" id="4TZlN6tw7NR" role="lcghm">
                                        <node concept="37vLTw" id="4TZlN6tw80_" role="lb14g">
                                          <ref role="3cqZAo" node="4TZlN6tv$3K" resolve="ts" />
                                        </node>
                                      </node>
                                      <node concept="la8eA" id="4TZlN6tw8oo" role="lcghm">
                                        <property role="lacIc" value="\n\t\tif err := rows.Scan(&amp;item.ID" />
                                      </node>
                                    </node>
                                    <node concept="3clFbF" id="4TZlN6tw9r8" role="3cqZAp">
                                      <node concept="2OqwBi" id="4TZlN6twl5Y" role="3clFbG">
                                        <node concept="2OqwBi" id="4TZlN6tweFb" role="2Oq$k0">
                                          <node concept="2OqwBi" id="4TZlN6twbMe" role="2Oq$k0">
                                            <node concept="2OqwBi" id="4TZlN6twaxN" role="2Oq$k0">
                                              <node concept="37vLTw" id="4TZlN6tw9r6" role="2Oq$k0">
                                                <ref role="3cqZAo" node="4TZlN6tvuC7" resolve="frB" />
                                              </node>
                                              <node concept="3TrEf2" id="4TZlN6twbix" role="2OqNvi">
                                                <ref role="3Tt5mk" to="b1ln:6Rk79gbjbPh" resolve="target_schema" />
                                              </node>
                                            </node>
                                            <node concept="3Tsc0h" id="4TZlN6twcln" role="2OqNvi">
                                              <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                                            </node>
                                          </node>
                                          <node concept="v3k3i" id="4TZlN6twkwm" role="2OqNvi">
                                            <node concept="chp4Y" id="4TZlN6twkIa" role="v3oSu">
                                              <ref role="cht4Q" to="b1ln:6Rk79gbjazd" resolve="Field" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="2es0OD" id="4TZlN6twlQH" role="2OqNvi">
                                          <node concept="1bVj0M" id="4TZlN6twlQJ" role="23t8la">
                                            <node concept="3clFbS" id="4TZlN6twlQK" role="1bW5cS">
                                              <node concept="lc7rE" id="4TZlN6twmKC" role="3cqZAp">
                                                <node concept="la8eA" id="4TZlN6twmWE" role="lcghm">
                                                  <property role="lacIc" value=", &amp;item." />
                                                </node>
                                                <node concept="l9hG8" id="4TZlN6twnce" role="lcghm">
                                                  <node concept="2OqwBi" id="4TZlN6twnR5" role="lb14g">
                                                    <node concept="37vLTw" id="4TZlN6twnrO" role="2Oq$k0">
                                                      <ref role="3cqZAo" node="4TZlN6twlQL" resolve="it" />
                                                    </node>
                                                    <node concept="2qgKlT" id="4TZlN6twrCM" role="2OqNvi">
                                                      <ref role="37wK5l" to="h9pt:4TZlN6thmic" resolve="pascalName" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="gl6BB" id="4TZlN6twlQL" role="1bW2Oz">
                                              <property role="TrG5h" value="it" />
                                              <node concept="2jxLKc" id="4TZlN6twlQM" role="1tU5fm" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="lc7rE" id="4TZlN6twsS3" role="3cqZAp">
                                      <node concept="la8eA" id="4TZlN6twt7W" role="lcghm">
                                        <property role="lacIc" value="); err != nil {\n\t\t\treturn nil, err\n\t\t}\n\t\titems = append(items, item)\n\t}\n\treturn items, rows.Err()\n}\n\n" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="gl6BB" id="4TZlN6tvuCd" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <node concept="2jxLKc" id="4TZlN6tvuCe" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="4TZlN6tvYex" role="3cqZAp" />
                        </node>
                        <node concept="gl6BB" id="4TZlN6tvrSt" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="4TZlN6tvrSu" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4TZlN6tlWgt" role="3cqZAp" />
        <node concept="3SKdUt" id="4TZlN6twua5" role="3cqZAp">
          <node concept="1PaTwC" id="4TZlN6twua6" role="1aUNEU">
            <node concept="3oM_SD" id="4TZlN6twua8" role="1PaTwD">
              <property role="3oM_SC" value="============================================================" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4TZlN6twua9" role="3cqZAp">
          <node concept="1PaTwC" id="4TZlN6twuaa" role="1aUNEU">
            <node concept="3oM_SD" id="4TZlN6twuac" role="1PaTwD">
              <property role="3oM_SC" value="HTTP" />
            </node>
            <node concept="3oM_SD" id="4TZlN6twuad" role="1PaTwD">
              <property role="3oM_SC" value="Handlers" />
            </node>
            <node concept="3oM_SD" id="4TZlN6twuae" role="1PaTwD">
              <property role="3oM_SC" value="—" />
            </node>
            <node concept="3oM_SD" id="4TZlN6twuaf" role="1PaTwD">
              <property role="3oM_SC" value="regular" />
            </node>
            <node concept="3oM_SD" id="4TZlN6twuag" role="1PaTwD">
              <property role="3oM_SC" value="schemas" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4TZlN6twuah" role="3cqZAp">
          <node concept="1PaTwC" id="4TZlN6twuai" role="1aUNEU">
            <node concept="3oM_SD" id="4TZlN6twuak" role="1PaTwD">
              <property role="3oM_SC" value="============================================================" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4TZlN6twua4" role="3cqZAp" />
        <node concept="3clFbF" id="4TZlN6twxl2" role="3cqZAp">
          <node concept="2OqwBi" id="4TZlN6twMw1" role="3clFbG">
            <node concept="2OqwBi" id="4TZlN6twDKO" role="2Oq$k0">
              <node concept="2OqwBi" id="4TZlN6tw$57" role="2Oq$k0">
                <node concept="37vLTw" id="4TZlN6twxl0" role="2Oq$k0">
                  <ref role="3cqZAo" node="4TZlN6tf6hJ" resolve="models" />
                </node>
                <node concept="3Tsc0h" id="4TZlN6twB1N" role="2OqNvi">
                  <ref role="3TtcxE" to="b1ln:6Rk79gbjaz8" resolve="schemas" />
                </node>
              </node>
              <node concept="3zZkjj" id="4TZlN6twKVg" role="2OqNvi">
                <node concept="1bVj0M" id="4TZlN6twKVi" role="23t8la">
                  <node concept="3clFbS" id="4TZlN6twKVj" role="1bW5cS">
                    <node concept="3clFbF" id="4TZlN6twL2t" role="3cqZAp">
                      <node concept="3fqX7Q" id="4TZlN6twMjs" role="3clFbG">
                        <node concept="2OqwBi" id="4TZlN6twMju" role="3fr31v">
                          <node concept="37vLTw" id="4TZlN6twMjv" role="2Oq$k0">
                            <ref role="3cqZAo" node="4TZlN6twKVk" resolve="it" />
                          </node>
                          <node concept="2qgKlT" id="4TZlN6twMjw" role="2OqNvi">
                            <ref role="37wK5l" to="h9pt:4RkLmywWXpy" resolve="hasReferences" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gl6BB" id="4TZlN6twKVk" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="4TZlN6twKVl" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2es0OD" id="4TZlN6twQlN" role="2OqNvi">
              <node concept="1bVj0M" id="4TZlN6twQlP" role="23t8la">
                <node concept="3clFbS" id="4TZlN6twQlQ" role="1bW5cS">
                  <node concept="3clFbH" id="4TZlN6twQqv" role="3cqZAp" />
                  <node concept="1X3_iC" id="4TZlN6twUWU" role="lGtFl">
                    <property role="3V$3am" value="statement" />
                    <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                    <node concept="3cpWs8" id="4TZlN6twQzK" role="8Wnug">
                      <node concept="3cpWsn" id="4TZlN6twQzJ" role="3cpWs9">
                        <property role="TrG5h" value="sn" />
                        <node concept="17QB3L" id="4TZlN6twUWW" role="1tU5fm" />
                        <node concept="Wc6QR" id="4TZlN6twQzM" role="33vP2m">
                          <property role="10XrrR" value="structName" />
                          <property role="1CJj6V" value="schema" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1X3_iC" id="4TZlN6twURw" role="lGtFl">
                    <property role="3V$3am" value="statement" />
                    <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                    <node concept="3cpWs8" id="4TZlN6twQzO" role="8Wnug">
                      <node concept="3cpWsn" id="4TZlN6twQzN" role="3cpWs9">
                        <property role="TrG5h" value="rn" />
                        <node concept="17QB3L" id="4TZlN6twQCJ" role="1tU5fm" />
                        <node concept="Wc6QR" id="4TZlN6twQzQ" role="33vP2m">
                          <property role="10XrrR" value="repoName" />
                          <property role="1CJj6V" value="schema" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="4TZlN6twQv6" role="3cqZAp" />
                  <node concept="3cpWs8" id="4TZlN6twQVk" role="3cqZAp">
                    <node concept="3cpWsn" id="4TZlN6twQVn" role="3cpWs9">
                      <property role="TrG5h" value="sn" />
                      <node concept="17QB3L" id="4TZlN6twQVi" role="1tU5fm" />
                      <node concept="2OqwBi" id="4TZlN6twRv0" role="33vP2m">
                        <node concept="37vLTw" id="4TZlN6twRfb" role="2Oq$k0">
                          <ref role="3cqZAo" node="4TZlN6twQlR" resolve="it" />
                        </node>
                        <node concept="2qgKlT" id="4TZlN6twSh7" role="2OqNvi">
                          <ref role="37wK5l" to="h9pt:4RkLmywWSH4" resolve="structName" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="4TZlN6twSzZ" role="3cqZAp">
                    <node concept="3cpWsn" id="4TZlN6twS$2" role="3cpWs9">
                      <property role="TrG5h" value="rn" />
                      <node concept="17QB3L" id="4TZlN6twSzY" role="1tU5fm" />
                      <node concept="2OqwBi" id="4TZlN6twTz6" role="33vP2m">
                        <node concept="37vLTw" id="4TZlN6twTk1" role="2Oq$k0">
                          <ref role="3cqZAo" node="4TZlN6twQlR" resolve="it" />
                        </node>
                        <node concept="2qgKlT" id="4TZlN6twULW" role="2OqNvi">
                          <ref role="37wK5l" to="h9pt:4RkLmywWUlE" resolve="repoName" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="4TZlN6twSTE" role="3cqZAp" />
                  <node concept="lc7rE" id="4TZlN6twV7y" role="3cqZAp">
                    <node concept="la8eA" id="4TZlN6twVms" role="lcghm">
                      <property role="lacIc" value="// ============================================================\n// HTTP Handlers — " />
                    </node>
                    <node concept="l9hG8" id="4TZlN6twVxa" role="lcghm">
                      <node concept="37vLTw" id="4TZlN6twVAA" role="lb14g">
                        <ref role="3cqZAo" node="4TZlN6twQVn" resolve="sn" />
                      </node>
                    </node>
                    <node concept="la8eA" id="4TZlN6twVLL" role="lcghm">
                      <property role="lacIc" value="\n// ============================================================\n\n" />
                    </node>
                  </node>
                  <node concept="3clFbH" id="4TZlN6twV2e" role="3cqZAp" />
                  <node concept="3SKdUt" id="4TZlN6twVWZ" role="3cqZAp">
                    <node concept="1PaTwC" id="4TZlN6twVX0" role="1aUNEU">
                      <node concept="3oM_SD" id="4TZlN6twVX2" role="1PaTwD">
                        <property role="3oM_SC" value="Create" />
                      </node>
                      <node concept="3oM_SD" id="4TZlN6twVX3" role="1PaTwD">
                        <property role="3oM_SC" value="handler" />
                      </node>
                    </node>
                  </node>
                  <node concept="lc7rE" id="4TZlN6twWV_" role="3cqZAp">
                    <node concept="la8eA" id="4TZlN6twX1f" role="lcghm">
                      <property role="lacIc" value="func handleCreate" />
                    </node>
                    <node concept="l9hG8" id="4TZlN6twXcx" role="lcghm">
                      <node concept="37vLTw" id="4TZlN6twXif" role="lb14g">
                        <ref role="3cqZAo" node="4TZlN6twQVn" resolve="sn" />
                      </node>
                    </node>
                    <node concept="la8eA" id="4TZlN6twXwV" role="lcghm">
                      <property role="lacIc" value="(repo *" />
                    </node>
                    <node concept="l9hG8" id="4TZlN6twXGI" role="lcghm">
                      <node concept="37vLTw" id="4TZlN6twXVu" role="lb14g">
                        <ref role="3cqZAo" node="4TZlN6twS$2" resolve="rn" />
                      </node>
                    </node>
                    <node concept="la8eA" id="4TZlN6twYBP" role="lcghm">
                      <property role="lacIc" value=") http.HandlerFunc {\n\treturn func(w http.ResponseWriter, r *http.Request) {\n\t\tvar u " />
                    </node>
                    <node concept="l9hG8" id="4TZlN6twZ0s" role="lcghm">
                      <node concept="37vLTw" id="4TZlN6twZ6I" role="lb14g">
                        <ref role="3cqZAo" node="4TZlN6twQVn" resolve="sn" />
                      </node>
                    </node>
                    <node concept="la8eA" id="4TZlN6twY7L" role="lcghm">
                      <property role="lacIc" value="\n\t\tif err := json.NewDecoder(r.Body).Decode(&amp;u); err != nil {\n\t\t\thttp.Error(w, err.Error(), http.StatusBadRequest)\n\t\t\treturn\n\t\t}\n\t\tif err := repo.Create(&amp;u); err != nil {\n\t\t\thttp.Error(w, err.Error(), http.StatusInternalServerError)\n\t\t\treturn\n\t\t}\n\t\tw.Header().Set(&quot;Content-Type&quot;, &quot;application/json&quot;)\n\t\tw.WriteHeader(http.StatusCreated)\n\t\tjson.NewEncoder(w).Encode(u)\n\t}\n}\n\n" />
                    </node>
                  </node>
                  <node concept="3clFbH" id="4TZlN6tx27i" role="3cqZAp" />
                  <node concept="3clFbH" id="4TZlN6tx27g" role="3cqZAp" />
                  <node concept="3SKdUt" id="4TZlN6twZD5" role="3cqZAp">
                    <node concept="1PaTwC" id="4TZlN6twZD6" role="1aUNEU">
                      <node concept="3oM_SD" id="4TZlN6twZD8" role="1PaTwD">
                        <property role="3oM_SC" value="Get" />
                      </node>
                      <node concept="3oM_SD" id="4TZlN6twZD9" role="1PaTwD">
                        <property role="3oM_SC" value="handler" />
                      </node>
                    </node>
                  </node>
                  <node concept="lc7rE" id="4TZlN6twZPn" role="3cqZAp">
                    <node concept="la8eA" id="4TZlN6tx04B" role="lcghm">
                      <property role="lacIc" value="func handleGet" />
                    </node>
                    <node concept="l9hG8" id="4TZlN6tx0h$" role="lcghm">
                      <node concept="37vLTw" id="4TZlN6tx0o8" role="lb14g">
                        <ref role="3cqZAo" node="4TZlN6twQVn" resolve="sn" />
                      </node>
                    </node>
                    <node concept="la8eA" id="4TZlN6tx0uU" role="lcghm">
                      <property role="lacIc" value="(repo *" />
                    </node>
                    <node concept="l9hG8" id="4TZlN6tx0_J" role="lcghm">
                      <node concept="37vLTw" id="4TZlN6tx0G_" role="lb14g">
                        <ref role="3cqZAo" node="4TZlN6twS$2" resolve="rn" />
                      </node>
                    </node>
                    <node concept="la8eA" id="4TZlN6tx0Tj" role="lcghm">
                      <property role="lacIc" value=") http.HandlerFunc {\n\treturn func(w http.ResponseWriter, r *http.Request) {\n\t\tidStr := r.PathValue(&quot;id&quot;)\n\t\tid, err := strconv.ParseInt(idStr, 10, 64)\n\t\tif err != nil {\n\t\t\thttp.Error(w, &quot;invalid id&quot;, http.StatusBadRequest)\n\t\t\treturn\n\t\t}\n\t\tu, err := repo.GetByID(id)\n\t\tif err != nil {\n\t\t\thttp.Error(w, err.Error(), http.StatusNotFound)\n\t\t\treturn\n\t\t}\n\t\tw.Header().Set(&quot;Content-Type&quot;, &quot;application/json&quot;)\n\t\tjson.NewEncoder(w).Encode(u)\n\t}\n}\n\n" />
                    </node>
                  </node>
                  <node concept="3clFbH" id="4TZlN6twWQ1" role="3cqZAp" />
                  <node concept="3SKdUt" id="4TZlN6tx2le" role="3cqZAp">
                    <node concept="1PaTwC" id="4TZlN6tx2lf" role="1aUNEU">
                      <node concept="3oM_SD" id="4TZlN6tx2lh" role="1PaTwD">
                        <property role="3oM_SC" value="Update" />
                      </node>
                      <node concept="3oM_SD" id="4TZlN6tx2li" role="1PaTwD">
                        <property role="3oM_SC" value="handler" />
                      </node>
                    </node>
                  </node>
                  <node concept="lc7rE" id="4TZlN6tx2zc" role="3cqZAp">
                    <node concept="la8eA" id="4TZlN6tx2Ef" role="lcghm">
                      <property role="lacIc" value="func handleUpdate" />
                    </node>
                    <node concept="l9hG8" id="4TZlN6tx2K5" role="lcghm">
                      <node concept="37vLTw" id="4TZlN6tx2Rd" role="lb14g">
                        <ref role="3cqZAo" node="4TZlN6twQVn" resolve="sn" />
                      </node>
                    </node>
                    <node concept="la8eA" id="4TZlN6tx30e" role="lcghm">
                      <property role="lacIc" value="(repo *" />
                    </node>
                    <node concept="l9hG8" id="4TZlN6tx39i" role="lcghm">
                      <node concept="37vLTw" id="4TZlN6tx3ps" role="lb14g">
                        <ref role="3cqZAo" node="4TZlN6twS$2" resolve="rn" />
                      </node>
                    </node>
                    <node concept="la8eA" id="4TZlN6tx482" role="lcghm">
                      <property role="lacIc" value=") http.HandlerFunc {\n\treturn func(w http.ResponseWriter, r *http.Request) {\n\t\tidStr := r.PathValue(&quot;id&quot;)\n\t\tid, err := strconv.ParseInt(idStr, 10, 64)\n\t\tif err != nil {\n\t\t\thttp.Error(w, &quot;invalid id&quot;, http.StatusBadRequest)\n\t\t\treturn\n\t\t}\n\t\tvar u " />
                    </node>
                    <node concept="l9hG8" id="4TZlN6tx4uH" role="lcghm">
                      <node concept="37vLTw" id="4TZlN6tx4Ap" role="lb14g">
                        <ref role="3cqZAo" node="4TZlN6twQVn" resolve="sn" />
                      </node>
                    </node>
                    <node concept="la8eA" id="4TZlN6tx3Cz" role="lcghm">
                      <property role="lacIc" value="\n\t\tif err := json.NewDecoder(r.Body).Decode(&amp;u); err != nil {\n\t\t\thttp.Error(w, err.Error(), http.StatusBadRequest)\n\t\t\treturn\n\t\t}\n\t\tu.ID = id\n\t\tif err := repo.Update(&amp;u); err != nil {\n\t\t\thttp.Error(w, err.Error(), http.StatusInternalServerError)\n\t\t\treturn\n\t\t}\n\t\tw.Header().Set(&quot;Content-Type&quot;, &quot;application/json&quot;)\n\t\tjson.NewEncoder(w).Encode(u)\n\t}\n}\n\n" />
                    </node>
                  </node>
                  <node concept="3clFbH" id="4TZlN6twV2g" role="3cqZAp" />
                  <node concept="3clFbH" id="4TZlN6tx5er" role="3cqZAp" />
                  <node concept="3SKdUt" id="4TZlN6tx5mj" role="3cqZAp">
                    <node concept="1PaTwC" id="4TZlN6tx5mk" role="1aUNEU">
                      <node concept="3oM_SD" id="4TZlN6tx5mm" role="1PaTwD">
                        <property role="3oM_SC" value="Delete" />
                      </node>
                      <node concept="3oM_SD" id="4TZlN6tx5mn" role="1PaTwD">
                        <property role="3oM_SC" value="handler" />
                      </node>
                    </node>
                  </node>
                  <node concept="lc7rE" id="4TZlN6tx5AV" role="3cqZAp">
                    <node concept="la8eA" id="4TZlN6tx5OC" role="lcghm">
                      <property role="lacIc" value="func handleDelete" />
                    </node>
                    <node concept="l9hG8" id="4TZlN6tx5Vk" role="lcghm">
                      <node concept="37vLTw" id="4TZlN6tx6c2" role="lb14g">
                        <ref role="3cqZAo" node="4TZlN6twQVn" resolve="sn" />
                      </node>
                    </node>
                    <node concept="la8eA" id="4TZlN6tx6sg" role="lcghm">
                      <property role="lacIc" value="(repo *" />
                    </node>
                    <node concept="l9hG8" id="4TZlN6tx6Pl" role="lcghm">
                      <node concept="37vLTw" id="4TZlN6tx6X_" role="lb14g">
                        <ref role="3cqZAo" node="4TZlN6twS$2" resolve="rn" />
                      </node>
                    </node>
                    <node concept="la8eA" id="4TZlN6tx7eo" role="lcghm">
                      <property role="lacIc" value=") http.HandlerFunc {\n\treturn func(w http.ResponseWriter, r *http.Request) {\n\t\tidStr := r.PathValue(&quot;id&quot;)\n\t\tid, err := strconv.ParseInt(idStr, 10, 64)\n\t\tif err != nil {\n\t\t\thttp.Error(w, &quot;invalid id&quot;, http.StatusBadRequest)\n\t\t\treturn\n\t\t}\n\t\tif err := repo.Delete(id); err != nil {\n\t\t\thttp.Error(w, err.Error(), http.StatusInternalServerError)\n\t\t\treturn\n\t\t}\n\t\tw.WriteHeader(http.StatusNoContent)\n\t}\n}\n\n" />
                    </node>
                  </node>
                  <node concept="3clFbH" id="4TZlN6tx5et" role="3cqZAp" />
                  <node concept="3clFbH" id="4TZlN6twWKs" role="3cqZAp" />
                  <node concept="3clFbH" id="4TZlN6tx7v$" role="3cqZAp" />
                  <node concept="3SKdUt" id="4TZlN6ty3Ff" role="3cqZAp">
                    <node concept="1PaTwC" id="4TZlN6ty3Fg" role="1aUNEU">
                      <node concept="3oM_SD" id="4TZlN6ty3Fi" role="1PaTwD">
                        <property role="3oM_SC" value="============================================================" />
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="4TZlN6tx7C0" role="3cqZAp">
                    <node concept="1PaTwC" id="4TZlN6tx7C1" role="1aUNEU">
                      <node concept="3oM_SD" id="4TZlN6tx7C3" role="1PaTwD">
                        <property role="3oM_SC" value="============================================================" />
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="4TZlN6tx7C4" role="3cqZAp">
                    <node concept="1PaTwC" id="4TZlN6tx7C5" role="1aUNEU">
                      <node concept="3oM_SD" id="4TZlN6tx7C7" role="1PaTwD">
                        <property role="3oM_SC" value="HTTP" />
                      </node>
                      <node concept="3oM_SD" id="4TZlN6tx7C8" role="1PaTwD">
                        <property role="3oM_SC" value="Handlers" />
                      </node>
                      <node concept="3oM_SD" id="4TZlN6tx7C9" role="1PaTwD">
                        <property role="3oM_SC" value="—" />
                      </node>
                      <node concept="3oM_SD" id="4TZlN6tx7Ca" role="1PaTwD">
                        <property role="3oM_SC" value="join" />
                      </node>
                      <node concept="3oM_SD" id="4TZlN6tx7Cb" role="1PaTwD">
                        <property role="3oM_SC" value="schemas" />
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="4TZlN6tx7Cc" role="3cqZAp">
                    <node concept="1PaTwC" id="4TZlN6tx7Cd" role="1aUNEU">
                      <node concept="3oM_SD" id="4TZlN6tx7Cf" role="1PaTwD">
                        <property role="3oM_SC" value="============================================================" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="4TZlN6tx7BZ" role="3cqZAp" />
                  <node concept="2Gpval" id="4TZlN6tx7Tn" role="3cqZAp">
                    <node concept="2GrKxI" id="4TZlN6tx7Tp" role="2Gsz3X">
                      <property role="TrG5h" value="schema" />
                    </node>
                    <node concept="2OqwBi" id="4TZlN6tx9nU" role="2GsD0m">
                      <node concept="37vLTw" id="4TZlN6tx96S" role="2Oq$k0">
                        <ref role="3cqZAo" node="4TZlN6tf6hJ" resolve="models" />
                      </node>
                      <node concept="3Tsc0h" id="4TZlN6tx9Mn" role="2OqNvi">
                        <ref role="3TtcxE" to="b1ln:6Rk79gbjaz8" resolve="schemas" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="4TZlN6tx7Tt" role="2LFqv$">
                      <node concept="3clFbJ" id="4TZlN6tx9Vf" role="3cqZAp">
                        <node concept="2OqwBi" id="4TZlN6txarv" role="3clFbw">
                          <node concept="2GrUjf" id="4TZlN6txa3J" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="4TZlN6tx7Tp" resolve="schema" />
                          </node>
                          <node concept="2qgKlT" id="4TZlN6txbDn" role="2OqNvi">
                            <ref role="37wK5l" to="h9pt:4RkLmywWXpy" resolve="hasReferences" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="4TZlN6tx9Vh" role="3clFbx">
                          <node concept="3cpWs8" id="4TZlN6txbMu" role="3cqZAp">
                            <node concept="3cpWsn" id="4TZlN6txbMx" role="3cpWs9">
                              <property role="TrG5h" value="sn2" />
                              <node concept="17QB3L" id="4TZlN6txbMt" role="1tU5fm" />
                              <node concept="2OqwBi" id="4TZlN6txcph" role="33vP2m">
                                <node concept="2GrUjf" id="4TZlN6txcdX" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="4TZlN6tx7Tp" resolve="schema" />
                                </node>
                                <node concept="2qgKlT" id="4TZlN6txdtK" role="2OqNvi">
                                  <ref role="37wK5l" to="h9pt:4RkLmywWSH4" resolve="structName" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="4TZlN6txe1k" role="3cqZAp">
                            <node concept="3cpWsn" id="4TZlN6txe1n" role="3cpWs9">
                              <property role="TrG5h" value="rn2" />
                              <node concept="17QB3L" id="4TZlN6txe1i" role="1tU5fm" />
                              <node concept="2OqwBi" id="4TZlN6txeI4" role="33vP2m">
                                <node concept="2GrUjf" id="4TZlN6txeqS" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="4TZlN6tx7Tp" resolve="schema" />
                                </node>
                                <node concept="2qgKlT" id="4TZlN6txfE2" role="2OqNvi">
                                  <ref role="37wK5l" to="h9pt:4RkLmywWUlE" resolve="repoName" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="lc7rE" id="4TZlN6txg7B" role="3cqZAp">
                            <node concept="la8eA" id="4TZlN6txgho" role="lcghm">
                              <property role="lacIc" value="// ============================================================\n// HTTP Handlers — " />
                            </node>
                            <node concept="l9hG8" id="4TZlN6txgrc" role="lcghm">
                              <node concept="37vLTw" id="4TZlN6txg_1" role="lb14g">
                                <ref role="3cqZAo" node="4TZlN6txbMx" resolve="sn2" />
                              </node>
                            </node>
                            <node concept="la8eA" id="4TZlN6txgSZ" role="lcghm">
                              <property role="lacIc" value=" (assignments)\n// ============================================================\n\n" />
                            </node>
                          </node>
                          <node concept="3clFbH" id="4TZlN6txhvJ" role="3cqZAp" />
                          <node concept="3cpWs8" id="4TZlN6txi76" role="3cqZAp">
                            <node concept="3cpWsn" id="4TZlN6txi79" role="3cpWs9">
                              <property role="TrG5h" value="firstRef" />
                              <node concept="3Tqbb2" id="4TZlN6txi74" role="1tU5fm">
                                <ref role="ehGHo" to="b1ln:6Rk79gbjbPd" resolve="FieldRefrence" />
                              </node>
                              <node concept="10Nm6u" id="4TZlN6tGyTA" role="33vP2m" />
                            </node>
                          </node>
                          <node concept="3cpWs8" id="4TZlN6txoOJ" role="3cqZAp">
                            <node concept="3cpWsn" id="4TZlN6txoOK" role="3cpWs9">
                              <property role="TrG5h" value="secondRed" />
                              <node concept="3Tqbb2" id="4TZlN6txoOL" role="1tU5fm">
                                <ref role="ehGHo" to="b1ln:6Rk79gbjbPd" resolve="FieldRefrence" />
                              </node>
                              <node concept="10Nm6u" id="4TZlN6tGzIL" role="33vP2m" />
                            </node>
                          </node>
                          <node concept="2Gpval" id="4TZlN6txwZ2" role="3cqZAp">
                            <node concept="2GrKxI" id="4TZlN6txwZ4" role="2Gsz3X">
                              <property role="TrG5h" value="f" />
                            </node>
                            <node concept="2OqwBi" id="4TZlN6txxOR" role="2GsD0m">
                              <node concept="2GrUjf" id="4TZlN6txxwF" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="4TZlN6tx7Tp" resolve="schema" />
                              </node>
                              <node concept="3Tsc0h" id="4TZlN6txywu" role="2OqNvi">
                                <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="4TZlN6txwZ8" role="2LFqv$">
                              <node concept="Jncv_" id="4TZlN6txyET" role="3cqZAp">
                                <ref role="JncvD" to="b1ln:6Rk79gbjbPd" resolve="FieldRefrence" />
                                <node concept="2GrUjf" id="4TZlN6txyOz" role="JncvB">
                                  <ref role="2Gs0qQ" node="4TZlN6txwZ4" resolve="f" />
                                </node>
                                <node concept="3clFbS" id="4TZlN6txyEV" role="Jncv$">
                                  <node concept="3clFbJ" id="4TZlN6txzjg" role="3cqZAp">
                                    <node concept="3clFbC" id="4TZlN6tx$t9" role="3clFbw">
                                      <node concept="10Nm6u" id="4TZlN6tx$Ao" role="3uHU7w" />
                                      <node concept="Jnkvi" id="4TZlN6txz_y" role="3uHU7B">
                                        <ref role="1M0zk5" node="4TZlN6txyEW" resolve="fr" />
                                      </node>
                                    </node>
                                    <node concept="3clFbS" id="4TZlN6txzji" role="3clFbx">
                                      <node concept="3clFbF" id="4TZlN6tx$L9" role="3cqZAp">
                                        <node concept="37vLTI" id="4TZlN6tx_ep" role="3clFbG">
                                          <node concept="Jnkvi" id="4TZlN6tx_tQ" role="37vLTx">
                                            <ref role="1M0zk5" node="4TZlN6txyEW" resolve="fr" />
                                          </node>
                                          <node concept="37vLTw" id="4TZlN6tx$L8" role="37vLTJ">
                                            <ref role="3cqZAo" node="4TZlN6txi79" resolve="firstRef" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3eNFk2" id="4TZlN6tx_Dz" role="3eNLev">
                                      <node concept="3clFbC" id="4TZlN6txAiN" role="3eO9$A">
                                        <node concept="10Nm6u" id="4TZlN6txAyv" role="3uHU7w" />
                                        <node concept="37vLTw" id="4TZlN6tx_YW" role="3uHU7B">
                                          <ref role="3cqZAo" node="4TZlN6txoOK" resolve="secondRed" />
                                        </node>
                                      </node>
                                      <node concept="3clFbS" id="4TZlN6tx_D_" role="3eOfB_">
                                        <node concept="3clFbF" id="4TZlN6txAGc" role="3cqZAp">
                                          <node concept="37vLTI" id="4TZlN6txBbw" role="3clFbG">
                                            <node concept="Jnkvi" id="4TZlN6txBl9" role="37vLTx">
                                              <ref role="1M0zk5" node="4TZlN6txyEW" resolve="fr" />
                                            </node>
                                            <node concept="37vLTw" id="4TZlN6txAGa" role="37vLTJ">
                                              <ref role="3cqZAo" node="4TZlN6txoOK" resolve="secondRed" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="JncvC" id="4TZlN6txyEW" role="JncvA">
                                  <property role="TrG5h" value="fr" />
                                  <node concept="2jxLKc" id="4TZlN6txyEX" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3SKdUt" id="4TZlN6txBLC" role="3cqZAp">
                            <node concept="1PaTwC" id="4TZlN6txBLD" role="1aUNEU">
                              <node concept="3oM_SD" id="4TZlN6txBLF" role="1PaTwD">
                                <property role="3oM_SC" value="Assign" />
                              </node>
                              <node concept="3oM_SD" id="4TZlN6txBLG" role="1PaTwD">
                                <property role="3oM_SC" value="handler" />
                              </node>
                            </node>
                          </node>
                          <node concept="lc7rE" id="4TZlN6txC3R" role="3cqZAp">
                            <node concept="la8eA" id="4TZlN6txCdn" role="lcghm">
                              <property role="lacIc" value="func handleAssign" />
                            </node>
                            <node concept="l9hG8" id="4TZlN6txClx" role="lcghm">
                              <node concept="2OqwBi" id="4TZlN6txDBp" role="lb14g">
                                <node concept="2OqwBi" id="4TZlN6txCNr" role="2Oq$k0">
                                  <node concept="37vLTw" id="4TZlN6txCv7" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4TZlN6txoOK" resolve="secondRed" />
                                  </node>
                                  <node concept="3TrEf2" id="4TZlN6txDiw" role="2OqNvi">
                                    <ref role="3Tt5mk" to="b1ln:6Rk79gbjbPh" resolve="target_schema" />
                                  </node>
                                </node>
                                <node concept="2qgKlT" id="4TZlN6txEhk" role="2OqNvi">
                                  <ref role="37wK5l" to="h9pt:4RkLmywWSH4" resolve="structName" />
                                </node>
                              </node>
                            </node>
                            <node concept="la8eA" id="4TZlN6txEA1" role="lcghm">
                              <property role="lacIc" value="(urRepo *" />
                            </node>
                            <node concept="l9hG8" id="4TZlN6txEK7" role="lcghm">
                              <node concept="37vLTw" id="4TZlN6txEUe" role="lb14g">
                                <ref role="3cqZAo" node="4TZlN6txe1n" resolve="rn2" />
                              </node>
                            </node>
                            <node concept="la8eA" id="4TZlN6txF34" role="lcghm">
                              <property role="lacIc" value=") http.HandlerFunc {\n\treturn func(w http.ResponseWriter, r *http.Request) {\n\t\t} ${firstRef.name} {, err := strconv.ParseInt(r.PathValue(&quot;id&quot;), 10, 64)\n\t\tif err != nil {\n\t\t\thttp.Error(w, &quot;invalid id&quot;, http.StatusBadRequest)\n\t\t\treturn\n\t\t}\n\t\tvar body Assign} ${secondRef.target_schema.structName()} {Body\n\t\tif err := json.NewDecoder(r.Body).Decode(&amp;body); err != nil {\n\t\t\thttp.Error(w, err.Error(), http.StatusBadRequest)\n\t\t\treturn\n\t\t}\n\t\tur, err := urRepo.Assign(} ${firstRef.name} {, body.} ${secondRef.pascalName()} {)\n\t\tif err != nil {\n\t\t\thttp.Error(w, err.Error(), http.StatusInternalServerError)\n\t\t\treturn\n\t\t}\n\t\tw.Header().Set(&quot;Content-Type&quot;, &quot;application/json&quot;)\n\t\tw.WriteHeader(http.StatusCreated)\n\t\tjson.NewEncoder(w).Encode(ur)\n\t}\n}\n\n" />
                            </node>
                          </node>
                          <node concept="3clFbH" id="4TZlN6txFDr" role="3cqZAp" />
                          <node concept="3clFbH" id="4TZlN6txFDt" role="3cqZAp" />
                          <node concept="3SKdUt" id="4TZlN6txG5Q" role="3cqZAp">
                            <node concept="1PaTwC" id="4TZlN6txG5R" role="1aUNEU">
                              <node concept="3oM_SD" id="4TZlN6txG5T" role="1PaTwD">
                                <property role="3oM_SC" value="Remove" />
                              </node>
                              <node concept="3oM_SD" id="4TZlN6txG5U" role="1PaTwD">
                                <property role="3oM_SC" value="handler" />
                              </node>
                            </node>
                          </node>
                          <node concept="lc7rE" id="4TZlN6txGqZ" role="3cqZAp">
                            <node concept="la8eA" id="4TZlN6txG_k" role="lcghm">
                              <property role="lacIc" value="func handleRemove" />
                            </node>
                            <node concept="l9hG8" id="4TZlN6txGJG" role="lcghm">
                              <node concept="2OqwBi" id="4TZlN6txIpk" role="lb14g">
                                <node concept="2OqwBi" id="4TZlN6txHf5" role="2Oq$k0">
                                  <node concept="37vLTw" id="4TZlN6txGU6" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4TZlN6txoOK" resolve="secondRed" />
                                  </node>
                                  <node concept="3TrEf2" id="4TZlN6txHTj" role="2OqNvi">
                                    <ref role="3Tt5mk" to="b1ln:6Rk79gbjbPh" resolve="target_schema" />
                                  </node>
                                </node>
                                <node concept="2qgKlT" id="4TZlN6txITD" role="2OqNvi">
                                  <ref role="37wK5l" to="h9pt:4RkLmywWSH4" resolve="structName" />
                                </node>
                              </node>
                            </node>
                            <node concept="la8eA" id="4TZlN6txJIS" role="lcghm">
                              <property role="lacIc" value="(urRepo *" />
                            </node>
                            <node concept="l9hG8" id="4TZlN6txKIU" role="lcghm">
                              <node concept="37vLTw" id="4TZlN6txKSh" role="lb14g">
                                <ref role="3cqZAo" node="4TZlN6txe1n" resolve="rn2" />
                              </node>
                            </node>
                            <node concept="la8eA" id="4TZlN6txLpt" role="lcghm">
                              <property role="lacIc" value=") http.HandlerFunc {\n\treturn func(w http.ResponseWriter, r *http.Request) {\n\t\t} ${firstRef.name} {, err := strconv.ParseInt(r.PathValue(&quot;id&quot;), 10, 64)\n\t\tif err != nil {\n\t\t\thttp.Error(w, &quot;invalid id&quot;, http.StatusBadRequest)\n\t\t\treturn\n\t\t}\n\t\t} ${secondRef.name} {, err := strconv.ParseInt(r.PathValue(&quot;} ${secondRef.name} {&quot;), 10, 64)\n\t\tif err != nil {\n\t\t\thttp.Error(w, &quot;invalid id&quot;, http.StatusBadRequest)\n\t\t\treturn\n\t\t}\n\t\tif err := urRepo.Remove(} ${firstRef.name} {, } ${secondRef.name} {); err != nil {\n\t\t\thttp.Error(w, err.Error(), http.StatusInternalServerError)\n\t\t\treturn\n\t\t}\n\t\tw.WriteHeader(http.StatusNoContent)\n\t}\n}\n\n" />
                            </node>
                          </node>
                          <node concept="3clFbH" id="4TZlN6txLUt" role="3cqZAp" />
                          <node concept="3SKdUt" id="4TZlN6txMgq" role="3cqZAp">
                            <node concept="1PaTwC" id="4TZlN6txMgr" role="1aUNEU">
                              <node concept="3oM_SD" id="4TZlN6txMgt" role="1PaTwD">
                                <property role="3oM_SC" value="Cross-query" />
                              </node>
                              <node concept="3oM_SD" id="4TZlN6txMgu" role="1PaTwD">
                                <property role="3oM_SC" value="handlers" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="4TZlN6txMgp" role="3cqZAp" />
                          <node concept="2Gpval" id="4TZlN6txMrx" role="3cqZAp">
                            <node concept="2GrKxI" id="4TZlN6txMrz" role="2Gsz3X">
                              <property role="TrG5h" value="refA" />
                            </node>
                            <node concept="2OqwBi" id="4TZlN6txNQx" role="2GsD0m">
                              <node concept="2GrUjf" id="4TZlN6txNmH" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="4TZlN6tx7Tp" resolve="schema" />
                              </node>
                              <node concept="3Tsc0h" id="4TZlN6txOPZ" role="2OqNvi">
                                <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="4TZlN6txMrB" role="2LFqv$">
                              <node concept="Jncv_" id="4TZlN6txPnQ" role="3cqZAp">
                                <ref role="JncvD" to="b1ln:6Rk79gbjbPd" resolve="FieldRefrence" />
                                <node concept="3clFbS" id="4TZlN6txPnS" role="Jncv$">
                                  <node concept="2Gpval" id="4TZlN6txSaE" role="3cqZAp">
                                    <node concept="2GrKxI" id="4TZlN6txSaF" role="2Gsz3X">
                                      <property role="TrG5h" value="refB" />
                                    </node>
                                    <node concept="2OqwBi" id="4TZlN6txTqJ" role="2GsD0m">
                                      <node concept="2GrUjf" id="4TZlN6txT5L" role="2Oq$k0">
                                        <ref role="2Gs0qQ" node="4TZlN6tx7Tp" resolve="schema" />
                                      </node>
                                      <node concept="3Tsc0h" id="4TZlN6txUh1" role="2OqNvi">
                                        <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                                      </node>
                                    </node>
                                    <node concept="3clFbS" id="4TZlN6txSaH" role="2LFqv$">
                                      <node concept="Jncv_" id="4TZlN6txUuQ" role="3cqZAp">
                                        <ref role="JncvD" to="b1ln:6Rk79gbjbPd" resolve="FieldRefrence" />
                                        <node concept="2GrUjf" id="4TZlN6txUOX" role="JncvB">
                                          <ref role="2Gs0qQ" node="4TZlN6txSaF" resolve="refB" />
                                        </node>
                                        <node concept="3clFbS" id="4TZlN6txUuS" role="Jncv$">
                                          <node concept="lc7rE" id="4TZlN6txVDa" role="3cqZAp">
                                            <node concept="la8eA" id="4TZlN6txVOg" role="lcghm">
                                              <property role="lacIc" value="func handleGet" />
                                            </node>
                                            <node concept="l9hG8" id="4TZlN6txVXS" role="lcghm">
                                              <node concept="2OqwBi" id="4TZlN6txX$n" role="lb14g">
                                                <node concept="2OqwBi" id="4TZlN6txWxe" role="2Oq$k0">
                                                  <node concept="Jnkvi" id="4TZlN6txW96" role="2Oq$k0">
                                                    <ref role="1M0zk5" node="4TZlN6txPnT" resolve="frA" />
                                                  </node>
                                                  <node concept="3TrEf2" id="4TZlN6txXcM" role="2OqNvi">
                                                    <ref role="3Tt5mk" to="b1ln:6Rk79gbjbPh" resolve="target_schema" />
                                                  </node>
                                                </node>
                                                <node concept="2qgKlT" id="4TZlN6txY9o" role="2OqNvi">
                                                  <ref role="37wK5l" to="h9pt:4RkLmywWSH4" resolve="structName" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="l9hG8" id="4TZlN6txY_p" role="lcghm">
                                              <node concept="2OqwBi" id="4TZlN6ty0iX" role="lb14g">
                                                <node concept="2OqwBi" id="4TZlN6txZbt" role="2Oq$k0">
                                                  <node concept="Jnkvi" id="4TZlN6txYO2" role="2Oq$k0">
                                                    <ref role="1M0zk5" node="4TZlN6txUuT" resolve="frB" />
                                                  </node>
                                                  <node concept="3TrEf2" id="4TZlN6txZTi" role="2OqNvi">
                                                    <ref role="3Tt5mk" to="b1ln:6Rk79gbjbPh" resolve="target_schema" />
                                                  </node>
                                                </node>
                                                <node concept="2qgKlT" id="4TZlN6ty0ZG" role="2OqNvi">
                                                  <ref role="37wK5l" to="h9pt:4RkLmywWSH4" resolve="structName" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="la8eA" id="4TZlN6ty1uy" role="lcghm">
                                              <property role="lacIc" value="s(urRepo *" />
                                            </node>
                                            <node concept="l9hG8" id="4TZlN6ty1HG" role="lcghm">
                                              <node concept="37vLTw" id="4TZlN6ty1VP" role="lb14g">
                                                <ref role="3cqZAo" node="4TZlN6txe1n" resolve="rn2" />
                                              </node>
                                            </node>
                                            <node concept="la8eA" id="4TZlN6ty2AU" role="lcghm">
                                              <property role="lacIc" value=") http.HandlerFunc {\n\treturn func(w http.ResponseWriter, r *http.Request) {\n\t\tid, err := strconv.ParseInt(r.PathValue(&quot;id&quot;), 10, 64)\n\t\tif err != nil {\n\t\t\thttp.Error(w, &quot;invalid id&quot;, http.StatusBadRequest)\n\t\t\treturn\n\t\t}\n\t\titems, err := urRepo.Get} ${frB.target_schema.structName()} {sBy} ${frA.target_schema.structName()} {(id)\n\t\tif err != nil {\n\t\t\thttp.Error(w, err.Error(), http.StatusInternalServerError)\n\t\t\treturn\n\t\t}\n\t\tw.Header().Set(&quot;Content-Type&quot;, &quot;application/json&quot;)\n\t\tjson.NewEncoder(w).Encode(items)\n\t}\n}\n\n" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="JncvC" id="4TZlN6txUuT" role="JncvA">
                                          <property role="TrG5h" value="frB" />
                                          <node concept="2jxLKc" id="4TZlN6txUuU" role="1tU5fm" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="JncvC" id="4TZlN6txPnT" role="JncvA">
                                  <property role="TrG5h" value="frA" />
                                  <node concept="2jxLKc" id="4TZlN6txPnU" role="1tU5fm" />
                                </node>
                                <node concept="2GrUjf" id="4TZlN6txQDr" role="JncvB">
                                  <ref role="2Gs0qQ" node="4TZlN6txMrz" resolve="refA" />
                                </node>
                              </node>
                              <node concept="3clFbH" id="4TZlN6txR3d" role="3cqZAp" />
                            </node>
                          </node>
                          <node concept="3clFbH" id="4TZlN6txFV_" role="3cqZAp" />
                          <node concept="3clFbH" id="4TZlN6txBCb" role="3cqZAp" />
                          <node concept="3clFbH" id="4TZlN6txwgI" role="3cqZAp" />
                          <node concept="3clFbH" id="4TZlN6txhbx" role="3cqZAp" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="4TZlN6ty3Fj" role="3cqZAp">
                    <node concept="1PaTwC" id="4TZlN6ty3Fk" role="1aUNEU">
                      <node concept="3oM_SD" id="4TZlN6ty3Fm" role="1PaTwD">
                        <property role="3oM_SC" value="Main" />
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="4TZlN6ty3Fn" role="3cqZAp">
                    <node concept="1PaTwC" id="4TZlN6ty3Fo" role="1aUNEU">
                      <node concept="3oM_SD" id="4TZlN6ty3Fq" role="1PaTwD">
                        <property role="3oM_SC" value="============================================================" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="4TZlN6ty3Fe" role="3cqZAp" />
                  <node concept="lc7rE" id="4TZlN6ty3UH" role="3cqZAp">
                    <node concept="la8eA" id="4TZlN6ty4mx" role="lcghm">
                      <property role="lacIc" value="// ============================================================\n// Main\n// ============================================================\n\nfunc main() {\n\tdbURL := os.Getenv(&quot;DATABASE_URL&quot;)\n\tif dbURL == &quot;&quot; {\n\t\tdbURL = &quot;postgres://} ${infra.dbUser} {:} ${infra.dbPass} {@localhost:5432/} ${infra.dbName} {?sslmode=disable&quot;\n\t}\n\n\tdb, err := sql.Open(&quot;postgres&quot;, dbURL)\n\tif err != nil {\n\t\tlog.Fatal(err)\n\t}\n\tdefer db.Close()\n\n\tfor i := 0; i &lt; 5; i++ {\n\t\tif err = db.Ping(); err == nil {\n\t\t\tbreak\n\t\t}\n\t\tlog.Printf(&quot;DB not ready, retrying... (%d/5)&quot;, i+1)\n\t\ttime.Sleep(2 * time.Second)\n\t}\n\tif err != nil {\n\t\tlog.Fatal(&quot;DB connection failed:&quot;, err)\n\t}\n\n\tif _, err := db.Exec(migrationSQL); err != nil {\n\t\tlog.Fatal(err)\n\t}\n\tlog.Println(&quot;Migration complete&quot;)\n\n" />
                    </node>
                  </node>
                  <node concept="2Gpval" id="4TZlN6ty5Jz" role="3cqZAp">
                    <node concept="2GrKxI" id="4TZlN6ty5J_" role="2Gsz3X">
                      <property role="TrG5h" value="schema" />
                    </node>
                    <node concept="2OqwBi" id="4TZlN6ty9t8" role="2GsD0m">
                      <node concept="37vLTw" id="4TZlN6ty8XX" role="2Oq$k0">
                        <ref role="3cqZAo" node="4TZlN6tf6hJ" resolve="models" />
                      </node>
                      <node concept="3Tsc0h" id="4TZlN6tya5R" role="2OqNvi">
                        <ref role="3TtcxE" to="b1ln:6Rk79gbjaz8" resolve="schemas" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="4TZlN6ty5JD" role="2LFqv$">
                      <node concept="3clFbJ" id="4TZlN6tyatC" role="3cqZAp">
                        <node concept="3fqX7Q" id="4TZlN6tyaH3" role="3clFbw">
                          <node concept="2OqwBi" id="4TZlN6tybEI" role="3fr31v">
                            <node concept="2GrUjf" id="4TZlN6tybhP" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="4TZlN6ty5J_" resolve="schema" />
                            </node>
                            <node concept="2qgKlT" id="4TZlN6tycI_" role="2OqNvi">
                              <ref role="37wK5l" to="h9pt:4RkLmywWXpy" resolve="hasReferences" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="4TZlN6tyatE" role="3clFbx">
                          <node concept="lc7rE" id="4TZlN6tydcA" role="3cqZAp">
                            <node concept="la8eA" id="4TZlN6tyd$L" role="lcghm">
                              <property role="lacIc" value="\t" />
                            </node>
                            <node concept="l9hG8" id="4TZlN6tylJ4" role="lcghm">
                              <node concept="2OqwBi" id="4TZlN6tymqq" role="lb14g">
                                <node concept="2GrUjf" id="4TZlN6tylZL" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="4TZlN6ty5J_" resolve="schema" />
                                </node>
                                <node concept="2qgKlT" id="4TZlN6tyncG" role="2OqNvi">
                                  <ref role="37wK5l" to="h9pt:4RkLmywWNem" resolve="singularName" />
                                </node>
                              </node>
                            </node>
                            <node concept="la8eA" id="4TZlN6tyfxQ" role="lcghm">
                              <property role="lacIc" value="Repo := &amp;" />
                            </node>
                            <node concept="l9hG8" id="4TZlN6tyiGx" role="lcghm">
                              <node concept="2OqwBi" id="4TZlN6tyjBk" role="lb14g">
                                <node concept="2GrUjf" id="4TZlN6tyiWL" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="4TZlN6ty5J_" resolve="schema" />
                                </node>
                                <node concept="2qgKlT" id="4TZlN6tykJw" role="2OqNvi">
                                  <ref role="37wK5l" to="h9pt:4RkLmywWUlE" resolve="repoName" />
                                </node>
                              </node>
                            </node>
                            <node concept="la8eA" id="4TZlN6tygIj" role="lcghm">
                              <property role="lacIc" value="{db: db}\n" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2Gpval" id="4TZlN6tyodz" role="3cqZAp">
                    <node concept="2GrKxI" id="4TZlN6tyod$" role="2Gsz3X">
                      <property role="TrG5h" value="schema" />
                    </node>
                    <node concept="2OqwBi" id="4TZlN6tyod_" role="2GsD0m">
                      <node concept="37vLTw" id="4TZlN6tyodA" role="2Oq$k0">
                        <ref role="3cqZAo" node="4TZlN6tf6hJ" resolve="models" />
                      </node>
                      <node concept="3Tsc0h" id="4TZlN6tyodB" role="2OqNvi">
                        <ref role="3TtcxE" to="b1ln:6Rk79gbjaz8" resolve="schemas" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="4TZlN6tyodC" role="2LFqv$">
                      <node concept="3clFbJ" id="4TZlN6tyodD" role="3cqZAp">
                        <node concept="2OqwBi" id="4TZlN6tyodF" role="3clFbw">
                          <node concept="2GrUjf" id="4TZlN6tyodG" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="4TZlN6tyod$" resolve="schema" />
                          </node>
                          <node concept="2qgKlT" id="4TZlN6tyodH" role="2OqNvi">
                            <ref role="37wK5l" to="h9pt:4RkLmywWXpy" resolve="hasReferences" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="4TZlN6tyodI" role="3clFbx">
                          <node concept="lc7rE" id="4TZlN6tyodJ" role="3cqZAp">
                            <node concept="la8eA" id="4TZlN6tyodK" role="lcghm">
                              <property role="lacIc" value="\t" />
                            </node>
                            <node concept="l9hG8" id="4TZlN6tyodL" role="lcghm">
                              <node concept="2OqwBi" id="4TZlN6tyodM" role="lb14g">
                                <node concept="2GrUjf" id="4TZlN6tyodN" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="4TZlN6tyod$" resolve="schema" />
                                </node>
                                <node concept="2qgKlT" id="4TZlN6tyodO" role="2OqNvi">
                                  <ref role="37wK5l" to="h9pt:4RkLmywWNem" resolve="singularName" />
                                </node>
                              </node>
                            </node>
                            <node concept="la8eA" id="4TZlN6tyodP" role="lcghm">
                              <property role="lacIc" value="Repo := &amp;" />
                            </node>
                            <node concept="l9hG8" id="4TZlN6tyodQ" role="lcghm">
                              <node concept="2OqwBi" id="4TZlN6tyodR" role="lb14g">
                                <node concept="2GrUjf" id="4TZlN6tyodS" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="4TZlN6tyod$" resolve="schema" />
                                </node>
                                <node concept="2qgKlT" id="4TZlN6tyodT" role="2OqNvi">
                                  <ref role="37wK5l" to="h9pt:4RkLmywWUlE" resolve="repoName" />
                                </node>
                              </node>
                            </node>
                            <node concept="la8eA" id="4TZlN6tyodU" role="lcghm">
                              <property role="lacIc" value="{db: db}\n" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="lc7rE" id="4TZlN6typ4U" role="3cqZAp">
                    <node concept="la8eA" id="4TZlN6typn4" role="lcghm">
                      <property role="lacIc" value="\n\tmux := http.NewServeMux()\n\n\t// Swagger UI\n\tmux.HandleFunc(&quot;GET /swagger/*&quot;, httpSwagger.WrapHandler)\n\n" />
                    </node>
                  </node>
                </node>
                <node concept="gl6BB" id="4TZlN6twQlR" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="4TZlN6twQlS" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4TZlN6tlWgx" role="3cqZAp" />
        <node concept="3clFbH" id="4TZlN6tlWgz" role="3cqZAp" />
        <node concept="3SKdUt" id="4TZlN6tyyIZ" role="3cqZAp">
          <node concept="1PaTwC" id="4TZlN6tyyJ0" role="1aUNEU">
            <node concept="3oM_SD" id="4TZlN6tyyJ2" role="1PaTwD">
              <property role="3oM_SC" value="Regular" />
            </node>
            <node concept="3oM_SD" id="4TZlN6tyyJ3" role="1PaTwD">
              <property role="3oM_SC" value="routes" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4TZlN6tyyIY" role="3cqZAp" />
        <node concept="2Gpval" id="4TZlN6tyBbx" role="3cqZAp">
          <node concept="2GrKxI" id="4TZlN6tyBbz" role="2Gsz3X">
            <property role="TrG5h" value="schema" />
          </node>
          <node concept="2OqwBi" id="4TZlN6tyTgP" role="2GsD0m">
            <node concept="37vLTw" id="4TZlN6tyQLa" role="2Oq$k0">
              <ref role="3cqZAo" node="4TZlN6tf6hJ" resolve="models" />
            </node>
            <node concept="3Tsc0h" id="4TZlN6tyVtV" role="2OqNvi">
              <ref role="3TtcxE" to="b1ln:6Rk79gbjaz8" resolve="schemas" />
            </node>
          </node>
          <node concept="3clFbS" id="4TZlN6tyBbB" role="2LFqv$">
            <node concept="3clFbJ" id="4TZlN6tyXf3" role="3cqZAp">
              <node concept="3fqX7Q" id="4TZlN6tyXfS" role="3clFbw">
                <node concept="2OqwBi" id="4TZlN6tyXpO" role="3fr31v">
                  <node concept="2GrUjf" id="4TZlN6tyXgL" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="4TZlN6tyBbz" resolve="schema" />
                  </node>
                  <node concept="2qgKlT" id="4TZlN6tz12B" role="2OqNvi">
                    <ref role="37wK5l" to="h9pt:4RkLmywWXpy" resolve="hasReferences" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="4TZlN6tyXf5" role="3clFbx">
                <node concept="3cpWs8" id="4TZlN6tz2OW" role="3cqZAp">
                  <node concept="3cpWsn" id="4TZlN6tz2OZ" role="3cpWs9">
                    <property role="TrG5h" value="vr" />
                    <node concept="17QB3L" id="4TZlN6tz2OV" role="1tU5fm" />
                    <node concept="3cpWs3" id="4TZlN6tz8Uv" role="33vP2m">
                      <node concept="Xl_RD" id="4TZlN6tz8Uz" role="3uHU7w">
                        <property role="Xl_RC" value="Repo" />
                      </node>
                      <node concept="2OqwBi" id="4TZlN6tz30m" role="3uHU7B">
                        <node concept="2GrUjf" id="4TZlN6tz2Rl" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="4TZlN6tyBbz" resolve="schema" />
                        </node>
                        <node concept="2qgKlT" id="4TZlN6tz5UX" role="2OqNvi">
                          <ref role="37wK5l" to="h9pt:4RkLmywWNem" resolve="singularName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="4TZlN6tziws" role="3cqZAp">
                  <node concept="3cpWsn" id="4TZlN6tziwv" role="3cpWs9">
                    <property role="TrG5h" value="sn" />
                    <node concept="17QB3L" id="4TZlN6tziwq" role="1tU5fm" />
                    <node concept="2OqwBi" id="4TZlN6tzktt" role="33vP2m">
                      <node concept="2GrUjf" id="4TZlN6tzkkr" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="4TZlN6tyBbz" resolve="schema" />
                      </node>
                      <node concept="2qgKlT" id="4TZlN6tzmLr" role="2OqNvi">
                        <ref role="37wK5l" to="h9pt:4RkLmywWSH4" resolve="structName" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="4TZlN6tzr7x" role="3cqZAp">
                  <node concept="3cpWsn" id="4TZlN6tzr7$" role="3cpWs9">
                    <property role="TrG5h" value="tn" />
                    <node concept="17QB3L" id="4TZlN6tzr7v" role="1tU5fm" />
                    <node concept="2OqwBi" id="4TZlN6tzt5C" role="33vP2m">
                      <node concept="2GrUjf" id="4TZlN6tzsW_" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="4TZlN6tyBbz" resolve="schema" />
                      </node>
                      <node concept="3TrcHB" id="4TZlN6tzv8L" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="4TZlN6tzzvb" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6tz$S9" role="lcghm">
                    <property role="lacIc" value="\t// " />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tz_m0" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tz_mU" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6tziwv" resolve="sn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tz_oJ" role="lcghm">
                    <property role="lacIc" value="s\n\tmux.HandleFunc(&quot;POST /" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tz_qo" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tz_ri" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6tzr7$" resolve="tn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tz_t7" role="lcghm">
                    <property role="lacIc" value="&quot;, handleCreate" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tz_u0" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tz_uU" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6tziwv" resolve="sn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tz_wJ" role="lcghm">
                    <property role="lacIc" value="))\n\tmux.HandleFunc(&quot;GET /" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tz_z5" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tz_zZ" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6tzr7$" resolve="tn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tz__O" role="lcghm">
                    <property role="lacIc" value="&quot;, handleList" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tz_Bt" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tz_Cn" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6tziwv" resolve="sn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tz_FT" role="lcghm">
                    <property role="lacIc" value="s(" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tz_Ig" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tz_Ja" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6tz2OZ" resolve="vr" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tz_Ki" role="lcghm">
                    <property role="lacIc" value="))\n\tmux.HandleFunc(&quot;GET /" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tz_Lb" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tz_M5" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6tzr7$" resolve="tn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tz_Nd" role="lcghm">
                    <property role="lacIc" value="/{id}&quot;, handleGet" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tz_OQ" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tz_PK" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6tziwv" resolve="sn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tz_QS" role="lcghm">
                    <property role="lacIc" value="(" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tz_Te" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tz_U8" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6tz2OZ" resolve="vr" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tz_VX" role="lcghm">
                    <property role="lacIc" value="))\n\tmux.HandleFunc(&quot;PUT /" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tz_WQ" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tz_XK" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6tzr7$" resolve="tn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tz_Z_" role="lcghm">
                    <property role="lacIc" value="/{id}&quot;, handleUpdate" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tzA1e" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tzA28" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6tziwv" resolve="sn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tzA6o" role="lcghm">
                    <property role="lacIc" value="(" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tzA8I" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tzA9C" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6tz2OZ" resolve="vr" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tzAbt" role="lcghm">
                    <property role="lacIc" value="))\n\tmux.HandleFunc(&quot;DELETE /" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tzAdN" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tzAeH" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6tzr7$" resolve="tn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tzAgy" role="lcghm">
                    <property role="lacIc" value="/{id}&quot;, handleDelete" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tzAiS" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tzAjM" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6tziwv" resolve="sn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tzAn7" role="lcghm">
                    <property role="lacIc" value="(" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tzApu" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tzAqo" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6tziwv" resolve="sn" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tzAsd" role="lcghm">
                    <property role="lacIc" value="(" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tzAuz" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tzAwf" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6tz2OZ" resolve="vr" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tzAyQ" role="lcghm">
                    <property role="lacIc" value="))\n\n" />
                  </node>
                </node>
                <node concept="3clFbH" id="4TZlN6tzA_V" role="3cqZAp" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4TZlN6tzDBW" role="3cqZAp">
          <node concept="1PaTwC" id="4TZlN6tzDBX" role="1aUNEU">
            <node concept="3oM_SD" id="4TZlN6tzDBZ" role="1PaTwD">
              <property role="3oM_SC" value="Join" />
            </node>
            <node concept="3oM_SD" id="4TZlN6tzDC0" role="1PaTwD">
              <property role="3oM_SC" value="routes" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="4TZlN6t$FvJ" role="3cqZAp">
          <node concept="2GrKxI" id="4TZlN6t$FvL" role="2Gsz3X">
            <property role="TrG5h" value="schema" />
          </node>
          <node concept="2OqwBi" id="4TZlN6t$WRg" role="2GsD0m">
            <node concept="37vLTw" id="4TZlN6t$UP_" role="2Oq$k0">
              <ref role="3cqZAo" node="4TZlN6tf6hJ" resolve="models" />
            </node>
            <node concept="3Tsc0h" id="4TZlN6t$ZSn" role="2OqNvi">
              <ref role="3TtcxE" to="b1ln:6Rk79gbjaz8" resolve="schemas" />
            </node>
          </node>
          <node concept="3clFbS" id="4TZlN6t$FvP" role="2LFqv$">
            <node concept="3clFbJ" id="4TZlN6t_1N6" role="3cqZAp">
              <node concept="2OqwBi" id="4TZlN6t_1WX" role="3clFbw">
                <node concept="2GrUjf" id="4TZlN6t_1NY" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="4TZlN6t$FvL" resolve="schema" />
                </node>
                <node concept="2qgKlT" id="4TZlN6t_5Gg" role="2OqNvi">
                  <ref role="37wK5l" to="h9pt:4RkLmywWXpy" resolve="hasReferences" />
                </node>
              </node>
              <node concept="3clFbS" id="4TZlN6t_1N8" role="3clFbx">
                <node concept="3cpWs8" id="4TZlN6t_7Gy" role="3cqZAp">
                  <node concept="3cpWsn" id="4TZlN6t_7G_" role="3cpWs9">
                    <property role="TrG5h" value="vr" />
                    <node concept="17QB3L" id="4TZlN6t_7Gx" role="1tU5fm" />
                    <node concept="3cpWs3" id="4TZlN6t_ej_" role="33vP2m">
                      <node concept="Xl_RD" id="4TZlN6t_ejD" role="3uHU7w">
                        <property role="Xl_RC" value="Repo" />
                      </node>
                      <node concept="2OqwBi" id="4TZlN6t_7Sa" role="3uHU7B">
                        <node concept="2GrUjf" id="4TZlN6t_7J2" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="4TZlN6t$FvL" resolve="schema" />
                        </node>
                        <node concept="2qgKlT" id="4TZlN6t_bKb" role="2OqNvi">
                          <ref role="37wK5l" to="h9pt:4RkLmywWNem" resolve="singularName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="4TZlN6t_tYt" role="3cqZAp" />
                <node concept="3cpWs8" id="4TZlN6t_vvS" role="3cqZAp">
                  <node concept="3cpWsn" id="4TZlN6t_vvV" role="3cpWs9">
                    <property role="TrG5h" value="fRef" />
                    <node concept="3Tqbb2" id="4TZlN6t_vvQ" role="1tU5fm">
                      <ref role="ehGHo" to="b1ln:6Rk79gbjbPd" resolve="FieldRefrence" />
                    </node>
                    <node concept="10Nm6u" id="4TZlN6tHdAn" role="33vP2m" />
                  </node>
                </node>
                <node concept="3cpWs8" id="4TZlN6t_GI_" role="3cqZAp">
                  <node concept="3cpWsn" id="4TZlN6t_GIC" role="3cpWs9">
                    <property role="TrG5h" value="sRef" />
                    <node concept="3Tqbb2" id="4TZlN6t_GIz" role="1tU5fm">
                      <ref role="ehGHo" to="b1ln:6Rk79gbjbPd" resolve="FieldRefrence" />
                    </node>
                    <node concept="10Nm6u" id="4TZlN6tHiDG" role="33vP2m" />
                  </node>
                </node>
                <node concept="3clFbH" id="4TZlN6t_IJB" role="3cqZAp" />
                <node concept="2Gpval" id="4TZlN6t_Lnz" role="3cqZAp">
                  <node concept="2GrKxI" id="4TZlN6t_Ln_" role="2Gsz3X">
                    <property role="TrG5h" value="field" />
                  </node>
                  <node concept="2OqwBi" id="4TZlN6t_O2a" role="2GsD0m">
                    <node concept="2GrUjf" id="4TZlN6t_NSX" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="4TZlN6t$FvL" resolve="schema" />
                    </node>
                    <node concept="3Tsc0h" id="4TZlN6t_Qvj" role="2OqNvi">
                      <ref role="3TtcxE" to="b1ln:6Rk79gbjazc" resolve="Fields" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="4TZlN6t_LnD" role="2LFqv$">
                    <node concept="Jncv_" id="4TZlN6tA3pE" role="3cqZAp">
                      <ref role="JncvD" to="b1ln:6Rk79gbjbPd" resolve="FieldRefrence" />
                      <node concept="2GrUjf" id="4TZlN6tA3rL" role="JncvB">
                        <ref role="2Gs0qQ" node="4TZlN6t_Ln_" resolve="field" />
                      </node>
                      <node concept="3clFbS" id="4TZlN6tA3pG" role="Jncv$">
                        <node concept="3clFbJ" id="4TZlN6tA7MJ" role="3cqZAp">
                          <node concept="3clFbC" id="4TZlN6tA7Xl" role="3clFbw">
                            <node concept="10Nm6u" id="4TZlN6tA9Ur" role="3uHU7w" />
                            <node concept="Jnkvi" id="4TZlN6tA7ND" role="3uHU7B">
                              <ref role="1M0zk5" node="4TZlN6tA3pH" resolve="fr" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="4TZlN6tA7ML" role="3clFbx">
                            <node concept="3clFbF" id="4TZlN6tAbQH" role="3cqZAp">
                              <node concept="37vLTI" id="4TZlN6tAfd3" role="3clFbG">
                                <node concept="Jnkvi" id="4TZlN6tAfe5" role="37vLTx">
                                  <ref role="1M0zk5" node="4TZlN6tA3pH" resolve="fr" />
                                </node>
                                <node concept="37vLTw" id="4TZlN6tAc2o" role="37vLTJ">
                                  <ref role="3cqZAo" node="4TZlN6t_vvV" resolve="fRef" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3eNFk2" id="4TZlN6tAff6" role="3eNLev">
                            <node concept="3clFbC" id="4TZlN6tAhvt" role="3eO9$A">
                              <node concept="10Nm6u" id="4TZlN6tAhAx" role="3uHU7w" />
                              <node concept="37vLTw" id="4TZlN6tAheG" role="3uHU7B">
                                <ref role="3cqZAo" node="4TZlN6t_GIC" resolve="sRef" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="4TZlN6tAff8" role="3eOfB_">
                              <node concept="3clFbF" id="4TZlN6tAhBA" role="3cqZAp">
                                <node concept="37vLTI" id="4TZlN6tAhLp" role="3clFbG">
                                  <node concept="Jnkvi" id="4TZlN6tAhMn" role="37vLTx">
                                    <ref role="1M0zk5" node="4TZlN6tA3pH" resolve="fr" />
                                  </node>
                                  <node concept="37vLTw" id="4TZlN6tAhB$" role="37vLTJ">
                                    <ref role="3cqZAo" node="4TZlN6t_GIC" resolve="sRef" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="JncvC" id="4TZlN6tA3pH" role="JncvA">
                        <property role="TrG5h" value="fr" />
                        <node concept="2jxLKc" id="4TZlN6tA3pI" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="lc7rE" id="4TZlN6tAkUV" role="3cqZAp">
                  <node concept="la8eA" id="4TZlN6tAnlA" role="lcghm">
                    <property role="lacIc" value="\t// " />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tAnmy" role="lcghm">
                    <node concept="2OqwBi" id="4TZlN6tAnwR" role="lb14g">
                      <node concept="2GrUjf" id="4TZlN6tAnnv" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="4TZlN6t$FvL" resolve="schema" />
                      </node>
                      <node concept="2qgKlT" id="4TZlN6tApZ0" role="2OqNvi">
                        <ref role="37wK5l" to="h9pt:4RkLmywWSH4" resolve="structName" />
                      </node>
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tAvoH" role="lcghm">
                    <property role="lacIc" value=" assignments\n\tmux.HandleFunc(&quot;POST /" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tAzjK" role="lcghm">
                    <node concept="2OqwBi" id="4TZlN6tAB7O" role="lb14g">
                      <node concept="2OqwBi" id="4TZlN6tAABR" role="2Oq$k0">
                        <node concept="37vLTw" id="4TZlN6tAAtP" role="2Oq$k0">
                          <ref role="3cqZAo" node="4TZlN6t_GIC" resolve="sRef" />
                        </node>
                        <node concept="3TrEf2" id="4TZlN6tAAXJ" role="2OqNvi">
                          <ref role="3Tt5mk" to="b1ln:6Rk79gbjbPh" resolve="target_schema" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="4TZlN6tABlp" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tADjO" role="lcghm">
                    <property role="lacIc" value="/{id}/" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tAIBw" role="lcghm">
                    <node concept="2OqwBi" id="4TZlN6tALfR" role="lb14g">
                      <node concept="2OqwBi" id="4TZlN6tAKIL" role="2Oq$k0">
                        <node concept="37vLTw" id="4TZlN6tAK$J" role="2Oq$k0">
                          <ref role="3cqZAo" node="4TZlN6t_GIC" resolve="sRef" />
                        </node>
                        <node concept="3TrEf2" id="4TZlN6tAL5M" role="2OqNvi">
                          <ref role="3Tt5mk" to="b1ln:6Rk79gbjbPh" resolve="target_schema" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="4TZlN6tALtr" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tANJk" role="lcghm">
                    <property role="lacIc" value="&quot;, handleAssign" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tARxr" role="lcghm">
                    <node concept="2OqwBi" id="4TZlN6tAVbK" role="lb14g">
                      <node concept="2OqwBi" id="4TZlN6tAUPz" role="2Oq$k0">
                        <node concept="37vLTw" id="4TZlN6tAUAj" role="2Oq$k0">
                          <ref role="3cqZAo" node="4TZlN6t_GIC" resolve="sRef" />
                        </node>
                        <node concept="3TrEf2" id="4TZlN6tAV1F" role="2OqNvi">
                          <ref role="3Tt5mk" to="b1ln:6Rk79gbjbPh" resolve="target_schema" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="4TZlN6tAVCL" role="2OqNvi">
                        <ref role="37wK5l" to="h9pt:4RkLmywWSH4" resolve="structName" />
                      </node>
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tAY6I" role="lcghm">
                    <property role="lacIc" value="(" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tB225" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tB3ZQ" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6t_7G_" resolve="vr" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tB5SX" role="lcghm">
                    <property role="lacIc" value="))\n\tmux.HandleFunc(&quot;DELETE /" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tB9pV" role="lcghm">
                    <node concept="2OqwBi" id="4TZlN6tBfst" role="lb14g">
                      <node concept="2OqwBi" id="4TZlN6tBeTf" role="2Oq$k0">
                        <node concept="37vLTw" id="4TZlN6tBeJd" role="2Oq$k0">
                          <ref role="3cqZAo" node="4TZlN6t_vvV" resolve="fRef" />
                        </node>
                        <node concept="3TrEf2" id="4TZlN6tBfg9" role="2OqNvi">
                          <ref role="3Tt5mk" to="b1ln:6Rk79gbjbPh" resolve="target_schema" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="4TZlN6tBfE2" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tBfHj" role="lcghm">
                    <property role="lacIc" value="/{id}/" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tBkSg" role="lcghm">
                    <node concept="2OqwBi" id="4TZlN6tBn_q" role="lb14g">
                      <node concept="2OqwBi" id="4TZlN6tBnfd" role="2Oq$k0">
                        <node concept="37vLTw" id="4TZlN6tBn5a" role="2Oq$k0">
                          <ref role="3cqZAo" node="4TZlN6t_GIC" resolve="sRef" />
                        </node>
                        <node concept="3TrEf2" id="4TZlN6tBnrk" role="2OqNvi">
                          <ref role="3Tt5mk" to="b1ln:6Rk79gbjbPh" resolve="target_schema" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="4TZlN6tBnMY" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tBBUs" role="lcghm">
                    <property role="lacIc" value="/{" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tBGC$" role="lcghm">
                    <node concept="2OqwBi" id="4TZlN6tBIKD" role="lb14g">
                      <node concept="37vLTw" id="4TZlN6tBIAB" role="2Oq$k0">
                        <ref role="3cqZAo" node="4TZlN6t_GIC" resolve="sRef" />
                      </node>
                      <node concept="3TrcHB" id="4TZlN6tBIVA" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tBxZS" role="lcghm">
                    <property role="lacIc" value="}&quot;, handleRemove" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tBMK8" role="lcghm">
                    <node concept="2OqwBi" id="4TZlN6tBP$8" role="lb14g">
                      <node concept="2OqwBi" id="4TZlN6tBP3A" role="2Oq$k0">
                        <node concept="37vLTw" id="4TZlN6tBOWb" role="2Oq$k0">
                          <ref role="3cqZAo" node="4TZlN6t_GIC" resolve="sRef" />
                        </node>
                        <node concept="3TrEf2" id="4TZlN6tBPq3" role="2OqNvi">
                          <ref role="3Tt5mk" to="b1ln:6Rk79gbjbPh" resolve="target_schema" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="4TZlN6tBPY9" role="2OqNvi">
                        <ref role="37wK5l" to="h9pt:4RkLmywWSH4" resolve="structName" />
                      </node>
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tBTbd" role="lcghm">
                    <property role="lacIc" value="(" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tBX8W" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tBZ7x" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6t_7G_" resolve="vr" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tC0G2" role="lcghm">
                    <property role="lacIc" value="))\n\tmux.HandleFunc(&quot;GET /" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tC2gE" role="lcghm">
                    <node concept="2OqwBi" id="4TZlN6tC7mt" role="lb14g">
                      <node concept="2OqwBi" id="4TZlN6tC6ZF" role="2Oq$k0">
                        <node concept="37vLTw" id="4TZlN6tC4Ke" role="2Oq$k0">
                          <ref role="3cqZAo" node="4TZlN6t_vvV" resolve="fRef" />
                        </node>
                        <node concept="3TrEf2" id="4TZlN6tC7co" role="2OqNvi">
                          <ref role="3Tt5mk" to="b1ln:6Rk79gbjbPh" resolve="target_schema" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="4TZlN6tC7$2" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tC857" role="lcghm">
                    <property role="lacIc" value="/{id}/" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tCdru" role="lcghm">
                    <node concept="2OqwBi" id="4TZlN6tCg6M" role="lb14g">
                      <node concept="2OqwBi" id="4TZlN6tCf$o" role="2Oq$k0">
                        <node concept="37vLTw" id="4TZlN6tCfqm" role="2Oq$k0">
                          <ref role="3cqZAo" node="4TZlN6t_GIC" resolve="sRef" />
                        </node>
                        <node concept="3TrEf2" id="4TZlN6tCfUP" role="2OqNvi">
                          <ref role="3Tt5mk" to="b1ln:6Rk79gbjbPh" resolve="target_schema" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="4TZlN6tCgiw" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tCjvo" role="lcghm">
                    <property role="lacIc" value="&quot;, handleGet" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tCl3W" role="lcghm">
                    <node concept="2OqwBi" id="4TZlN6tCny4" role="lb14g">
                      <node concept="2OqwBi" id="4TZlN6tCnae" role="2Oq$k0">
                        <node concept="37vLTw" id="4TZlN6tCn2N" role="2Oq$k0">
                          <ref role="3cqZAo" node="4TZlN6t_vvV" resolve="fRef" />
                        </node>
                        <node concept="3TrEf2" id="4TZlN6tCnwE" role="2OqNvi">
                          <ref role="3Tt5mk" to="b1ln:6Rk79gbjbPh" resolve="target_schema" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="4TZlN6tCnMO" role="2OqNvi">
                        <ref role="37wK5l" to="h9pt:4RkLmywWSH4" resolve="structName" />
                      </node>
                    </node>
                  </node>
                  <node concept="l9hG8" id="4TZlN6tCqZc" role="lcghm">
                    <node concept="2OqwBi" id="4TZlN6tCtsY" role="lb14g">
                      <node concept="2OqwBi" id="4TZlN6tCt8B" role="2Oq$k0">
                        <node concept="37vLTw" id="4TZlN6tCsT_" role="2Oq$k0">
                          <ref role="3cqZAo" node="4TZlN6t_GIC" resolve="sRef" />
                        </node>
                        <node concept="3TrEf2" id="4TZlN6tCtlj" role="2OqNvi">
                          <ref role="3Tt5mk" to="b1ln:6Rk79gbjbPh" resolve="target_schema" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="4TZlN6tCtzO" role="2OqNvi">
                        <ref role="37wK5l" to="h9pt:4RkLmywWSH4" resolve="structName" />
                      </node>
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tCwQD" role="lcghm">
                    <property role="lacIc" value="s(" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tC$rS" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tCBCD" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6t_7G_" resolve="vr" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tCDki" role="lcghm">
                    <property role="lacIc" value="))\n\tmux.HandleFunc(&quot;GET /" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tCFku" role="lcghm">
                    <node concept="2OqwBi" id="4TZlN6tCHIO" role="lb14g">
                      <node concept="2OqwBi" id="4TZlN6tCHuH" role="2Oq$k0">
                        <node concept="37vLTw" id="4TZlN6tCHkF" role="2Oq$k0">
                          <ref role="3cqZAo" node="4TZlN6t_GIC" resolve="sRef" />
                        </node>
                        <node concept="3TrEf2" id="4TZlN6tCHDE" role="2OqNvi">
                          <ref role="3Tt5mk" to="b1ln:6Rk79gbjbPh" resolve="target_schema" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="4TZlN6tCHPF" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tCL1N" role="lcghm">
                    <property role="lacIc" value="/{id}/" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tCN1Z" role="lcghm">
                    <node concept="2OqwBi" id="4TZlN6tCRNM" role="lb14g">
                      <node concept="2OqwBi" id="4TZlN6tCRv3" role="2Oq$k0">
                        <node concept="37vLTw" id="4TZlN6tCP2d" role="2Oq$k0">
                          <ref role="3cqZAo" node="4TZlN6t_vvV" resolve="fRef" />
                        </node>
                        <node concept="3TrEf2" id="4TZlN6tCRFK" role="2OqNvi">
                          <ref role="3Tt5mk" to="b1ln:6Rk79gbjbPh" resolve="target_schema" />
                        </node>
                      </node>
                      <node concept="3TrcHB" id="4TZlN6tCRSz" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tCUlN" role="lcghm">
                    <property role="lacIc" value="&quot;, handleGet" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tCWlZ" role="lcghm">
                    <node concept="2OqwBi" id="4TZlN6tCZ4Y" role="lb14g">
                      <node concept="2OqwBi" id="4TZlN6tCYN4" role="2Oq$k0">
                        <node concept="37vLTw" id="4TZlN6tCYgV" role="2Oq$k0">
                          <ref role="3cqZAo" node="4TZlN6t_GIC" resolve="sRef" />
                        </node>
                        <node concept="3TrEf2" id="4TZlN6tCYZb" role="2OqNvi">
                          <ref role="3Tt5mk" to="b1ln:6Rk79gbjbPh" resolve="target_schema" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="4TZlN6tCZb8" role="2OqNvi">
                        <ref role="37wK5l" to="h9pt:4RkLmywWSH4" resolve="structName" />
                      </node>
                    </node>
                  </node>
                  <node concept="l9hG8" id="4TZlN6tCZeh" role="lcghm">
                    <node concept="2OqwBi" id="4TZlN6tD7Iv" role="lb14g">
                      <node concept="2OqwBi" id="4TZlN6tD4fc" role="2Oq$k0">
                        <node concept="37vLTw" id="4TZlN6tD14u" role="2Oq$k0">
                          <ref role="3cqZAo" node="4TZlN6t_vvV" resolve="fRef" />
                        </node>
                        <node concept="3TrEf2" id="4TZlN6tD4rT" role="2OqNvi">
                          <ref role="3Tt5mk" to="b1ln:6Rk79gbjbPh" resolve="target_schema" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="4TZlN6tD7Ng" role="2OqNvi">
                        <ref role="37wK5l" to="h9pt:4RkLmywWSH4" resolve="structName" />
                      </node>
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tD7PA" role="lcghm">
                    <property role="lacIc" value="s(" />
                  </node>
                  <node concept="l9hG8" id="4TZlN6tD9R_" role="lcghm">
                    <node concept="37vLTw" id="4TZlN6tDd5G" role="lb14g">
                      <ref role="3cqZAo" node="4TZlN6t_7G_" resolve="vr" />
                    </node>
                  </node>
                  <node concept="la8eA" id="4TZlN6tDeHB" role="lcghm">
                    <property role="lacIc" value="))\n\n" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4TZlN6tlWgD" role="3cqZAp" />
        <node concept="lc7rE" id="4TZlN6tDjYG" role="3cqZAp">
          <node concept="la8eA" id="4TZlN6tDxVi" role="lcghm">
            <property role="lacIc" value="\tfmt.Println(&quot;Serving on :" />
          </node>
          <node concept="l9hG8" id="4TZlN6tD_Y9" role="lcghm">
            <node concept="3cpWs3" id="4TZlN6tDDJ0" role="lb14g">
              <node concept="Xl_RD" id="4TZlN6tDDJ4" role="3uHU7w">
                <property role="Xl_RC" value="" />
              </node>
              <node concept="2OqwBi" id="4TZlN6tDCgF" role="3uHU7B">
                <node concept="37vLTw" id="4TZlN6tDC7Q" role="2Oq$k0">
                  <ref role="3cqZAo" node="4TZlN6tf6Kz" resolve="infra" />
                </node>
                <node concept="3TrcHB" id="4TZlN6tDCx7" role="2OqNvi">
                  <ref role="3TsBF5" to="b1ln:4RkLmywWHs9" resolve="port" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="4TZlN6tDGf6" role="lcghm">
            <property role="lacIc" value="&quot;)\n\tfmt.Println(&quot;Swagger UI: http://localhost:" />
          </node>
          <node concept="l9hG8" id="4TZlN6tDKi0" role="lcghm">
            <node concept="3cpWs3" id="4TZlN6tDP6K" role="lb14g">
              <node concept="Xl_RD" id="4TZlN6tDP6O" role="3uHU7w">
                <property role="Xl_RC" value="" />
              </node>
              <node concept="2OqwBi" id="4TZlN6tDNCr" role="3uHU7B">
                <node concept="37vLTw" id="4TZlN6tDNvA" role="2Oq$k0">
                  <ref role="3cqZAo" node="4TZlN6tf6Kz" resolve="infra" />
                </node>
                <node concept="3TrcHB" id="4TZlN6tDNSR" role="2OqNvi">
                  <ref role="3TsBF5" to="b1ln:4RkLmywWHs9" resolve="port" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="4TZlN6tDo7w" role="lcghm">
            <property role="lacIc" value="/swagger/index.html&quot;)\n\tlog.Fatal(http.ListenAndServe(&quot;:" />
          </node>
          <node concept="l9hG8" id="4TZlN6tDRbb" role="lcghm">
            <node concept="3cpWs3" id="4TZlN6tDUQs" role="lb14g">
              <node concept="Xl_RD" id="4TZlN6tDUQw" role="3uHU7w">
                <property role="Xl_RC" value="" />
              </node>
              <node concept="2OqwBi" id="4TZlN6tDTlz" role="3uHU7B">
                <node concept="37vLTw" id="4TZlN6tDTcI" role="2Oq$k0">
                  <ref role="3cqZAo" node="4TZlN6tf6Kz" resolve="infra" />
                </node>
                <node concept="3TrcHB" id="4TZlN6tDTCz" role="2OqNvi">
                  <ref role="3TsBF5" to="b1ln:4RkLmywWHs9" resolve="port" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="4TZlN6tDtQM" role="lcghm">
            <property role="lacIc" value="&quot;, mux))\n}\n" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

