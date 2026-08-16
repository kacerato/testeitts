package org.openjdk.tools.javac.parser;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.function.Function;
import java.util.stream.Collectors;
import org.openjdk.source.tree.MemberReferenceTree;
import org.openjdk.source.tree.ModuleTree;
import org.openjdk.tools.javac.code.BoundKind;
import org.openjdk.tools.javac.code.Flags;
import org.openjdk.tools.javac.code.Source;
import org.openjdk.tools.javac.code.TypeTag;
import org.openjdk.tools.javac.parser.Tokens;
import org.openjdk.tools.javac.resources.CompilerProperties;
import org.openjdk.tools.javac.tree.DocCommentTable;
import org.openjdk.tools.javac.tree.EndPosTable;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.tree.TreeInfo;
import org.openjdk.tools.javac.tree.TreeMaker;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Convert;
import org.openjdk.tools.javac.util.Filter;
import org.openjdk.tools.javac.util.IntHashTable;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Names;

public class JavacParser implements Parser {
    static final boolean $assertionsDisabled = false;
    protected static final int DIAMOND = 16;
    protected static final int EXPR = 1;
    protected static final int NOPARAMS = 4;
    private static final int RECOVERY_THRESHOLD = 50;
    protected static final int TYPE = 2;
    protected static final int TYPEARG = 8;
    private static final int infixPrecedenceLevels = 10;

    protected TreeMaker f103286F;
    protected Filter<Tokens.TokenKind> LAX_IDENTIFIER;

    protected Lexer f103287S;
    boolean allowAnnotationsAfterTypeParams;
    boolean allowDefaultMethods;
    boolean allowDiamond;
    boolean allowEffectivelyFinalVariablesInTWR;
    boolean allowIntersectionTypesInCast;
    boolean allowLambda;
    boolean allowMethodReferences;
    boolean allowModules;
    boolean allowMulticatch;
    boolean allowPrivateInterfaceMethods;
    boolean allowStaticInterfaceMethods;
    boolean allowStringFolding;
    boolean allowTWR;
    boolean allowThisIdent;
    boolean allowTypeAnnotations;
    boolean allowUnderscoreIdentifier;
    private int count;
    private final DocCommentTable docComments;
    protected final AbstractEndPosTable endPosTable;
    private int errorPos;
    private JCTree.JCErroneous errorTree;
    boolean keepDocComments;
    boolean keepLineMap;
    protected int lastmode;
    private Log log;
    protected int mode;
    private Names names;
    ArrayList<JCTree.JCExpression[]> odStackSupply;
    ArrayList<Tokens.Token[]> opStackSupply;
    private final boolean parseModuleInfo;
    private boolean permitTypeAnnotationsPushBack;
    JCTree.JCVariableDecl receiverParam;
    private Source source;
    protected Tokens.Token token;
    private List<JCTree.JCAnnotation> typeAnnotationsPushedBack;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$sun$tools$javac$parser$JavacParser$ParensResult;
        static final int[] $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind;
        static final int[] $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag;

        static {
            int[] iArr = new int[JCTree.Tag.values().length];
            $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag = iArr;
            try {
                iArr[JCTree.Tag.REFERENCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.SELECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.CLASSDEF.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.VARDEF.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[ParensResult.values().length];
            $SwitchMap$com$sun$tools$javac$parser$JavacParser$ParensResult = iArr2;
            try {
                iArr2[ParensResult.CAST.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$JavacParser$ParensResult[ParensResult.IMPLICIT_LAMBDA.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$JavacParser$ParensResult[ParensResult.EXPLICIT_LAMBDA.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[Tokens.TokenKind.values().length];
            $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind = iArr3;
            try {
                iArr3[Tokens.TokenKind.SEMI.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.PUBLIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.FINAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.ABSTRACT.ordinal()] = 4;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.MONKEYS_AT.ordinal()] = 5;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.EOF.ordinal()] = 6;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.CLASS.ordinal()] = 7;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.INTERFACE.ordinal()] = 8;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.ENUM.ordinal()] = 9;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.IMPORT.ordinal()] = 10;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.LBRACE.ordinal()] = 11;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.RBRACE.ordinal()] = 12;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.PRIVATE.ordinal()] = 13;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.PROTECTED.ordinal()] = 14;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.STATIC.ordinal()] = 15;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.TRANSIENT.ordinal()] = 16;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.NATIVE.ordinal()] = 17;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.VOLATILE.ordinal()] = 18;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.SYNCHRONIZED.ordinal()] = 19;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.STRICTFP.ordinal()] = 20;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.LT.ordinal()] = 21;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.BYTE.ordinal()] = 22;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.SHORT.ordinal()] = 23;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.CHAR.ordinal()] = 24;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.INT.ordinal()] = 25;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.LONG.ordinal()] = 26;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.FLOAT.ordinal()] = 27;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.DOUBLE.ordinal()] = 28;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.BOOLEAN.ordinal()] = 29;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.VOID.ordinal()] = 30;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.UNDERSCORE.ordinal()] = 31;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.IDENTIFIER.ordinal()] = 32;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.CASE.ordinal()] = 33;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.DEFAULT.ordinal()] = 34;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.IF.ordinal()] = 35;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.FOR.ordinal()] = 36;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.WHILE.ordinal()] = 37;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.DO.ordinal()] = 38;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.TRY.ordinal()] = 39;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.SWITCH.ordinal()] = 40;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.RETURN.ordinal()] = 41;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.THROW.ordinal()] = 42;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.BREAK.ordinal()] = 43;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.CONTINUE.ordinal()] = 44;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.ELSE.ordinal()] = 45;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.FINALLY.ordinal()] = 46;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.CATCH.ordinal()] = 47;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.THIS.ordinal()] = 48;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.SUPER.ordinal()] = 49;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.NEW.ordinal()] = 50;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.ASSERT.ordinal()] = 51;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.INTLITERAL.ordinal()] = 52;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.LONGLITERAL.ordinal()] = 53;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.FLOATLITERAL.ordinal()] = 54;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.DOUBLELITERAL.ordinal()] = 55;
            } catch (NoSuchFieldError unused62) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.CHARLITERAL.ordinal()] = 56;
            } catch (NoSuchFieldError unused63) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.STRINGLITERAL.ordinal()] = 57;
            } catch (NoSuchFieldError unused64) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.TRUE.ordinal()] = 58;
            } catch (NoSuchFieldError unused65) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.FALSE.ordinal()] = 59;
            } catch (NoSuchFieldError unused66) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.NULL.ordinal()] = 60;
            } catch (NoSuchFieldError unused67) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.EQ.ordinal()] = 61;
            } catch (NoSuchFieldError unused68) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.PLUSEQ.ordinal()] = 62;
            } catch (NoSuchFieldError unused69) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.SUBEQ.ordinal()] = 63;
            } catch (NoSuchFieldError unused70) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.STAREQ.ordinal()] = 64;
            } catch (NoSuchFieldError unused71) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.SLASHEQ.ordinal()] = 65;
            } catch (NoSuchFieldError unused72) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.PERCENTEQ.ordinal()] = 66;
            } catch (NoSuchFieldError unused73) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.AMPEQ.ordinal()] = 67;
            } catch (NoSuchFieldError unused74) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.BAREQ.ordinal()] = 68;
            } catch (NoSuchFieldError unused75) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.CARETEQ.ordinal()] = 69;
            } catch (NoSuchFieldError unused76) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.LTLTEQ.ordinal()] = 70;
            } catch (NoSuchFieldError unused77) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.GTGTEQ.ordinal()] = 71;
            } catch (NoSuchFieldError unused78) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.GTGTGTEQ.ordinal()] = 72;
            } catch (NoSuchFieldError unused79) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.LBRACKET.ordinal()] = 73;
            } catch (NoSuchFieldError unused80) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.LPAREN.ordinal()] = 74;
            } catch (NoSuchFieldError unused81) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.DOT.ordinal()] = 75;
            } catch (NoSuchFieldError unused82) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.ELLIPSIS.ordinal()] = 76;
            } catch (NoSuchFieldError unused83) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.QUES.ordinal()] = 77;
            } catch (NoSuchFieldError unused84) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.PLUSPLUS.ordinal()] = 78;
            } catch (NoSuchFieldError unused85) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.SUBSUB.ordinal()] = 79;
            } catch (NoSuchFieldError unused86) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.BANG.ordinal()] = 80;
            } catch (NoSuchFieldError unused87) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.TILDE.ordinal()] = 81;
            } catch (NoSuchFieldError unused88) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.PLUS.ordinal()] = 82;
            } catch (NoSuchFieldError unused89) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.SUB.ordinal()] = 83;
            } catch (NoSuchFieldError unused90) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.RPAREN.ordinal()] = 84;
            } catch (NoSuchFieldError unused91) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.EXTENDS.ordinal()] = 85;
            } catch (NoSuchFieldError unused92) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.RBRACKET.ordinal()] = 86;
            } catch (NoSuchFieldError unused93) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.COMMA.ordinal()] = 87;
            } catch (NoSuchFieldError unused94) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.GTGTGT.ordinal()] = 88;
            } catch (NoSuchFieldError unused95) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.GTGT.ordinal()] = 89;
            } catch (NoSuchFieldError unused96) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.GT.ordinal()] = 90;
            } catch (NoSuchFieldError unused97) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.AMP.ordinal()] = 91;
            } catch (NoSuchFieldError unused98) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.GTEQ.ordinal()] = 92;
            } catch (NoSuchFieldError unused99) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.ERROR.ordinal()] = 93;
            } catch (NoSuchFieldError unused100) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.BARBAR.ordinal()] = 94;
            } catch (NoSuchFieldError unused101) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.AMPAMP.ordinal()] = 95;
            } catch (NoSuchFieldError unused102) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.BAR.ordinal()] = 96;
            } catch (NoSuchFieldError unused103) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.CARET.ordinal()] = 97;
            } catch (NoSuchFieldError unused104) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.EQEQ.ordinal()] = 98;
            } catch (NoSuchFieldError unused105) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.BANGEQ.ordinal()] = 99;
            } catch (NoSuchFieldError unused106) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.LTEQ.ordinal()] = 100;
            } catch (NoSuchFieldError unused107) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.LTLT.ordinal()] = 101;
            } catch (NoSuchFieldError unused108) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.STAR.ordinal()] = 102;
            } catch (NoSuchFieldError unused109) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.SLASH.ordinal()] = 103;
            } catch (NoSuchFieldError unused110) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.PERCENT.ordinal()] = 104;
            } catch (NoSuchFieldError unused111) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[Tokens.TokenKind.INSTANCEOF.ordinal()] = 105;
            } catch (NoSuchFieldError unused112) {
            }
        }
    }

    public static abstract class AbstractEndPosTable implements EndPosTable {
        public int errorEndPos = -1;
        protected JavacParser parser;

        public AbstractEndPosTable(JavacParser javacParser) {
            this.parser = javacParser;
        }

        public void setErrorEndPos(int i10) {
            if (i10 > this.errorEndPos) {
                this.errorEndPos = i10;
            }
        }

        public void setParser(JavacParser javacParser) {
            this.parser = javacParser;
        }

        public abstract <T extends JCTree> T to(T t10);

        public abstract <T extends JCTree> T toP(T t10);
    }

    public enum BasicErrorRecoveryAction implements ErrorRecoveryAction {
        BLOCK_STMT {
            @Override
            public JCTree doRecover(JavacParser javacParser) {
                return javacParser.parseStatementAsBlock();
            }
        },
        CATCH_CLAUSE {
            @Override
            public JCTree doRecover(JavacParser javacParser) {
                return javacParser.catchClause();
            }
        };

        BasicErrorRecoveryAction(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public static class EmptyEndPosTable extends AbstractEndPosTable {
        public EmptyEndPosTable(JavacParser javacParser) {
            super(javacParser);
        }

        @Override
        public int getEndPos(JCTree jCTree) {
            return -1;
        }

        @Override
        public int replaceTree(JCTree jCTree, JCTree jCTree2) {
            return -1;
        }

        @Override
        public void storeEnd(JCTree jCTree, int i10) {
        }

        @Override
        public <T extends JCTree> T to(T t10) {
            return t10;
        }

        @Override
        public <T extends JCTree> T toP(T t10) {
            return t10;
        }
    }

    public interface ErrorRecoveryAction {
        JCTree doRecover(JavacParser javacParser);
    }

    public enum ParensResult {
        CAST,
        EXPLICIT_LAMBDA,
        IMPLICIT_LAMBDA,
        PARENS
    }

    public static class SimpleEndPosTable extends AbstractEndPosTable {
        private final IntHashTable endPosMap;

        public SimpleEndPosTable(JavacParser javacParser) {
            super(javacParser);
            this.endPosMap = new IntHashTable();
        }

        @Override
        public int getEndPos(JCTree jCTree) {
            IntHashTable intHashTable = this.endPosMap;
            int fromIndex = intHashTable.getFromIndex(intHashTable.lookup(jCTree));
            if (fromIndex == -1) {
                return -1;
            }
            return fromIndex;
        }

        @Override
        public int replaceTree(JCTree jCTree, JCTree jCTree2) {
            int remove = this.endPosMap.remove(jCTree);
            if (remove == -1) {
                return -1;
            }
            storeEnd(jCTree2, remove);
            return remove;
        }

        @Override
        public void storeEnd(JCTree jCTree, int i10) {
            IntHashTable intHashTable = this.endPosMap;
            int i11 = this.errorEndPos;
            if (i11 > i10) {
                i10 = i11;
            }
            intHashTable.putAtIndex(jCTree, i10, intHashTable.lookup(jCTree));
        }

        @Override
        public <T extends JCTree> T to(T t10) {
            storeEnd(t10, this.parser.token.endPos);
            return t10;
        }

        @Override
        public <T extends JCTree> T toP(T t10) {
            storeEnd(t10, this.parser.f103287S.prevToken().endPos);
            return t10;
        }
    }

    public JavacParser(ParserFactory parserFactory, Lexer lexer, boolean z10, boolean z11, boolean z12) {
        this(parserFactory, lexer, z10, z11, z12, false);
    }

    private JCTree.JCExpression bracketsOpt(JCTree.JCExpression jCExpression, List<JCTree.JCAnnotation> list) {
        List<JCTree.JCAnnotation> typeAnnotationsOpt = typeAnnotationsOpt();
        Tokens.Token token = this.token;
        if (token.kind == Tokens.TokenKind.LBRACKET) {
            int i10 = token.pos;
            nextToken();
            jCExpression = bracketsOptCont(jCExpression, i10, typeAnnotationsOpt);
        } else if (!typeAnnotationsOpt.isEmpty()) {
            if (this.permitTypeAnnotationsPushBack) {
                this.typeAnnotationsPushedBack = typeAnnotationsOpt;
            } else {
                return illegal(typeAnnotationsOpt.head.pos);
            }
        }
        return !list.isEmpty() ? (JCTree.JCExpression) toP(this.f103286F.at(this.token.pos).AnnotatedType(list, jCExpression)) : jCExpression;
    }

    private JCTree.JCExpression bracketsOptCont(JCTree.JCExpression jCExpression, int i10, List<JCTree.JCAnnotation> list) {
        accept(Tokens.TokenKind.RBRACKET);
        JCTree.JCExpression jCExpression2 = (JCTree.JCExpression) toP(this.f103286F.at(i10).TypeArray(bracketsOpt(jCExpression)));
        return list.nonEmpty() ? (JCTree.JCExpression) toP(this.f103286F.at(i10).AnnotatedType(list, jCExpression2)) : jCExpression2;
    }

    private JCTree.JCStatement doRecover(int i10, ErrorRecoveryAction errorRecoveryAction, String str) {
        int errPos = this.f103287S.errPos();
        JCTree doRecover = errorRecoveryAction.doRecover(this);
        this.f103287S.errPos(errPos);
        return (JCTree.JCStatement) toP(this.f103286F.Exec(syntaxError(i10, List.of(doRecover), str, new Tokens.TokenKind[0])));
    }

    public static int earlier(int i10, int i11) {
        return i10 == -1 ? i11 : (i11 != -1 && i10 >= i11) ? i11 : i10;
    }

    private boolean foldIfNeeded(JCTree.JCExpression jCExpression, ListBuffer<JCTree.JCLiteral> listBuffer, ListBuffer<JCTree.JCExpression> listBuffer2, boolean z10) {
        JCTree.JCLiteral stringLiteral = stringLiteral(jCExpression);
        if (stringLiteral != null) {
            listBuffer.prepend(stringLiteral);
            return z10 && merge(listBuffer, listBuffer2);
        }
        boolean merge = merge(listBuffer, listBuffer2);
        listBuffer.clear();
        listBuffer2.prepend(jCExpression);
        return merge;
    }

    private JCTree.JCExpression insertAnnotationsToMostInner(JCTree.JCExpression jCExpression, List<JCTree.JCAnnotation> list, boolean z10) {
        JCTree.Tag tag;
        JCTree.Tag tag2;
        int endPos = getEndPos(jCExpression);
        JCTree.JCArrayTypeTree jCArrayTypeTree = null;
        JCTree.JCExpression jCExpression2 = jCExpression;
        while (TreeInfo.typeIn(jCExpression2).hasTag(JCTree.Tag.TYPEARRAY)) {
            jCArrayTypeTree = (JCTree.JCArrayTypeTree) TreeInfo.typeIn(jCExpression2);
            jCExpression2 = jCArrayTypeTree.elemtype;
        }
        if (z10) {
            jCExpression2 = (JCTree.JCExpression) to(this.f103286F.at(this.token.pos).TypeArray(jCExpression2));
        }
        if (list.nonEmpty()) {
            JCTree.JCExpression jCExpression3 = jCExpression2;
            JCTree.JCExpression jCExpression4 = jCExpression3;
            while (true) {
                JCTree.JCExpression typeIn = TreeInfo.typeIn(jCExpression3);
                tag = JCTree.Tag.SELECT;
                if (!typeIn.hasTag(tag)) {
                    JCTree.JCExpression typeIn2 = TreeInfo.typeIn(jCExpression3);
                    tag2 = JCTree.Tag.TYPEAPPLY;
                    if (!typeIn2.hasTag(tag2)) {
                        break;
                    }
                }
                while (TreeInfo.typeIn(jCExpression3).hasTag(JCTree.Tag.SELECT)) {
                    jCExpression4 = jCExpression3;
                    jCExpression3 = ((JCTree.JCFieldAccess) TreeInfo.typeIn(jCExpression3)).getExpression();
                }
                while (TreeInfo.typeIn(jCExpression3).hasTag(JCTree.Tag.TYPEAPPLY)) {
                    jCExpression4 = jCExpression3;
                    jCExpression3 = ((JCTree.JCTypeApply) TreeInfo.typeIn(jCExpression3)).clazz;
                }
            }
            JCTree.JCAnnotatedType AnnotatedType = this.f103286F.at(list.head.pos).AnnotatedType(list, jCExpression3);
            if (TreeInfo.typeIn(jCExpression4).hasTag(tag2)) {
                ((JCTree.JCTypeApply) TreeInfo.typeIn(jCExpression4)).clazz = AnnotatedType;
            } else if (TreeInfo.typeIn(jCExpression4).hasTag(tag)) {
                ((JCTree.JCFieldAccess) TreeInfo.typeIn(jCExpression4)).selected = AnnotatedType;
            } else {
                jCExpression2 = AnnotatedType;
            }
        }
        if (jCArrayTypeTree == null) {
            return jCExpression2;
        }
        jCArrayTypeTree.elemtype = jCExpression2;
        storeEnd(jCExpression, endPos);
        return jCExpression;
    }

    public static String lambda$merge$0(JCTree.JCLiteral jCLiteral) {
        return (String) jCLiteral.getValue();
    }

    public static boolean lambda$new$1(Tokens.TokenKind tokenKind) {
        return tokenKind == Tokens.TokenKind.IDENTIFIER || tokenKind == Tokens.TokenKind.UNDERSCORE || tokenKind == Tokens.TokenKind.ASSERT || tokenKind == Tokens.TokenKind.ENUM;
    }

    private JCTree.JCExpression makeOp(int i10, Tokens.TokenKind tokenKind, JCTree.JCExpression jCExpression, JCTree.JCExpression jCExpression2) {
        return tokenKind == Tokens.TokenKind.INSTANCEOF ? this.f103286F.at(i10).TypeTest(jCExpression, jCExpression2) : this.f103286F.at(i10).Binary(optag(tokenKind), jCExpression, jCExpression2);
    }

    private JCTree.JCExpression[] newOdStack() {
        if (this.odStackSupply.isEmpty()) {
            return new JCTree.JCExpression[11];
        }
        return this.odStackSupply.remove(r0.size() - 1);
    }

    private Tokens.Token[] newOpStack() {
        if (this.opStackSupply.isEmpty()) {
            return new Tokens.Token[11];
        }
        return this.opStackSupply.remove(r0.size() - 1);
    }

    public static JCTree.Tag optag(Tokens.TokenKind tokenKind) {
        int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[tokenKind.ordinal()];
        if (i10 == 21) {
            return JCTree.Tag.LT;
        }
        if (i10 == 82) {
            return JCTree.Tag.PLUS;
        }
        if (i10 == 83) {
            return JCTree.Tag.MINUS;
        }
        switch (i10) {
            case 62:
                return JCTree.Tag.PLUS_ASG;
            case 63:
                return JCTree.Tag.MINUS_ASG;
            case 64:
                return JCTree.Tag.MUL_ASG;
            case 65:
                return JCTree.Tag.DIV_ASG;
            case 66:
                return JCTree.Tag.MOD_ASG;
            case 67:
                return JCTree.Tag.BITAND_ASG;
            case 68:
                return JCTree.Tag.BITOR_ASG;
            case 69:
                return JCTree.Tag.BITXOR_ASG;
            case 70:
                return JCTree.Tag.SL_ASG;
            case 71:
                return JCTree.Tag.SR_ASG;
            case 72:
                return JCTree.Tag.USR_ASG;
            default:
                switch (i10) {
                    case 88:
                        return JCTree.Tag.USR;
                    case 89:
                        return JCTree.Tag.SR;
                    case 90:
                        return JCTree.Tag.GT;
                    case 91:
                        return JCTree.Tag.BITAND;
                    case 92:
                        return JCTree.Tag.GE;
                    default:
                        switch (i10) {
                            case 94:
                                return JCTree.Tag.OR;
                            case 95:
                                return JCTree.Tag.AND;
                            case 96:
                                return JCTree.Tag.BITOR;
                            case 97:
                                return JCTree.Tag.BITXOR;
                            case 98:
                                return JCTree.Tag.EQ;
                            case 99:
                                return JCTree.Tag.NE;
                            case 100:
                                return JCTree.Tag.LE;
                            case 101:
                                return JCTree.Tag.SL;
                            case 102:
                                return JCTree.Tag.MUL;
                            case 103:
                                return JCTree.Tag.DIV;
                            case 104:
                                return JCTree.Tag.MOD;
                            case 105:
                                return JCTree.Tag.TYPETEST;
                            default:
                                return JCTree.Tag.NO_TAG;
                        }
                }
        }
    }

    public static int prec(Tokens.TokenKind tokenKind) {
        JCTree.Tag optag = optag(tokenKind);
        if (optag != JCTree.Tag.NO_TAG) {
            return TreeInfo.opPrec(optag);
        }
        return -1;
    }

    private JCTree.JCLiteral stringLiteral(JCTree jCTree) {
        if (!jCTree.hasTag(JCTree.Tag.LITERAL)) {
            return null;
        }
        JCTree.JCLiteral jCLiteral = (JCTree.JCLiteral) jCTree;
        if (jCLiteral.typetag == TypeTag.CLASS) {
            return jCLiteral;
        }
        return null;
    }

    public static TypeTag typetag(Tokens.TokenKind tokenKind) {
        switch (AnonymousClass1.$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[tokenKind.ordinal()]) {
            case 22:
                return TypeTag.BYTE;
            case 23:
                return TypeTag.SHORT;
            case 24:
                return TypeTag.CHAR;
            case 25:
                return TypeTag.INT;
            case 26:
                return TypeTag.LONG;
            case 27:
                return TypeTag.FLOAT;
            case 28:
                return TypeTag.DOUBLE;
            case 29:
                return TypeTag.BOOLEAN;
            default:
                return TypeTag.NONE;
        }
    }

    public static JCTree.Tag unoptag(Tokens.TokenKind tokenKind) {
        switch (AnonymousClass1.$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[tokenKind.ordinal()]) {
            case 78:
                return JCTree.Tag.PREINC;
            case 79:
                return JCTree.Tag.PREDEC;
            case 80:
                return JCTree.Tag.NOT;
            case 81:
                return JCTree.Tag.COMPL;
            case 82:
                return JCTree.Tag.POS;
            case 83:
                return JCTree.Tag.NEG;
            default:
                return JCTree.Tag.NO_TAG;
        }
    }

    public void accept(Tokens.TokenKind tokenKind) {
        Tokens.Token token = this.token;
        if (token.kind == tokenKind) {
            nextToken();
        } else {
            setErrorEndPos(token.pos);
            reportSyntaxError(this.f103287S.prevToken().endPos, "expected", tokenKind);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0078, code lost:
    
        return org.openjdk.tools.javac.parser.JavacParser.ParensResult.EXPLICIT_LAMBDA;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x007b, code lost:
    
        return org.openjdk.tools.javac.parser.JavacParser.ParensResult.CAST;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x00ce, code lost:
    
        return org.openjdk.tools.javac.parser.JavacParser.ParensResult.CAST;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0172, code lost:
    
        return org.openjdk.tools.javac.parser.JavacParser.ParensResult.EXPLICIT_LAMBDA;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:15:0x0031. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x0034. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:17:0x0037. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x007c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ParensResult analyzeParens() {
        int i10 = 0;
        int i11 = 0;
        boolean z10 = false;
        while (true) {
            Tokens.TokenKind tokenKind = this.f103287S.token(i10).kind;
            int[] iArr = AnonymousClass1.$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind;
            int i12 = iArr[tokenKind.ordinal()];
            if (i12 != 3) {
                if (i12 != 5) {
                    if (i12 != 9) {
                        if (i12 == 49) {
                            continue;
                        } else if (i12 != 51) {
                            if (i12 == 84) {
                                if (z10) {
                                    return ParensResult.CAST;
                                }
                                int i13 = iArr[this.f103287S.token(i10 + 1).kind.ordinal()];
                                if (i13 != 9 && i13 != 74 && i13 != 80 && i13 != 81) {
                                    switch (i13) {
                                        case 22:
                                        case 23:
                                        case 24:
                                        case 25:
                                        case 26:
                                        case 27:
                                        case 28:
                                        case 29:
                                        case 30:
                                        case 31:
                                        case 32:
                                            break;
                                        default:
                                            switch (i13) {
                                                case 48:
                                                case 49:
                                                case 50:
                                                case 51:
                                                case 52:
                                                case 53:
                                                case 54:
                                                case 55:
                                                case 56:
                                                case 57:
                                                case 58:
                                                case 59:
                                                case 60:
                                                    break;
                                                default:
                                                    return ParensResult.PARENS;
                                            }
                                    }
                                }
                                return ParensResult.CAST;
                            }
                            if (i12 != 85) {
                                switch (i12) {
                                    case 21:
                                        i11++;
                                        break;
                                    case 22:
                                    case 23:
                                    case 24:
                                    case 25:
                                    case 26:
                                    case 27:
                                    case 28:
                                    case 29:
                                    case 30:
                                        if (!peekToken(i10, Tokens.TokenKind.RPAREN)) {
                                            if (!peekToken(i10, this.LAX_IDENTIFIER)) {
                                                break;
                                            } else {
                                                return ParensResult.EXPLICIT_LAMBDA;
                                            }
                                        } else {
                                            return ParensResult.CAST;
                                        }
                                    case 31:
                                    case 32:
                                        break;
                                    default:
                                        switch (i12) {
                                            case 73:
                                                Tokens.TokenKind tokenKind2 = Tokens.TokenKind.RBRACKET;
                                                if (peekToken(i10, tokenKind2, this.LAX_IDENTIFIER)) {
                                                    return ParensResult.EXPLICIT_LAMBDA;
                                                }
                                                if (!peekToken(i10, tokenKind2, Tokens.TokenKind.RPAREN) && !peekToken(i10, tokenKind2, Tokens.TokenKind.AMP)) {
                                                    if (!peekToken(i10, tokenKind2)) {
                                                        return ParensResult.PARENS;
                                                    }
                                                    i10++;
                                                    break;
                                                }
                                                break;
                                            case 74:
                                                if (i10 == 0) {
                                                    if (!peekToken(i10, Tokens.TokenKind.RPAREN)) {
                                                        break;
                                                    } else {
                                                        return ParensResult.EXPLICIT_LAMBDA;
                                                    }
                                                } else {
                                                    return ParensResult.PARENS;
                                                }
                                            case 75:
                                                break;
                                            case 76:
                                                break;
                                            case 77:
                                                if (!peekToken(i10, Tokens.TokenKind.EXTENDS) && !peekToken(i10, Tokens.TokenKind.SUPER)) {
                                                    break;
                                                }
                                                break;
                                            default:
                                                switch (i12) {
                                                    case 87:
                                                        break;
                                                    case 88:
                                                        i11--;
                                                        i11--;
                                                        i11--;
                                                        if (i11 != 0) {
                                                            if (i11 >= 0) {
                                                                break;
                                                            } else {
                                                                return ParensResult.PARENS;
                                                            }
                                                        } else {
                                                            Tokens.TokenKind tokenKind3 = Tokens.TokenKind.RPAREN;
                                                            if (!peekToken(i10, tokenKind3) && !peekToken(i10, Tokens.TokenKind.AMP)) {
                                                                if (peekToken(i10, this.LAX_IDENTIFIER, Tokens.TokenKind.COMMA) || peekToken(i10, this.LAX_IDENTIFIER, tokenKind3, Tokens.TokenKind.ARROW) || peekToken(i10, Tokens.TokenKind.ELLIPSIS)) {
                                                                }
                                                            }
                                                        }
                                                        break;
                                                    case 89:
                                                        i11--;
                                                        i11--;
                                                        if (i11 != 0) {
                                                        }
                                                        break;
                                                    case 90:
                                                        i11--;
                                                        if (i11 != 0) {
                                                        }
                                                        break;
                                                    case 91:
                                                        break;
                                                    default:
                                                        return ParensResult.PARENS;
                                                }
                                        }
                                }
                            } else {
                                continue;
                            }
                        }
                        i10++;
                    }
                    if (peekToken(i10, this.LAX_IDENTIFIER)) {
                        return ParensResult.EXPLICIT_LAMBDA;
                    }
                    if (peekToken(i10, Tokens.TokenKind.RPAREN, Tokens.TokenKind.ARROW)) {
                        return ParensResult.IMPLICIT_LAMBDA;
                    }
                    z10 = false;
                    i10++;
                } else {
                    i10++;
                    while (peekToken(i10, Tokens.TokenKind.DOT)) {
                        i10 += 2;
                    }
                    if (peekToken(i10, Tokens.TokenKind.LPAREN)) {
                        i10++;
                        int i14 = 0;
                        while (true) {
                            int i15 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[this.f103287S.token(i10).kind.ordinal()];
                            if (i15 == 6) {
                                return ParensResult.PARENS;
                            }
                            if (i15 == 74) {
                                i14++;
                            } else if (i15 == 84 && i14 - 1 == 0) {
                            }
                            i10++;
                        }
                    }
                }
                z10 = true;
                i10++;
            }
        }
    }

    public JCTree.JCAnnotation annotation(int i10, JCTree.Tag tag) {
        JCTree.JCAnnotation TypeAnnotation;
        JCTree.Tag tag2 = JCTree.Tag.TYPE_ANNOTATION;
        if (tag == tag2) {
            checkTypeAnnotations();
        }
        JCTree.JCExpression qualident = qualident(false);
        List<JCTree.JCExpression> annotationFieldValuesOpt = annotationFieldValuesOpt();
        if (tag == JCTree.Tag.ANNOTATION) {
            TypeAnnotation = this.f103286F.at(i10).Annotation(qualident, annotationFieldValuesOpt);
        } else {
            if (tag != tag2) {
                throw new AssertionError((Object) ("Unhandled annotation kind: " + ((Object) tag)));
            }
            TypeAnnotation = this.f103286F.at(i10).TypeAnnotation(qualident, annotationFieldValuesOpt);
        }
        storeEnd(TypeAnnotation, this.f103287S.prevToken().endPos);
        return TypeAnnotation;
    }

    public JCTree.JCExpression annotationFieldValue() {
        if (!this.LAX_IDENTIFIER.accepts(this.token.kind)) {
            return annotationValue();
        }
        this.mode = 1;
        JCTree.JCExpression term1 = term1();
        if (!term1.hasTag(JCTree.Tag.IDENT)) {
            return term1;
        }
        Tokens.Token token = this.token;
        Tokens.TokenKind tokenKind = token.kind;
        Tokens.TokenKind tokenKind2 = Tokens.TokenKind.EQ;
        if (tokenKind != tokenKind2) {
            return term1;
        }
        int i10 = token.pos;
        accept(tokenKind2);
        return (JCTree.JCExpression) toP(this.f103286F.at(i10).Assign(term1, annotationValue()));
    }

    public List<JCTree.JCExpression> annotationFieldValues() {
        accept(Tokens.TokenKind.LPAREN);
        ListBuffer listBuffer = new ListBuffer();
        if (this.token.kind != Tokens.TokenKind.RPAREN) {
            listBuffer.append(annotationFieldValue());
            while (this.token.kind == Tokens.TokenKind.COMMA) {
                nextToken();
                listBuffer.append(annotationFieldValue());
            }
        }
        accept(Tokens.TokenKind.RPAREN);
        return listBuffer.toList();
    }

    public List<JCTree.JCExpression> annotationFieldValuesOpt() {
        return this.token.kind == Tokens.TokenKind.LPAREN ? annotationFieldValues() : List.nil();
    }

    public JCTree.JCExpression annotationValue() {
        int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[this.token.kind.ordinal()];
        if (i10 == 5) {
            int i11 = this.token.pos;
            nextToken();
            return annotation(i11, JCTree.Tag.ANNOTATION);
        }
        if (i10 != 11) {
            this.mode = 1;
            return term1();
        }
        int i12 = this.token.pos;
        accept(Tokens.TokenKind.LBRACE);
        ListBuffer listBuffer = new ListBuffer();
        Tokens.TokenKind tokenKind = this.token.kind;
        if (tokenKind == Tokens.TokenKind.COMMA) {
            nextToken();
        } else if (tokenKind != Tokens.TokenKind.RBRACE) {
            listBuffer.append(annotationValue());
            while (this.token.kind == Tokens.TokenKind.COMMA) {
                nextToken();
                if (this.token.kind == Tokens.TokenKind.RBRACE) {
                    break;
                }
                listBuffer.append(annotationValue());
            }
        }
        accept(Tokens.TokenKind.RBRACE);
        return (JCTree.JCExpression) toP(this.f103286F.at(i12).NewArray(null, List.nil(), listBuffer.toList()));
    }

    public List<JCTree.JCAnnotation> annotationsOpt(JCTree.Tag tag) {
        if (this.token.kind != Tokens.TokenKind.MONKEYS_AT) {
            return List.nil();
        }
        ListBuffer listBuffer = new ListBuffer();
        int i10 = this.mode;
        while (true) {
            Tokens.Token token = this.token;
            if (token.kind != Tokens.TokenKind.MONKEYS_AT) {
                this.lastmode = this.mode;
                this.mode = i10;
                return listBuffer.toList();
            }
            int i11 = token.pos;
            nextToken();
            listBuffer.append(annotation(i11, tag));
        }
    }

    public List<JCTree.JCExpression> arguments() {
        ListBuffer listBuffer = new ListBuffer();
        Tokens.Token token = this.token;
        Tokens.TokenKind tokenKind = token.kind;
        Tokens.TokenKind tokenKind2 = Tokens.TokenKind.LPAREN;
        if (tokenKind == tokenKind2) {
            nextToken();
            if (this.token.kind != Tokens.TokenKind.RPAREN) {
                listBuffer.append(parseExpression());
                while (this.token.kind == Tokens.TokenKind.COMMA) {
                    nextToken();
                    listBuffer.append(parseExpression());
                }
            }
            accept(Tokens.TokenKind.RPAREN);
        } else {
            syntaxError(token.pos, "expected", tokenKind2);
        }
        return listBuffer.toList();
    }

    public JCTree.JCExpression argumentsOpt(List<JCTree.JCExpression> list, JCTree.JCExpression jCExpression) {
        if (((this.mode & 1) == 0 || this.token.kind != Tokens.TokenKind.LPAREN) && list == null) {
            return jCExpression;
        }
        this.mode = 1;
        return arguments(list, jCExpression);
    }

    public JCTree.JCExpression arrayCreatorRest(int i10, JCTree.JCExpression jCExpression) {
        List<JCTree.JCAnnotation> typeAnnotationsOpt = typeAnnotationsOpt();
        accept(Tokens.TokenKind.LBRACKET);
        Tokens.TokenKind tokenKind = this.token.kind;
        Tokens.TokenKind tokenKind2 = Tokens.TokenKind.RBRACKET;
        if (tokenKind == tokenKind2) {
            accept(tokenKind2);
            JCTree.JCExpression bracketsOpt = bracketsOpt(jCExpression, typeAnnotationsOpt);
            if (this.token.kind != Tokens.TokenKind.LBRACE) {
                return syntaxError(this.token.pos, List.of((JCTree.JCExpression) toP(this.f103286F.at(i10).NewArray(bracketsOpt, List.nil(), null))), "array.dimension.missing", new Tokens.TokenKind[0]);
            }
            JCTree.JCNewArray jCNewArray = (JCTree.JCNewArray) arrayInitializer(i10, bracketsOpt);
            if (typeAnnotationsOpt.nonEmpty()) {
                JCTree.JCAnnotatedType jCAnnotatedType = (JCTree.JCAnnotatedType) bracketsOpt;
                jCNewArray.annotations = jCAnnotatedType.annotations;
                jCNewArray.elemtype = jCAnnotatedType.underlyingType;
            }
            return jCNewArray;
        }
        ListBuffer listBuffer = new ListBuffer();
        ListBuffer listBuffer2 = new ListBuffer();
        listBuffer2.append(typeAnnotationsOpt);
        listBuffer.append(parseExpression());
        accept(tokenKind2);
        while (true) {
            Tokens.TokenKind tokenKind3 = this.token.kind;
            if (tokenKind3 != Tokens.TokenKind.LBRACKET && tokenKind3 != Tokens.TokenKind.MONKEYS_AT) {
                JCTree.JCNewArray jCNewArray2 = (JCTree.JCNewArray) toP(this.f103286F.at(i10).NewArray(jCExpression, listBuffer.toList(), null));
                jCNewArray2.dimAnnotations = listBuffer2.toList();
                return jCNewArray2;
            }
            List<JCTree.JCAnnotation> typeAnnotationsOpt2 = typeAnnotationsOpt();
            int i11 = this.token.pos;
            nextToken();
            Tokens.TokenKind tokenKind4 = this.token.kind;
            Tokens.TokenKind tokenKind5 = Tokens.TokenKind.RBRACKET;
            if (tokenKind4 == tokenKind5) {
                jCExpression = bracketsOptCont(jCExpression, i11, typeAnnotationsOpt2);
            } else if (tokenKind4 == tokenKind5) {
                jCExpression = bracketsOptCont(jCExpression, i11, typeAnnotationsOpt2);
            } else {
                listBuffer2.append(typeAnnotationsOpt2);
                listBuffer.append(parseExpression());
                accept(tokenKind5);
            }
        }
    }

    public JCTree.JCExpression arrayInitializer(int i10, JCTree.JCExpression jCExpression) {
        accept(Tokens.TokenKind.LBRACE);
        ListBuffer listBuffer = new ListBuffer();
        Tokens.TokenKind tokenKind = this.token.kind;
        if (tokenKind == Tokens.TokenKind.COMMA) {
            nextToken();
        } else if (tokenKind != Tokens.TokenKind.RBRACE) {
            listBuffer.append(variableInitializer());
            while (this.token.kind == Tokens.TokenKind.COMMA) {
                nextToken();
                if (this.token.kind == Tokens.TokenKind.RBRACE) {
                    break;
                }
                listBuffer.append(variableInitializer());
            }
        }
        accept(Tokens.TokenKind.RBRACE);
        return (JCTree.JCExpression) toP(this.f103286F.at(i10).NewArray(jCExpression, List.nil(), listBuffer.toList()));
    }

    public void attach(JCTree jCTree, Tokens.Comment comment) {
        if (!this.keepDocComments || comment == null) {
            return;
        }
        this.docComments.putComment(jCTree, comment);
    }

    public JCTree.JCPrimitiveTypeTree basicType() {
        JCTree.JCPrimitiveTypeTree jCPrimitiveTypeTree = (JCTree.JCPrimitiveTypeTree) to(this.f103286F.at(this.token.pos).TypeIdent(typetag(this.token.kind)));
        nextToken();
        return jCPrimitiveTypeTree;
    }

    public JCTree.JCBlock block(int i10, long j10) {
        accept(Tokens.TokenKind.LBRACE);
        JCTree.JCBlock Block = this.f103286F.at(i10).Block(j10, blockStatements());
        while (true) {
            Tokens.Token token = this.token;
            Tokens.TokenKind tokenKind = token.kind;
            if (tokenKind != Tokens.TokenKind.CASE && tokenKind != Tokens.TokenKind.DEFAULT) {
                Block.endpos = token.pos;
                accept(Tokens.TokenKind.RBRACE);
                return (JCTree.JCBlock) toP(Block);
            }
            syntaxError("orphaned", tokenKind);
            switchBlockStatementGroups();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:13:0x0025. Please report as an issue. */
    public List<JCTree.JCStatement> blockStatement() {
        Tokens.Token token = this.token;
        int i10 = token.pos;
        int i11 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[token.kind.ordinal()];
        if (i11 != 1 && i11 != 51 && i11 != 11) {
            if (i11 != 12) {
                if (i11 != 19) {
                    if (i11 != 20) {
                        switch (i11) {
                            case 3:
                            case 5:
                                Tokens.Comment comment = this.token.comment(Tokens.Comment.CommentStyle.JAVADOC);
                                JCTree.JCModifiers modifiersOpt = modifiersOpt();
                                Tokens.TokenKind tokenKind = this.token.kind;
                                if (tokenKind == Tokens.TokenKind.INTERFACE || tokenKind == Tokens.TokenKind.CLASS || tokenKind == Tokens.TokenKind.ENUM) {
                                    return List.of(classOrInterfaceOrEnumDeclaration(modifiersOpt, comment));
                                }
                                ListBuffer variableDeclarators = variableDeclarators(modifiersOpt, parseType(), new ListBuffer());
                                accept(Tokens.TokenKind.SEMI);
                                storeEnd((JCTree) variableDeclarators.last(), this.f103287S.prevToken().endPos);
                                return variableDeclarators.toList();
                            case 4:
                                break;
                            case 6:
                                break;
                            case 7:
                            case 8:
                                return List.of(classOrInterfaceOrEnumDeclaration(modifiersOpt(), this.token.comment(Tokens.Comment.CommentStyle.JAVADOC)));
                            case 9:
                                error(this.token.pos, "local.enum", new Object[0]);
                                return List.of(classOrInterfaceOrEnumDeclaration(modifiersOpt(), this.token.comment(Tokens.Comment.CommentStyle.JAVADOC)));
                            default:
                                switch (i11) {
                                    case 33:
                                    case 34:
                                        break;
                                    case 35:
                                    case 36:
                                    case 37:
                                    case 38:
                                    case 39:
                                    case 40:
                                    case 41:
                                    case 42:
                                    case 43:
                                    case 44:
                                    case 45:
                                    case 46:
                                    case 47:
                                        break;
                                    default:
                                        Tokens.Token token2 = this.token;
                                        JCTree.JCExpression term = term(3);
                                        if (this.token.kind == Tokens.TokenKind.COLON && term.hasTag(JCTree.Tag.IDENT)) {
                                            nextToken();
                                            return List.of(this.f103286F.at(i10).Labelled(token2.name(), parseStatementAsBlock()));
                                        }
                                        if ((this.lastmode & 2) == 0 || !this.LAX_IDENTIFIER.accepts(this.token.kind)) {
                                            JCTree.JCExpression checkExprStat = checkExprStat(term);
                                            accept(Tokens.TokenKind.SEMI);
                                            return List.of((JCTree.JCExpressionStatement) toP(this.f103286F.at(i10).Exec(checkExprStat)));
                                        }
                                        int i12 = this.token.pos;
                                        JCTree.JCModifiers Modifiers = this.f103286F.at(-1).Modifiers(0L);
                                        this.f103286F.at(i12);
                                        ListBuffer variableDeclarators2 = variableDeclarators(Modifiers, term, new ListBuffer());
                                        accept(Tokens.TokenKind.SEMI);
                                        storeEnd((JCTree) variableDeclarators2.last(), this.f103287S.prevToken().endPos);
                                        return variableDeclarators2.toList();
                                }
                        }
                    }
                    return List.of(classOrInterfaceOrEnumDeclaration(modifiersOpt(), this.token.comment(Tokens.Comment.CommentStyle.JAVADOC)));
                }
            }
            return List.nil();
        }
        return List.of(parseSimpleStatement());
    }

    public List<JCTree.JCStatement> blockStatements() {
        int i10;
        ListBuffer listBuffer = new ListBuffer();
        int i11 = -1;
        while (true) {
            List<JCTree.JCStatement> blockStatement = blockStatement();
            if (!blockStatement.isEmpty() && (i10 = this.token.pos) != i11) {
                if (i10 <= this.endPosTable.errorEndPos) {
                    skip(false, true, true, true);
                    i11 = this.token.pos;
                }
                listBuffer.addAll(blockStatement);
            }
            return listBuffer.toList();
        }
    }

    public JCTree.JCExpression bracketsSuffix(JCTree.JCExpression jCExpression) {
        Name name;
        int i10 = this.mode;
        if ((i10 & 1) != 0) {
            Tokens.Token token = this.token;
            if (token.kind == Tokens.TokenKind.DOT) {
                this.mode = 1;
                int i11 = token.pos;
                nextToken();
                accept(Tokens.TokenKind.CLASS);
                Tokens.Token token2 = this.token;
                if (token2.pos == this.endPosTable.errorEndPos) {
                    if (this.LAX_IDENTIFIER.accepts(token2.kind)) {
                        name = this.token.name();
                        nextToken();
                    } else {
                        name = this.names.error;
                    }
                    return this.f103286F.at(i11).Erroneous(List.of(toP(this.f103286F.at(i11).Select(jCExpression, name))));
                }
                JCTree.Tag tag = jCExpression.getTag();
                if ((tag == JCTree.Tag.TYPEARRAY && TreeInfo.containsTypeAnnotation(jCExpression)) || tag == JCTree.Tag.ANNOTATED_TYPE) {
                    syntaxError("no.annotations.on.dot.class");
                }
                return (JCTree.JCExpression) toP(this.f103286F.at(i11).Select(jCExpression, this.names._class));
            }
        }
        if ((i10 & 2) != 0) {
            if (this.token.kind == Tokens.TokenKind.COLCOL) {
                return jCExpression;
            }
            this.mode = 2;
            return jCExpression;
        }
        Tokens.Token token3 = this.token;
        if (token3.kind == Tokens.TokenKind.COLCOL) {
            return jCExpression;
        }
        syntaxError(token3.pos, "dot.class.expected", new Tokens.TokenKind[0]);
        return jCExpression;
    }

    public JCTree.JCCatch catchClause() {
        int i10 = this.token.pos;
        accept(Tokens.TokenKind.CATCH);
        accept(Tokens.TokenKind.LPAREN);
        JCTree.JCModifiers optFinal = optFinal(8589934592L);
        List<JCTree.JCExpression> catchTypes = catchTypes();
        JCTree.JCVariableDecl variableDeclaratorId = variableDeclaratorId(optFinal, (JCTree.JCExpression) (catchTypes.size() > 1 ? toP(this.f103286F.at(catchTypes.head.getStartPosition()).TypeUnion(catchTypes)) : catchTypes.head));
        accept(Tokens.TokenKind.RPAREN);
        return this.f103286F.at(i10).Catch(variableDeclaratorId, block());
    }

    public List<JCTree.JCExpression> catchTypes() {
        ListBuffer listBuffer = new ListBuffer();
        listBuffer.add(parseType());
        while (this.token.kind == Tokens.TokenKind.BAR) {
            checkMulticatch();
            nextToken();
            listBuffer.add(parseType());
        }
        return listBuffer.toList();
    }

    public void checkAnnotationsAfterTypeParams(int i10) {
        if (this.allowAnnotationsAfterTypeParams) {
            return;
        }
        this.log.error(JCDiagnostic.DiagnosticFlag.SOURCE_LEVEL, i10, "annotations.after.type.params.not.supported.in.source", this.source.name);
    }

    public void checkDefaultMethods() {
        if (this.allowDefaultMethods) {
            return;
        }
        this.log.error(JCDiagnostic.DiagnosticFlag.SOURCE_LEVEL, this.token.pos, "default.methods.not.supported.in.source", this.source.name);
    }

    public void checkDiamond() {
        if (this.allowDiamond) {
            return;
        }
        this.log.error(JCDiagnostic.DiagnosticFlag.SOURCE_LEVEL, this.token.pos, "diamond.not.supported.in.source", this.source.name);
    }

    public JCTree.JCExpression checkExprStat(JCTree.JCExpression jCExpression) {
        if (TreeInfo.isExpressionStatement(jCExpression)) {
            return jCExpression;
        }
        JCTree.JCErroneous Erroneous = this.f103286F.at(jCExpression.pos).Erroneous(List.of(jCExpression));
        error(Erroneous, "not.stmt", new Object[0]);
        return Erroneous;
    }

    public void checkIntersectionTypesInCast() {
        if (this.allowIntersectionTypesInCast) {
            return;
        }
        this.log.error(JCDiagnostic.DiagnosticFlag.SOURCE_LEVEL, this.token.pos, "intersection.types.in.cast.not.supported.in.source", this.source.name);
    }

    public void checkLambda() {
        if (this.allowLambda) {
            return;
        }
        this.log.error(JCDiagnostic.DiagnosticFlag.SOURCE_LEVEL, this.token.pos, "lambda.not.supported.in.source", this.source.name);
    }

    public void checkMethodReferences() {
        if (this.allowMethodReferences) {
            return;
        }
        this.log.error(JCDiagnostic.DiagnosticFlag.SOURCE_LEVEL, this.token.pos, "method.references.not.supported.in.source", this.source.name);
    }

    public void checkMulticatch() {
        if (this.allowMulticatch) {
            return;
        }
        this.log.error(JCDiagnostic.DiagnosticFlag.SOURCE_LEVEL, this.token.pos, "multicatch.not.supported.in.source", this.source.name);
    }

    public void checkNoMods(long j10) {
        if (j10 != 0) {
            error(this.token.pos, "mod.not.allowed.here", Flags.asFlagSet(j10 & (-j10)));
        }
    }

    public void checkPrivateInterfaceMethods() {
        if (this.allowPrivateInterfaceMethods) {
            return;
        }
        this.log.error(JCDiagnostic.DiagnosticFlag.SOURCE_LEVEL, this.token.pos, CompilerProperties.Errors.PrivateIntfMethodsNotSupportedInSource(this.source.name));
    }

    public void checkStaticInterfaceMethods() {
        if (this.allowStaticInterfaceMethods) {
            return;
        }
        this.log.error(JCDiagnostic.DiagnosticFlag.SOURCE_LEVEL, this.token.pos, "static.intf.methods.not.supported.in.source", this.source.name);
    }

    public void checkTryWithResources() {
        if (this.allowTWR) {
            return;
        }
        this.log.error(JCDiagnostic.DiagnosticFlag.SOURCE_LEVEL, this.token.pos, "try.with.resources.not.supported.in.source", this.source.name);
    }

    public void checkTypeAnnotations() {
        if (this.allowTypeAnnotations) {
            return;
        }
        this.log.error(JCDiagnostic.DiagnosticFlag.SOURCE_LEVEL, this.token.pos, "type.annotations.not.supported.in.source", this.source.name);
    }

    public void checkVariableInTryWithResources(int i10) {
        if (this.allowEffectivelyFinalVariablesInTWR) {
            return;
        }
        this.log.error(JCDiagnostic.DiagnosticFlag.SOURCE_LEVEL, i10, "var.in.try.with.resources.not.supported.in.source", this.source.name);
    }

    public JCTree.JCNewClass classCreatorRest(int i10, JCTree.JCExpression jCExpression, List<JCTree.JCExpression> list, JCTree.JCExpression jCExpression2) {
        JCTree.JCClassDecl jCClassDecl;
        List<JCTree.JCExpression> arguments = arguments();
        Tokens.Token token = this.token;
        if (token.kind == Tokens.TokenKind.LBRACE) {
            int i11 = token.pos;
            List<JCTree> classOrInterfaceBody = classOrInterfaceBody(this.names.empty, false);
            jCClassDecl = (JCTree.JCClassDecl) toP(this.f103286F.at(i11).AnonymousClassDef(this.f103286F.at(-1).Modifiers(0L), classOrInterfaceBody));
        } else {
            jCClassDecl = null;
        }
        return (JCTree.JCNewClass) toP(this.f103286F.at(i10).NewClass(jCExpression, list, jCExpression2, arguments, jCClassDecl));
    }

    public JCTree.JCClassDecl classDeclaration(JCTree.JCModifiers jCModifiers, Tokens.Comment comment) {
        JCTree.JCExpression jCExpression;
        int i10 = this.token.pos;
        accept(Tokens.TokenKind.CLASS);
        Name ident = ident();
        List<JCTree.JCTypeParameter> typeParametersOpt = typeParametersOpt();
        if (this.token.kind == Tokens.TokenKind.EXTENDS) {
            nextToken();
            jCExpression = parseType();
        } else {
            jCExpression = null;
        }
        JCTree.JCExpression jCExpression2 = jCExpression;
        List<JCTree.JCExpression> nil = List.nil();
        if (this.token.kind == Tokens.TokenKind.IMPLEMENTS) {
            nextToken();
            nil = typeList();
        }
        JCTree.JCClassDecl jCClassDecl = (JCTree.JCClassDecl) toP(this.f103286F.at(i10).ClassDef(jCModifiers, ident, typeParametersOpt, jCExpression2, nil, classOrInterfaceBody(ident, false)));
        attach(jCClassDecl, comment);
        return jCClassDecl;
    }

    public List<JCTree> classOrInterfaceBody(Name name, boolean z10) {
        Tokens.TokenKind tokenKind;
        Tokens.TokenKind tokenKind2 = Tokens.TokenKind.LBRACE;
        accept(tokenKind2);
        if (this.token.pos <= this.endPosTable.errorEndPos) {
            skip(false, true, false, false);
            if (this.token.kind == tokenKind2) {
                nextToken();
            }
        }
        ListBuffer listBuffer = new ListBuffer();
        while (true) {
            Tokens.TokenKind tokenKind3 = this.token.kind;
            tokenKind = Tokens.TokenKind.RBRACE;
            if (tokenKind3 == tokenKind || tokenKind3 == Tokens.TokenKind.EOF) {
                break;
            }
            listBuffer.appendList(classOrInterfaceBodyDeclaration(name, z10));
            if (this.token.pos <= this.endPosTable.errorEndPos) {
                skip(false, true, true, false);
            }
        }
        accept(tokenKind);
        return listBuffer.toList();
    }

    public List<JCTree> classOrInterfaceBodyDeclaration(Name name, boolean z10) {
        JCTree.JCExpression unannotatedType;
        Tokens.Token token = this.token;
        Tokens.TokenKind tokenKind = token.kind;
        Tokens.TokenKind tokenKind2 = Tokens.TokenKind.SEMI;
        if (tokenKind == tokenKind2) {
            nextToken();
            return List.nil();
        }
        Tokens.Comment comment = token.comment(Tokens.Comment.CommentStyle.JAVADOC);
        int i10 = this.token.pos;
        JCTree.JCModifiers modifiersOpt = modifiersOpt();
        Tokens.TokenKind tokenKind3 = this.token.kind;
        if (tokenKind3 == Tokens.TokenKind.CLASS || tokenKind3 == Tokens.TokenKind.INTERFACE || tokenKind3 == Tokens.TokenKind.ENUM) {
            return List.of(classOrInterfaceOrEnumDeclaration(modifiersOpt, comment));
        }
        if (tokenKind3 == Tokens.TokenKind.LBRACE && (modifiersOpt.flags & 4087) == 0 && modifiersOpt.annotations.isEmpty()) {
            if (z10) {
                error(this.token.pos, "initializer.not.allowed", new Object[0]);
            }
            return List.of(block(i10, modifiersOpt.flags));
        }
        int i11 = this.token.pos;
        List<JCTree.JCTypeParameter> typeParametersOpt = typeParametersOpt();
        if (typeParametersOpt.nonEmpty() && modifiersOpt.pos == -1) {
            modifiersOpt.pos = i11;
            storeEnd(modifiersOpt, i11);
        }
        List<JCTree.JCAnnotation> annotationsOpt = annotationsOpt(JCTree.Tag.ANNOTATION);
        if (annotationsOpt.nonEmpty()) {
            checkAnnotationsAfterTypeParams(annotationsOpt.head.pos);
            List<JCTree.JCAnnotation> appendList = modifiersOpt.annotations.appendList(annotationsOpt);
            modifiersOpt.annotations = appendList;
            if (modifiersOpt.pos == -1) {
                modifiersOpt.pos = appendList.head.pos;
            }
        }
        Tokens.Token token2 = this.token;
        int i12 = token2.pos;
        boolean z11 = token2.kind == Tokens.TokenKind.VOID;
        if (z11) {
            unannotatedType = (JCTree.JCExpression) to(this.f103286F.at(i12).TypeIdent(TypeTag.VOID));
            nextToken();
        } else {
            unannotatedType = unannotatedType();
        }
        Tokens.TokenKind tokenKind4 = this.token.kind;
        Tokens.TokenKind tokenKind5 = Tokens.TokenKind.LPAREN;
        if (tokenKind4 == tokenKind5 && !z10 && unannotatedType.hasTag(JCTree.Tag.IDENT)) {
            if (z10 || token2.name() != name) {
                error(i12, "invalid.meth.decl.ret.type.req", new Object[0]);
            } else if (annotationsOpt.nonEmpty()) {
                illegal(annotationsOpt.head.pos);
            }
            return List.of(methodDeclaratorRest(i12, modifiersOpt, null, this.names.init, typeParametersOpt, z10, true, comment));
        }
        int i13 = this.token.pos;
        Name ident = ident();
        if (this.token.kind == tokenKind5) {
            return List.of(methodDeclaratorRest(i13, modifiersOpt, unannotatedType, ident, typeParametersOpt, z10, z11, comment));
        }
        if (z11 || !typeParametersOpt.isEmpty()) {
            return List.of(syntaxError(this.token.pos, z11 ? List.of(toP(this.f103286F.at(this.token.pos).MethodDef(modifiersOpt, ident, unannotatedType, typeParametersOpt, List.nil(), List.nil(), null, null))) : null, "expected", tokenKind5));
        }
        List<JCTree> list = variableDeclaratorsRest(i13, modifiersOpt, unannotatedType, ident, z10, comment, new ListBuffer()).toList();
        accept(tokenKind2);
        storeEnd(list.last(), this.f103287S.prevToken().endPos);
        return list;
    }

    public JCTree.JCStatement classOrInterfaceOrEnumDeclaration(JCTree.JCModifiers jCModifiers, Tokens.Comment comment) {
        List<JCTree> of2;
        Tokens.Token token = this.token;
        Tokens.TokenKind tokenKind = token.kind;
        Tokens.TokenKind tokenKind2 = Tokens.TokenKind.CLASS;
        if (tokenKind == tokenKind2) {
            return classDeclaration(jCModifiers, comment);
        }
        Tokens.TokenKind tokenKind3 = Tokens.TokenKind.INTERFACE;
        if (tokenKind == tokenKind3) {
            return interfaceDeclaration(jCModifiers, comment);
        }
        Tokens.TokenKind tokenKind4 = Tokens.TokenKind.ENUM;
        if (tokenKind == tokenKind4) {
            return enumDeclaration(jCModifiers, comment);
        }
        int i10 = token.pos;
        if (this.LAX_IDENTIFIER.accepts(tokenKind)) {
            of2 = List.of(jCModifiers, toP(this.f103286F.at(i10).Ident(ident())));
            setErrorEndPos(this.token.pos);
        } else {
            of2 = List.of(jCModifiers);
        }
        return (JCTree.JCStatement) toP(this.f103286F.Exec(this.parseModuleInfo ? syntaxError(i10, of2, "expected.module.or.open", new Tokens.TokenKind[0]) : syntaxError(i10, of2, "expected3", tokenKind2, tokenKind3, tokenKind4)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0066, code lost:
    
        if ((r14.mode & 16) != 0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0068, code lost:
    
        r8 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00c8, code lost:
    
        if ((r14.mode & 16) != 0) goto L16;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x00c8 -> B:15:0x0068). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x006b -> B:16:0x006c). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public JCTree.JCExpression creator(int i10, List<JCTree.JCExpression> list) {
        int i11;
        Tokens.Token token;
        int i12 = i10;
        List<JCTree.JCAnnotation> typeAnnotationsOpt = typeAnnotationsOpt();
        switch (AnonymousClass1.$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[this.token.kind.ordinal()]) {
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
                if (list == null) {
                    return typeAnnotationsOpt.isEmpty() ? arrayCreatorRest(i10, basicType()) : arrayCreatorRest(i10, (JCTree.JCExpression) toP(this.f103286F.at(typeAnnotationsOpt.head.pos).AnnotatedType(typeAnnotationsOpt, basicType())));
                }
                break;
        }
        JCTree.JCExpression qualident = qualident(true);
        int i13 = this.mode;
        this.mode = 2;
        Tokens.Token token2 = this.token;
        if (token2.kind == Tokens.TokenKind.LT) {
            i11 = token2.pos;
            qualident = typeArguments(qualident, true);
        } else {
            i11 = -1;
        }
        boolean z10 = false;
        do {
            Tokens.Token token3 = this.token;
            Tokens.TokenKind tokenKind = token3.kind;
            if (tokenKind != Tokens.TokenKind.DOT) {
                this.mode = i13;
                Tokens.TokenKind tokenKind2 = Tokens.TokenKind.LBRACKET;
                if (tokenKind != tokenKind2 && tokenKind != Tokens.TokenKind.MONKEYS_AT) {
                    Tokens.TokenKind tokenKind3 = Tokens.TokenKind.LPAREN;
                    if (tokenKind != tokenKind3) {
                        setErrorEndPos(token3.pos);
                        reportSyntaxError(this.token.pos, "expected2", tokenKind3, tokenKind2);
                        return (JCTree.JCExpression) toP(this.f103286F.at(i10).Erroneous(List.of((JCTree.JCExpression) toP(this.f103286F.at(i10).NewClass(null, list, qualident, List.nil(), null)))));
                    }
                    JCTree.JCNewClass classCreatorRest = classCreatorRest(i10, null, list, qualident);
                    if (classCreatorRest.def != null) {
                        if (typeAnnotationsOpt.nonEmpty()) {
                            JCTree.JCModifiers jCModifiers = classCreatorRest.def.mods;
                            jCModifiers.pos = earlier(jCModifiers.pos, typeAnnotationsOpt.head.pos);
                            classCreatorRest.def.mods.annotations = typeAnnotationsOpt;
                        }
                    } else if (typeAnnotationsOpt.nonEmpty()) {
                        classCreatorRest.clazz = insertAnnotationsToMostInner(qualident, typeAnnotationsOpt, false);
                    }
                    return classCreatorRest;
                }
                if (typeAnnotationsOpt.nonEmpty()) {
                    qualident = insertAnnotationsToMostInner(qualident, typeAnnotationsOpt, false);
                }
                JCTree.JCExpression arrayCreatorRest = arrayCreatorRest(i10, qualident);
                if (z10) {
                    reportSyntaxError(i11, "cannot.create.array.with.diamond", new Object[0]);
                    return (JCTree.JCExpression) toP(this.f103286F.at(i10).Erroneous(List.of(arrayCreatorRest)));
                }
                if (list == null) {
                    return arrayCreatorRest;
                }
                if (!list.isEmpty()) {
                    JCTree.JCExpression jCExpression = list.head;
                    if (jCExpression.pos != -1) {
                        i12 = jCExpression.pos;
                    }
                }
                setErrorEndPos(this.f103287S.prevToken().endPos);
                JCTree.JCErroneous Erroneous = this.f103286F.at(i12).Erroneous(list.prepend(arrayCreatorRest));
                reportSyntaxError(Erroneous, "cannot.create.array.with.type.arguments", new Object[0]);
                return (JCTree.JCExpression) toP(Erroneous);
            }
            if (z10) {
                illegal();
            }
            int i14 = this.token.pos;
            nextToken();
            List<JCTree.JCAnnotation> typeAnnotationsOpt2 = typeAnnotationsOpt();
            qualident = (JCTree.JCExpression) toP(this.f103286F.at(i14).Select(qualident, ident()));
            if (typeAnnotationsOpt2 != null && typeAnnotationsOpt2.nonEmpty()) {
                qualident = (JCTree.JCExpression) toP(this.f103286F.at(typeAnnotationsOpt2.head.pos).AnnotatedType(typeAnnotationsOpt2, qualident));
            }
            token = this.token;
        } while (token.kind != Tokens.TokenKind.LT);
        i11 = token.pos;
        qualident = typeArguments(qualident, true);
    }

    public List<JCTree> enumBody(Name name) {
        Tokens.TokenKind tokenKind;
        Tokens.TokenKind tokenKind2;
        accept(Tokens.TokenKind.LBRACE);
        ListBuffer listBuffer = new ListBuffer();
        Tokens.TokenKind tokenKind3 = this.token.kind;
        if (tokenKind3 == Tokens.TokenKind.COMMA) {
            nextToken();
        } else if (tokenKind3 != Tokens.TokenKind.RBRACE && tokenKind3 != Tokens.TokenKind.SEMI) {
            listBuffer.append(enumeratorDeclaration(name));
            while (true) {
                Tokens.TokenKind tokenKind4 = this.token.kind;
                tokenKind = Tokens.TokenKind.COMMA;
                if (tokenKind4 != tokenKind) {
                    break;
                }
                nextToken();
                Tokens.TokenKind tokenKind5 = this.token.kind;
                if (tokenKind5 == Tokens.TokenKind.RBRACE || tokenKind5 == Tokens.TokenKind.SEMI) {
                    break;
                }
                listBuffer.append(enumeratorDeclaration(name));
            }
            Tokens.Token token = this.token;
            Tokens.TokenKind tokenKind6 = token.kind;
            Tokens.TokenKind tokenKind7 = Tokens.TokenKind.SEMI;
            if (tokenKind6 != tokenKind7 && tokenKind6 != (tokenKind2 = Tokens.TokenKind.RBRACE)) {
                listBuffer.append(syntaxError(token.pos, "expected3", tokenKind, tokenKind2, tokenKind7));
                nextToken();
            }
        }
        if (this.token.kind == Tokens.TokenKind.SEMI) {
            nextToken();
            while (true) {
                Tokens.TokenKind tokenKind8 = this.token.kind;
                if (tokenKind8 == Tokens.TokenKind.RBRACE || tokenKind8 == Tokens.TokenKind.EOF) {
                    break;
                }
                listBuffer.appendList(classOrInterfaceBodyDeclaration(name, false));
                if (this.token.pos <= this.endPosTable.errorEndPos) {
                    skip(false, true, true, false);
                }
            }
        }
        accept(Tokens.TokenKind.RBRACE);
        return listBuffer.toList();
    }

    public JCTree.JCClassDecl enumDeclaration(JCTree.JCModifiers jCModifiers, Tokens.Comment comment) {
        int i10 = this.token.pos;
        accept(Tokens.TokenKind.ENUM);
        Name ident = ident();
        List<JCTree.JCExpression> nil = List.nil();
        if (this.token.kind == Tokens.TokenKind.IMPLEMENTS) {
            nextToken();
            nil = typeList();
        }
        List<JCTree> enumBody = enumBody(ident);
        jCModifiers.flags |= 16384;
        JCTree.JCClassDecl jCClassDecl = (JCTree.JCClassDecl) toP(this.f103286F.at(i10).ClassDef(jCModifiers, ident, List.nil(), null, nil, enumBody));
        attach(jCClassDecl, comment);
        return jCClassDecl;
    }

    public JCTree enumeratorDeclaration(Name name) {
        Tokens.Comment comment = this.token.comment(Tokens.Comment.CommentStyle.JAVADOC);
        int i10 = this.token.deprecatedFlag() ? 147481 : 16409;
        int i11 = this.token.pos;
        List<JCTree.JCAnnotation> annotationsOpt = annotationsOpt(JCTree.Tag.ANNOTATION);
        JCTree.JCModifiers Modifiers = this.f103286F.at(annotationsOpt.isEmpty() ? -1 : i11).Modifiers(i10, annotationsOpt);
        List<JCTree.JCExpression> typeArgumentsOpt = typeArgumentsOpt();
        int i12 = this.token.pos;
        Name ident = ident();
        Tokens.Token token = this.token;
        int i13 = token.pos;
        List<JCTree.JCExpression> arguments = token.kind == Tokens.TokenKind.LPAREN ? arguments() : List.nil();
        JCTree.JCClassDecl jCClassDecl = this.token.kind == Tokens.TokenKind.LBRACE ? (JCTree.JCClassDecl) toP(this.f103286F.at(i12).AnonymousClassDef(this.f103286F.at(-1).Modifiers(16384L), classOrInterfaceBody(this.names.empty, false))) : null;
        int i14 = (arguments.isEmpty() && jCClassDecl == null) ? i12 : i13;
        JCTree.JCNewClass NewClass = this.f103286F.at(i14).NewClass(null, typeArgumentsOpt, this.f103286F.at(i12).Ident(name), arguments, jCClassDecl);
        if (i14 != i12) {
            storeEnd(NewClass, this.f103287S.prevToken().endPos);
        }
        JCTree p10 = toP(this.f103286F.at(i11).VarDef(Modifiers, ident, this.f103286F.at(i12).Ident(name), NewClass));
        attach(p10, comment);
        return p10;
    }

    public void error(int i10, String str, Object... objArr) {
        this.log.error(JCDiagnostic.DiagnosticFlag.SYNTAX, i10, str, objArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public JCTree.JCExpression foldStrings(JCTree.JCExpression jCExpression) {
        if (!this.allowStringFolding) {
            return jCExpression;
        }
        ListBuffer<JCTree.JCExpression> listBuffer = new ListBuffer<>();
        ListBuffer<JCTree.JCLiteral> listBuffer2 = new ListBuffer<>();
        JCTree.JCExpression jCExpression2 = jCExpression;
        boolean z10 = false;
        while (jCExpression2.hasTag(JCTree.Tag.PLUS)) {
            JCTree.JCBinary jCBinary = (JCTree.JCBinary) jCExpression2;
            z10 |= foldIfNeeded(jCBinary.rhs, listBuffer2, listBuffer, false);
            jCExpression2 = jCBinary.lhs;
        }
        if (!foldIfNeeded(jCExpression2, listBuffer2, listBuffer, true) && !z10) {
            return jCExpression;
        }
        List<JCTree.JCExpression> list = listBuffer.toList();
        JCTree.JCExpression jCExpression3 = (JCTree.JCExpression) list.head;
        Iterator it = list.tail.iterator();
        while (it.hasNext()) {
            JCTree.JCExpression jCExpression4 = (JCTree.JCExpression) it.next();
            jCExpression3 = this.f103286F.at(jCExpression4.getStartPosition()).Binary(optag(Tokens.TokenKind.PLUS), jCExpression3, jCExpression4);
            storeEnd(jCExpression3, getEndPos(jCExpression4));
        }
        return jCExpression3;
    }

    public List<JCTree.JCStatement> forInit() {
        ListBuffer listBuffer = new ListBuffer();
        Tokens.Token token = this.token;
        int i10 = token.pos;
        Tokens.TokenKind tokenKind = token.kind;
        if (tokenKind == Tokens.TokenKind.FINAL || tokenKind == Tokens.TokenKind.MONKEYS_AT) {
            return variableDeclarators(optFinal(0L), parseType(), listBuffer).toList();
        }
        JCTree.JCExpression term = term(3);
        if ((this.lastmode & 2) != 0 && this.LAX_IDENTIFIER.accepts(this.token.kind)) {
            return variableDeclarators(modifiersOpt(), term, listBuffer).toList();
        }
        if ((this.lastmode & 2) == 0 || this.token.kind != Tokens.TokenKind.COLON) {
            return moreStatementExpressions(i10, term, listBuffer).toList();
        }
        error(i10, "bad.initializer", "for-loop");
        return List.of(this.f103286F.at(i10).VarDef(null, null, term, null));
    }

    public List<JCTree.JCExpressionStatement> forUpdate() {
        return moreStatementExpressions(this.token.pos, parseExpression(), new ListBuffer()).toList();
    }

    public JCTree.JCVariableDecl formalParameter() {
        return formalParameter(false);
    }

    public List<JCTree.JCVariableDecl> formalParameters() {
        return formalParameters(false);
    }

    public int getEndPos(JCTree jCTree) {
        return this.endPosTable.getEndPos(jCTree);
    }

    public int getStartPos(JCTree jCTree) {
        return TreeInfo.getStartPos(jCTree);
    }

    public Name ident() {
        return ident(false);
    }

    public JCTree.JCExpression illegal(int i10) {
        setErrorEndPos(i10);
        if ((this.mode & 1) != 0) {
            return syntaxError(i10, "illegal.start.of.expr", new Tokens.TokenKind[0]);
        }
        return syntaxError(i10, "illegal.start.of.type", new Tokens.TokenKind[0]);
    }

    public JCTree.JCVariableDecl implicitParameter() {
        return variableDeclaratorId(this.f103286F.at(this.token.pos).Modifiers(8589934592L), null, true);
    }

    public List<JCTree.JCVariableDecl> implicitParameters(boolean z10) {
        if (z10) {
            accept(Tokens.TokenKind.LPAREN);
        }
        ListBuffer listBuffer = new ListBuffer();
        Tokens.TokenKind tokenKind = this.token.kind;
        if (tokenKind != Tokens.TokenKind.RPAREN && tokenKind != Tokens.TokenKind.ARROW) {
            listBuffer.append(implicitParameter());
            while (this.token.kind == Tokens.TokenKind.COMMA) {
                nextToken();
                listBuffer.append(implicitParameter());
            }
        }
        if (z10) {
            accept(Tokens.TokenKind.RPAREN);
        }
        return listBuffer.toList();
    }

    public JCTree importDeclaration() {
        boolean z10;
        int i10 = this.token.pos;
        nextToken();
        if (this.token.kind == Tokens.TokenKind.STATIC) {
            nextToken();
            z10 = true;
        } else {
            z10 = false;
        }
        JCTree.JCExpression jCExpression = (JCTree.JCExpression) toP(this.f103286F.at(this.token.pos).Ident(ident()));
        while (true) {
            int i11 = this.token.pos;
            Tokens.TokenKind tokenKind = Tokens.TokenKind.DOT;
            accept(tokenKind);
            if (this.token.kind == Tokens.TokenKind.STAR) {
                jCExpression = (JCTree.JCExpression) to(this.f103286F.at(i11).Select(jCExpression, this.names.asterisk));
                nextToken();
                break;
            }
            jCExpression = (JCTree.JCExpression) toP(this.f103286F.at(i11).Select(jCExpression, ident()));
            if (this.token.kind != tokenKind) {
                break;
            }
        }
        accept(Tokens.TokenKind.SEMI);
        return toP(this.f103286F.at(i10).Import(jCExpression, z10));
    }

    public JCTree.JCExpression innerCreator(int i10, List<JCTree.JCExpression> list, JCTree.JCExpression jCExpression) {
        List<JCTree.JCAnnotation> typeAnnotationsOpt = typeAnnotationsOpt();
        JCTree.JCExpression jCExpression2 = (JCTree.JCExpression) toP(this.f103286F.at(this.token.pos).Ident(ident()));
        if (typeAnnotationsOpt.nonEmpty()) {
            jCExpression2 = (JCTree.JCExpression) toP(this.f103286F.at(typeAnnotationsOpt.head.pos).AnnotatedType(typeAnnotationsOpt, jCExpression2));
        }
        if (this.token.kind == Tokens.TokenKind.LT) {
            int i11 = this.mode;
            jCExpression2 = typeArguments(jCExpression2, true);
            this.mode = i11;
        }
        return classCreatorRest(i10, jCExpression, list, jCExpression2);
    }

    public JCTree.JCClassDecl interfaceDeclaration(JCTree.JCModifiers jCModifiers, Tokens.Comment comment) {
        int i10 = this.token.pos;
        accept(Tokens.TokenKind.INTERFACE);
        Name ident = ident();
        List<JCTree.JCTypeParameter> typeParametersOpt = typeParametersOpt();
        List<JCTree.JCExpression> nil = List.nil();
        if (this.token.kind == Tokens.TokenKind.EXTENDS) {
            nextToken();
            nil = typeList();
        }
        JCTree.JCClassDecl jCClassDecl = (JCTree.JCClassDecl) toP(this.f103286F.at(i10).ClassDef(jCModifiers, ident, typeParametersOpt, null, nil, classOrInterfaceBody(ident, true)));
        attach(jCClassDecl, comment);
        return jCClassDecl;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002a, code lost:
    
        switch(r0) {
            case 73: goto L55;
            case 74: goto L29;
            case 75: goto L55;
            default: goto L15;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002d, code lost:
    
        switch(r0) {
            case 85: goto L56;
            case 86: goto L56;
            case 87: goto L56;
            case 88: goto L17;
            case 89: goto L18;
            case 90: goto L19;
            default: goto L46;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0031, code lost:
    
        r2 = r2 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0033, code lost:
    
        r2 = r2 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0035, code lost:
    
        r2 = r2 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0037, code lost:
    
        if (r2 != 0) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0039, code lost:
    
        r0 = r7.f103287S.token(r3 + 1).kind;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0044, code lost:
    
        if (r0 == org.openjdk.tools.javac.parser.Tokens.TokenKind.DOT) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0048, code lost:
    
        if (r0 == org.openjdk.tools.javac.parser.Tokens.TokenKind.LBRACKET) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004c, code lost:
    
        if (r0 != org.openjdk.tools.javac.parser.Tokens.TokenKind.COLCOL) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x004f, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0030, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0050, code lost:
    
        r0 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0051, code lost:
    
        r4 = org.openjdk.tools.javac.parser.JavacParser.AnonymousClass1.$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[r7.f103287S.token(r3).kind.ordinal()];
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0062, code lost:
    
        if (r4 == 6) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0066, code lost:
    
        if (r4 == 74) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x006a, code lost:
    
        if (r4 == 84) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x006d, code lost:
    
        r0 = r0 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x006f, code lost:
    
        if (r0 != 0) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0074, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0072, code lost:
    
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0077, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x007a, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x007a, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean isUnboundMemberRef() {
        Tokens.Token token = this.f103287S.token(0);
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int i12 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[token.kind.ordinal()];
            if (i12 != 5 && i12 != 49 && i12 != 77 && i12 != 31 && i12 != 32) {
                switch (i12) {
                    case 21:
                        i10++;
                        break;
                }
            }
            i11++;
            token = this.f103287S.token(i11);
        }
    }

    public boolean isZero(String str) {
        char c10;
        char[] charArray = str.toCharArray();
        int i10 = (charArray.length <= 1 || Character.toLowerCase(charArray[1]) != 'x') ? 10 : 16;
        int i11 = i10 == 16 ? 2 : 0;
        while (i11 < charArray.length && ((c10 = charArray[i11]) == '0' || c10 == '.')) {
            i11++;
        }
        return i11 >= charArray.length || Character.digit(charArray[i11], i10) <= 0;
    }

    public JCTree.JCExpression lambdaExpression(List<JCTree.JCVariableDecl> list, int i10) {
        return (JCTree.JCExpression) toP(this.f103286F.at(i10).Lambda(list, parseExpression()));
    }

    public JCTree.JCExpression lambdaExpressionOrStatement(boolean z10, boolean z11, int i10) {
        return lambdaExpressionOrStatementRest(z11 ? formalParameters(true) : implicitParameters(z10), i10);
    }

    public JCTree.JCExpression lambdaExpressionOrStatementRest(List<JCTree.JCVariableDecl> list, int i10) {
        checkLambda();
        accept(Tokens.TokenKind.ARROW);
        Tokens.Token token = this.token;
        return token.kind == Tokens.TokenKind.LBRACE ? lambdaStatement(list, i10, token.pos) : lambdaExpression(list, i10);
    }

    public JCTree.JCExpression lambdaStatement(List<JCTree.JCVariableDecl> list, int i10, int i11) {
        return (JCTree.JCExpression) toP(this.f103286F.at(i10).Lambda(list, block(i11, 0L)));
    }

    public JCTree.JCExpression literal(Name name) {
        return literal(name, this.token.pos);
    }

    public JCTree.JCExpression memberReferenceSuffix(JCTree.JCExpression jCExpression) {
        int i10 = this.token.pos;
        accept(Tokens.TokenKind.COLCOL);
        return memberReferenceSuffix(i10, jCExpression);
    }

    public boolean merge(ListBuffer<JCTree.JCLiteral> listBuffer, ListBuffer<JCTree.JCExpression> listBuffer2) {
        if (listBuffer.isEmpty()) {
            return false;
        }
        if (listBuffer.size() == 1) {
            listBuffer2.prepend(listBuffer.first());
            return false;
        }
        JCTree.JCLiteral Literal = this.f103286F.at(listBuffer.first().getStartPosition()).Literal(TypeTag.CLASS, listBuffer.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                String lambda$merge$0;
                lambda$merge$0 = JavacParser.lambda$merge$0((JCTree.JCLiteral) obj);
                return lambda$merge$0;
            }
        }).collect(Collectors.joining()));
        storeEnd(Literal, listBuffer.last().getEndPosition(this.endPosTable));
        listBuffer2.prepend(Literal);
        return true;
    }

    public JCTree methodDeclaratorRest(int i10, JCTree.JCModifiers jCModifiers, JCTree.JCExpression jCExpression, Name name, List<JCTree.JCTypeParameter> list, boolean z10, boolean z11, Tokens.Comment comment) {
        JCTree.JCExpression jCExpression2;
        JCTree.JCBlock jCBlock;
        JCTree.JCExpression jCExpression3;
        if (z10) {
            if ((jCModifiers.flags & 8) != 0) {
                checkStaticInterfaceMethods();
            }
            if ((jCModifiers.flags & 2) != 0) {
                checkPrivateInterfaceMethods();
            }
        }
        JCTree.JCVariableDecl jCVariableDecl = this.receiverParam;
        JCTree.JCBlock jCBlock2 = null;
        try {
            this.receiverParam = null;
            List<JCTree.JCVariableDecl> formalParameters = formalParameters();
            JCTree.JCExpression bracketsOpt = !z11 ? bracketsOpt(jCExpression) : jCExpression;
            List<JCTree.JCExpression> nil = List.nil();
            if (this.token.kind == Tokens.TokenKind.THROWS) {
                nextToken();
                nil = qualidentList(true);
            }
            List<JCTree.JCExpression> list2 = nil;
            Tokens.TokenKind tokenKind = this.token.kind;
            Tokens.TokenKind tokenKind2 = Tokens.TokenKind.LBRACE;
            if (tokenKind == tokenKind2) {
                jCExpression3 = null;
                jCBlock = block();
            } else {
                Tokens.TokenKind tokenKind3 = Tokens.TokenKind.DEFAULT;
                if (tokenKind == tokenKind3) {
                    accept(tokenKind3);
                    jCExpression2 = annotationValue();
                } else {
                    jCExpression2 = null;
                }
                accept(Tokens.TokenKind.SEMI);
                if (this.token.pos <= this.endPosTable.errorEndPos) {
                    skip(false, true, false, false);
                    if (this.token.kind == tokenKind2) {
                        jCBlock2 = block();
                    }
                }
                jCBlock = jCBlock2;
                jCExpression3 = jCExpression2;
            }
            JCTree.JCMethodDecl jCMethodDecl = (JCTree.JCMethodDecl) toP(this.f103286F.at(i10).MethodDef(jCModifiers, name, bracketsOpt, list, this.receiverParam, formalParameters, list2, jCBlock, jCExpression3));
            attach(jCMethodDecl, comment);
            this.receiverParam = jCVariableDecl;
            return jCMethodDecl;
        } catch (Throwable th2) {
            this.receiverParam = jCVariableDecl;
            throw th2;
        }
    }

    public JCTree.JCModifiers modifiersOpt() {
        return modifiersOpt(null);
    }

    public JCTree.JCModuleDecl moduleDecl(JCTree.JCModifiers jCModifiers, ModuleTree.ModuleKind moduleKind, Tokens.Comment comment) {
        int i10 = this.token.pos;
        if (!this.allowModules) {
            this.log.error(i10, CompilerProperties.Errors.ModulesNotSupportedInSource(this.source.name));
            this.allowModules = true;
        }
        nextToken();
        JCTree.JCExpression qualident = qualident(false);
        accept(Tokens.TokenKind.LBRACE);
        List<JCTree.JCDirective> moduleDirectiveList = moduleDirectiveList();
        accept(Tokens.TokenKind.RBRACE);
        accept(Tokens.TokenKind.EOF);
        JCTree.JCModuleDecl jCModuleDecl = (JCTree.JCModuleDecl) toP(this.f103286F.at(i10).ModuleDef(jCModifiers, moduleKind, qualident, moduleDirectiveList));
        attach(jCModuleDecl, comment);
        return jCModuleDecl;
    }

    public List<JCTree.JCDirective> moduleDirectiveList() {
        Tokens.TokenKind tokenKind;
        List<JCTree.JCExpression> list;
        ListBuffer listBuffer = new ListBuffer();
        while (true) {
            Tokens.Token token = this.token;
            Tokens.TokenKind tokenKind2 = token.kind;
            Tokens.TokenKind tokenKind3 = Tokens.TokenKind.IDENTIFIER;
            if (tokenKind2 != tokenKind3) {
                break;
            }
            int i10 = token.pos;
            if (token.name() != this.names.requires) {
                if (this.token.name() != this.names.exports && this.token.name() != this.names.opens) {
                    if (this.token.name() != this.names.provides) {
                        if (this.token.name() != this.names.uses) {
                            setErrorEndPos(i10);
                            reportSyntaxError(i10, "invalid.module.directive", new Object[0]);
                            break;
                        }
                        nextToken();
                        JCTree.JCExpression qualident = qualident(false);
                        accept(Tokens.TokenKind.SEMI);
                        listBuffer.append(toP(this.f103286F.at(i10).Uses(qualident)));
                    } else {
                        nextToken();
                        JCTree.JCExpression qualident2 = qualident(false);
                        Tokens.Token token2 = this.token;
                        if (token2.kind == tokenKind3 && token2.name() == this.names.with) {
                            nextToken();
                            List<JCTree.JCExpression> qualidentList = qualidentList(false);
                            accept(Tokens.TokenKind.SEMI);
                            listBuffer.append(toP(this.f103286F.at(i10).Provides(qualident2, qualidentList)));
                        } else {
                            error(this.token.pos, "expected", "'" + ((Object) this.names.with) + "'");
                            skip(false, false, false, false);
                        }
                    }
                } else {
                    boolean z10 = this.token.name() == this.names.exports;
                    nextToken();
                    JCTree.JCExpression qualident3 = qualident(false);
                    Tokens.Token token3 = this.token;
                    if (token3.kind == tokenKind3 && token3.name() == this.names.to) {
                        nextToken();
                        list = qualidentList(false);
                    } else {
                        list = null;
                    }
                    accept(Tokens.TokenKind.SEMI);
                    listBuffer.append(toP(z10 ? this.f103286F.at(i10).Exports(qualident3, list) : this.f103286F.at(i10).Opens(qualident3, list)));
                }
            } else {
                nextToken();
                boolean z11 = false;
                boolean z12 = false;
                while (true) {
                    int i11 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[this.token.kind.ordinal()];
                    if (i11 == 15) {
                        if (z11) {
                            error(this.token.pos, "repeated.modifier", new Object[0]);
                        }
                        z11 = true;
                    } else if (i11 == 32 && this.token.name() == this.names.transitive && !z12 && (tokenKind = this.f103287S.token(1).kind) != Tokens.TokenKind.SEMI && tokenKind != Tokens.TokenKind.DOT) {
                        z12 = true;
                    }
                    nextToken();
                }
                JCTree.JCExpression qualident4 = qualident(false);
                accept(Tokens.TokenKind.SEMI);
                listBuffer.append(toP(this.f103286F.at(i10).Requires(z12, z11, qualident4)));
            }
        }
        return listBuffer.toList();
    }

    public <T extends ListBuffer<? super JCTree.JCExpressionStatement>> T moreStatementExpressions(int i10, JCTree.JCExpression jCExpression, T t10) {
        t10.append(toP(this.f103286F.at(i10).Exec(checkExprStat(jCExpression))));
        while (this.token.kind == Tokens.TokenKind.COMMA) {
            nextToken();
            t10.append(toP(this.f103286F.at(this.token.pos).Exec(checkExprStat(parseExpression()))));
        }
        return t10;
    }

    public DocCommentTable newDocCommentTable(boolean z10, ParserFactory parserFactory) {
        if (z10) {
            return new LazyDocCommentTable(parserFactory);
        }
        return null;
    }

    public AbstractEndPosTable newEndPosTable(boolean z10) {
        return z10 ? new SimpleEndPosTable(this) : new EmptyEndPosTable(this);
    }

    public void nextToken() {
        this.f103287S.nextToken();
        this.token = this.f103287S.token();
    }

    public JCTree.JCModifiers optFinal(long j10) {
        JCTree.JCModifiers modifiersOpt = modifiersOpt();
        checkNoMods(modifiersOpt.flags & (-131089));
        modifiersOpt.flags = j10 | modifiersOpt.flags;
        return modifiersOpt;
    }

    public JCTree.JCExpression parExpression() {
        int i10 = this.token.pos;
        accept(Tokens.TokenKind.LPAREN);
        JCTree.JCExpression parseExpression = parseExpression();
        accept(Tokens.TokenKind.RPAREN);
        return (JCTree.JCExpression) toP(this.f103286F.at(i10).Parens(parseExpression));
    }

    @Override
    public JCTree.JCCompilationUnit parseCompilationUnit() {
        boolean z10;
        boolean z11;
        boolean z12;
        ModuleTree.ModuleKind moduleKind;
        Tokens.Token token = this.token;
        ListBuffer listBuffer = new ListBuffer();
        JCTree.JCModifiers modifiersOpt = this.token.kind == Tokens.TokenKind.MONKEYS_AT ? modifiersOpt() : null;
        Tokens.Token token2 = this.token;
        if (token2.kind == Tokens.TokenKind.PACKAGE) {
            int i10 = token2.pos;
            List<JCTree.JCAnnotation> nil = List.nil();
            if (modifiersOpt != null) {
                checkNoMods(modifiersOpt.flags);
                nil = modifiersOpt.annotations;
                modifiersOpt = null;
            }
            nextToken();
            JCTree.JCExpression qualident = qualident(false);
            accept(Tokens.TokenKind.SEMI);
            JCTree.JCPackageDecl PackageDecl = this.f103286F.at(i10).PackageDecl(nil, qualident);
            attach(PackageDecl, token.comment(Tokens.Comment.CommentStyle.JAVADOC));
            storeEnd(PackageDecl, this.token.pos);
            listBuffer.append(PackageDecl);
            z10 = true;
            z11 = true;
        } else {
            z10 = false;
            z11 = false;
        }
        boolean z13 = false;
        boolean z14 = true;
        boolean z15 = true;
        while (true) {
            Tokens.Token token3 = this.token;
            Tokens.TokenKind tokenKind = token3.kind;
            Tokens.TokenKind tokenKind2 = Tokens.TokenKind.EOF;
            if (tokenKind == tokenKind2) {
                break;
            }
            if (token3.pos <= this.endPosTable.errorEndPos) {
                skip(z14, false, false, false);
                if (this.token.kind == tokenKind2) {
                    break;
                }
            }
            if (z14 && modifiersOpt == null && this.token.kind == Tokens.TokenKind.IMPORT) {
                listBuffer.append(importDeclaration());
                z13 = true;
            } else {
                Tokens.Token token4 = this.token;
                Tokens.Comment.CommentStyle commentStyle = Tokens.Comment.CommentStyle.JAVADOC;
                Tokens.Comment comment = token4.comment(commentStyle);
                if (z15 && !z13 && !z10) {
                    comment = token.comment(commentStyle);
                    z11 = true;
                }
                if (modifiersOpt != null || this.token.kind != Tokens.TokenKind.SEMI) {
                    modifiersOpt = modifiersOpt(modifiersOpt);
                }
                if (z15) {
                    Tokens.Token token5 = this.token;
                    Tokens.TokenKind tokenKind3 = token5.kind;
                    Tokens.TokenKind tokenKind4 = Tokens.TokenKind.IDENTIFIER;
                    if (tokenKind3 == tokenKind4) {
                        ModuleTree.ModuleKind moduleKind2 = ModuleTree.ModuleKind.STRONG;
                        if (token5.name() == this.names.open) {
                            moduleKind = ModuleTree.ModuleKind.OPEN;
                            nextToken();
                        } else {
                            moduleKind = moduleKind2;
                        }
                        Tokens.Token token6 = this.token;
                        if (token6.kind == tokenKind4 && token6.name() == this.names.module) {
                            if (modifiersOpt != null) {
                                checkNoMods(modifiersOpt.flags & (-131073));
                            }
                            listBuffer.append(moduleDecl(modifiersOpt, moduleKind, comment));
                            z12 = true;
                        } else if (moduleKind != moduleKind2) {
                            reportSyntaxError(this.token.pos, "expected.module", new Object[0]);
                        }
                    }
                }
                JCTree typeDeclaration = typeDeclaration(modifiersOpt, comment);
                if (typeDeclaration instanceof JCTree.JCExpressionStatement) {
                    typeDeclaration = ((JCTree.JCExpressionStatement) typeDeclaration).expr;
                }
                listBuffer.append(typeDeclaration);
                if (typeDeclaration instanceof JCTree.JCClassDecl) {
                    z14 = false;
                }
                modifiersOpt = null;
                z15 = false;
            }
        }
        z12 = z11;
        JCTree.JCCompilationUnit TopLevel = this.f103286F.at(token.pos).TopLevel(listBuffer.toList());
        if (!z12) {
            attach(TopLevel, token.comment(Tokens.Comment.CommentStyle.JAVADOC));
        }
        if (listBuffer.isEmpty()) {
            storeEnd(TopLevel, this.f103287S.prevToken().endPos);
        }
        if (this.keepDocComments) {
            TopLevel.docComments = this.docComments;
        }
        if (this.keepLineMap) {
            TopLevel.lineMap = this.f103287S.getLineMap();
        }
        this.endPosTable.setParser(null);
        TopLevel.endPositions = this.endPosTable;
        return TopLevel;
    }

    @Override
    public JCTree.JCExpression parseExpression() {
        return term(1);
    }

    public JCTree.JCStatement parseSimpleStatement() {
        Tokens.Token token = this.token;
        int i10 = token.pos;
        int i11 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[token.kind.ordinal()];
        if (i11 == 1) {
            nextToken();
            return (JCTree.JCStatement) toP(this.f103286F.at(i10).Skip());
        }
        if (i11 == 11) {
            return block();
        }
        if (i11 == 19) {
            nextToken();
            return this.f103286F.at(i10).Synchronized(parExpression(), block());
        }
        JCTree.JCExpression jCExpression = null;
        r4 = null;
        r4 = null;
        r4 = null;
        JCTree.JCBlock block = null;
        JCTree.JCStatement jCStatement = null;
        if (i11 == 51) {
            nextToken();
            JCTree.JCExpression parseExpression = parseExpression();
            if (this.token.kind == Tokens.TokenKind.COLON) {
                nextToken();
                jCExpression = parseExpression();
            }
            accept(Tokens.TokenKind.SEMI);
            return (JCTree.JCAssert) toP(this.f103286F.at(i10).Assert(parseExpression, jCExpression));
        }
        switch (i11) {
            case 35:
                nextToken();
                JCTree.JCExpression parExpression = parExpression();
                JCTree.JCStatement parseStatementAsBlock = parseStatementAsBlock();
                if (this.token.kind == Tokens.TokenKind.ELSE) {
                    nextToken();
                    jCStatement = parseStatementAsBlock();
                }
                return this.f103286F.at(i10).If(parExpression, parseStatementAsBlock, jCStatement);
            case 36:
                nextToken();
                accept(Tokens.TokenKind.LPAREN);
                Tokens.TokenKind tokenKind = this.token.kind;
                Tokens.TokenKind tokenKind2 = Tokens.TokenKind.SEMI;
                List<JCTree.JCStatement> nil = tokenKind == tokenKind2 ? List.nil() : forInit();
                if (nil.length() == 1 && nil.head.hasTag(JCTree.Tag.VARDEF)) {
                    JCTree.JCStatement jCStatement2 = nil.head;
                    if (((JCTree.JCVariableDecl) jCStatement2).init == null) {
                        Tokens.TokenKind tokenKind3 = this.token.kind;
                        Tokens.TokenKind tokenKind4 = Tokens.TokenKind.COLON;
                        if (tokenKind3 == tokenKind4) {
                            accept(tokenKind4);
                            JCTree.JCExpression parseExpression2 = parseExpression();
                            accept(Tokens.TokenKind.RPAREN);
                            return this.f103286F.at(i10).ForeachLoop((JCTree.JCVariableDecl) jCStatement2, parseExpression2, parseStatementAsBlock());
                        }
                    }
                }
                accept(tokenKind2);
                JCTree.JCExpression parseExpression3 = this.token.kind != tokenKind2 ? parseExpression() : null;
                accept(tokenKind2);
                Tokens.TokenKind tokenKind5 = this.token.kind;
                Tokens.TokenKind tokenKind6 = Tokens.TokenKind.RPAREN;
                List<JCTree.JCExpressionStatement> nil2 = tokenKind5 == tokenKind6 ? List.nil() : forUpdate();
                accept(tokenKind6);
                return this.f103286F.at(i10).ForLoop(nil, parseExpression3, nil2, parseStatementAsBlock());
            case 37:
                nextToken();
                return this.f103286F.at(i10).WhileLoop(parExpression(), parseStatementAsBlock());
            case 38:
                nextToken();
                JCTree.JCStatement parseStatementAsBlock2 = parseStatementAsBlock();
                accept(Tokens.TokenKind.WHILE);
                JCTree.JCExpression parExpression2 = parExpression();
                accept(Tokens.TokenKind.SEMI);
                return (JCTree.JCDoWhileLoop) toP(this.f103286F.at(i10).DoLoop(parseStatementAsBlock2, parExpression2));
            case 39:
                nextToken();
                List<JCTree> nil3 = List.nil();
                if (this.token.kind == Tokens.TokenKind.LPAREN) {
                    checkTryWithResources();
                    nextToken();
                    nil3 = resources();
                    accept(Tokens.TokenKind.RPAREN);
                }
                JCTree.JCBlock block2 = block();
                ListBuffer listBuffer = new ListBuffer();
                Tokens.TokenKind tokenKind7 = this.token.kind;
                if (tokenKind7 == Tokens.TokenKind.CATCH || tokenKind7 == Tokens.TokenKind.FINALLY) {
                    while (true) {
                        Tokens.TokenKind tokenKind8 = this.token.kind;
                        if (tokenKind8 == Tokens.TokenKind.CATCH) {
                            listBuffer.append(catchClause());
                        } else if (tokenKind8 == Tokens.TokenKind.FINALLY) {
                            nextToken();
                            block = block();
                        }
                    }
                } else if (nil3.isEmpty()) {
                    if (this.allowTWR) {
                        error(i10, "try.without.catch.finally.or.resource.decls", new Object[0]);
                    } else {
                        error(i10, "try.without.catch.or.finally", new Object[0]);
                    }
                }
                return this.f103286F.at(i10).Try(nil3, block2, listBuffer.toList(), block);
            case 40:
                nextToken();
                JCTree.JCExpression parExpression3 = parExpression();
                accept(Tokens.TokenKind.LBRACE);
                JCTree.JCSwitch jCSwitch = (JCTree.JCSwitch) to(this.f103286F.at(i10).Switch(parExpression3, switchBlockStatementGroups()));
                accept(Tokens.TokenKind.RBRACE);
                return jCSwitch;
            case 41:
                nextToken();
                Tokens.TokenKind tokenKind9 = this.token.kind;
                Tokens.TokenKind tokenKind10 = Tokens.TokenKind.SEMI;
                JCTree.JCExpression parseExpression4 = tokenKind9 != tokenKind10 ? parseExpression() : null;
                accept(tokenKind10);
                return (JCTree.JCReturn) toP(this.f103286F.at(i10).Return(parseExpression4));
            case 42:
                nextToken();
                JCTree.JCExpression parseExpression5 = parseExpression();
                accept(Tokens.TokenKind.SEMI);
                return (JCTree.JCThrow) toP(this.f103286F.at(i10).Throw(parseExpression5));
            case 43:
                nextToken();
                Name ident = this.LAX_IDENTIFIER.accepts(this.token.kind) ? ident() : null;
                accept(Tokens.TokenKind.SEMI);
                return (JCTree.JCBreak) toP(this.f103286F.at(i10).Break(ident));
            case 44:
                nextToken();
                Name ident2 = this.LAX_IDENTIFIER.accepts(this.token.kind) ? ident() : null;
                accept(Tokens.TokenKind.SEMI);
                return (JCTree.JCContinue) toP(this.f103286F.at(i10).Continue(ident2));
            case 45:
                int i12 = this.token.pos;
                nextToken();
                return doRecover(i12, BasicErrorRecoveryAction.BLOCK_STMT, "else.without.if");
            case 46:
                int i13 = this.token.pos;
                nextToken();
                return doRecover(i13, BasicErrorRecoveryAction.BLOCK_STMT, "finally.without.try");
            case 47:
                return doRecover(this.token.pos, BasicErrorRecoveryAction.CATCH_CLAUSE, "catch.without.try");
            default:
                Assert.error();
                return null;
        }
    }

    @Override
    public JCTree.JCStatement parseStatement() {
        return parseStatementAsBlock();
    }

    public JCTree.JCStatement parseStatementAsBlock() {
        int i10 = this.token.pos;
        List<JCTree.JCStatement> blockStatement = blockStatement();
        if (blockStatement.isEmpty()) {
            JCTree.JCErroneous Erroneous = this.f103286F.at(i10).Erroneous();
            error(Erroneous, "illegal.start.of.stmt", new Object[0]);
            return this.f103286F.at(i10).Exec(Erroneous);
        }
        JCTree.JCStatement jCStatement = blockStatement.head;
        int i11 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[jCStatement.getTag().ordinal()];
        String str = i11 != 3 ? i11 != 4 ? null : "variable.not.allowed" : "class.not.allowed";
        if (str == null) {
            return jCStatement;
        }
        error(jCStatement, str, new Object[0]);
        return (JCTree.JCStatement) toP(this.f103286F.at(i10).Exec(this.f103286F.at(jCStatement.pos).Erroneous(List.of(this.f103286F.at(jCStatement.pos).Block(0L, blockStatement)))));
    }

    @Override
    public JCTree.JCExpression parseType() {
        return parseType(typeAnnotationsOpt());
    }

    public boolean peekToken(Filter<Tokens.TokenKind> filter) {
        return peekToken(0, filter);
    }

    public JCTree.JCExpression qualident(boolean z10) {
        JCTree.JCExpression jCExpression = (JCTree.JCExpression) toP(this.f103286F.at(this.token.pos).Ident(ident()));
        while (true) {
            Tokens.Token token = this.token;
            if (token.kind != Tokens.TokenKind.DOT) {
                return jCExpression;
            }
            int i10 = token.pos;
            nextToken();
            List<JCTree.JCAnnotation> typeAnnotationsOpt = z10 ? typeAnnotationsOpt() : null;
            jCExpression = (JCTree.JCExpression) toP(this.f103286F.at(i10).Select(jCExpression, ident()));
            if (typeAnnotationsOpt != null && typeAnnotationsOpt.nonEmpty()) {
                jCExpression = (JCTree.JCExpression) toP(this.f103286F.at(typeAnnotationsOpt.head.pos).AnnotatedType(typeAnnotationsOpt, jCExpression));
            }
        }
    }

    public List<JCTree.JCExpression> qualidentList(boolean z10) {
        ListBuffer listBuffer = new ListBuffer();
        List<JCTree.JCAnnotation> typeAnnotationsOpt = z10 ? typeAnnotationsOpt() : List.nil();
        JCTree.JCExpression qualident = qualident(z10);
        if (typeAnnotationsOpt.isEmpty()) {
            listBuffer.append(qualident);
        } else {
            listBuffer.append(insertAnnotationsToMostInner(qualident, typeAnnotationsOpt, false));
        }
        while (this.token.kind == Tokens.TokenKind.COMMA) {
            nextToken();
            List<JCTree.JCAnnotation> typeAnnotationsOpt2 = z10 ? typeAnnotationsOpt() : List.nil();
            JCTree.JCExpression qualident2 = qualident(z10);
            if (typeAnnotationsOpt2.isEmpty()) {
                listBuffer.append(qualident2);
            } else {
                listBuffer.append(insertAnnotationsToMostInner(qualident2, typeAnnotationsOpt2, false));
            }
        }
        return listBuffer.toList();
    }

    public void reportSyntaxError(int i10, String str, Object... objArr) {
        reportSyntaxError(new JCDiagnostic.SimpleDiagnosticPosition(i10), str, objArr);
    }

    public JCTree resource() {
        Tokens.Token token = this.token;
        int i10 = token.pos;
        Tokens.TokenKind tokenKind = token.kind;
        if (tokenKind == Tokens.TokenKind.FINAL || tokenKind == Tokens.TokenKind.MONKEYS_AT) {
            return variableDeclaratorRest(this.token.pos, optFinal(16L), parseType(), ident(), true, null);
        }
        JCTree.JCExpression term = term(3);
        if ((this.lastmode & 2) != 0 && this.LAX_IDENTIFIER.accepts(this.token.kind)) {
            return variableDeclaratorRest(this.token.pos, (JCTree.JCModifiers) toP(this.f103286F.at(i10).Modifiers(16L)), term, ident(), true, null);
        }
        checkVariableInTryWithResources(i10);
        if (!term.hasTag(JCTree.Tag.IDENT) && !term.hasTag(JCTree.Tag.SELECT)) {
            this.log.error(term.pos(), "try.with.resources.expr.needs.var", new Object[0]);
        }
        return term;
    }

    public List<JCTree> resources() {
        ListBuffer listBuffer = new ListBuffer();
        listBuffer.append(resource());
        while (this.token.kind == Tokens.TokenKind.SEMI) {
            storeEnd((JCTree) listBuffer.last(), this.token.endPos);
            int i10 = this.token.pos;
            nextToken();
            if (this.token.kind == Tokens.TokenKind.RPAREN) {
                break;
            }
            listBuffer.append(resource());
        }
        return listBuffer.toList();
    }

    public void setErrorEndPos(int i10) {
        this.endPosTable.setErrorEndPos(i10);
    }

    public void skip(boolean z10, boolean z11, boolean z12, boolean z13) {
        while (true) {
            switch (AnonymousClass1.$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[this.token.kind.ordinal()]) {
                case 1:
                    nextToken();
                    return;
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                    return;
                case 10:
                    if (!z10) {
                        break;
                    } else {
                        return;
                    }
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                    if (!z11) {
                        break;
                    } else {
                        return;
                    }
                case 31:
                case 32:
                    if (!z12) {
                        break;
                    } else {
                        return;
                    }
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                case 50:
                    if (!z13) {
                        break;
                    } else {
                        return;
                    }
                case 51:
                    if (!z13) {
                        break;
                    } else {
                        return;
                    }
            }
            nextToken();
        }
    }

    public void storeEnd(JCTree jCTree, int i10) {
        this.endPosTable.storeEnd(jCTree, i10);
    }

    public String strval(Name name) {
        String stringVal = this.token.stringVal();
        if (name.isEmpty()) {
            return stringVal;
        }
        return ((Object) name) + stringVal;
    }

    public JCTree.JCExpression superSuffix(List<JCTree.JCExpression> list, JCTree.JCExpression jCExpression) {
        nextToken();
        Tokens.Token token = this.token;
        Tokens.TokenKind tokenKind = token.kind;
        if (tokenKind == Tokens.TokenKind.LPAREN || list != null) {
            return arguments(list, jCExpression);
        }
        if (tokenKind == Tokens.TokenKind.COLCOL) {
            return list != null ? illegal() : memberReferenceSuffix(jCExpression);
        }
        int i10 = token.pos;
        accept(Tokens.TokenKind.DOT);
        return argumentsOpt(this.token.kind == Tokens.TokenKind.LT ? typeArguments(false) : null, (JCTree.JCExpression) toP(this.f103286F.at(i10).Select(jCExpression, ident())));
    }

    public JCTree.JCCase switchBlockStatementGroup() {
        Tokens.Token token = this.token;
        int i10 = token.pos;
        int i11 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[token.kind.ordinal()];
        if (i11 == 33) {
            nextToken();
            JCTree.JCExpression parseExpression = parseExpression();
            accept(Tokens.TokenKind.COLON);
            List<JCTree.JCStatement> blockStatements = blockStatements();
            JCTree.JCCase Case = this.f103286F.at(i10).Case(parseExpression, blockStatements);
            if (blockStatements.isEmpty()) {
                storeEnd(Case, this.f103287S.prevToken().endPos);
            }
            return Case;
        }
        if (i11 != 34) {
            throw new AssertionError((Object) "should not reach here");
        }
        nextToken();
        accept(Tokens.TokenKind.COLON);
        List<JCTree.JCStatement> blockStatements2 = blockStatements();
        JCTree.JCCase Case2 = this.f103286F.at(i10).Case(null, blockStatements2);
        if (blockStatements2.isEmpty()) {
            storeEnd(Case2, this.f103287S.prevToken().endPos);
        }
        return Case2;
    }

    public List<JCTree.JCCase> switchBlockStatementGroups() {
        ListBuffer listBuffer = new ListBuffer();
        while (true) {
            Tokens.Token token = this.token;
            int i10 = token.pos;
            int i11 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[token.kind.ordinal()];
            if (i11 == 6 || i11 == 12) {
                break;
            }
            if (i11 == 33 || i11 == 34) {
                listBuffer.append(switchBlockStatementGroup());
            } else {
                nextToken();
                syntaxError(i10, "expected3", Tokens.TokenKind.CASE, Tokens.TokenKind.DEFAULT, Tokens.TokenKind.RBRACE);
            }
        }
        return listBuffer.toList();
    }

    public JCTree.JCErroneous syntaxError(int i10, String str, Tokens.TokenKind... tokenKindArr) {
        return syntaxError(i10, List.nil(), str, tokenKindArr);
    }

    public JCTree.JCExpression term(int i10) {
        int i11 = this.mode;
        this.mode = i10;
        JCTree.JCExpression term = term();
        this.lastmode = this.mode;
        this.mode = i11;
        return term;
    }

    public JCTree.JCExpression term1() {
        JCTree.JCExpression term2 = term2();
        if ((this.mode & 1) == 0 || this.token.kind != Tokens.TokenKind.QUES) {
            return term2;
        }
        this.mode = 1;
        return term1Rest(term2);
    }

    public JCTree.JCExpression term1Rest(JCTree.JCExpression jCExpression) {
        Tokens.Token token = this.token;
        if (token.kind != Tokens.TokenKind.QUES) {
            return jCExpression;
        }
        int i10 = token.pos;
        nextToken();
        JCTree.JCExpression term = term();
        accept(Tokens.TokenKind.COLON);
        return this.f103286F.at(i10).Conditional(jCExpression, term, term1());
    }

    public JCTree.JCExpression term2() {
        JCTree.JCExpression term3 = term3();
        if ((this.mode & 1) == 0 || prec(this.token.kind) < 4) {
            return term3;
        }
        this.mode = 1;
        return term2Rest(term3, 4);
    }

    public JCTree.JCExpression term2Rest(JCTree.JCExpression jCExpression, int i10) {
        JCTree.JCExpression[] newOdStack = newOdStack();
        Tokens.Token[] newOpStack = newOpStack();
        newOdStack[0] = jCExpression;
        int i11 = this.token.pos;
        Tokens.Token token = Tokens.DUMMY;
        int i12 = 0;
        while (prec(this.token.kind) >= i10) {
            newOpStack[i12] = token;
            i12++;
            token = this.token;
            nextToken();
            newOdStack[i12] = token.kind == Tokens.TokenKind.INSTANCEOF ? parseType() : term3();
            while (i12 > 0 && prec(token.kind) >= prec(this.token.kind)) {
                int i13 = i12 - 1;
                newOdStack[i13] = makeOp(token.pos, token.kind, newOdStack[i13], newOdStack[i12]);
                i12--;
                token = newOpStack[i12];
            }
        }
        Assert.check(i12 == 0);
        JCTree.JCExpression jCExpression2 = newOdStack[0];
        if (jCExpression2.hasTag(JCTree.Tag.PLUS)) {
            jCExpression2 = foldStrings(jCExpression2);
        }
        this.odStackSupply.add(newOdStack);
        this.opStackSupply.add(newOpStack);
        return jCExpression2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:146:0x02fd, code lost:
    
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x033b, code lost:
    
        r2 = r4;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:132:0x029b. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:137:0x02d8. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x0023. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x0026. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x023b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public JCTree.JCExpression term3() {
        JCTree.JCExpression insertAnnotationsToMostInner;
        JCTree.JCExpression jCExpression;
        Tokens.TokenKind tokenKind;
        Tokens.Token token;
        Tokens.TokenKind tokenKind2;
        int i10 = this.token.pos;
        List<JCTree.JCExpression> typeArgumentsOpt = typeArgumentsOpt(1);
        int i11 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[this.token.kind.ordinal()];
        if (i11 != 5) {
            if (i11 != 9) {
                if (i11 != 74) {
                    switch (i11) {
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                        case 26:
                        case 27:
                        case 28:
                        case 29:
                            if (typeArgumentsOpt != null) {
                                illegal();
                            }
                            insertAnnotationsToMostInner = bracketsSuffix(bracketsOpt(basicType()));
                            break;
                        case 30:
                            if (typeArgumentsOpt != null) {
                                illegal();
                            }
                            if ((1 & this.mode) == 0) {
                                JCTree.JCPrimitiveTypeTree jCPrimitiveTypeTree = (JCTree.JCPrimitiveTypeTree) to(this.f103286F.at(i10).TypeIdent(TypeTag.VOID));
                                nextToken();
                                return jCPrimitiveTypeTree;
                            }
                            nextToken();
                            if (this.token.kind != Tokens.TokenKind.DOT) {
                                return illegal(i10);
                            }
                            insertAnnotationsToMostInner = bracketsSuffix((JCTree.JCPrimitiveTypeTree) toP(this.f103286F.at(i10).TypeIdent(TypeTag.VOID)));
                            break;
                        default:
                            switch (i11) {
                                case 48:
                                    if ((this.mode & 1) == 0) {
                                        return illegal();
                                    }
                                    this.mode = 1;
                                    JCTree.JCExpression jCExpression2 = (JCTree.JCExpression) to(this.f103286F.at(i10).Ident(this.names._this));
                                    nextToken();
                                    insertAnnotationsToMostInner = typeArgumentsOpt == null ? argumentsOpt(null, jCExpression2) : arguments(typeArgumentsOpt, jCExpression2);
                                    typeArgumentsOpt = null;
                                    break;
                                case 49:
                                    if ((this.mode & 1) == 0) {
                                        return illegal();
                                    }
                                    this.mode = 1;
                                    insertAnnotationsToMostInner = superSuffix(typeArgumentsOpt, (JCTree.JCExpression) to(this.f103286F.at(i10).Ident(this.names._super)));
                                    typeArgumentsOpt = null;
                                    break;
                                case 50:
                                    if (typeArgumentsOpt == null && (this.mode & 1) != 0) {
                                        this.mode = 1;
                                        nextToken();
                                        if (this.token.kind == Tokens.TokenKind.LT) {
                                            typeArgumentsOpt = typeArguments(false);
                                        }
                                        insertAnnotationsToMostInner = creator(i10, typeArgumentsOpt);
                                        typeArgumentsOpt = null;
                                        break;
                                    }
                                    return illegal();
                                case 51:
                                    break;
                                case 52:
                                case 53:
                                case 54:
                                case 55:
                                case 56:
                                case 57:
                                case 58:
                                case 59:
                                case 60:
                                    if (typeArgumentsOpt == null && (this.mode & 1) != 0) {
                                        this.mode = 1;
                                        insertAnnotationsToMostInner = literal(this.names.empty);
                                        break;
                                    } else {
                                        return illegal();
                                    }
                                    break;
                                default:
                                    switch (i11) {
                                        case 77:
                                            int i12 = this.mode;
                                            if ((i12 & 2) == 0 || (i12 & 12) != 8) {
                                                return illegal();
                                            }
                                            this.mode = 2;
                                            return typeArgument();
                                        case 78:
                                        case 79:
                                        case 80:
                                        case 81:
                                        case 82:
                                        case 83:
                                            if (typeArgumentsOpt == null && (this.mode & 1) != 0) {
                                                Tokens.TokenKind tokenKind3 = this.token.kind;
                                                nextToken();
                                                this.mode = 1;
                                                if (tokenKind3 != Tokens.TokenKind.SUB || (((tokenKind2 = (token = this.token).kind) != Tokens.TokenKind.INTLITERAL && tokenKind2 != Tokens.TokenKind.LONGLITERAL) || token.radix() != 10)) {
                                                    return this.f103286F.at(i10).Unary(unoptag(tokenKind3), term3());
                                                }
                                                this.mode = 1;
                                                insertAnnotationsToMostInner = literal(this.names.hyphen, i10);
                                                break;
                                            } else {
                                                return illegal();
                                            }
                                            break;
                                        default:
                                            return illegal();
                                    }
                            }
                        case 31:
                        case 32:
                            if (typeArgumentsOpt != null) {
                                if ((this.mode & 1) == 0 || !peekToken(Tokens.TokenKind.ARROW)) {
                                    jCExpression = (JCTree.JCExpression) toP(this.f103286F.at(this.token.pos).Ident(ident()));
                                    while (true) {
                                        int i13 = this.token.pos;
                                        List<JCTree.JCAnnotation> typeAnnotationsOpt = typeAnnotationsOpt();
                                        if (!typeAnnotationsOpt.isEmpty() && (tokenKind = this.token.kind) != Tokens.TokenKind.LBRACKET && tokenKind != Tokens.TokenKind.ELLIPSIS) {
                                            return illegal(typeAnnotationsOpt.head.pos);
                                        }
                                        int[] iArr = AnonymousClass1.$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind;
                                        int i14 = iArr[this.token.kind.ordinal()];
                                        if (i14 != 21) {
                                            switch (i14) {
                                                case 73:
                                                    nextToken();
                                                    Tokens.TokenKind tokenKind4 = this.token.kind;
                                                    Tokens.TokenKind tokenKind5 = Tokens.TokenKind.RBRACKET;
                                                    if (tokenKind4 != tokenKind5) {
                                                        if ((this.mode & 1) != 0) {
                                                            this.mode = 1;
                                                            JCTree.JCExpression term = term();
                                                            if (!typeAnnotationsOpt.isEmpty()) {
                                                                jCExpression = illegal(typeAnnotationsOpt.head.pos);
                                                            }
                                                            jCExpression = (JCTree.JCExpression) to(this.f103286F.at(i13).Indexed(jCExpression, term));
                                                        }
                                                        accept(tokenKind5);
                                                        break;
                                                    } else {
                                                        nextToken();
                                                        JCTree.JCExpression jCExpression3 = (JCTree.JCExpression) toP(this.f103286F.at(i13).TypeArray(bracketsOpt(jCExpression)));
                                                        if (typeAnnotationsOpt.nonEmpty()) {
                                                            jCExpression3 = (JCTree.JCExpression) toP(this.f103286F.at(i13).AnnotatedType(typeAnnotationsOpt, jCExpression3));
                                                        }
                                                        jCExpression = bracketsSuffix(jCExpression3);
                                                        break;
                                                    }
                                                case 74:
                                                    if ((this.mode & 1) != 0) {
                                                        this.mode = 1;
                                                        jCExpression = arguments(typeArgumentsOpt, jCExpression);
                                                        if (!typeAnnotationsOpt.isEmpty()) {
                                                            jCExpression = illegal(typeAnnotationsOpt.head.pos);
                                                            break;
                                                        }
                                                    }
                                                    break;
                                                case 75:
                                                    nextToken();
                                                    int i15 = this.mode;
                                                    this.mode = i15 & (-5);
                                                    List<JCTree.JCExpression> typeArgumentsOpt2 = typeArgumentsOpt(1);
                                                    this.mode = i15;
                                                    if ((i15 & 1) != 0) {
                                                        int i16 = iArr[this.token.kind.ordinal()];
                                                        if (i16 == 7) {
                                                            if (typeArgumentsOpt2 == null) {
                                                                this.mode = 1;
                                                                jCExpression = (JCTree.JCExpression) to(this.f103286F.at(i13).Select(jCExpression, this.names._class));
                                                                nextToken();
                                                                break;
                                                            } else {
                                                                return illegal();
                                                            }
                                                        } else {
                                                            switch (i16) {
                                                                case 48:
                                                                    if (typeArgumentsOpt2 == null) {
                                                                        this.mode = 1;
                                                                        jCExpression = (JCTree.JCExpression) to(this.f103286F.at(i13).Select(jCExpression, this.names._this));
                                                                        nextToken();
                                                                        break;
                                                                    } else {
                                                                        return illegal();
                                                                    }
                                                                case 49:
                                                                    this.mode = 1;
                                                                    jCExpression = superSuffix(typeArgumentsOpt2, (JCTree.JCExpression) to(this.f103286F.at(i13).Select(jCExpression, this.names._super)));
                                                                    break;
                                                                case 50:
                                                                    if (typeArgumentsOpt2 == null) {
                                                                        this.mode = 1;
                                                                        int i17 = this.token.pos;
                                                                        nextToken();
                                                                        if (this.token.kind == Tokens.TokenKind.LT) {
                                                                            typeArgumentsOpt2 = typeArguments(false);
                                                                        }
                                                                        jCExpression = innerCreator(i17, typeArgumentsOpt2, jCExpression);
                                                                        break;
                                                                    } else {
                                                                        return illegal();
                                                                    }
                                                            }
                                                        }
                                                    }
                                                    List<JCTree.JCAnnotation> typeAnnotationsOpt2 = ((this.mode & 2) == 0 || this.token.kind != Tokens.TokenKind.MONKEYS_AT) ? null : typeAnnotationsOpt();
                                                    jCExpression = (JCTree.JCExpression) toP(this.f103286F.at(i13).Select(jCExpression, ident()));
                                                    if (typeAnnotationsOpt2 != null && typeAnnotationsOpt2.nonEmpty()) {
                                                        jCExpression = (JCTree.JCExpression) toP(this.f103286F.at(typeAnnotationsOpt2.head.pos).AnnotatedType(typeAnnotationsOpt2, jCExpression));
                                                    }
                                                    typeArgumentsOpt = typeArgumentsOpt2;
                                                    break;
                                                case 76:
                                                    if (!this.permitTypeAnnotationsPushBack) {
                                                        if (typeAnnotationsOpt.nonEmpty()) {
                                                            illegal(typeAnnotationsOpt.head.pos);
                                                            break;
                                                        }
                                                    } else {
                                                        this.typeAnnotationsPushedBack = typeAnnotationsOpt;
                                                        break;
                                                    }
                                                    break;
                                            }
                                        } else if ((this.mode & 2) == 0 && isUnboundMemberRef()) {
                                            int i18 = this.token.pos;
                                            accept(Tokens.TokenKind.LT);
                                            ListBuffer listBuffer = new ListBuffer();
                                            listBuffer.append(typeArgument());
                                            while (this.token.kind == Tokens.TokenKind.COMMA) {
                                                nextToken();
                                                listBuffer.append(typeArgument());
                                            }
                                            accept(Tokens.TokenKind.GT);
                                            JCTree.JCExpression jCExpression4 = (JCTree.JCExpression) toP(this.f103286F.at(i18).TypeApply(jCExpression, listBuffer.toList()));
                                            while (this.token.kind == Tokens.TokenKind.DOT) {
                                                nextToken();
                                                this.mode = 2;
                                                jCExpression4 = typeArgumentsOpt((JCTree.JCExpression) toP(this.f103286F.at(this.token.pos).Select(jCExpression4, ident())));
                                            }
                                            JCTree.JCExpression bracketsOpt = bracketsOpt(jCExpression4);
                                            if (this.token.kind != Tokens.TokenKind.COLCOL) {
                                                bracketsOpt = illegal();
                                            }
                                            this.mode = 1;
                                            return term3Rest(bracketsOpt, typeArgumentsOpt);
                                        }
                                    }
                                } else {
                                    jCExpression = lambdaExpressionOrStatement(false, false, i10);
                                }
                                if (typeArgumentsOpt != null) {
                                    illegal();
                                }
                                insertAnnotationsToMostInner = typeArgumentsOpt(jCExpression);
                                break;
                            } else {
                                return illegal();
                            }
                            break;
                    }
                } else {
                    if (typeArgumentsOpt != null || (this.mode & 1) == 0) {
                        return illegal();
                    }
                    ParensResult analyzeParens = analyzeParens();
                    int i19 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$parser$JavacParser$ParensResult[analyzeParens.ordinal()];
                    if (i19 == 1) {
                        accept(Tokens.TokenKind.LPAREN);
                        this.mode = 2;
                        JCTree.JCExpression term3 = term3();
                        List of2 = List.of(term3);
                        while (true) {
                            Tokens.TokenKind tokenKind6 = this.token.kind;
                            Tokens.TokenKind tokenKind7 = Tokens.TokenKind.AMP;
                            if (tokenKind6 != tokenKind7) {
                                break;
                            }
                            checkIntersectionTypesInCast();
                            accept(tokenKind7);
                            of2 = of2.prepend(term3());
                        }
                        if (of2.length() > 1) {
                            term3 = (JCTree.JCExpression) toP(this.f103286F.at(i10).TypeIntersection(of2.reverse()));
                        }
                        accept(Tokens.TokenKind.RPAREN);
                        this.mode = 1;
                        return this.f103286F.at(i10).TypeCast(term3, term3());
                    }
                    if (i19 == 2 || i19 == 3) {
                        insertAnnotationsToMostInner = lambdaExpressionOrStatement(true, analyzeParens == ParensResult.EXPLICIT_LAMBDA, i10);
                    } else {
                        accept(Tokens.TokenKind.LPAREN);
                        this.mode = 1;
                        JCTree.JCExpression termRest = termRest(term1Rest(term2Rest(term3(), 4)));
                        accept(Tokens.TokenKind.RPAREN);
                        insertAnnotationsToMostInner = (JCTree.JCExpression) toP(this.f103286F.at(i10).Parens(termRest));
                    }
                }
            }
            if (typeArgumentsOpt != null) {
            }
        } else {
            List<JCTree.JCAnnotation> typeAnnotationsOpt3 = typeAnnotationsOpt();
            if (typeAnnotationsOpt3.isEmpty()) {
                throw new AssertionError((Object) "Expected type annotations, but found none!");
            }
            JCTree.JCExpression term32 = term3();
            if ((this.mode & 2) == 0) {
                int i20 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[term32.getTag().ordinal()];
                if (i20 != 1) {
                    if (i20 != 2) {
                        return illegal(typeAnnotationsOpt3.head.pos);
                    }
                    if (((JCTree.JCFieldAccess) term32).name != this.names._class) {
                        return illegal();
                    }
                    this.log.error(this.token.pos, "no.annotations.on.dot.class", new Object[0]);
                    return term32;
                }
                JCTree.JCMemberReference jCMemberReference = (JCTree.JCMemberReference) term32;
                jCMemberReference.expr = (JCTree.JCExpression) toP(this.f103286F.at(i10).AnnotatedType(typeAnnotationsOpt3, jCMemberReference.expr));
                insertAnnotationsToMostInner = jCMemberReference;
            } else {
                insertAnnotationsToMostInner = insertAnnotationsToMostInner(term32, typeAnnotationsOpt3, false);
            }
        }
        return term3Rest(insertAnnotationsToMostInner, typeArgumentsOpt);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0152, code lost:
    
        if (r1.isEmpty() != false) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0156, code lost:
    
        if (r7.permitTypeAnnotationsPushBack == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0158, code lost:
    
        r7.typeAnnotationsPushedBack = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0165, code lost:
    
        return illegal(r1.head.pos);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0166, code lost:
    
        r9 = r7.token;
        r0 = r9.kind;
        r1 = org.openjdk.tools.javac.parser.Tokens.TokenKind.PLUSPLUS;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x016c, code lost:
    
        if (r0 == r1) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0170, code lost:
    
        if (r0 != org.openjdk.tools.javac.parser.Tokens.TokenKind.SUBSUB) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x01a0, code lost:
    
        return (org.openjdk.tools.javac.tree.JCTree.JCExpression) toP(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0175, code lost:
    
        if ((r7.mode & 1) == 0) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0177, code lost:
    
        r7.mode = 1;
        r9 = r7.f103286F.at(r9.pos);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0185, code lost:
    
        if (r7.token.kind != r1) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0187, code lost:
    
        r0 = org.openjdk.tools.javac.tree.JCTree.Tag.POSTINC;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x018c, code lost:
    
        r8 = (org.openjdk.tools.javac.tree.JCTree.JCExpression) to(r9.Unary(r0, r8));
        nextToken();
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x018a, code lost:
    
        r0 = org.openjdk.tools.javac.tree.JCTree.Tag.POSTDEC;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public JCTree.JCExpression term3Rest(JCTree.JCExpression jCExpression, List<JCTree.JCExpression> list) {
        Tokens.TokenKind tokenKind;
        if (list != null) {
            illegal();
        }
        while (true) {
            int i10 = this.token.pos;
            List<JCTree.JCAnnotation> typeAnnotationsOpt = typeAnnotationsOpt();
            Tokens.TokenKind tokenKind2 = this.token.kind;
            if (tokenKind2 == Tokens.TokenKind.LBRACKET) {
                nextToken();
                int i11 = this.mode;
                if ((i11 & 2) != 0) {
                    this.mode = 2;
                    if (this.token.kind == Tokens.TokenKind.RBRACKET) {
                        nextToken();
                        jCExpression = (JCTree.JCExpression) toP(this.f103286F.at(i10).TypeArray(bracketsOpt(jCExpression)));
                        if (this.token.kind != Tokens.TokenKind.COLCOL) {
                            return typeAnnotationsOpt.nonEmpty() ? (JCTree.JCExpression) toP(this.f103286F.at(i10).AnnotatedType(typeAnnotationsOpt, jCExpression)) : jCExpression;
                        }
                        this.mode = 1;
                    } else {
                        this.mode = i11;
                    }
                }
                if ((this.mode & 1) != 0) {
                    this.mode = 1;
                    jCExpression = (JCTree.JCExpression) to(this.f103286F.at(i10).Indexed(jCExpression, term()));
                }
                accept(Tokens.TokenKind.RBRACKET);
            } else if (tokenKind2 == Tokens.TokenKind.DOT) {
                nextToken();
                List<JCTree.JCExpression> typeArgumentsOpt = typeArgumentsOpt(1);
                Tokens.Token token = this.token;
                Tokens.TokenKind tokenKind3 = token.kind;
                if (tokenKind3 == Tokens.TokenKind.SUPER && (this.mode & 1) != 0) {
                    this.mode = 1;
                    JCTree.JCExpression jCExpression2 = (JCTree.JCExpression) to(this.f103286F.at(i10).Select(jCExpression, this.names._super));
                    nextToken();
                    jCExpression = arguments(typeArgumentsOpt, jCExpression2);
                } else if (tokenKind3 != Tokens.TokenKind.NEW || (this.mode & 1) == 0) {
                    List<JCTree.JCAnnotation> typeAnnotationsOpt2 = ((this.mode & 2) == 0 || tokenKind3 != Tokens.TokenKind.MONKEYS_AT) ? null : typeAnnotationsOpt();
                    JCTree.JCExpression jCExpression3 = (JCTree.JCExpression) toP(this.f103286F.at(i10).Select(jCExpression, ident(true)));
                    if (typeAnnotationsOpt2 != null && typeAnnotationsOpt2.nonEmpty()) {
                        jCExpression3 = (JCTree.JCExpression) toP(this.f103286F.at(typeAnnotationsOpt2.head.pos).AnnotatedType(typeAnnotationsOpt2, jCExpression3));
                    }
                    jCExpression = argumentsOpt(typeArgumentsOpt, typeArgumentsOpt(jCExpression3));
                } else {
                    if (typeArgumentsOpt != null) {
                        return illegal();
                    }
                    this.mode = 1;
                    int i12 = token.pos;
                    nextToken();
                    if (this.token.kind == Tokens.TokenKind.LT) {
                        typeArgumentsOpt = typeArguments(false);
                    }
                    jCExpression = innerCreator(i12, typeArgumentsOpt, jCExpression);
                }
                list = null;
            } else {
                if ((this.mode & 1) == 0 || tokenKind2 != (tokenKind = Tokens.TokenKind.COLCOL)) {
                    break;
                }
                this.mode = 1;
                if (list != null) {
                    return illegal();
                }
                accept(tokenKind);
                jCExpression = memberReferenceSuffix(i10, jCExpression);
            }
        }
    }

    public JCTree.JCExpression termRest(JCTree.JCExpression jCExpression) {
        switch (AnonymousClass1.$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[this.token.kind.ordinal()]) {
            case 61:
                int i10 = this.token.pos;
                nextToken();
                this.mode = 1;
                return (JCTree.JCExpression) toP(this.f103286F.at(i10).Assign(jCExpression, term()));
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
            case 68:
            case 69:
            case 70:
            case 71:
            case 72:
                Tokens.Token token = this.token;
                int i11 = token.pos;
                Tokens.TokenKind tokenKind = token.kind;
                nextToken();
                this.mode = 1;
                return this.f103286F.at(i11).Assignop(optag(tokenKind), jCExpression, term());
            default:
                return jCExpression;
        }
    }

    public <T extends JCTree> T to(T t10) {
        return (T) this.endPosTable.to(t10);
    }

    public <T extends JCTree> T toP(T t10) {
        return (T) this.endPosTable.toP(t10);
    }

    public Tokens.Token token() {
        return this.token;
    }

    public List<JCTree.JCAnnotation> typeAnnotationsOpt() {
        return annotationsOpt(JCTree.Tag.TYPE_ANNOTATION);
    }

    public JCTree.JCExpression typeArgument() {
        JCTree.JCExpression jCExpression;
        List<JCTree.JCAnnotation> typeAnnotationsOpt = typeAnnotationsOpt();
        Tokens.Token token = this.token;
        if (token.kind != Tokens.TokenKind.QUES) {
            return parseType(typeAnnotationsOpt);
        }
        int i10 = token.pos;
        nextToken();
        Tokens.TokenKind tokenKind = this.token.kind;
        Tokens.TokenKind tokenKind2 = Tokens.TokenKind.EXTENDS;
        if (tokenKind == tokenKind2) {
            JCTree.TypeBoundKind typeBoundKind = (JCTree.TypeBoundKind) to(this.f103286F.at(i10).TypeBoundKind(BoundKind.EXTENDS));
            nextToken();
            jCExpression = this.f103286F.at(i10).Wildcard(typeBoundKind, parseType());
        } else {
            Tokens.TokenKind tokenKind3 = Tokens.TokenKind.SUPER;
            if (tokenKind == tokenKind3) {
                JCTree.TypeBoundKind typeBoundKind2 = (JCTree.TypeBoundKind) to(this.f103286F.at(i10).TypeBoundKind(BoundKind.SUPER));
                nextToken();
                jCExpression = this.f103286F.at(i10).Wildcard(typeBoundKind2, parseType());
            } else if (this.LAX_IDENTIFIER.accepts(tokenKind)) {
                jCExpression = this.f103286F.at(i10).Erroneous(List.of((JCTree.JCExpression) toP(this.f103286F.at(i10).Wildcard(this.f103286F.at(-1).TypeBoundKind(BoundKind.UNBOUND), null)), (JCTree.JCIdent) toP(this.f103286F.at(this.token.pos).Ident(ident()))));
                reportSyntaxError(jCExpression, "expected3", Tokens.TokenKind.GT, tokenKind2, tokenKind3);
            } else {
                jCExpression = (JCTree.JCExpression) toP(this.f103286F.at(i10).Wildcard((JCTree.TypeBoundKind) toP(this.f103286F.at(i10).TypeBoundKind(BoundKind.UNBOUND)), null));
            }
        }
        return !typeAnnotationsOpt.isEmpty() ? (JCTree.JCExpression) toP(this.f103286F.at(typeAnnotationsOpt.head.pos).AnnotatedType(typeAnnotationsOpt, jCExpression)) : jCExpression;
    }

    public List<JCTree.JCExpression> typeArguments(boolean z10) {
        Tokens.TokenKind tokenKind;
        Tokens.Token token = this.token;
        Tokens.TokenKind tokenKind2 = token.kind;
        Tokens.TokenKind tokenKind3 = Tokens.TokenKind.LT;
        if (tokenKind2 == tokenKind3) {
            nextToken();
            if (this.token.kind == Tokens.TokenKind.GT && z10) {
                checkDiamond();
                this.mode |= 16;
                nextToken();
                return List.nil();
            }
            ListBuffer listBuffer = new ListBuffer();
            listBuffer.append((this.mode & 1) == 0 ? typeArgument() : parseType());
            while (true) {
                tokenKind = this.token.kind;
                if (tokenKind != Tokens.TokenKind.COMMA) {
                    break;
                }
                nextToken();
                listBuffer.append((this.mode & 1) == 0 ? typeArgument() : parseType());
            }
            int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[tokenKind.ordinal()];
            if (i10 != 71 && i10 != 72 && i10 != 92) {
                switch (i10) {
                    case 88:
                    case 89:
                        break;
                    case 90:
                        nextToken();
                        break;
                    default:
                        listBuffer.append(syntaxError(this.token.pos, "expected", Tokens.TokenKind.GT));
                        break;
                }
                return listBuffer.toList();
            }
            this.token = this.f103287S.split();
            return listBuffer.toList();
        }
        return List.of(syntaxError(token.pos, "expected", tokenKind3));
    }

    public JCTree.JCExpression typeArgumentsOpt(JCTree.JCExpression jCExpression) {
        if (this.token.kind != Tokens.TokenKind.LT) {
            return jCExpression;
        }
        int i10 = this.mode;
        if ((i10 & 2) == 0 || (i10 & 4) != 0) {
            return jCExpression;
        }
        this.mode = 2;
        return typeArguments(jCExpression, false);
    }

    public JCTree typeDeclaration(JCTree.JCModifiers jCModifiers, Tokens.Comment comment) {
        Tokens.Token token = this.token;
        int i10 = token.pos;
        if (jCModifiers != null || token.kind != Tokens.TokenKind.SEMI) {
            return classOrInterfaceOrEnumDeclaration(modifiersOpt(jCModifiers), comment);
        }
        nextToken();
        return toP(this.f103286F.at(i10).Skip());
    }

    public List<JCTree.JCExpression> typeList() {
        ListBuffer listBuffer = new ListBuffer();
        listBuffer.append(parseType());
        while (this.token.kind == Tokens.TokenKind.COMMA) {
            nextToken();
            listBuffer.append(parseType());
        }
        return listBuffer.toList();
    }

    public JCTree.JCTypeParameter typeParameter() {
        int i10 = this.token.pos;
        List<JCTree.JCAnnotation> typeAnnotationsOpt = typeAnnotationsOpt();
        Name ident = ident();
        ListBuffer listBuffer = new ListBuffer();
        if (this.token.kind == Tokens.TokenKind.EXTENDS) {
            nextToken();
            listBuffer.append(parseType());
            while (this.token.kind == Tokens.TokenKind.AMP) {
                nextToken();
                listBuffer.append(parseType());
            }
        }
        return (JCTree.JCTypeParameter) toP(this.f103286F.at(i10).TypeParameter(ident, listBuffer.toList(), typeAnnotationsOpt));
    }

    public List<JCTree.JCTypeParameter> typeParametersOpt() {
        if (this.token.kind != Tokens.TokenKind.LT) {
            return List.nil();
        }
        ListBuffer listBuffer = new ListBuffer();
        nextToken();
        listBuffer.append(typeParameter());
        while (this.token.kind == Tokens.TokenKind.COMMA) {
            nextToken();
            listBuffer.append(typeParameter());
        }
        accept(Tokens.TokenKind.GT);
        return listBuffer.toList();
    }

    public JCTree.JCExpression unannotatedType() {
        return term(2);
    }

    public JCTree.JCVariableDecl variableDeclarator(JCTree.JCModifiers jCModifiers, JCTree.JCExpression jCExpression, boolean z10, Tokens.Comment comment) {
        return variableDeclaratorRest(this.token.pos, jCModifiers, jCExpression, ident(), z10, comment);
    }

    public JCTree.JCVariableDecl variableDeclaratorId(JCTree.JCModifiers jCModifiers, JCTree.JCExpression jCExpression) {
        return variableDeclaratorId(jCModifiers, jCExpression, false);
    }

    public JCTree.JCVariableDecl variableDeclaratorRest(int i10, JCTree.JCModifiers jCModifiers, JCTree.JCExpression jCExpression, Name name, boolean z10, Tokens.Comment comment) {
        JCTree.JCExpression jCExpression2;
        JCTree.JCExpression bracketsOpt = bracketsOpt(jCExpression);
        Tokens.Token token = this.token;
        Tokens.TokenKind tokenKind = token.kind;
        Tokens.TokenKind tokenKind2 = Tokens.TokenKind.EQ;
        if (tokenKind == tokenKind2) {
            nextToken();
            jCExpression2 = variableInitializer();
        } else {
            if (z10) {
                syntaxError(token.pos, "expected", tokenKind2);
            }
            jCExpression2 = null;
        }
        JCTree.JCVariableDecl jCVariableDecl = (JCTree.JCVariableDecl) toP(this.f103286F.at(i10).VarDef(jCModifiers, name, bracketsOpt, jCExpression2));
        attach(jCVariableDecl, comment);
        return jCVariableDecl;
    }

    public <T extends ListBuffer<? super JCTree.JCVariableDecl>> T variableDeclarators(JCTree.JCModifiers jCModifiers, JCTree.JCExpression jCExpression, T t10) {
        return (T) variableDeclaratorsRest(this.token.pos, jCModifiers, jCExpression, ident(), false, null, t10);
    }

    public <T extends ListBuffer<? super JCTree.JCVariableDecl>> T variableDeclaratorsRest(int i10, JCTree.JCModifiers jCModifiers, JCTree.JCExpression jCExpression, Name name, boolean z10, Tokens.Comment comment, T t10) {
        t10.append(variableDeclaratorRest(i10, jCModifiers, jCExpression, name, z10, comment));
        while (this.token.kind == Tokens.TokenKind.COMMA) {
            storeEnd((JCTree) t10.last(), this.token.endPos);
            nextToken();
            t10.append(variableDeclarator(jCModifiers, jCExpression, z10, comment));
        }
        return t10;
    }

    public JCTree.JCExpression variableInitializer() {
        Tokens.Token token = this.token;
        return token.kind == Tokens.TokenKind.LBRACE ? arrayInitializer(token.pos, null) : parseExpression();
    }

    public void warning(int i10, String str, Object... objArr) {
        this.log.warning(i10, str, objArr);
    }

    public JavacParser(ParserFactory parserFactory, Lexer lexer, boolean z10, boolean z11, boolean z12, boolean z13) {
        this.typeAnnotationsPushedBack = List.nil();
        this.permitTypeAnnotationsPushBack = false;
        this.mode = 0;
        this.lastmode = 0;
        this.errorPos = -1;
        this.count = 0;
        this.odStackSupply = new ArrayList<>();
        this.opStackSupply = new ArrayList<>();
        this.LAX_IDENTIFIER = new Filter() {
            @Override
            public final boolean accepts(Object obj) {
                boolean lambda$new$1;
                lambda$new$1 = JavacParser.lambda$new$1((Tokens.TokenKind) obj);
                return lambda$new$1;
            }
        };
        this.f103287S = lexer;
        nextToken();
        this.f103286F = parserFactory.f103288F;
        this.log = parserFactory.log;
        this.names = parserFactory.names;
        Source source = parserFactory.source;
        this.source = source;
        this.allowTWR = source.allowTryWithResources();
        this.allowEffectivelyFinalVariablesInTWR = this.source.allowEffectivelyFinalVariablesInTryWithResources();
        this.allowDiamond = this.source.allowDiamond();
        this.allowMulticatch = this.source.allowMulticatch();
        this.allowStringFolding = parserFactory.options.getBoolean("allowStringFolding", true);
        this.allowLambda = this.source.allowLambda();
        this.allowMethodReferences = this.source.allowMethodReferences();
        this.allowDefaultMethods = this.source.allowDefaultMethods();
        this.allowStaticInterfaceMethods = this.source.allowStaticInterfaceMethods();
        this.allowIntersectionTypesInCast = this.source.allowIntersectionTypesInCast();
        this.allowTypeAnnotations = this.source.allowTypeAnnotations();
        this.allowModules = this.source.allowModules();
        this.allowAnnotationsAfterTypeParams = this.source.allowAnnotationsAfterTypeParams();
        this.allowUnderscoreIdentifier = this.source.allowUnderscoreIdentifier();
        this.allowPrivateInterfaceMethods = this.source.allowPrivateInterfaceMethods();
        this.keepDocComments = z10;
        this.parseModuleInfo = z13;
        this.docComments = newDocCommentTable(z10, parserFactory);
        this.keepLineMap = z11;
        this.errorTree = this.f103286F.Erroneous();
        this.endPosTable = newEndPosTable(z12);
    }

    public void error(JCDiagnostic.DiagnosticPosition diagnosticPosition, String str, Object... objArr) {
        this.log.error(JCDiagnostic.DiagnosticFlag.SYNTAX, diagnosticPosition, str, objArr);
    }

    public JCTree.JCVariableDecl formalParameter(boolean z10) {
        JCTree.JCModifiers optFinal = optFinal(8589934592L);
        this.permitTypeAnnotationsPushBack = true;
        JCTree.JCExpression parseType = parseType();
        this.permitTypeAnnotationsPushBack = false;
        if (this.token.kind == Tokens.TokenKind.ELLIPSIS) {
            List<JCTree.JCAnnotation> list = this.typeAnnotationsPushedBack;
            this.typeAnnotationsPushedBack = List.nil();
            optFinal.flags |= 17179869184L;
            parseType = insertAnnotationsToMostInner(parseType, list, true);
            nextToken();
        } else {
            if (this.typeAnnotationsPushedBack.nonEmpty()) {
                reportSyntaxError(this.typeAnnotationsPushedBack.head.pos, "illegal.start.of.type", new Object[0]);
            }
            this.typeAnnotationsPushedBack = List.nil();
        }
        return variableDeclaratorId(optFinal, parseType, z10);
    }

    public List<JCTree.JCVariableDecl> formalParameters(boolean z10) {
        ListBuffer listBuffer = new ListBuffer();
        accept(Tokens.TokenKind.LPAREN);
        if (this.token.kind != Tokens.TokenKind.RPAREN) {
            this.allowThisIdent = true;
            JCTree.JCVariableDecl formalParameter = formalParameter(z10);
            if (formalParameter.nameexpr != null) {
                this.receiverParam = formalParameter;
            } else {
                listBuffer.append(formalParameter);
            }
            this.allowThisIdent = false;
            while (this.token.kind == Tokens.TokenKind.COMMA) {
                if ((formalParameter.mods.flags & 17179869184L) != 0) {
                    error(formalParameter, "varargs.must.be.last", new Object[0]);
                }
                nextToken();
                formalParameter = formalParameter(z10);
                listBuffer.append(formalParameter);
            }
        }
        Tokens.Token token = this.token;
        Tokens.TokenKind tokenKind = token.kind;
        Tokens.TokenKind tokenKind2 = Tokens.TokenKind.RPAREN;
        if (tokenKind == tokenKind2) {
            nextToken();
        } else {
            setErrorEndPos(token.pos);
            reportSyntaxError(this.f103287S.prevToken().endPos, "expected3", Tokens.TokenKind.COMMA, tokenKind2, Tokens.TokenKind.LBRACKET);
        }
        return listBuffer.toList();
    }

    public Name ident(boolean z10) {
        Tokens.Token token = this.token;
        Tokens.TokenKind tokenKind = token.kind;
        Tokens.TokenKind tokenKind2 = Tokens.TokenKind.IDENTIFIER;
        if (tokenKind == tokenKind2) {
            Name name = token.name();
            nextToken();
            return name;
        }
        if (tokenKind == Tokens.TokenKind.ASSERT) {
            error(token.pos, "assert.as.identifier", new Object[0]);
            nextToken();
            return this.names.error;
        }
        if (tokenKind == Tokens.TokenKind.ENUM) {
            error(token.pos, "enum.as.identifier", new Object[0]);
            nextToken();
            return this.names.error;
        }
        if (tokenKind == Tokens.TokenKind.THIS) {
            if (this.allowThisIdent) {
                checkTypeAnnotations();
                Name name2 = this.token.name();
                nextToken();
                return name2;
            }
            error(token.pos, "this.as.identifier", new Object[0]);
            nextToken();
            return this.names.error;
        }
        if (tokenKind == Tokens.TokenKind.UNDERSCORE) {
            if (this.allowUnderscoreIdentifier) {
                warning(token.pos, "underscore.as.identifier", new Object[0]);
            } else {
                error(token.pos, "underscore.as.identifier", new Object[0]);
            }
            Name name3 = this.token.name();
            nextToken();
            return name3;
        }
        accept(tokenKind2);
        if (z10) {
            nextToken();
        }
        return this.names.error;
    }

    public JCTree.JCExpression literal(Name name, int i10) {
        String stringVal;
        Float valueOf;
        String stringVal2;
        Double valueOf2;
        JCTree.JCExpression jCExpression = this.errorTree;
        switch (AnonymousClass1.$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind[this.token.kind.ordinal()]) {
            case 52:
                try {
                    jCExpression = this.f103286F.at(i10).Literal(TypeTag.INT, Integer.valueOf(Convert.string2int(strval(name), this.token.radix())));
                    break;
                } catch (NumberFormatException unused) {
                    error(this.token.pos, "int.number.too.large", strval(name));
                    break;
                }
            case 53:
                try {
                    jCExpression = this.f103286F.at(i10).Literal(TypeTag.LONG, Long.valueOf(Convert.string2long(strval(name), this.token.radix())));
                    break;
                } catch (NumberFormatException unused2) {
                    error(this.token.pos, "int.number.too.large", strval(name));
                    break;
                }
            case 54:
                if (this.token.radix() == 16) {
                    stringVal = "0x" + this.token.stringVal();
                } else {
                    stringVal = this.token.stringVal();
                }
                try {
                    valueOf = Float.valueOf(stringVal);
                } catch (NumberFormatException unused3) {
                    valueOf = Float.valueOf(Float.NaN);
                }
                if (valueOf.floatValue() == 0.0f && !isZero(stringVal)) {
                    error(this.token.pos, "fp.number.too.small", new Object[0]);
                    break;
                } else if (valueOf.floatValue() == Float.POSITIVE_INFINITY) {
                    error(this.token.pos, "fp.number.too.large", new Object[0]);
                    break;
                } else {
                    jCExpression = this.f103286F.at(i10).Literal(TypeTag.FLOAT, valueOf);
                    break;
                }
            case 55:
                if (this.token.radix() == 16) {
                    stringVal2 = "0x" + this.token.stringVal();
                } else {
                    stringVal2 = this.token.stringVal();
                }
                try {
                    valueOf2 = Double.valueOf(stringVal2);
                } catch (NumberFormatException unused4) {
                    valueOf2 = Double.valueOf(Double.NaN);
                }
                if (valueOf2.doubleValue() == 0.0d && !isZero(stringVal2)) {
                    error(this.token.pos, "fp.number.too.small", new Object[0]);
                    break;
                } else if (valueOf2.doubleValue() == Double.POSITIVE_INFINITY) {
                    error(this.token.pos, "fp.number.too.large", new Object[0]);
                    break;
                } else {
                    jCExpression = this.f103286F.at(i10).Literal(TypeTag.DOUBLE, valueOf2);
                    break;
                }
                break;
            case 56:
                jCExpression = this.f103286F.at(i10).Literal(TypeTag.CHAR, Integer.valueOf(this.token.stringVal().charAt(0)));
                break;
            case 57:
                jCExpression = this.f103286F.at(i10).Literal(TypeTag.CLASS, this.token.stringVal());
                break;
            case 58:
            case 59:
                jCExpression = this.f103286F.at(i10).Literal(TypeTag.BOOLEAN, Integer.valueOf(this.token.kind == Tokens.TokenKind.TRUE ? 1 : 0));
                break;
            case 60:
                jCExpression = this.f103286F.at(i10).Literal(TypeTag.BOT, null);
                break;
            default:
                Assert.error();
                break;
        }
        if (jCExpression == this.errorTree) {
            jCExpression = this.f103286F.at(i10).Erroneous();
        }
        storeEnd(jCExpression, this.token.endPos);
        nextToken();
        return jCExpression;
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x0049, code lost:
    
        r5 = r5[r12.token.kind.ordinal()];
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0055, code lost:
    
        if (r5 == 8) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0059, code lost:
    
        if (r5 == 9) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x005c, code lost:
    
        r5 = 16384;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x005e, code lost:
    
        r3 = r3 | r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x006c, code lost:
    
        if ((8796093033983L & r3) != 0) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0072, code lost:
    
        if (r0.isEmpty() == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0074, code lost:
    
        r13 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0075, code lost:
    
        r0 = r12.f103286F.at(r13).Modifiers(r3, r0.toList());
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0083, code lost:
    
        if (r13 == (-1)) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0085, code lost:
    
        storeEnd(r0, r12.f103287S.prevToken().endPos);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0090, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0060, code lost:
    
        r5 = 512;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public JCTree.JCModifiers modifiersOpt(JCTree.JCModifiers jCModifiers) {
        long j10;
        int i10;
        long j11;
        ListBuffer listBuffer = new ListBuffer();
        if (jCModifiers == null) {
            i10 = this.token.pos;
            j10 = 0;
        } else {
            j10 = jCModifiers.flags;
            listBuffer.appendList(jCModifiers.annotations);
            i10 = jCModifiers.pos;
        }
        if (this.token.deprecatedFlag()) {
            j10 |= 131072;
        }
        while (true) {
            int[] iArr = AnonymousClass1.$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind;
            int i11 = iArr[this.token.kind.ordinal()];
            if (i11 == 2) {
                j11 = 1;
            } else if (i11 == 3) {
                j11 = 16;
            } else if (i11 == 4) {
                j11 = 1024;
            } else if (i11 == 5) {
                j11 = 8192;
            } else if (i11 == 34) {
                checkDefaultMethods();
                j11 = 8796093022208L;
            } else if (i11 != 93) {
                switch (i11) {
                    case 13:
                        j11 = 2;
                        break;
                    case 14:
                        j11 = 4;
                        break;
                    case 15:
                        j11 = 8;
                        break;
                    case 16:
                        j11 = 128;
                        break;
                    case 17:
                        j11 = 256;
                        break;
                    case 18:
                        j11 = 64;
                        break;
                    case 19:
                        j11 = 32;
                        break;
                    case 20:
                        j11 = 2048;
                        break;
                }
            } else {
                nextToken();
                j11 = 0;
            }
            if ((j10 & j11) != 0) {
                error(this.token.pos, "repeated.modifier", new Object[0]);
            }
            int i12 = this.token.pos;
            nextToken();
            if (j11 != 8192) {
                j10 |= j11;
            } else if (this.token.kind != Tokens.TokenKind.INTERFACE) {
                JCTree.JCAnnotation annotation = annotation(i12, JCTree.Tag.ANNOTATION);
                if (j10 == 0 && listBuffer.isEmpty()) {
                    i10 = annotation.pos;
                }
                listBuffer.append(annotation);
                j10 |= 0;
            } else {
                j10 |= j11;
            }
        }
    }

    public boolean peekToken(int i10, Filter<Tokens.TokenKind> filter) {
        return filter.accepts(this.f103287S.token(i10 + 1).kind);
    }

    public JCTree.JCErroneous syntaxError(int i10, List<JCTree> list, String str, Tokens.TokenKind... tokenKindArr) {
        JCTree last;
        setErrorEndPos(i10);
        JCTree.JCErroneous Erroneous = this.f103286F.at(i10).Erroneous(list);
        reportSyntaxError(Erroneous, str, tokenKindArr);
        if (list != null && (last = list.last()) != null) {
            storeEnd(last, i10);
        }
        return (JCTree.JCErroneous) toP(Erroneous);
    }

    public JCTree.JCVariableDecl variableDeclaratorId(JCTree.JCModifiers jCModifiers, JCTree.JCExpression jCExpression, boolean z10) {
        Name ident;
        Name name;
        Tokens.Token token = this.token;
        int i10 = token.pos;
        if (z10 && token.kind == Tokens.TokenKind.UNDERSCORE) {
            this.log.error(i10, "underscore.as.identifier.in.lambda", new Object[0]);
            ident = this.token.name();
            nextToken();
        } else if (this.allowThisIdent && !z10) {
            JCTree.JCExpression qualident = qualident(false);
            if (!qualident.hasTag(JCTree.Tag.IDENT) || (name = ((JCTree.JCIdent) qualident).name) == this.names._this) {
                if ((17179869184L & jCModifiers.flags) != 0) {
                    this.log.error(this.token.pos, "varargs.and.receiver", new Object[0]);
                }
                Tokens.Token token2 = this.token;
                if (token2.kind == Tokens.TokenKind.LBRACKET) {
                    this.log.error(token2.pos, "array.and.receiver", new Object[0]);
                }
                return (JCTree.JCVariableDecl) toP(this.f103286F.at(i10).ReceiverVarDef(jCModifiers, qualident, jCExpression));
            }
            ident = name;
        } else {
            ident = ident();
        }
        if ((17179869184L & jCModifiers.flags) != 0) {
            Tokens.Token token3 = this.token;
            if (token3.kind == Tokens.TokenKind.LBRACKET) {
                this.log.error(token3.pos, "varargs.and.old.array.syntax", new Object[0]);
            }
        }
        return (JCTree.JCVariableDecl) toP(this.f103286F.at(i10).VarDef(jCModifiers, ident, bracketsOpt(jCExpression), null));
    }

    public JCTree.JCExpression parseType(List<JCTree.JCAnnotation> list) {
        JCTree.JCExpression unannotatedType = unannotatedType();
        return list.nonEmpty() ? insertAnnotationsToMostInner(unannotatedType, list, false) : unannotatedType;
    }

    public boolean peekToken(Filter<Tokens.TokenKind> filter, Filter<Tokens.TokenKind> filter2) {
        return peekToken(0, filter, filter2);
    }

    public void reportSyntaxError(JCDiagnostic.DiagnosticPosition diagnosticPosition, String str, Object... objArr) {
        int preferredPosition = diagnosticPosition.getPreferredPosition();
        if (preferredPosition > this.f103287S.errPos() || preferredPosition == -1) {
            if (this.token.kind == Tokens.TokenKind.EOF) {
                error(diagnosticPosition, "premature.eof", new Object[0]);
            } else {
                error(diagnosticPosition, str, objArr);
            }
        }
        this.f103287S.errPos(preferredPosition);
        int i10 = this.token.pos;
        if (i10 == this.errorPos) {
            int i11 = this.count;
            this.count = i11 + 1;
            Assert.check(i11 < 50);
        } else {
            this.count = 0;
            this.errorPos = i10;
        }
    }

    public JCTree.JCExpression memberReferenceSuffix(int i10, JCTree.JCExpression jCExpression) {
        MemberReferenceTree.ReferenceMode referenceMode;
        Name ident;
        checkMethodReferences();
        this.mode = 1;
        List<JCTree.JCExpression> typeArguments = this.token.kind == Tokens.TokenKind.LT ? typeArguments(false) : null;
        if (this.token.kind == Tokens.TokenKind.NEW) {
            referenceMode = MemberReferenceTree.ReferenceMode.NEW;
            ident = this.names.init;
            nextToken();
        } else {
            referenceMode = MemberReferenceTree.ReferenceMode.INVOKE;
            ident = ident();
        }
        return (JCTree.JCExpression) toP(this.f103286F.at(jCExpression.getStartPosition()).Reference(referenceMode, ident, jCExpression, typeArguments));
    }

    public boolean peekToken(int i10, Filter<Tokens.TokenKind> filter, Filter<Tokens.TokenKind> filter2) {
        return filter.accepts(this.f103287S.token(i10 + 1).kind) && filter2.accepts(this.f103287S.token(i10 + 2).kind);
    }

    public List<JCTree.JCExpression> typeArgumentsOpt() {
        return typeArgumentsOpt(2);
    }

    public JCTree.JCExpression illegal() {
        return illegal(this.token.pos);
    }

    public List<JCTree.JCExpression> typeArgumentsOpt(int i10) {
        if (this.token.kind != Tokens.TokenKind.LT) {
            return null;
        }
        int i11 = this.mode;
        if ((i11 & i10) == 0 || (i11 & 4) != 0) {
            illegal();
        }
        this.mode = i10;
        return typeArguments(false);
    }

    public boolean peekToken(Filter<Tokens.TokenKind> filter, Filter<Tokens.TokenKind> filter2, Filter<Tokens.TokenKind> filter3) {
        return peekToken(0, filter, filter2, filter3);
    }

    public JCTree.JCExpression term() {
        JCTree.JCExpression term1 = term1();
        return (((this.mode & 1) == 0 || this.token.kind != Tokens.TokenKind.EQ) && (Tokens.TokenKind.PLUSEQ.compareTo(this.token.kind) > 0 || this.token.kind.compareTo(Tokens.TokenKind.GTGTGTEQ) > 0)) ? term1 : termRest(term1);
    }

    public boolean peekToken(int i10, Filter<Tokens.TokenKind> filter, Filter<Tokens.TokenKind> filter2, Filter<Tokens.TokenKind> filter3) {
        return filter.accepts(this.f103287S.token(i10 + 1).kind) && filter2.accepts(this.f103287S.token(i10 + 2).kind) && filter3.accepts(this.f103287S.token(i10 + 3).kind);
    }

    public JCTree.JCErroneous syntaxError(String str) {
        return syntaxError(this.token.pos, str, new Tokens.TokenKind[0]);
    }

    public JCTree.JCErroneous syntaxError(String str, Tokens.TokenKind tokenKind) {
        return syntaxError(this.token.pos, str, tokenKind);
    }

    public JCTree.JCBlock block() {
        return block(this.token.pos, 0L);
    }

    public boolean peekToken(Filter<Tokens.TokenKind>... filterArr) {
        return peekToken(0, filterArr);
    }

    public boolean peekToken(int i10, Filter<Tokens.TokenKind>... filterArr) {
        while (i10 < filterArr.length) {
            Filter<Tokens.TokenKind> filter = filterArr[i10];
            i10++;
            if (!filter.accepts(this.f103287S.token(i10).kind)) {
                return false;
            }
        }
        return true;
    }

    private JCTree.JCExpression bracketsOpt(JCTree.JCExpression jCExpression) {
        return bracketsOpt(jCExpression, List.nil());
    }

    public JCTree.JCMethodInvocation arguments(List<JCTree.JCExpression> list, JCTree.JCExpression jCExpression) {
        int i10 = this.token.pos;
        return (JCTree.JCMethodInvocation) toP(this.f103286F.at(i10).Apply(list, jCExpression, arguments()));
    }

    public JCTree.JCTypeApply typeArguments(JCTree.JCExpression jCExpression, boolean z10) {
        int i10 = this.token.pos;
        return (JCTree.JCTypeApply) toP(this.f103286F.at(i10).TypeApply(jCExpression, typeArguments(z10)));
    }
}
