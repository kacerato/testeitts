package org.eclipse.jdt.internal.compiler.parser;

import Ii.a0;
import Li.w0;
import T6.a;
import am.C3679c;
import android.bluetooth.BluetoothClass;
import android.media.MediaPlayer;
import android.media.MediaRecorder;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.jme3.audio.openal.ALC;
import dalvik.bytecode.Opcodes;
import java.io.BufferedInputStream;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.Stack;
import java.util.StringTokenizer;
import javax.xml.datatype.DatatypeConstants;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ReadManager;
import org.eclipse.jdt.internal.compiler.ast.AND_AND_Expression;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AbstractVariableDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.AnnotationMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.ArrayAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.ArrayInitializer;
import org.eclipse.jdt.internal.compiler.ast.ArrayQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ArrayReference;
import org.eclipse.jdt.internal.compiler.ast.ArrayTypeReference;
import org.eclipse.jdt.internal.compiler.ast.AssertStatement;
import org.eclipse.jdt.internal.compiler.ast.Assignment;
import org.eclipse.jdt.internal.compiler.ast.BinaryExpression;
import org.eclipse.jdt.internal.compiler.ast.Block;
import org.eclipse.jdt.internal.compiler.ast.BreakStatement;
import org.eclipse.jdt.internal.compiler.ast.CaseStatement;
import org.eclipse.jdt.internal.compiler.ast.CastExpression;
import org.eclipse.jdt.internal.compiler.ast.CharLiteral;
import org.eclipse.jdt.internal.compiler.ast.ClassLiteralAccess;
import org.eclipse.jdt.internal.compiler.ast.CombinedBinaryExpression;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.CompoundAssignment;
import org.eclipse.jdt.internal.compiler.ast.ConditionalExpression;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ContinueStatement;
import org.eclipse.jdt.internal.compiler.ast.DoStatement;
import org.eclipse.jdt.internal.compiler.ast.DoubleLiteral;
import org.eclipse.jdt.internal.compiler.ast.EmptyStatement;
import org.eclipse.jdt.internal.compiler.ast.EqualExpression;
import org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall;
import org.eclipse.jdt.internal.compiler.ast.ExportsStatement;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FalseLiteral;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldReference;
import org.eclipse.jdt.internal.compiler.ast.FloatLiteral;
import org.eclipse.jdt.internal.compiler.ast.ForStatement;
import org.eclipse.jdt.internal.compiler.ast.ForeachStatement;
import org.eclipse.jdt.internal.compiler.ast.IfStatement;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.InstanceOfExpression;
import org.eclipse.jdt.internal.compiler.ast.IntLiteral;
import org.eclipse.jdt.internal.compiler.ast.IntersectionCastTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Javadoc;
import org.eclipse.jdt.internal.compiler.ast.LabeledStatement;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;
import org.eclipse.jdt.internal.compiler.ast.Literal;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.LongLiteral;
import org.eclipse.jdt.internal.compiler.ast.MarkerAnnotation;
import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ModuleDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ModuleReference;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.NormalAnnotation;
import org.eclipse.jdt.internal.compiler.ast.NullLiteral;
import org.eclipse.jdt.internal.compiler.ast.OR_OR_Expression;
import org.eclipse.jdt.internal.compiler.ast.OpensStatement;
import org.eclipse.jdt.internal.compiler.ast.OperatorIds;
import org.eclipse.jdt.internal.compiler.ast.PackageVisibilityStatement;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.PostfixExpression;
import org.eclipse.jdt.internal.compiler.ast.PrefixExpression;
import org.eclipse.jdt.internal.compiler.ast.ProvidesStatement;
import org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedSuperReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedThisReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Receiver;
import org.eclipse.jdt.internal.compiler.ast.Reference;
import org.eclipse.jdt.internal.compiler.ast.ReferenceExpression;
import org.eclipse.jdt.internal.compiler.ast.RequiresStatement;
import org.eclipse.jdt.internal.compiler.ast.ReturnStatement;
import org.eclipse.jdt.internal.compiler.ast.SingleMemberAnnotation;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.StringLiteral;
import org.eclipse.jdt.internal.compiler.ast.SuperReference;
import org.eclipse.jdt.internal.compiler.ast.SwitchExpression;
import org.eclipse.jdt.internal.compiler.ast.SwitchStatement;
import org.eclipse.jdt.internal.compiler.ast.SynchronizedStatement;
import org.eclipse.jdt.internal.compiler.ast.ThisReference;
import org.eclipse.jdt.internal.compiler.ast.ThrowStatement;
import org.eclipse.jdt.internal.compiler.ast.TrueLiteral;
import org.eclipse.jdt.internal.compiler.ast.TryStatement;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.ast.UnaryExpression;
import org.eclipse.jdt.internal.compiler.ast.UnionTypeReference;
import org.eclipse.jdt.internal.compiler.ast.UsesStatement;
import org.eclipse.jdt.internal.compiler.ast.WhileStatement;
import org.eclipse.jdt.internal.compiler.ast.Wildcard;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.ConstantPool;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.IrritantSet;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeIds;
import org.eclipse.jdt.internal.compiler.parser.diagnose.DiagnoseParser;
import org.eclipse.jdt.internal.compiler.parser.diagnose.RangeUtil;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilationUnit;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.Messages;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.eclipse.jdt.internal.core.search.matching.JavaSearchPattern;
import org.openjdk.tools.doclint.DocLint;
import pk.AbstractC15010e;
import t4.C15378a;

public class Parser implements TerminalTokens, ParserBasicInformation, ConflictedParser, OperatorIds, TypeIds {
    private static int[] $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$parser$Parser$LocalTypeKind = null;
    protected static final int AstStackIncrement = 100;
    public static final int BracketKinds = 3;
    public static final int CurlyBracket = 2;
    private static final boolean DEBUG = false;
    private static final boolean DEBUG_AUTOMATON = false;
    private static final String EOF_TOKEN = "$eof";
    private static final String ERROR_TOKEN = "$error";
    protected static final int ExpressionStackIncrement = 100;
    private static final String FILEPREFIX = "parser";
    protected static final int GenericsStackIncrement = 10;
    protected static final int HALT = 0;
    private static final String INVALID_CHARACTER = "Invalid Character";
    private static final String READABLE_NAMES_FILE = "readableNames";
    protected static final int RESTART = 1;
    protected static final int RESUME = 2;
    public static final int RoundBracket = 0;
    protected static final int SUPER_CALL = 2;
    public static final int SquareBracket = 1;
    protected static final int StackIncrement = 255;
    protected static final int THIS_CALL = 3;
    protected static final int TypeAnnotationStackIncrement = 100;
    private static final String UNEXPECTED_EOF = "Unexpected End Of File";
    protected boolean annotationRecoveryActivated;
    protected int astLengthPtr;
    protected int[] astLengthStack;
    protected int astPtr;
    protected ASTNode[] astStack;
    protected boolean caseFlagSet;
    protected boolean checkExternalizeStrings;
    protected int colonColonStart;
    public CompilationUnitDeclaration compilationUnit;
    protected RecoveredElement currentElement;
    public int currentToken;
    protected boolean diet;
    protected int dietInt;
    protected int dimensions;
    protected int endPosition;
    protected int endStatementPosition;
    private boolean expectTypeAnnotation;
    protected int expressionLengthPtr;
    protected int[] expressionLengthStack;
    protected int expressionPtr;
    protected Expression[] expressionStack;
    public int firstToken;
    protected int forStartPosition;
    protected int genericsIdentifiersLengthPtr;
    protected int[] genericsIdentifiersLengthStack;
    protected int genericsLengthPtr;
    protected int[] genericsLengthStack;
    protected int genericsPtr;
    protected ASTNode[] genericsStack;
    private boolean haltOnSyntaxError;
    protected boolean hasError;
    protected boolean hasReportedError;
    protected int identifierLengthPtr;
    protected int[] identifierLengthStack;
    protected long[] identifierPositionStack;
    protected int identifierPtr;
    protected char[][] identifierStack;
    protected boolean ignoreNextClosingBrace;
    protected boolean ignoreNextOpeningBrace;
    protected int intPtr;
    protected int[] intStack;
    public Javadoc javadoc;
    public JavadocParser javadocParser;
    protected int lParenPos;
    public int lastAct;
    protected int lastCheckPoint;
    protected int lastErrorEndPosition;
    protected int lastErrorEndPositionBeforeRecovery;
    protected int lastIgnoredToken;
    protected int lastJavadocEnd;
    protected int lastPosistion;
    protected int listLength;
    protected int listTypeParameterLength;
    public boolean methodRecoveryActivated;
    protected int modifiers;
    protected int modifiersSourceStart;
    protected int[] nestedMethod;
    protected int nestedType;
    protected int nextIgnoredToken;
    protected int nextTypeStart;
    ASTNode[] noAstNodes;
    Expression[] noExpressions;
    protected boolean optimizeStringLiterals;
    protected CompilerOptions options;
    protected boolean parsingJava11Plus;
    protected boolean parsingJava12Plus;
    protected boolean parsingJava8Plus;
    protected boolean parsingJava9Plus;
    protected TypeDeclaration pendingRecoveredType;
    protected ProblemReporter problemReporter;
    private boolean processingLambdaParameterList;
    protected int rBraceEnd;
    protected int rBraceStart;
    protected int rBraceSuccessorStart;
    protected int rBracketPosition;
    protected int rParenPos;
    public ReadManager readManager;
    protected int realBlockPtr;
    protected int[] realBlockStack;
    protected boolean recordStringLiterals;
    protected int recoveredStaticInitializerStart;
    protected int recoveredTypePtr;
    protected TypeDeclaration[] recoveredTypes;
    public RecoveryScanner recoveryScanner;
    public ReferenceContext referenceContext;
    private boolean reparsingLambdaExpression;
    public boolean reportOnlyOneSyntaxError;
    public boolean reportSyntaxErrorIsRequired;
    protected boolean restartRecovery;
    public Scanner scanner;
    protected int[] stack;
    private int[] stateStackLengthStack;
    protected int stateStackTop;
    protected boolean statementRecoveryActivated;
    protected int switchNestingLevel;
    protected int synchronizedBlockSourceStart;
    private boolean tolerateDefaultClassMethods;
    protected int typeAnnotationLengthPtr;
    protected int[] typeAnnotationLengthStack;
    protected int typeAnnotationPtr;
    protected Annotation[] typeAnnotationStack;
    protected int unstackedAct;
    protected int valueLambdaNestDepth;
    protected int[] variablesCounter;
    public static final char[] FALL_THROUGH_TAG = "$FALL-THROUGH$".toCharArray();
    public static final char[] CASES_OMITTED_TAG = "$CASES-OMITTED$".toCharArray();
    public static char[] asb = null;
    public static char[] asr = null;
    public static char[] base_action = null;
    public static short[] check_table = null;
    public static char[] in_symb = null;
    public static char[] lhs = null;
    public static String[] name = null;
    public static char[] nasb = null;
    public static char[] nasr = null;
    public static char[] non_terminal_index = null;
    public static String[] readableName = null;
    public static byte[] rhs = null;
    public static int[] reverse_index = null;
    public static char[] recovery_templates_index = null;
    public static char[] recovery_templates = null;
    public static char[] statements_recovery_filter = null;
    public static long[] rules_compliance = null;
    public static byte[] scope_la = null;
    public static char[] scope_lhs = null;
    public static char[] scope_prefix = null;
    public static char[] scope_rhs = null;
    public static char[] scope_state = null;
    public static char[] scope_state_set = null;
    public static char[] scope_suffix = null;
    public static char[] term_action = null;
    public static byte[] term_check = null;
    public static char[] terminal_index = null;
    public static boolean VERBOSE_RECOVERY = false;

    public class C1MethodVisitor extends ASTVisitor {
        TypeDeclaration enclosingType;
        public ASTVisitor typeVisitor;
        TypeDeclaration[] types = new TypeDeclaration[0];
        int typePtr = -1;

        public C1MethodVisitor() {
        }

        private void endVisitMethod(AbstractMethodDeclaration abstractMethodDeclaration, ClassScope classScope) {
            TypeDeclaration[] typeDeclarationArr;
            int i10;
            int i11 = this.typePtr;
            if (i11 > -1) {
                i10 = i11 + 1;
                typeDeclarationArr = new TypeDeclaration[i10];
                System.arraycopy(this.types, 0, typeDeclarationArr, 0, i10);
            } else {
                typeDeclarationArr = null;
                i10 = 0;
            }
            Parser parser = Parser.this;
            ReferenceContext referenceContext = parser.referenceContext;
            parser.recoveryScanner.resetTo(abstractMethodDeclaration.bodyStart, abstractMethodDeclaration.bodyEnd);
            Parser parser2 = Parser.this;
            Scanner scanner = parser2.scanner;
            parser2.scanner = parser2.recoveryScanner;
            parser2.parseStatements(abstractMethodDeclaration, abstractMethodDeclaration.bodyStart, abstractMethodDeclaration.bodyEnd, typeDeclarationArr, parser2.compilationUnit);
            Parser parser3 = Parser.this;
            parser3.scanner = scanner;
            parser3.referenceContext = referenceContext;
            for (int i12 = 0; i12 < i10; i12++) {
                typeDeclarationArr[i12].traverse(this.typeVisitor, classScope);
            }
        }

        @Override
        public void endVisit(ConstructorDeclaration constructorDeclaration, ClassScope classScope) {
            endVisitMethod(constructorDeclaration, classScope);
        }

        @Override
        public boolean visit(ConstructorDeclaration constructorDeclaration, ClassScope classScope) {
            this.typePtr = -1;
            return true;
        }

        @Override
        public void endVisit(Initializer initializer, MethodScope methodScope) {
            TypeDeclaration[] typeDeclarationArr;
            int i10;
            if (initializer.block == null) {
                return;
            }
            int i11 = this.typePtr;
            if (i11 > -1) {
                i10 = i11 + 1;
                typeDeclarationArr = new TypeDeclaration[i10];
                System.arraycopy(this.types, 0, typeDeclarationArr, 0, i10);
            } else {
                typeDeclarationArr = null;
                i10 = 0;
            }
            Parser parser = Parser.this;
            ReferenceContext referenceContext = parser.referenceContext;
            parser.recoveryScanner.resetTo(initializer.bodyStart, initializer.bodyEnd);
            Parser parser2 = Parser.this;
            Scanner scanner = parser2.scanner;
            parser2.scanner = parser2.recoveryScanner;
            parser2.parseStatements(this.enclosingType, initializer.bodyStart, initializer.bodyEnd, typeDeclarationArr, parser2.compilationUnit);
            Parser parser3 = Parser.this;
            parser3.scanner = scanner;
            parser3.referenceContext = referenceContext;
            for (int i12 = 0; i12 < i10; i12++) {
                typeDeclarationArr[i12].traverse(this.typeVisitor, methodScope);
            }
        }

        @Override
        public boolean visit(Initializer initializer, MethodScope methodScope) {
            this.typePtr = -1;
            return initializer.block != null;
        }

        @Override
        public boolean visit(MethodDeclaration methodDeclaration, ClassScope classScope) {
            this.typePtr = -1;
            return true;
        }

        private boolean visit(TypeDeclaration typeDeclaration) {
            TypeDeclaration[] typeDeclarationArr = this.types;
            int length = typeDeclarationArr.length;
            int i10 = this.typePtr + 1;
            this.typePtr = i10;
            if (length <= i10) {
                TypeDeclaration[] typeDeclarationArr2 = new TypeDeclaration[(i10 * 2) + 1];
                this.types = typeDeclarationArr2;
                System.arraycopy(typeDeclarationArr, 0, typeDeclarationArr2, 0, i10);
            }
            this.types[this.typePtr] = typeDeclaration;
            return false;
        }

        @Override
        public boolean visit(TypeDeclaration typeDeclaration, BlockScope blockScope) {
            return visit(typeDeclaration);
        }

        @Override
        public boolean visit(TypeDeclaration typeDeclaration, ClassScope classScope) {
            return visit(typeDeclaration);
        }

        @Override
        public void endVisit(MethodDeclaration methodDeclaration, ClassScope classScope) {
            endVisitMethod(methodDeclaration, classScope);
        }
    }

    public class C1TypeVisitor extends ASTVisitor {
        public C1MethodVisitor methodVisitor;
        TypeDeclaration[] types = new TypeDeclaration[0];
        int typePtr = -1;

        public C1TypeVisitor() {
        }

        private void endVisitType() {
            this.typePtr--;
        }

        @Override
        public void endVisit(TypeDeclaration typeDeclaration, BlockScope blockScope) {
            endVisitType();
        }

        @Override
        public boolean visit(ConstructorDeclaration constructorDeclaration, ClassScope classScope) {
            if (constructorDeclaration.isDefaultConstructor()) {
                return false;
            }
            constructorDeclaration.traverse(this.methodVisitor, classScope);
            return false;
        }

        @Override
        public void endVisit(TypeDeclaration typeDeclaration, ClassScope classScope) {
            endVisitType();
        }

        @Override
        public boolean visit(Initializer initializer, MethodScope methodScope) {
            if (initializer.block == null) {
                return false;
            }
            C1MethodVisitor c1MethodVisitor = this.methodVisitor;
            c1MethodVisitor.enclosingType = this.types[this.typePtr];
            initializer.traverse((ASTVisitor) c1MethodVisitor, methodScope);
            return false;
        }

        @Override
        public boolean visit(MethodDeclaration methodDeclaration, ClassScope classScope) {
            methodDeclaration.traverse(this.methodVisitor, classScope);
            return false;
        }

        private boolean visit(TypeDeclaration typeDeclaration) {
            TypeDeclaration[] typeDeclarationArr = this.types;
            int length = typeDeclarationArr.length;
            int i10 = this.typePtr + 1;
            this.typePtr = i10;
            if (length <= i10) {
                TypeDeclaration[] typeDeclarationArr2 = new TypeDeclaration[(i10 * 2) + 1];
                this.types = typeDeclarationArr2;
                System.arraycopy(typeDeclarationArr, 0, typeDeclarationArr2, 0, i10);
            }
            this.types[this.typePtr] = typeDeclaration;
            return true;
        }

        @Override
        public boolean visit(TypeDeclaration typeDeclaration, BlockScope blockScope) {
            return visit(typeDeclaration);
        }

        @Override
        public boolean visit(TypeDeclaration typeDeclaration, ClassScope classScope) {
            return visit(typeDeclaration);
        }
    }

    public enum LocalTypeKind {
        LOCAL,
        METHOD_REFERENCE,
        LAMBDA;

        public static LocalTypeKind[] valuesCustom() {
            LocalTypeKind[] valuesCustom = values();
            int length = valuesCustom.length;
            LocalTypeKind[] localTypeKindArr = new LocalTypeKind[length];
            System.arraycopy(valuesCustom, 0, localTypeKindArr, 0, length);
            return localTypeKindArr;
        }
    }

    public static int[] $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$parser$Parser$LocalTypeKind() {
        int[] iArr = $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$parser$Parser$LocalTypeKind;
        if (iArr != null) {
            return iArr;
        }
        int[] iArr2 = new int[LocalTypeKind.valuesCustom().length];
        try {
            iArr2[LocalTypeKind.LAMBDA.ordinal()] = 3;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr2[LocalTypeKind.LOCAL.ordinal()] = 1;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr2[LocalTypeKind.METHOD_REFERENCE.ordinal()] = 2;
        } catch (NoSuchFieldError unused3) {
        }
        $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$parser$Parser$LocalTypeKind = iArr2;
        return iArr2;
    }

    static {
        try {
            initTables();
        } catch (IOException e10) {
            throw new ExceptionInInitializerError(e10.getMessage());
        }
    }

    public Parser() {
        this.astStack = new ASTNode[100];
        this.diet = false;
        this.dietInt = 0;
        this.expressionStack = new Expression[100];
        this.typeAnnotationStack = new Annotation[100];
        this.genericsIdentifiersLengthStack = new int[10];
        this.genericsLengthStack = new int[10];
        this.genericsStack = new ASTNode[10];
        this.lastErrorEndPositionBeforeRecovery = -1;
        this.colonColonStart = -1;
        this.forStartPosition = 0;
        this.noAstNodes = new ASTNode[100];
        this.noExpressions = new Expression[100];
        this.optimizeStringLiterals = true;
        this.reportOnlyOneSyntaxError = false;
        this.reportSyntaxErrorIsRequired = true;
        this.annotationRecoveryActivated = true;
        this.methodRecoveryActivated = false;
        this.statementRecoveryActivated = false;
        this.stack = new int[255];
        this.valueLambdaNestDepth = -1;
        this.stateStackLengthStack = new int[0];
        this.unstackedAct = 16966;
        this.haltOnSyntaxError = false;
        this.tolerateDefaultClassMethods = false;
        this.processingLambdaParameterList = false;
        this.expectTypeAnnotation = false;
        this.reparsingLambdaExpression = false;
        this.caseFlagSet = false;
    }

    public static int asi(int i10) {
        return asb[original_state(i10)];
    }

    public static final short base_check(int i10) {
        return check_table[i10 - 868];
    }

    private static final void buildFile(String str, List list) {
        BufferedWriter bufferedWriter;
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                bufferedWriter = new BufferedWriter(new FileWriter(str));
            } catch (IOException unused) {
            }
        } catch (IOException unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                bufferedWriter.write(String.valueOf(it.next()));
            }
            bufferedWriter.flush();
            bufferedWriter.close();
        } catch (IOException unused3) {
            bufferedWriter2 = bufferedWriter;
            if (bufferedWriter2 != null) {
                bufferedWriter2.close();
            }
            System.out.println(String.valueOf(str) + " creation complete");
        } catch (Throwable th3) {
            th = th3;
            bufferedWriter2 = bufferedWriter;
            if (bufferedWriter2 != null) {
                try {
                    bufferedWriter2.close();
                } catch (IOException unused4) {
                }
            }
            throw th;
        }
        System.out.println(String.valueOf(str) + " creation complete");
    }

    private static void buildFileForCompliance(String str, int i10, String[] strArr) {
        byte[] bArr = new byte[i10 * 8];
        for (int i11 = 0; i11 < strArr.length; i11 += 3) {
            if ("2".equals(strArr[i11])) {
                int parseInt = Integer.parseInt(strArr[i11 + 1]);
                String trim = strArr[i11 + 2].trim();
                long j10 = "1.4".equals(trim) ? ClassFileConstants.JDK1_4 : "1.5".equals(trim) ? ClassFileConstants.JDK1_5 : "1.6".equals(trim) ? ClassFileConstants.JDK1_6 : "1.7".equals(trim) ? ClassFileConstants.JDK1_7 : "1.8".equals(trim) ? ClassFileConstants.JDK1_8 : "9".equals(trim) ? ClassFileConstants.JDK9 : "recovery".equals(trim) ? Long.MAX_VALUE : 0L;
                int i12 = parseInt * 8;
                bArr[i12] = (byte) (j10 >>> 56);
                bArr[i12 + 1] = (byte) (j10 >>> 48);
                bArr[i12 + 2] = (byte) (j10 >>> 40);
                bArr[i12 + 3] = (byte) (j10 >>> 32);
                bArr[i12 + 4] = (byte) (j10 >>> 24);
                bArr[i12 + 5] = (byte) (j10 >>> 16);
                bArr[i12 + 6] = (byte) (j10 >>> 8);
                bArr[i12 + 7] = (byte) j10;
            }
        }
        buildFileForTable(str, bArr);
    }

    private static final String[] buildFileForName(String str, String str2) {
        String[] strArr = new String[str2.length()];
        strArr[0] = null;
        StringBuffer stringBuffer = new StringBuffer();
        int indexOf = str2.indexOf(34, str2.indexOf("name[]"));
        String substring = str2.substring(indexOf, str2.indexOf("};", indexOf));
        StringBuffer stringBuffer2 = new StringBuffer();
        boolean z10 = false;
        int i10 = 1;
        int i11 = -1;
        for (int i12 = 0; i12 < substring.length(); i12++) {
            char charAt = substring.charAt(i12);
            if (charAt == '\"') {
                if (i11 == -1) {
                    i11 = i12 + 1;
                } else {
                    if (z10) {
                        stringBuffer.append('\n');
                        strArr[i10] = stringBuffer2.toString();
                        stringBuffer2 = new StringBuffer();
                        i10++;
                    }
                    String substring2 = substring.substring(i11, i12);
                    if (substring2.equals(ERROR_TOKEN)) {
                        substring2 = INVALID_CHARACTER;
                    } else if (substring2.equals(EOF_TOKEN)) {
                        substring2 = UNEXPECTED_EOF;
                    }
                    stringBuffer.append(substring2);
                    stringBuffer2.append(substring2);
                    z10 = true;
                    i11 = -1;
                }
            }
            if (i11 == -1 && charAt == '+') {
                z10 = false;
            }
        }
        if (stringBuffer2.length() > 0) {
            strArr[i10] = stringBuffer2.toString();
            i10++;
        }
        buildFileForTable(str, stringBuffer.toString().toCharArray());
        String[] strArr2 = new String[i10];
        System.arraycopy(strArr, 0, strArr2, 0, i10);
        return strArr2;
    }

    private static void buildFileForReadableName(String str, char[] cArr, char[] cArr2, String[] strArr, String[] strArr2) {
        ArrayList arrayList = new ArrayList();
        int length = strArr.length;
        boolean[] zArr = new boolean[length];
        for (int i10 = 0; i10 < strArr2.length; i10 += 3) {
            if ("1".equals(strArr2[i10])) {
                char c10 = cArr2[cArr[Integer.parseInt(strArr2[i10 + 1])]];
                StringBuffer stringBuffer = new StringBuffer();
                if (!zArr[c10]) {
                    zArr[c10] = true;
                    stringBuffer.append(strArr[c10]);
                    stringBuffer.append('=');
                    stringBuffer.append(strArr2[i10 + 2].trim());
                    stringBuffer.append('\n');
                    arrayList.add(String.valueOf(stringBuffer));
                }
            }
        }
        int i11 = 1;
        while (!INVALID_CHARACTER.equals(strArr[i11])) {
            i11++;
        }
        for (int i12 = i11 + 1; i12 < length; i12++) {
            if (!zArr[i12]) {
                System.out.println(String.valueOf(strArr[i12]) + " has no readable name");
            }
        }
        Collections.sort(arrayList);
        buildFile(str, arrayList);
    }

    private static final void buildFileForTable(String str, byte[] bArr) {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(str);
            } catch (IOException unused) {
            }
        } catch (IOException unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            fileOutputStream.write(bArr);
            fileOutputStream.close();
        } catch (IOException unused3) {
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                fileOutputStream2.close();
            }
            System.out.println(String.valueOf(str) + " creation complete");
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException unused4) {
                }
            }
            throw th;
        }
        System.out.println(String.valueOf(str) + " creation complete");
    }

    private static final byte[] buildFileOfByteFor(String str, String str2, String[] strArr) {
        int i10;
        int i11 = 0;
        while (true) {
            i10 = i11 + 1;
            if (strArr[i11].equals(str2)) {
                break;
            }
            i11 = i10;
        }
        byte[] bArr = new byte[strArr.length];
        int i12 = 0;
        while (true) {
            int i13 = i10 + 1;
            String str3 = strArr[i10];
            if (str3.equals(VectorFormat.DEFAULT_SUFFIX)) {
                byte[] bArr2 = new byte[i12];
                System.arraycopy(bArr, 0, bArr2, 0, i12);
                buildFileForTable(str, bArr2);
                return bArr2;
            }
            bArr[i12] = (byte) Integer.parseInt(str3);
            i10 = i13;
            i12++;
        }
    }

    private static final char[] buildFileOfIntFor(String str, String str2, String[] strArr) {
        int i10;
        int i11 = 0;
        while (true) {
            i10 = i11 + 1;
            if (strArr[i11].equals(str2)) {
                break;
            }
            i11 = i10;
        }
        char[] cArr = new char[strArr.length];
        int i12 = 0;
        while (true) {
            int i13 = i10 + 1;
            String str3 = strArr[i10];
            if (str3.equals(VectorFormat.DEFAULT_SUFFIX)) {
                char[] cArr2 = new char[i12];
                System.arraycopy(cArr, 0, cArr2, 0, i12);
                buildFileForTable(str, cArr2);
                return cArr2;
            }
            cArr[i12] = (char) Integer.parseInt(str3);
            i10 = i13;
            i12++;
        }
    }

    private static final void buildFileOfShortFor(String str, String str2, String[] strArr) {
        int i10;
        int i11 = 0;
        while (true) {
            i10 = i11 + 1;
            if (strArr[i11].equals(str2)) {
                break;
            } else {
                i11 = i10;
            }
        }
        char[] cArr = new char[strArr.length];
        int i12 = 0;
        while (true) {
            int i13 = i10 + 1;
            String str3 = strArr[i10];
            if (str3.equals(VectorFormat.DEFAULT_SUFFIX)) {
                char[] cArr2 = new char[i12];
                System.arraycopy(cArr, 0, cArr2, 0, i12);
                buildFileForTable(str, cArr2);
                return;
            } else {
                cArr[i12] = (char) (Integer.parseInt(str3) + 32768);
                i10 = i13;
                i12++;
            }
        }
    }

    private static void buildFilesForRecoveryTemplates(String str, String str2, char[] cArr, char[] cArr2, String[] strArr, char[] cArr3, String[] strArr2) {
        char[] cArr4;
        String[] strArr3 = strArr2;
        int[] computeReverseTable = computeReverseTable(cArr, cArr2, strArr);
        char[] cArr5 = new char[cArr2.length];
        char[] cArr6 = new char[cArr2.length];
        int i10 = 0;
        int i11 = 0;
        while (i10 < strArr3.length) {
            if ("3".equals(strArr3[i10])) {
                int length = cArr6.length;
                int i12 = i11 + 1;
                if (length == i12) {
                    cArr4 = new char[length * 2];
                    System.arraycopy(cArr6, 0, cArr4, 0, length);
                } else {
                    cArr4 = cArr6;
                }
                cArr4[i11] = 0;
                cArr5[cArr3[Integer.parseInt(strArr3[i10 + 1])]] = (char) i12;
                StringTokenizer stringTokenizer = new StringTokenizer(strArr3[i10 + 2].trim(), " ");
                int countTokens = stringTokenizer.countTokens();
                String[] strArr4 = new String[countTokens];
                int i13 = 0;
                while (stringTokenizer.hasMoreTokens()) {
                    strArr4[i13] = stringTokenizer.nextToken();
                    i13++;
                }
                i11 = i12;
                for (int i14 = 0; i14 < countTokens; i14++) {
                    int symbol = getSymbol(strArr4[i14], strArr, computeReverseTable);
                    if (symbol > -1) {
                        int length2 = cArr4.length;
                        int i15 = i11 + 1;
                        if (length2 == i15) {
                            char[] cArr7 = new char[length2 * 2];
                            System.arraycopy(cArr4, 0, cArr7, 0, length2);
                            cArr4 = cArr7;
                        }
                        cArr4[i11] = (char) symbol;
                        i11 = i15;
                    }
                }
                cArr6 = cArr4;
            }
            i10 += 3;
            strArr3 = strArr2;
        }
        int i16 = i11 + 1;
        cArr6[i11] = 0;
        char[] cArr8 = new char[i16];
        System.arraycopy(cArr6, 0, cArr8, 0, i16);
        buildFileForTable(str, cArr5);
        buildFileForTable(str2, cArr8);
    }

    private static void buildFilesForStatementsRecoveryFilter(String str, char[] cArr, char[] cArr2, String[] strArr) {
        char[] cArr3 = new char[cArr.length];
        for (int i10 = 0; i10 < strArr.length; i10 += 3) {
            if ("4".equals(strArr[i10])) {
                cArr3[cArr2[Integer.parseInt(strArr[i10 + 1])]] = 1;
            }
        }
        buildFileForTable(str, cArr3);
    }

    public static final void buildFilesFromLPG(String str, String str2) {
        char[] cArr = CharOperation.NO_CHAR;
        try {
            char[] fileCharContent = Util.getFileCharContent(new File(str), null);
            StringTokenizer stringTokenizer = new StringTokenizer(new String(fileCharContent), " \t\n\r[]={,;");
            String[] strArr = new String[stringTokenizer.countTokens()];
            int i10 = 0;
            int i11 = 0;
            while (stringTokenizer.hasMoreTokens()) {
                strArr[i11] = stringTokenizer.nextToken();
                i11++;
            }
            char[] buildFileOfIntFor = buildFileOfIntFor(FILEPREFIX + "1.rsc", "lhs", strArr);
            buildFileOfShortFor(FILEPREFIX + "2.rsc", "check_table", strArr);
            buildFileOfIntFor(FILEPREFIX + "3.rsc", "asb", strArr);
            buildFileOfIntFor(FILEPREFIX + "4.rsc", "asr", strArr);
            buildFileOfIntFor(FILEPREFIX + "5.rsc", "nasb", strArr);
            buildFileOfIntFor(FILEPREFIX + "6.rsc", "nasr", strArr);
            char[] buildFileOfIntFor2 = buildFileOfIntFor(FILEPREFIX + "7.rsc", "terminal_index", strArr);
            char[] buildFileOfIntFor3 = buildFileOfIntFor(FILEPREFIX + "8.rsc", "non_terminal_index", strArr);
            buildFileOfIntFor(FILEPREFIX + "9.rsc", "term_action", strArr);
            buildFileOfIntFor(FILEPREFIX + "10.rsc", "scope_prefix", strArr);
            buildFileOfIntFor(FILEPREFIX + "11.rsc", "scope_suffix", strArr);
            buildFileOfIntFor(FILEPREFIX + "12.rsc", "scope_lhs", strArr);
            buildFileOfIntFor(FILEPREFIX + "13.rsc", "scope_state_set", strArr);
            buildFileOfIntFor(FILEPREFIX + "14.rsc", "scope_rhs", strArr);
            buildFileOfIntFor(FILEPREFIX + "15.rsc", "scope_state", strArr);
            buildFileOfIntFor(FILEPREFIX + "16.rsc", "in_symb", strArr);
            byte[] buildFileOfByteFor = buildFileOfByteFor(FILEPREFIX + "17.rsc", "rhs", strArr);
            buildFileOfByteFor(FILEPREFIX + "18.rsc", "term_check", strArr);
            buildFileOfByteFor(FILEPREFIX + "19.rsc", "scope_la", strArr);
            String[] buildFileForName = buildFileForName(FILEPREFIX + "20.rsc", new String(fileCharContent));
            char[] cArr2 = CharOperation.NO_CHAR;
            try {
                StringTokenizer stringTokenizer2 = new StringTokenizer(new String(Util.getFileCharContent(new File(str2), null)), "\t\n\r#");
                String[] strArr2 = new String[stringTokenizer2.countTokens()];
                while (stringTokenizer2.hasMoreTokens()) {
                    strArr2[i10] = stringTokenizer2.nextToken();
                    i10++;
                }
                buildFileForCompliance(FILEPREFIX + "21.rsc", buildFileOfByteFor.length, strArr2);
                buildFileForReadableName("readableNames.props", buildFileOfIntFor, buildFileOfIntFor3, buildFileForName, strArr2);
                buildFilesForRecoveryTemplates(FILEPREFIX + "22.rsc", FILEPREFIX + "23.rsc", buildFileOfIntFor2, buildFileOfIntFor3, buildFileForName, buildFileOfIntFor, strArr2);
                buildFilesForStatementsRecoveryFilter(FILEPREFIX + "24.rsc", buildFileOfIntFor3, buildFileOfIntFor, strArr2);
                System.out.println(Messages.parser_moveFiles);
            } catch (IOException unused) {
                System.out.println(Messages.parser_incorrectPath);
            }
        } catch (IOException unused2) {
            System.out.println(Messages.parser_incorrectPath);
        }
    }

    public static int[] computeReverseTable(char[] cArr, char[] cArr2, String[] strArr) {
        int[] iArr = new int[strArr.length];
        for (int i10 = 0; i10 < strArr.length; i10++) {
            int i11 = 0;
            while (true) {
                if (i11 >= cArr.length) {
                    int i12 = 0;
                    while (true) {
                        if (i12 < cArr2.length) {
                            if (cArr2[i12] == i10) {
                                iArr[i10] = -i12;
                                break;
                            }
                            i12++;
                        }
                    }
                } else {
                    if (cArr[i11] == i10) {
                        iArr[i10] = i11;
                        break;
                    }
                    i11++;
                }
            }
        }
        return iArr;
    }

    private void createSwitchStatementOrExpression(boolean z10) {
        this.nestedType--;
        this.switchNestingLevel--;
        SwitchStatement switchStatement = z10 ? new SwitchStatement() : new SwitchExpression();
        this.expressionLengthPtr--;
        Expression[] expressionArr = this.expressionStack;
        int i10 = this.expressionPtr;
        this.expressionPtr = i10 - 1;
        switchStatement.expression = expressionArr[i10];
        int[] iArr = this.astLengthStack;
        int i11 = this.astLengthPtr;
        this.astLengthPtr = i11 - 1;
        int i12 = iArr[i11];
        if (i12 != 0) {
            int i13 = this.astPtr - i12;
            this.astPtr = i13;
            Statement[] statementArr = new Statement[i12];
            switchStatement.statements = statementArr;
            System.arraycopy(this.astStack, i13 + 1, statementArr, 0, i12);
        }
        int[] iArr2 = this.realBlockStack;
        int i14 = this.realBlockPtr;
        this.realBlockPtr = i14 - 1;
        switchStatement.explicitDeclarations = iArr2[i14];
        pushOnAstStack(switchStatement);
        int[] iArr3 = this.intStack;
        int i15 = this.intPtr;
        int i16 = i15 - 1;
        this.intPtr = i16;
        int i17 = iArr3[i15];
        switchStatement.blockStart = i17;
        this.intPtr = i15 - 2;
        switchStatement.sourceStart = iArr3[i16];
        int i18 = this.endStatementPosition;
        switchStatement.sourceEnd = i18;
        if (i12 != 0 || containsComment(i17, i18)) {
            return;
        }
        switchStatement.bits |= 8;
    }

    private static int getSymbol(String str, String[] strArr, int[] iArr) {
        for (int i10 = 0; i10 < strArr.length; i10++) {
            if (str.equals(strArr[i10])) {
                return iArr[i10];
            }
        }
        return -1;
    }

    public static int in_symbol(int i10) {
        return in_symb[original_state(i10)];
    }

    public static final void initTables() throws IOException {
        lhs = readTable(FILEPREFIX + "1.rsc");
        char[] readTable = readTable(FILEPREFIX + "2.rsc");
        check_table = new short[readTable.length];
        int length = readTable.length;
        while (true) {
            int i10 = length - 1;
            if (length <= 0) {
                asb = readTable(FILEPREFIX + "3.rsc");
                asr = readTable(FILEPREFIX + "4.rsc");
                nasb = readTable(FILEPREFIX + "5.rsc");
                nasr = readTable(FILEPREFIX + "6.rsc");
                terminal_index = readTable(FILEPREFIX + "7.rsc");
                non_terminal_index = readTable(FILEPREFIX + "8.rsc");
                term_action = readTable(FILEPREFIX + "9.rsc");
                scope_prefix = readTable(FILEPREFIX + "10.rsc");
                scope_suffix = readTable(FILEPREFIX + "11.rsc");
                scope_lhs = readTable(FILEPREFIX + "12.rsc");
                scope_state_set = readTable(FILEPREFIX + "13.rsc");
                scope_rhs = readTable(FILEPREFIX + "14.rsc");
                scope_state = readTable(FILEPREFIX + "15.rsc");
                in_symb = readTable(FILEPREFIX + "16.rsc");
                rhs = readByteTable(FILEPREFIX + "17.rsc");
                term_check = readByteTable(FILEPREFIX + "18.rsc");
                scope_la = readByteTable(FILEPREFIX + "19.rsc");
                name = readNameTable(FILEPREFIX + "20.rsc");
                rules_compliance = readLongTable(FILEPREFIX + "21.rsc");
                readableName = readReadableNameTable("readableNames.props");
                reverse_index = computeReverseTable(terminal_index, non_terminal_index, name);
                recovery_templates_index = readTable(FILEPREFIX + "22.rsc");
                recovery_templates = readTable(FILEPREFIX + "23.rsc");
                statements_recovery_filter = readTable(FILEPREFIX + "24.rsc");
                base_action = lhs;
                return;
            }
            check_table[i10] = (short) (readTable[i10] - '\u8000');
            length = i10;
        }
    }

    private void jumpOverType() {
        int i10;
        TypeDeclaration[] typeDeclarationArr = this.recoveredTypes;
        if (typeDeclarationArr == null || (i10 = this.nextTypeStart) <= -1) {
            return;
        }
        Scanner scanner = this.scanner;
        if (i10 < scanner.currentPosition) {
            TypeDeclaration typeDeclaration = typeDeclarationArr[this.recoveredTypePtr];
            boolean z10 = typeDeclaration.allocation != null;
            int i11 = typeDeclaration.declarationSourceEnd;
            scanner.startPosition = i11 + 1;
            scanner.currentPosition = i11 + 1;
            scanner.diet = false;
            if (z10) {
                ((RecoveryScanner) scanner).setPendingTokens(new int[]{22, 72, 22});
            } else {
                ((RecoveryScanner) scanner).setPendingTokens(new int[]{26, 77});
            }
            this.pendingRecoveredType = typeDeclaration;
            try {
                this.currentToken = this.scanner.getNextToken();
            } catch (InvalidInputException unused) {
            }
            int i12 = this.recoveredTypePtr + 1;
            this.recoveredTypePtr = i12;
            TypeDeclaration[] typeDeclarationArr2 = this.recoveredTypes;
            if (i12 >= typeDeclarationArr2.length) {
                this.nextTypeStart = Integer.MAX_VALUE;
                return;
            }
            TypeDeclaration typeDeclaration2 = typeDeclarationArr2[i12];
            QualifiedAllocationExpression qualifiedAllocationExpression = typeDeclaration2.allocation;
            this.nextTypeStart = qualifiedAllocationExpression == null ? typeDeclaration2.declarationSourceStart : qualifiedAllocationExpression.sourceStart;
        }
    }

    public static int nasi(int i10) {
        return nasb[original_state(i10)];
    }

    public static int ntAction(int i10, int i11) {
        return base_action[i10 + i11];
    }

    public static int original_state(int i10) {
        return -base_check(i10);
    }

    public static byte[] readByteTable(String str) throws IOException {
        Throwable th2;
        InputStream inputStream;
        InputStream resourceAsStream = Parser.class.getResourceAsStream(str);
        if (resourceAsStream == null) {
            throw new IOException(Messages.bind(Messages.parser_missingFile, str));
        }
        try {
            inputStream = new BufferedInputStream(resourceAsStream);
            try {
                byte[] inputStreamAsByteArray = Util.getInputStreamAsByteArray(inputStream, -1);
                try {
                    inputStream.close();
                } catch (IOException unused) {
                }
                return inputStreamAsByteArray;
            } catch (Throwable th3) {
                th2 = th3;
                try {
                    inputStream.close();
                } catch (IOException unused2) {
                }
                throw th2;
            }
        } catch (Throwable th4) {
            th2 = th4;
            inputStream = resourceAsStream;
        }
    }

    public static long[] readLongTable(String str) throws IOException {
        InputStream resourceAsStream = Parser.class.getResourceAsStream(str);
        if (resourceAsStream == null) {
            throw new IOException(Messages.bind(Messages.parser_missingFile, str));
        }
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(resourceAsStream);
            try {
                byte[] inputStreamAsByteArray = Util.getInputStreamAsByteArray(bufferedInputStream, -1);
                try {
                    bufferedInputStream.close();
                } catch (IOException unused) {
                }
                int length = inputStreamAsByteArray.length;
                if (length % 8 != 0) {
                    throw new IOException(Messages.bind(Messages.parser_corruptedFile, str));
                }
                long[] jArr = new long[length / 8];
                int i10 = 0;
                int i11 = 0;
                while (true) {
                    int i12 = i10 + 1;
                    int i13 = i11 + 7;
                    long j10 = ((inputStreamAsByteArray[i11] & 255) << 56) + ((inputStreamAsByteArray[i11 + 1] & 255) << 48) + ((inputStreamAsByteArray[i11 + 2] & 255) << 40) + ((inputStreamAsByteArray[i11 + 3] & 255) << 32) + ((inputStreamAsByteArray[i11 + 4] & 255) << 24) + ((inputStreamAsByteArray[i11 + 5] & 255) << 16) + ((inputStreamAsByteArray[i11 + 6] & 255) << 8);
                    i11 += 8;
                    jArr[i10] = j10 + (inputStreamAsByteArray[i13] & 255);
                    if (i11 == length) {
                        return jArr;
                    }
                    i10 = i12;
                }
            } catch (Throwable th2) {
                th = th2;
                resourceAsStream = bufferedInputStream;
                try {
                    resourceAsStream.close();
                } catch (IOException unused2) {
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static String[] readNameTable(String str) throws IOException {
        char[][] splitOn = CharOperation.splitOn('\n', readTable(str));
        String[] strArr = new String[splitOn.length + 1];
        int i10 = 0;
        strArr[0] = null;
        while (i10 < splitOn.length) {
            int i11 = i10 + 1;
            strArr[i11] = new String(splitOn[i10]);
            i10 = i11;
        }
        return strArr;
    }

    public static String[] readReadableNameTable(String str) {
        String[] strArr = new String[name.length];
        InputStream resourceAsStream = Parser.class.getResourceAsStream(str);
        Properties properties = new Properties();
        try {
            properties.load(resourceAsStream);
            for (int i10 = 0; i10 < 130; i10++) {
                strArr[i10] = name[i10];
            }
            int i11 = 129;
            while (true) {
                String[] strArr2 = name;
                if (i11 >= strArr2.length) {
                    return strArr;
                }
                String property = properties.getProperty(strArr2[i11]);
                if (property == null || property.length() <= 0) {
                    strArr[i11] = name[i11];
                } else {
                    strArr[i11] = property;
                }
                i11++;
            }
        } catch (IOException unused) {
            return name;
        }
    }

    public static char[] readTable(String str) throws IOException {
        InputStream resourceAsStream = Parser.class.getResourceAsStream(str);
        if (resourceAsStream == null) {
            throw new IOException(Messages.bind(Messages.parser_missingFile, str));
        }
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(resourceAsStream);
            try {
                byte[] inputStreamAsByteArray = Util.getInputStreamAsByteArray(bufferedInputStream, -1);
                try {
                    bufferedInputStream.close();
                } catch (IOException unused) {
                }
                int length = inputStreamAsByteArray.length;
                if ((length & 1) != 0) {
                    throw new IOException(Messages.bind(Messages.parser_corruptedFile, str));
                }
                char[] cArr = new char[length / 2];
                int i10 = 0;
                int i11 = 0;
                while (true) {
                    int i12 = i10 + 1;
                    int i13 = i11 + 1;
                    int i14 = (inputStreamAsByteArray[i11] & 255) << 8;
                    i11 += 2;
                    cArr[i10] = (char) (i14 + (inputStreamAsByteArray[i13] & 255));
                    if (i11 == length) {
                        return cArr;
                    }
                    i10 = i12;
                }
            } catch (Throwable th2) {
                th = th2;
                resourceAsStream = bufferedInputStream;
                try {
                    resourceAsStream.close();
                } catch (IOException unused2) {
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private void rejectIllegalTypeAnnotations(TypeReference typeReference) {
        Annotation[][] annotationArr = typeReference.annotations;
        int length = annotationArr == null ? 0 : annotationArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            Annotation[] annotationArr2 = annotationArr[i10];
            if (annotationArr2 != null) {
                problemReporter().misplacedTypeAnnotations(annotationArr2[0], annotationArr2[annotationArr2.length - 1]);
            }
        }
        Annotation[][] annotationsOnDimensions = typeReference.getAnnotationsOnDimensions(true);
        int length2 = annotationsOnDimensions == null ? 0 : annotationsOnDimensions.length;
        for (int i11 = 0; i11 < length2; i11++) {
            Annotation[] annotationArr3 = annotationsOnDimensions[i11];
            if (annotationArr3 != null) {
                problemReporter().misplacedTypeAnnotations(annotationArr3[0], annotationArr3[annotationArr3.length - 1]);
            }
        }
        typeReference.annotations = null;
        typeReference.setAnnotationsOnDimensions(null);
        typeReference.bits &= -1048577;
    }

    private void reportSyntaxErrorsForSkippedMethod(TypeDeclaration[] typeDeclarationArr) {
        if (typeDeclarationArr != null) {
            for (int i10 = 0; i10 < typeDeclarationArr.length; i10++) {
                TypeDeclaration[] typeDeclarationArr2 = typeDeclarationArr[i10].memberTypes;
                if (typeDeclarationArr2 != null) {
                    reportSyntaxErrorsForSkippedMethod(typeDeclarationArr2);
                }
                AbstractMethodDeclaration[] abstractMethodDeclarationArr = typeDeclarationArr[i10].methods;
                if (abstractMethodDeclarationArr != null) {
                    for (AbstractMethodDeclaration abstractMethodDeclaration : abstractMethodDeclarationArr) {
                        if ((abstractMethodDeclaration.bits & 32) != 0) {
                            if (abstractMethodDeclaration.isAnnotationMethod()) {
                                new DiagnoseParser(this, 29, abstractMethodDeclaration.declarationSourceStart, abstractMethodDeclaration.declarationSourceEnd, this.options).diagnoseParse(this.options.performStatementsRecovery);
                            } else {
                                new DiagnoseParser(this, 10, abstractMethodDeclaration.declarationSourceStart, abstractMethodDeclaration.declarationSourceEnd, this.options).diagnoseParse(this.options.performStatementsRecovery);
                            }
                        }
                    }
                }
                FieldDeclaration[] fieldDeclarationArr = typeDeclarationArr[i10].fields;
                if (fieldDeclarationArr != null) {
                    for (FieldDeclaration fieldDeclaration : fieldDeclarationArr) {
                        if (fieldDeclaration instanceof Initializer) {
                            Initializer initializer = (Initializer) fieldDeclaration;
                            if ((initializer.bits & 32) != 0) {
                                new DiagnoseParser(this, 14, initializer.declarationSourceStart, initializer.declarationSourceEnd, this.options).diagnoseParse(this.options.performStatementsRecovery);
                            }
                        }
                    }
                }
            }
        }
    }

    private void setArgumentsTypeVar(LambdaExpression lambdaExpression) {
        Argument[] argumentArr = lambdaExpression.arguments;
        if (!this.parsingJava11Plus || argumentArr == null || argumentArr.length == 0) {
            lambdaExpression.argumentsTypeVar = false;
            return;
        }
        int length = argumentArr.length;
        int i10 = 0;
        boolean z10 = false;
        boolean z11 = false;
        while (i10 < length) {
            Argument argument = argumentArr[i10];
            TypeReference typeReference = argument.type;
            char[][] typeName = typeReference != null ? typeReference.getTypeName() : null;
            boolean z12 = typeName != null && typeName.length == 1 && CharOperation.equals(typeName[0], TypeConstants.VAR);
            lambdaExpression.argumentsTypeVar |= z12;
            if (i10 > 0 && z10 != z12 && !z11) {
                problemReporter().varCannotBeMixedWithNonVarParams(z12 ? argument : argumentArr[i10 - 1]);
                z11 = true;
            }
            if (z12 && (typeReference.dimensions() > 0 || typeReference.extraDimensions() > 0)) {
                problemReporter().varLocalCannotBeArray(argument);
            }
            i10++;
            z10 = z12;
        }
    }

    public static int tAction(int i10, int i11) {
        char[] cArr = term_action;
        byte[] bArr = term_check;
        char c10 = base_action[i10];
        byte b10 = bArr[c10 + i11];
        int i12 = c10;
        if (b10 == i11) {
            i12 = c10 + i11;
        }
        return cArr[i12];
    }

    public int actFromTokenOrSynthetic(int i10) {
        return tAction(i10, this.currentToken);
    }

    public void annotateTypeReference(Wildcard wildcard) {
        int[] iArr = this.typeAnnotationLengthStack;
        int i10 = this.typeAnnotationLengthPtr;
        this.typeAnnotationLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 != 0) {
            if (wildcard.annotations == null) {
                wildcard.annotations = new Annotation[wildcard.getAnnotatableLevels()];
            }
            Annotation[] annotationArr = this.typeAnnotationStack;
            int i12 = this.typeAnnotationPtr - i11;
            this.typeAnnotationPtr = i12;
            Annotation[] annotationArr2 = new Annotation[i11];
            wildcard.annotations[0] = annotationArr2;
            System.arraycopy(annotationArr, i12 + 1, annotationArr2, 0, i11);
            int i13 = wildcard.sourceStart;
            int i14 = wildcard.annotations[0][0].sourceStart;
            if (i13 > i14) {
                wildcard.sourceStart = i14;
            }
            wildcard.bits |= 1048576;
        }
        TypeReference typeReference = wildcard.bound;
        if (typeReference != null) {
            wildcard.bits = (typeReference.bits & 1048576) | wildcard.bits;
        }
    }

    public void annotationRecoveryCheckPoint(int i10, int i11) {
        if (this.lastCheckPoint < i11) {
            this.lastCheckPoint = i11 + 1;
        }
    }

    public void arrayInitializer(int i10) {
        ArrayInitializer arrayInitializer = new ArrayInitializer();
        if (i10 != 0) {
            int i11 = this.expressionPtr - i10;
            this.expressionPtr = i11;
            Expression[] expressionArr = new Expression[i10];
            arrayInitializer.expressions = expressionArr;
            System.arraycopy(this.expressionStack, i11 + 1, expressionArr, 0, i10);
        }
        pushOnExpressionStack(arrayInitializer);
        arrayInitializer.sourceEnd = this.endStatementPosition;
        int[] iArr = this.intStack;
        int i12 = this.intPtr;
        this.intPtr = i12 - 1;
        arrayInitializer.sourceStart = iArr[i12];
    }

    @Override
    public boolean atConflictScenario(int i10) {
        int i11 = this.unstackedAct;
        if (i11 == 16966) {
            return false;
        }
        if (i10 != 37) {
            i10 = i10 == 23 ? 47 : 84;
        }
        return automatonWillShift(i10, i11);
    }

    public TypeReference augmentTypeWithAdditionalDimensions(TypeReference typeReference, int i10, Annotation[][] annotationArr, boolean z10) {
        return typeReference.augmentTypeWithAdditionalDimensions(i10, annotationArr, z10);
    }

    public int automatonState() {
        return this.stack[this.stateStackTop];
    }

    public boolean automatonWillShift(int i10, int i11) {
        int i12;
        int i13;
        int tAction;
        int i14 = this.stateStackTop;
        int i15 = this.stack[i14];
        if (i11 <= 867) {
            i11 += 16966;
            i13 = i14;
            i14--;
            i12 = i15;
        } else {
            i12 = i15;
            i13 = i14;
        }
        while (true) {
            if (i11 > 16966) {
                i11 -= 16966;
                do {
                    i14 -= rhs[i11] - 1;
                    if (i14 < i13) {
                        i12 = this.stack[i14];
                        i13 = i14;
                    }
                    i11 = ntAction(i12, lhs[i11]);
                } while (i11 <= 867);
            }
            i12 = i11;
            i13 = i14 + 1;
            tAction = tAction(i12, i10);
            if (tAction > 867) {
                break;
            }
            i11 = tAction + 16966;
        }
        return tAction != 16966;
    }

    public void blockReal() {
        int[] iArr = this.realBlockStack;
        int i10 = this.realBlockPtr;
        iArr[i10] = iArr[i10] + 1;
    }

    public RecoveredElement buildInitialRecoveryState() {
        RecoveredElement recoveredElement;
        int i10;
        TypeDeclaration typeDeclaration;
        this.lastCheckPoint = 0;
        this.lastErrorEndPositionBeforeRecovery = this.scanner.currentPosition;
        ReferenceContext referenceContext = this.referenceContext;
        if (referenceContext instanceof CompilationUnitDeclaration) {
            RecoveredUnit recoveredUnit = new RecoveredUnit(this.compilationUnit, 0, this);
            CompilationUnitDeclaration compilationUnitDeclaration = this.compilationUnit;
            compilationUnitDeclaration.currentPackage = null;
            compilationUnitDeclaration.imports = null;
            compilationUnitDeclaration.types = null;
            this.currentToken = 0;
            this.listLength = 0;
            this.listTypeParameterLength = 0;
            this.endPosition = 0;
            this.endStatementPosition = 0;
            return recoveredUnit;
        }
        if (referenceContext instanceof AbstractMethodDeclaration) {
            recoveredElement = new RecoveredMethod((AbstractMethodDeclaration) referenceContext, null, 0, this);
            this.lastCheckPoint = ((AbstractMethodDeclaration) this.referenceContext).bodyStart;
            if (this.statementRecoveryActivated) {
                recoveredElement = recoveredElement.add(new Block(0), 0);
            }
        } else {
            if (referenceContext instanceof TypeDeclaration) {
                FieldDeclaration[] fieldDeclarationArr = ((TypeDeclaration) referenceContext).fields;
                int length = fieldDeclarationArr == null ? 0 : fieldDeclarationArr.length;
                for (int i11 = 0; i11 < length; i11++) {
                    FieldDeclaration fieldDeclaration = fieldDeclarationArr[i11];
                    if (fieldDeclaration != null && fieldDeclaration.getKind() == 2 && ((Initializer) fieldDeclaration).block != null) {
                        int i12 = fieldDeclaration.declarationSourceStart;
                        Scanner scanner = this.scanner;
                        int i13 = scanner.initialPosition;
                        if (i12 <= i13 && i13 <= (i10 = fieldDeclaration.declarationSourceEnd) && scanner.eofPosition <= i10 + 1) {
                            recoveredElement = new RecoveredInitializer(fieldDeclaration, null, 1, this);
                            this.lastCheckPoint = fieldDeclaration.declarationSourceStart;
                            break;
                        }
                    }
                }
            }
            recoveredElement = null;
        }
        if (recoveredElement == null) {
            return recoveredElement;
        }
        for (int i14 = 0; i14 <= this.astPtr; i14++) {
            ASTNode aSTNode = this.astStack[i14];
            if (aSTNode instanceof AbstractMethodDeclaration) {
                AbstractMethodDeclaration abstractMethodDeclaration = (AbstractMethodDeclaration) aSTNode;
                if (abstractMethodDeclaration.declarationSourceEnd == 0) {
                    recoveredElement = recoveredElement.add(abstractMethodDeclaration, 0);
                    this.lastCheckPoint = abstractMethodDeclaration.bodyStart;
                } else {
                    recoveredElement = recoveredElement.add(abstractMethodDeclaration, 0);
                    this.lastCheckPoint = abstractMethodDeclaration.declarationSourceEnd + 1;
                }
            } else if (aSTNode instanceof Initializer) {
                Initializer initializer = (Initializer) aSTNode;
                if (initializer.block != null) {
                    if (initializer.declarationSourceEnd == 0) {
                        recoveredElement = recoveredElement.add((FieldDeclaration) initializer, 1);
                        this.lastCheckPoint = initializer.sourceStart;
                    } else {
                        recoveredElement = recoveredElement.add((FieldDeclaration) initializer, 0);
                        this.lastCheckPoint = initializer.declarationSourceEnd + 1;
                    }
                }
            } else if (aSTNode instanceof FieldDeclaration) {
                FieldDeclaration fieldDeclaration2 = (FieldDeclaration) aSTNode;
                if (fieldDeclaration2.declarationSourceEnd == 0) {
                    recoveredElement = recoveredElement.add(fieldDeclaration2, 0);
                    Expression expression = fieldDeclaration2.initialization;
                    if (expression == null) {
                        this.lastCheckPoint = fieldDeclaration2.sourceEnd + 1;
                    } else {
                        this.lastCheckPoint = expression.sourceEnd + 1;
                    }
                } else {
                    recoveredElement = recoveredElement.add(fieldDeclaration2, 0);
                    this.lastCheckPoint = fieldDeclaration2.declarationSourceEnd + 1;
                }
            } else if (aSTNode instanceof TypeDeclaration) {
                TypeDeclaration typeDeclaration2 = (TypeDeclaration) aSTNode;
                if ((typeDeclaration2.modifiers & 16384) == 0) {
                    if (typeDeclaration2.declarationSourceEnd == 0) {
                        recoveredElement = recoveredElement.add(typeDeclaration2, 0);
                        this.lastCheckPoint = typeDeclaration2.bodyStart;
                    } else {
                        recoveredElement = recoveredElement.add(typeDeclaration2, 0);
                        this.lastCheckPoint = typeDeclaration2.declarationSourceEnd + 1;
                    }
                }
            } else {
                if (aSTNode instanceof ImportReference) {
                    ImportReference importReference = (ImportReference) aSTNode;
                    recoveredElement = recoveredElement.add(importReference, 0);
                    this.lastCheckPoint = importReference.declarationSourceEnd + 1;
                }
                if (this.statementRecoveryActivated) {
                    if (aSTNode instanceof Block) {
                        Block block = (Block) aSTNode;
                        recoveredElement = recoveredElement.add(block, 0);
                        this.lastCheckPoint = block.sourceEnd + 1;
                    } else if (aSTNode instanceof LocalDeclaration) {
                        LocalDeclaration localDeclaration = (LocalDeclaration) aSTNode;
                        recoveredElement = recoveredElement.add(localDeclaration, 0);
                        this.lastCheckPoint = localDeclaration.sourceEnd + 1;
                    } else {
                        if (aSTNode instanceof Expression) {
                            Expression expression2 = (Expression) aSTNode;
                            if (expression2.isTrulyExpression()) {
                                if ((aSTNode instanceof Assignment) || (aSTNode instanceof PrefixExpression) || (aSTNode instanceof PostfixExpression) || (aSTNode instanceof MessageSend) || (aSTNode instanceof AllocationExpression)) {
                                    recoveredElement = recoveredElement.add(expression2, 0);
                                    int i15 = expression2.statementEnd;
                                    if (i15 != -1) {
                                        this.lastCheckPoint = i15 + 1;
                                    } else {
                                        this.lastCheckPoint = expression2.sourceEnd + 1;
                                    }
                                }
                            }
                        }
                        if (aSTNode instanceof Statement) {
                            Statement statement = (Statement) aSTNode;
                            recoveredElement = recoveredElement.add(statement, 0);
                            this.lastCheckPoint = statement.sourceEnd + 1;
                        }
                    }
                }
            }
        }
        if (!this.statementRecoveryActivated || (typeDeclaration = this.pendingRecoveredType) == null || this.scanner.startPosition - 1 > typeDeclaration.declarationSourceEnd) {
            return recoveredElement;
        }
        RecoveredElement add = recoveredElement.add(typeDeclaration, 0);
        this.lastCheckPoint = this.pendingRecoveredType.declarationSourceEnd + 1;
        this.pendingRecoveredType = null;
        return add;
    }

    public void checkAndSetModifiers(int i10) {
        int i11 = this.modifiers;
        if ((i11 & i10) != 0) {
            this.modifiers = i11 | 4194304;
        }
        this.modifiers |= i10;
        if (this.modifiersSourceStart < 0) {
            this.modifiersSourceStart = this.scanner.startPosition;
        }
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            recoveredElement.addModifier(i10, this.modifiersSourceStart);
        }
    }

    public void checkComment() {
        JavadocParser javadocParser;
        if ((!this.diet || this.dietInt != 0) && this.scanner.commentPtr >= 0) {
            flushCommentsDefinedPriorTo(this.endStatementPosition);
        }
        int i10 = this.scanner.commentPtr;
        if (this.modifiersSourceStart >= 0) {
            while (i10 >= 0) {
                int i11 = this.scanner.commentStarts[i10];
                if (i11 < 0) {
                    i11 = -i11;
                }
                if (i11 <= this.modifiersSourceStart) {
                    break;
                } else {
                    i10--;
                }
            }
        }
        if (i10 >= 0) {
            int i12 = this.scanner.commentStarts[0];
            if (i12 < 0) {
                i12 = -i12;
            }
            int i13 = this.forStartPosition;
            if (i13 != 0 || i13 < i12) {
                this.modifiersSourceStart = i12;
            }
            while (i10 >= 0 && this.scanner.commentStops[i10] < 0) {
                i10--;
            }
            if (i10 < 0 || (javadocParser = this.javadocParser) == null) {
                return;
            }
            int i14 = this.scanner.commentStops[i10] - 1;
            if (javadocParser.shouldReportProblems) {
                javadocParser.reportProblems = this.currentElement == null || i14 > this.lastJavadocEnd;
            } else {
                javadocParser.reportProblems = false;
            }
            if (javadocParser.checkDeprecation(i10)) {
                checkAndSetModifiers(1048576);
            }
            this.javadoc = this.javadocParser.docComment;
            if (this.currentElement == null) {
                this.lastJavadocEnd = i14;
            }
        }
    }

    public void checkForDiamond(TypeReference typeReference) {
        if (typeReference instanceof ParameterizedSingleTypeReference) {
            ParameterizedSingleTypeReference parameterizedSingleTypeReference = (ParameterizedSingleTypeReference) typeReference;
            if (parameterizedSingleTypeReference.typeArguments == TypeReference.NO_TYPE_ARGUMENTS) {
                if (this.options.sourceLevel < ClassFileConstants.JDK1_7) {
                    problemReporter().diamondNotBelow17(typeReference);
                }
                if (this.options.sourceLevel > ClassFileConstants.JDK1_4) {
                    parameterizedSingleTypeReference.bits |= 524288;
                    return;
                }
                return;
            }
            return;
        }
        if (typeReference instanceof ParameterizedQualifiedTypeReference) {
            ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference = (ParameterizedQualifiedTypeReference) typeReference;
            if (parameterizedQualifiedTypeReference.typeArguments[r6.length - 1] == TypeReference.NO_TYPE_ARGUMENTS) {
                if (this.options.sourceLevel < ClassFileConstants.JDK1_7) {
                    problemReporter().diamondNotBelow17(typeReference, parameterizedQualifiedTypeReference.typeArguments.length - 1);
                }
                if (this.options.sourceLevel > ClassFileConstants.JDK1_4) {
                    parameterizedQualifiedTypeReference.bits |= 524288;
                }
            }
        }
    }

    public void checkNonNLSAfterBodyEnd(int i10) {
        Scanner scanner = this.scanner;
        if (scanner.currentPosition - 1 <= i10) {
            if (i10 < Integer.MAX_VALUE) {
                i10++;
            }
            scanner.eofPosition = i10;
            do {
                try {
                } catch (InvalidInputException unused) {
                    return;
                }
            } while (this.scanner.getNextToken() != 61);
        }
    }

    public void classInstanceCreation(boolean z10) {
        int[] iArr = this.astLengthStack;
        int i10 = this.astLengthPtr;
        this.astLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 == 1) {
            ASTNode[] aSTNodeArr = this.astStack;
            int i12 = this.astPtr;
            if (aSTNodeArr[i12] == null) {
                this.astPtr = i12 - 1;
                AllocationExpression qualifiedAllocationExpression = z10 ? new QualifiedAllocationExpression() : new AllocationExpression();
                qualifiedAllocationExpression.sourceEnd = this.endPosition;
                int[] iArr2 = this.expressionLengthStack;
                int i13 = this.expressionLengthPtr;
                this.expressionLengthPtr = i13 - 1;
                int i14 = iArr2[i13];
                if (i14 != 0) {
                    int i15 = this.expressionPtr - i14;
                    this.expressionPtr = i15;
                    Expression[] expressionArr = new Expression[i14];
                    qualifiedAllocationExpression.arguments = expressionArr;
                    System.arraycopy(this.expressionStack, i15 + 1, expressionArr, 0, i14);
                }
                TypeReference typeReference = getTypeReference(0);
                qualifiedAllocationExpression.type = typeReference;
                checkForDiamond(typeReference);
                int[] iArr3 = this.intStack;
                int i16 = this.intPtr;
                this.intPtr = i16 - 1;
                qualifiedAllocationExpression.sourceStart = iArr3[i16];
                pushOnExpressionStack(qualifiedAllocationExpression);
                return;
            }
        }
        dispatchDeclarationInto(i11);
        TypeDeclaration typeDeclaration = (TypeDeclaration) this.astStack[this.astPtr];
        int i17 = this.endStatementPosition;
        typeDeclaration.declarationSourceEnd = i17;
        typeDeclaration.bodyEnd = i17;
        QualifiedAllocationExpression qualifiedAllocationExpression2 = typeDeclaration.allocation;
        if (qualifiedAllocationExpression2 != null) {
            qualifiedAllocationExpression2.sourceEnd = i17;
            checkForDiamond(qualifiedAllocationExpression2.type);
        }
        if (i11 == 0 && !containsComment(typeDeclaration.bodyStart, typeDeclaration.bodyEnd)) {
            typeDeclaration.bits |= 8;
        }
        this.astPtr--;
        this.astLengthPtr--;
    }

    public void collectResultExpressions(SwitchExpression switchExpression) {
        if (switchExpression.resultExpressions != null) {
            return;
        }
        int i10 = 0;
        switchExpression.resultExpressions = new ArrayList(0);
        Statement[] statementArr = switchExpression.statements;
        int length = statementArr == null ? 0 : statementArr.length;
        while (i10 < length) {
            Statement[] statementArr2 = switchExpression.statements;
            Statement statement = statementArr2[i10];
            if (statement instanceof CaseStatement) {
                if (((CaseStatement) statement).isExpr) {
                    i10++;
                    statement = statementArr2[i10];
                    if (statement instanceof Expression) {
                        Expression expression = (Expression) statement;
                        if (expression.isTrulyExpression()) {
                            switchExpression.resultExpressions.add(expression);
                        }
                    }
                    if (statement instanceof ThrowStatement) {
                    }
                }
                i10++;
            }
            statement.traverse(new ASTVisitor(switchExpression) {
                Stack<SwitchExpression> targetSwitchExpressions;

                {
                    if (this.targetSwitchExpressions == null) {
                        this.targetSwitchExpressions = new Stack<>();
                    }
                    this.targetSwitchExpressions.push(switchExpression);
                }

                @Override
                public void endVisit(SwitchExpression switchExpression2, BlockScope blockScope) {
                    this.targetSwitchExpressions.pop();
                }

                @Override
                public boolean visit(CaseStatement caseStatement, BlockScope blockScope) {
                    return true;
                }

                @Override
                public boolean visit(DoStatement doStatement, BlockScope blockScope) {
                    return false;
                }

                @Override
                public boolean visit(ForStatement forStatement, BlockScope blockScope) {
                    return false;
                }

                @Override
                public boolean visit(ForeachStatement foreachStatement, BlockScope blockScope) {
                    return false;
                }

                @Override
                public boolean visit(SwitchStatement switchStatement, BlockScope blockScope) {
                    return false;
                }

                @Override
                public boolean visit(TypeDeclaration typeDeclaration, BlockScope blockScope) {
                    return false;
                }

                @Override
                public boolean visit(WhileStatement whileStatement, BlockScope blockScope) {
                    return false;
                }

                @Override
                public boolean visit(SwitchExpression switchExpression2, BlockScope blockScope) {
                    if (switchExpression2.resultExpressions == null) {
                        switchExpression2.resultExpressions = new ArrayList(0);
                    }
                    this.targetSwitchExpressions.push(switchExpression2);
                    return false;
                }

                @Override
                public boolean visit(BreakStatement breakStatement, BlockScope blockScope) {
                    SwitchExpression peek = this.targetSwitchExpressions.peek();
                    Expression expression2 = breakStatement.expression;
                    if (expression2 != null) {
                        peek.resultExpressions.add(expression2);
                        breakStatement.switchExpression = this.targetSwitchExpressions.peek();
                        breakStatement.label = null;
                        Expression expression3 = breakStatement.expression;
                        if (!(expression3 instanceof SingleNameReference)) {
                            return true;
                        }
                        ((SingleNameReference) expression3).isLabel = false;
                        return true;
                    }
                    breakStatement.switchExpression = peek;
                    return true;
                }
            }, null);
            i10++;
        }
    }

    public ParameterizedQualifiedTypeReference computeQualifiedGenericsFromRightSide(TypeReference typeReference, int i10, Annotation[][] annotationArr) {
        int i11;
        int length;
        Annotation[][] annotationArr2;
        int i12 = this.identifierLengthStack[this.identifierLengthPtr];
        boolean z10 = typeReference instanceof ParameterizedSingleTypeReference;
        if (z10 || (typeReference instanceof SingleTypeReference)) {
            i11 = i12 + 1;
        } else {
            if (typeReference instanceof ParameterizedQualifiedTypeReference) {
                length = ((QualifiedTypeReference) typeReference).tokens.length;
            } else if (typeReference instanceof QualifiedTypeReference) {
                length = ((QualifiedTypeReference) typeReference).tokens.length;
            } else {
                i11 = i12;
            }
            i11 = length + i12;
        }
        TypeReference[][] typeReferenceArr = new TypeReference[i11];
        char[][] cArr = new char[i11];
        long[] jArr = new long[i11];
        if (z10) {
            ParameterizedSingleTypeReference parameterizedSingleTypeReference = (ParameterizedSingleTypeReference) typeReference;
            cArr[i12] = parameterizedSingleTypeReference.token;
            jArr[i12] = (parameterizedSingleTypeReference.sourceStart << 32) + parameterizedSingleTypeReference.sourceEnd;
            typeReferenceArr[i12] = parameterizedSingleTypeReference.typeArguments;
            Annotation[][] annotationArr3 = parameterizedSingleTypeReference.annotations;
            if (annotationArr3 != null) {
                annotationArr2 = new Annotation[i11];
                annotationArr2[i12] = annotationArr3[0];
            }
            annotationArr2 = null;
        } else if (typeReference instanceof SingleTypeReference) {
            SingleTypeReference singleTypeReference = (SingleTypeReference) typeReference;
            cArr[i12] = singleTypeReference.token;
            jArr[i12] = (singleTypeReference.sourceStart << 32) + singleTypeReference.sourceEnd;
            Annotation[][] annotationArr4 = singleTypeReference.annotations;
            if (annotationArr4 != null) {
                annotationArr2 = new Annotation[i11];
                annotationArr2[i12] = annotationArr4[0];
            }
            annotationArr2 = null;
        } else if (typeReference instanceof ParameterizedQualifiedTypeReference) {
            ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference = (ParameterizedQualifiedTypeReference) typeReference;
            TypeReference[][] typeReferenceArr2 = parameterizedQualifiedTypeReference.typeArguments;
            System.arraycopy(typeReferenceArr2, 0, typeReferenceArr, i12, typeReferenceArr2.length);
            char[][] cArr2 = parameterizedQualifiedTypeReference.tokens;
            System.arraycopy(cArr2, 0, cArr, i12, cArr2.length);
            long[] jArr2 = parameterizedQualifiedTypeReference.sourcePositions;
            System.arraycopy(jArr2, 0, jArr, i12, jArr2.length);
            Annotation[][] annotationArr5 = parameterizedQualifiedTypeReference.annotations;
            if (annotationArr5 != null) {
                annotationArr2 = new Annotation[i11];
                System.arraycopy(annotationArr5, 0, annotationArr2, i12, annotationArr5.length);
            }
            annotationArr2 = null;
        } else {
            if (typeReference instanceof QualifiedTypeReference) {
                QualifiedTypeReference qualifiedTypeReference = (QualifiedTypeReference) typeReference;
                char[][] cArr3 = qualifiedTypeReference.tokens;
                System.arraycopy(cArr3, 0, cArr, i12, cArr3.length);
                long[] jArr3 = qualifiedTypeReference.sourcePositions;
                System.arraycopy(jArr3, 0, jArr, i12, jArr3.length);
                Annotation[][] annotationArr6 = qualifiedTypeReference.annotations;
                if (annotationArr6 != null) {
                    annotationArr2 = new Annotation[i11];
                    System.arraycopy(annotationArr6, 0, annotationArr2, i12, annotationArr6.length);
                }
            }
            annotationArr2 = null;
        }
        int[] iArr = this.genericsLengthStack;
        int i13 = this.genericsLengthPtr;
        this.genericsLengthPtr = i13 - 1;
        int i14 = iArr[i13];
        TypeReference[] typeReferenceArr3 = new TypeReference[i14];
        int i15 = this.genericsPtr - i14;
        this.genericsPtr = i15;
        System.arraycopy(this.genericsStack, i15 + 1, typeReferenceArr3, 0, i14);
        if (i12 == 1) {
            char[][] cArr4 = this.identifierStack;
            int i16 = this.identifierPtr;
            cArr[0] = cArr4[i16];
            long[] jArr4 = this.identifierPositionStack;
            this.identifierPtr = i16 - 1;
            jArr[0] = jArr4[i16];
            typeReferenceArr[0] = typeReferenceArr3;
        } else {
            int i17 = this.identifierPtr - i12;
            this.identifierPtr = i17;
            System.arraycopy(this.identifierStack, i17 + 1, cArr, 0, i12);
            System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, jArr, 0, i12);
            typeReferenceArr[i12 - 1] = typeReferenceArr3;
        }
        this.identifierLengthPtr--;
        ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference2 = new ParameterizedQualifiedTypeReference(cArr, typeReferenceArr, i10, annotationArr, jArr);
        while (i12 > 0) {
            int[] iArr2 = this.typeAnnotationLengthStack;
            int i18 = this.typeAnnotationLengthPtr;
            this.typeAnnotationLengthPtr = i18 - 1;
            int i19 = iArr2[i18];
            if (i19 != 0) {
                if (annotationArr2 == null) {
                    annotationArr2 = new Annotation[i11];
                }
                Annotation[] annotationArr7 = this.typeAnnotationStack;
                int i20 = this.typeAnnotationPtr - i19;
                this.typeAnnotationPtr = i20;
                Annotation[] annotationArr8 = new Annotation[i19];
                annotationArr2[i12 - 1] = annotationArr8;
                System.arraycopy(annotationArr7, i20 + 1, annotationArr8, 0, i19);
                if (i12 == 1) {
                    parameterizedQualifiedTypeReference2.sourceStart = annotationArr2[0][0].sourceStart;
                }
            }
            i12--;
        }
        parameterizedQualifiedTypeReference2.annotations = annotationArr2;
        if (annotationArr2 != null) {
            parameterizedQualifiedTypeReference2.bits |= 1048576;
        }
        return parameterizedQualifiedTypeReference2;
    }

    public void concatExpressionLists() {
        int[] iArr = this.expressionLengthStack;
        int i10 = this.expressionLengthPtr - 1;
        this.expressionLengthPtr = i10;
        iArr[i10] = iArr[i10] + 1;
    }

    public void concatGenericsLists() {
        int[] iArr = this.genericsLengthStack;
        int i10 = this.genericsLengthPtr;
        int i11 = i10 - 1;
        int i12 = iArr[i11];
        this.genericsLengthPtr = i10 - 1;
        iArr[i11] = i12 + iArr[i10];
    }

    public void concatNodeLists() {
        int[] iArr = this.astLengthStack;
        int i10 = this.astLengthPtr;
        int i11 = i10 - 1;
        int i12 = iArr[i11];
        this.astLengthPtr = i10 - 1;
        iArr[i11] = i12 + iArr[i10];
    }

    public void consumeAdditionalBound() {
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        pushOnGenericsStack(getTypeReference(iArr[i10]));
    }

    public void consumeAdditionalBound1() {
    }

    public void consumeAdditionalBoundList() {
        concatGenericsLists();
    }

    public void consumeAdditionalBoundList1() {
        concatGenericsLists();
    }

    public void consumeAllocationHeader() {
        if (this.currentElement == null) {
            return;
        }
        if (this.currentToken != 49) {
            this.lastCheckPoint = this.scanner.startPosition;
            this.restartRecovery = true;
            return;
        }
        TypeDeclaration typeDeclaration = new TypeDeclaration(this.compilationUnit.compilationResult);
        typeDeclaration.name = CharOperation.NO_CHAR;
        typeDeclaration.bits |= 768;
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        int i11 = iArr[i10];
        typeDeclaration.sourceStart = i11;
        typeDeclaration.declarationSourceStart = i11;
        typeDeclaration.sourceEnd = this.rParenPos;
        QualifiedAllocationExpression qualifiedAllocationExpression = new QualifiedAllocationExpression(typeDeclaration);
        qualifiedAllocationExpression.type = getTypeReference(0);
        qualifiedAllocationExpression.sourceStart = typeDeclaration.sourceStart;
        qualifiedAllocationExpression.sourceEnd = typeDeclaration.sourceEnd;
        int i12 = this.scanner.currentPosition;
        typeDeclaration.bodyStart = i12;
        this.lastCheckPoint = i12;
        this.currentElement = this.currentElement.add(typeDeclaration, 0);
        this.lastIgnoredToken = -1;
        if (isIndirectlyInsideLambdaExpression()) {
            this.ignoreNextOpeningBrace = true;
        } else {
            this.currentToken = 0;
        }
    }

    public void consumeAnnotationAsModifier() {
        int i10 = this.expressionStack[this.expressionPtr].sourceStart;
        if (this.modifiersSourceStart < 0) {
            this.modifiersSourceStart = i10;
        }
    }

    public void consumeAnnotationName() {
        if (this.currentElement != null && !this.expectTypeAnnotation) {
            int i10 = this.intStack[this.intPtr];
            annotationRecoveryCheckPoint(i10, (int) (this.identifierPositionStack[this.identifierPtr] & 4294967295L));
            if (this.annotationRecoveryActivated) {
                this.currentElement = this.currentElement.addAnnotationName(this.identifierPtr, this.identifierLengthPtr, i10, 0);
            }
        }
        this.recordStringLiterals = false;
        this.expectTypeAnnotation = false;
    }

    public void consumeAnnotationTypeDeclaration() {
        int[] iArr = this.astLengthStack;
        int i10 = this.astLengthPtr;
        this.astLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 != 0) {
            dispatchDeclarationInto(i11);
        }
        TypeDeclaration typeDeclaration = (TypeDeclaration) this.astStack[this.astPtr];
        typeDeclaration.checkConstructors(this);
        if (this.scanner.containsAssertKeyword) {
            typeDeclaration.bits |= 1;
        }
        typeDeclaration.addClinit();
        int i12 = this.endStatementPosition;
        typeDeclaration.bodyEnd = i12;
        if (i11 == 0 && !containsComment(typeDeclaration.bodyStart, i12)) {
            typeDeclaration.bits |= 8;
        }
        typeDeclaration.declarationSourceEnd = flushCommentsDefinedPriorTo(this.endStatementPosition);
    }

    public void consumeAnnotationTypeDeclarationHeader() {
        TypeDeclaration typeDeclaration = (TypeDeclaration) this.astStack[this.astPtr];
        if (this.currentToken == 49) {
            typeDeclaration.bodyStart = this.scanner.currentPosition;
        }
        if (this.currentElement != null) {
            this.restartRecovery = true;
        }
        this.scanner.commentPtr = -1;
    }

    public void consumeAnnotationTypeDeclarationHeaderName() {
        CompilationUnitDeclaration compilationUnitDeclaration;
        TypeDeclaration typeDeclaration = new TypeDeclaration(this.compilationUnit.compilationResult);
        int[] iArr = this.nestedMethod;
        int i10 = this.nestedType;
        if (iArr[i10] != 0) {
            typeDeclaration.bits |= 256;
            markEnclosingMemberWithLocalType();
            blockReal();
        } else if (i10 != 0) {
            typeDeclaration.bits |= 1024;
        }
        long[] jArr = this.identifierPositionStack;
        int i11 = this.identifierPtr;
        long j10 = jArr[i11];
        typeDeclaration.sourceEnd = (int) j10;
        typeDeclaration.sourceStart = (int) (j10 >>> 32);
        char[][] cArr = this.identifierStack;
        this.identifierPtr = i11 - 1;
        char[] cArr2 = cArr[i11];
        typeDeclaration.name = cArr2;
        this.identifierLengthPtr--;
        int i12 = this.intPtr;
        int[] iArr2 = this.intStack;
        int i13 = i12 - 3;
        this.intPtr = i13;
        int i14 = iArr2[i12 - 2];
        typeDeclaration.modifiersSourceStart = i14;
        int i15 = i12 - 4;
        this.intPtr = i15;
        typeDeclaration.modifiers = iArr2[i13] | 8704;
        if (i14 >= 0) {
            typeDeclaration.declarationSourceStart = i14;
            this.intPtr = i12 - 5;
        } else {
            this.intPtr = i12 - 5;
            typeDeclaration.declarationSourceStart = iArr2[i15];
        }
        int i16 = typeDeclaration.bits;
        if ((i16 & 1024) == 0 && (i16 & 256) == 0 && (compilationUnitDeclaration = this.compilationUnit) != null && !CharOperation.equals(cArr2, compilationUnitDeclaration.getMainTypeName())) {
            typeDeclaration.bits |= 4096;
        }
        int[] iArr3 = this.expressionLengthStack;
        int i17 = this.expressionLengthPtr;
        this.expressionLengthPtr = i17 - 1;
        int i18 = iArr3[i17];
        if (i18 != 0) {
            Expression[] expressionArr = this.expressionStack;
            int i19 = this.expressionPtr - i18;
            this.expressionPtr = i19;
            Annotation[] annotationArr = new Annotation[i18];
            typeDeclaration.annotations = annotationArr;
            System.arraycopy(expressionArr, i19 + 1, annotationArr, 0, i18);
        }
        typeDeclaration.bodyStart = typeDeclaration.sourceEnd + 1;
        typeDeclaration.javadoc = this.javadoc;
        this.javadoc = null;
        pushOnAstStack(typeDeclaration);
        if (!this.statementRecoveryActivated && this.options.sourceLevel < ClassFileConstants.JDK1_5 && this.lastErrorEndPositionBeforeRecovery < this.scanner.currentPosition) {
            problemReporter().invalidUsageOfAnnotationDeclarations(typeDeclaration);
        }
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            this.lastCheckPoint = typeDeclaration.bodyStart;
            this.currentElement = recoveredElement.add(typeDeclaration, 0);
            this.lastIgnoredToken = -1;
        }
    }

    public void consumeAnnotationTypeDeclarationHeaderNameWithTypeParameters() {
        CompilationUnitDeclaration compilationUnitDeclaration;
        TypeDeclaration typeDeclaration = new TypeDeclaration(this.compilationUnit.compilationResult);
        int[] iArr = this.genericsLengthStack;
        int i10 = this.genericsLengthPtr;
        this.genericsLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        int i12 = this.genericsPtr - i11;
        this.genericsPtr = i12;
        TypeParameter[] typeParameterArr = new TypeParameter[i11];
        typeDeclaration.typeParameters = typeParameterArr;
        System.arraycopy(this.genericsStack, i12 + 1, typeParameterArr, 0, i11);
        problemReporter().invalidUsageOfTypeParametersForAnnotationDeclaration(typeDeclaration);
        typeDeclaration.bodyStart = typeDeclaration.typeParameters[i11 - 1].declarationSourceEnd + 1;
        this.listTypeParameterLength = 0;
        int[] iArr2 = this.nestedMethod;
        int i13 = this.nestedType;
        if (iArr2[i13] != 0) {
            typeDeclaration.bits |= 256;
            markEnclosingMemberWithLocalType();
            blockReal();
        } else if (i13 != 0) {
            typeDeclaration.bits |= 1024;
        }
        long[] jArr = this.identifierPositionStack;
        int i14 = this.identifierPtr;
        long j10 = jArr[i14];
        typeDeclaration.sourceEnd = (int) j10;
        typeDeclaration.sourceStart = (int) (j10 >>> 32);
        char[][] cArr = this.identifierStack;
        this.identifierPtr = i14 - 1;
        char[] cArr2 = cArr[i14];
        typeDeclaration.name = cArr2;
        this.identifierLengthPtr--;
        int i15 = this.intPtr;
        int[] iArr3 = this.intStack;
        int i16 = i15 - 3;
        this.intPtr = i16;
        int i17 = iArr3[i15 - 2];
        typeDeclaration.modifiersSourceStart = i17;
        int i18 = i15 - 4;
        this.intPtr = i18;
        typeDeclaration.modifiers = iArr3[i16] | 8704;
        if (i17 >= 0) {
            typeDeclaration.declarationSourceStart = i17;
            this.intPtr = i15 - 5;
        } else {
            this.intPtr = i15 - 5;
            typeDeclaration.declarationSourceStart = iArr3[i18];
        }
        int i19 = typeDeclaration.bits;
        if ((i19 & 1024) == 0 && (i19 & 256) == 0 && (compilationUnitDeclaration = this.compilationUnit) != null && !CharOperation.equals(cArr2, compilationUnitDeclaration.getMainTypeName())) {
            typeDeclaration.bits |= 4096;
        }
        int[] iArr4 = this.expressionLengthStack;
        int i20 = this.expressionLengthPtr;
        this.expressionLengthPtr = i20 - 1;
        int i21 = iArr4[i20];
        if (i21 != 0) {
            Expression[] expressionArr = this.expressionStack;
            int i22 = this.expressionPtr - i21;
            this.expressionPtr = i22;
            Annotation[] annotationArr = new Annotation[i21];
            typeDeclaration.annotations = annotationArr;
            System.arraycopy(expressionArr, i22 + 1, annotationArr, 0, i21);
        }
        typeDeclaration.javadoc = this.javadoc;
        this.javadoc = null;
        pushOnAstStack(typeDeclaration);
        if (!this.statementRecoveryActivated && this.options.sourceLevel < ClassFileConstants.JDK1_5 && this.lastErrorEndPositionBeforeRecovery < this.scanner.currentPosition) {
            problemReporter().invalidUsageOfAnnotationDeclarations(typeDeclaration);
        }
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            this.lastCheckPoint = typeDeclaration.bodyStart;
            this.currentElement = recoveredElement.add(typeDeclaration, 0);
            this.lastIgnoredToken = -1;
        }
    }

    public void consumeAnnotationTypeMemberDeclaration() {
        AnnotationMethodDeclaration annotationMethodDeclaration = (AnnotationMethodDeclaration) this.astStack[this.astPtr];
        annotationMethodDeclaration.modifiers |= 16777216;
        int flushCommentsDefinedPriorTo = flushCommentsDefinedPriorTo(this.endStatementPosition);
        annotationMethodDeclaration.bodyStart = this.endStatementPosition;
        annotationMethodDeclaration.bodyEnd = flushCommentsDefinedPriorTo;
        annotationMethodDeclaration.declarationSourceEnd = flushCommentsDefinedPriorTo;
    }

    public void consumeAnnotationTypeMemberDeclarations() {
        concatNodeLists();
    }

    public void consumeAnnotationTypeMemberDeclarationsopt() {
        this.nestedType--;
    }

    public void consumeArgumentList() {
        concatExpressionLists();
    }

    public void consumeArguments() {
        pushOnIntStack(this.rParenPos);
    }

    public void consumeArrayAccess(boolean z10) {
        ArrayReference arrayReference;
        if (z10) {
            Expression[] expressionArr = this.expressionStack;
            int i10 = this.expressionPtr;
            arrayReference = new ArrayReference(getUnspecifiedReferenceOptimized(), this.expressionStack[this.expressionPtr]);
            expressionArr[i10] = arrayReference;
        } else {
            int i11 = this.expressionPtr - 1;
            this.expressionPtr = i11;
            this.expressionLengthPtr--;
            Expression[] expressionArr2 = this.expressionStack;
            Expression[] expressionArr3 = this.expressionStack;
            int i12 = this.expressionPtr;
            arrayReference = new ArrayReference(expressionArr3[i12], expressionArr3[i12 + 1]);
            expressionArr2[i11] = arrayReference;
        }
        arrayReference.sourceEnd = this.endStatementPosition;
    }

    public void consumeArrayCreationExpressionWithInitializer() {
        ArrayAllocationExpression arrayAllocationExpression = new ArrayAllocationExpression();
        int i10 = this.expressionLengthPtr;
        int i11 = i10 - 1;
        this.expressionLengthPtr = i11;
        Expression[] expressionArr = this.expressionStack;
        int i12 = this.expressionPtr;
        int i13 = i12 - 1;
        this.expressionPtr = i13;
        arrayAllocationExpression.initializer = (ArrayInitializer) expressionArr[i12];
        int[] iArr = this.expressionLengthStack;
        this.expressionLengthPtr = i10 - 2;
        int i14 = iArr[i11];
        int i15 = i13 - i14;
        this.expressionPtr = i15;
        Expression[] expressionArr2 = new Expression[i14];
        arrayAllocationExpression.dimensions = expressionArr2;
        System.arraycopy(expressionArr, i15 + 1, expressionArr2, 0, i14);
        Annotation[][] annotationsOnDimensions = getAnnotationsOnDimensions(i14);
        arrayAllocationExpression.annotationsOnDimensions = annotationsOnDimensions;
        TypeReference typeReference = getTypeReference(0);
        arrayAllocationExpression.type = typeReference;
        typeReference.bits |= 1073741824;
        if (annotationsOnDimensions != null) {
            arrayAllocationExpression.bits |= 1048576;
            typeReference.bits |= 1048576;
        }
        int[] iArr2 = this.intStack;
        int i16 = this.intPtr;
        this.intPtr = i16 - 1;
        arrayAllocationExpression.sourceStart = iArr2[i16];
        ArrayInitializer arrayInitializer = arrayAllocationExpression.initializer;
        if (arrayInitializer == null) {
            arrayAllocationExpression.sourceEnd = this.endStatementPosition;
        } else {
            arrayAllocationExpression.sourceEnd = arrayInitializer.sourceEnd;
        }
        pushOnExpressionStack(arrayAllocationExpression);
    }

    public void consumeArrayCreationExpressionWithoutInitializer() {
        ArrayAllocationExpression arrayAllocationExpression = new ArrayAllocationExpression();
        int[] iArr = this.expressionLengthStack;
        int i10 = this.expressionLengthPtr;
        this.expressionLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        int i12 = this.expressionPtr - i11;
        this.expressionPtr = i12;
        Expression[] expressionArr = new Expression[i11];
        arrayAllocationExpression.dimensions = expressionArr;
        System.arraycopy(this.expressionStack, i12 + 1, expressionArr, 0, i11);
        Annotation[][] annotationsOnDimensions = getAnnotationsOnDimensions(i11);
        arrayAllocationExpression.annotationsOnDimensions = annotationsOnDimensions;
        TypeReference typeReference = getTypeReference(0);
        arrayAllocationExpression.type = typeReference;
        typeReference.bits |= 1073741824;
        if (annotationsOnDimensions != null) {
            arrayAllocationExpression.bits |= 1048576;
            typeReference.bits |= 1048576;
        }
        int[] iArr2 = this.intStack;
        int i13 = this.intPtr;
        this.intPtr = i13 - 1;
        arrayAllocationExpression.sourceStart = iArr2[i13];
        ArrayInitializer arrayInitializer = arrayAllocationExpression.initializer;
        if (arrayInitializer == null) {
            arrayAllocationExpression.sourceEnd = this.endStatementPosition;
        } else {
            arrayAllocationExpression.sourceEnd = arrayInitializer.sourceEnd;
        }
        pushOnExpressionStack(arrayAllocationExpression);
    }

    public void consumeArrayCreationHeader() {
    }

    public void consumeArrayInitializer() {
        int[] iArr = this.expressionLengthStack;
        int i10 = this.expressionLengthPtr;
        this.expressionLengthPtr = i10 - 1;
        arrayInitializer(iArr[i10]);
    }

    public void consumeArrayTypeWithTypeArgumentsName() {
        int[] iArr = this.genericsIdentifiersLengthStack;
        int i10 = this.genericsIdentifiersLengthPtr;
        iArr[i10] = iArr[i10] + this.identifierLengthStack[this.identifierLengthPtr];
        pushOnGenericsLengthStack(0);
    }

    public void consumeAssertStatement() {
        this.expressionLengthPtr -= 2;
        Expression[] expressionArr = this.expressionStack;
        int i10 = this.expressionPtr;
        int i11 = i10 - 1;
        this.expressionPtr = i11;
        Expression expression = expressionArr[i10];
        this.expressionPtr = i10 - 2;
        Expression expression2 = expressionArr[i11];
        int[] iArr = this.intStack;
        int i12 = this.intPtr;
        this.intPtr = i12 - 1;
        pushOnAstStack(new AssertStatement(expression, expression2, iArr[i12]));
    }

    public void consumeAssignment() {
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        int i11 = iArr[i10];
        int i12 = this.expressionPtr;
        int i13 = i12 - 1;
        this.expressionPtr = i13;
        this.expressionLengthPtr--;
        Expression[] expressionArr = this.expressionStack;
        Expression expression = expressionArr[i12];
        expressionArr[i13] = i11 != 30 ? new CompoundAssignment(this.expressionStack[this.expressionPtr], expression, i11, expression.sourceEnd) : new Assignment(this.expressionStack[this.expressionPtr], expression, expression.sourceEnd);
        TypeDeclaration typeDeclaration = this.pendingRecoveredType;
        if (typeDeclaration != null) {
            QualifiedAllocationExpression qualifiedAllocationExpression = typeDeclaration.allocation;
            if (qualifiedAllocationExpression == null || this.scanner.startPosition - 1 > typeDeclaration.declarationSourceEnd) {
                this.pendingRecoveredType = null;
            } else {
                this.expressionStack[this.expressionPtr] = qualifiedAllocationExpression;
                this.pendingRecoveredType = null;
            }
        }
    }

    public void consumeAssignmentOperator(int i10) {
        pushOnIntStack(i10);
    }

    public void consumeBinaryExpression(int i10) {
        int i11 = this.expressionPtr;
        int i12 = i11 - 1;
        this.expressionPtr = i12;
        this.expressionLengthPtr--;
        Expression[] expressionArr = this.expressionStack;
        Expression expression = expressionArr[i12];
        Expression expression2 = expressionArr[i11];
        if (i10 == 0) {
            expressionArr[i12] = new AND_AND_Expression(expression, expression2, i10);
            return;
        }
        if (i10 == 1) {
            expressionArr[i12] = new OR_OR_Expression(expression, expression2, i10);
            return;
        }
        if (i10 != 4) {
            if (i10 == 14) {
                if (!this.optimizeStringLiterals) {
                    if (expression instanceof StringLiteral) {
                        if ((expression2 instanceof StringLiteral) && ((expression.bits & ASTNode.ParenthesizedMASK) >> 21) == 0) {
                            expressionArr[i12] = ((StringLiteral) expression).extendsWith((StringLiteral) expression2);
                            return;
                        } else {
                            expressionArr[i12] = new BinaryExpression(expression, expression2, 14);
                            return;
                        }
                    }
                    if (!(expression instanceof CombinedBinaryExpression)) {
                        if ((expression instanceof BinaryExpression) && ((expression.bits & ASTNode.OperatorMASK) >> 6) == 14) {
                            expressionArr[i12] = new CombinedBinaryExpression(expression, expression2, 14, 1);
                            return;
                        } else {
                            expressionArr[i12] = new BinaryExpression(expression, expression2, 14);
                            return;
                        }
                    }
                    CombinedBinaryExpression combinedBinaryExpression = (CombinedBinaryExpression) expression;
                    if (combinedBinaryExpression.arity < combinedBinaryExpression.arityMax) {
                        combinedBinaryExpression.left = new BinaryExpression(combinedBinaryExpression);
                        combinedBinaryExpression.bits &= -534773761;
                        combinedBinaryExpression.arity++;
                    } else {
                        combinedBinaryExpression.left = new CombinedBinaryExpression(combinedBinaryExpression);
                        combinedBinaryExpression.bits &= -534773761;
                        combinedBinaryExpression.arity = 0;
                        combinedBinaryExpression.tuneArityMax();
                    }
                    combinedBinaryExpression.right = expression2;
                    combinedBinaryExpression.sourceEnd = expression2.sourceEnd;
                    this.expressionStack[this.expressionPtr] = combinedBinaryExpression;
                    return;
                }
                if (expression instanceof StringLiteral) {
                    if (((expression.bits & ASTNode.ParenthesizedMASK) >> 21) != 0) {
                        expressionArr[i12] = new BinaryExpression(expression, expression2, 14);
                        return;
                    }
                    if (expression2 instanceof CharLiteral) {
                        expressionArr[i12] = ((StringLiteral) expression).extendWith((CharLiteral) expression2);
                        return;
                    } else if (expression2 instanceof StringLiteral) {
                        expressionArr[i12] = ((StringLiteral) expression).extendWith((StringLiteral) expression2);
                        return;
                    } else {
                        expressionArr[i12] = new BinaryExpression(expression, expression2, 14);
                        return;
                    }
                }
                if (!(expression instanceof CombinedBinaryExpression)) {
                    if ((expression instanceof BinaryExpression) && ((expression.bits & ASTNode.OperatorMASK) >> 6) == 14) {
                        expressionArr[i12] = new CombinedBinaryExpression(expression, expression2, 14, 1);
                        return;
                    } else {
                        expressionArr[i12] = new BinaryExpression(expression, expression2, 14);
                        return;
                    }
                }
                CombinedBinaryExpression combinedBinaryExpression2 = (CombinedBinaryExpression) expression;
                if (combinedBinaryExpression2.arity < combinedBinaryExpression2.arityMax) {
                    combinedBinaryExpression2.left = new BinaryExpression(combinedBinaryExpression2);
                    combinedBinaryExpression2.arity++;
                } else {
                    combinedBinaryExpression2.left = new CombinedBinaryExpression(combinedBinaryExpression2);
                    combinedBinaryExpression2.arity = 0;
                    combinedBinaryExpression2.tuneArityMax();
                }
                combinedBinaryExpression2.right = expression2;
                combinedBinaryExpression2.sourceEnd = expression2.sourceEnd;
                this.expressionStack[this.expressionPtr] = combinedBinaryExpression2;
                return;
            }
            if (i10 != 15) {
                expressionArr[i12] = new BinaryExpression(expression, expression2, i10);
                return;
            }
        }
        this.intPtr--;
        expressionArr[i12] = new BinaryExpression(expression, expression2, i10);
    }

    public void consumeBinaryExpressionWithName(int i10) {
        pushOnExpressionStack(getUnspecifiedReferenceOptimized());
        int i11 = this.expressionPtr;
        int i12 = i11 - 1;
        this.expressionPtr = i12;
        this.expressionLengthPtr--;
        Expression[] expressionArr = this.expressionStack;
        Expression expression = expressionArr[i11];
        Expression expression2 = expressionArr[i12];
        if (i10 == 0) {
            expressionArr[i12] = new AND_AND_Expression(expression, expression2, i10);
            return;
        }
        if (i10 == 1) {
            expressionArr[i12] = new OR_OR_Expression(expression, expression2, i10);
            return;
        }
        if (i10 != 4) {
            if (i10 == 14) {
                if (!this.optimizeStringLiterals) {
                    if (!(expression instanceof StringLiteral)) {
                        expressionArr[i12] = new BinaryExpression(expression, expression2, i10);
                        return;
                    } else if ((expression2 instanceof StringLiteral) && ((expression.bits & ASTNode.ParenthesizedMASK) >> 21) == 0) {
                        expressionArr[i12] = ((StringLiteral) expression).extendsWith((StringLiteral) expression2);
                        return;
                    } else {
                        expressionArr[i12] = new BinaryExpression(expression, expression2, i10);
                        return;
                    }
                }
                if (!(expression instanceof StringLiteral) || ((expression.bits & ASTNode.ParenthesizedMASK) >> 21) != 0) {
                    expressionArr[i12] = new BinaryExpression(expression, expression2, 14);
                    return;
                }
                if (expression2 instanceof CharLiteral) {
                    expressionArr[i12] = ((StringLiteral) expression).extendWith((CharLiteral) expression2);
                    return;
                } else if (expression2 instanceof StringLiteral) {
                    expressionArr[i12] = ((StringLiteral) expression).extendWith((StringLiteral) expression2);
                    return;
                } else {
                    expressionArr[i12] = new BinaryExpression(expression, expression2, 14);
                    return;
                }
            }
            if (i10 != 15) {
                expressionArr[i12] = new BinaryExpression(expression, expression2, i10);
                return;
            }
        }
        this.intPtr--;
        expressionArr[i12] = new BinaryExpression(expression, expression2, i10);
    }

    public void consumeBlock() {
        Block block;
        int[] iArr = this.astLengthStack;
        int i10 = this.astLengthPtr;
        this.astLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 == 0) {
            block = new Block(0);
            int[] iArr2 = this.intStack;
            int i12 = this.intPtr;
            this.intPtr = i12 - 1;
            int i13 = iArr2[i12];
            block.sourceStart = i13;
            int i14 = this.endStatementPosition;
            block.sourceEnd = i14;
            if (!containsComment(i13, i14)) {
                block.bits |= 8;
            }
            this.realBlockPtr--;
        } else {
            int[] iArr3 = this.realBlockStack;
            int i15 = this.realBlockPtr;
            this.realBlockPtr = i15 - 1;
            Block block2 = new Block(iArr3[i15]);
            int i16 = this.astPtr - i11;
            this.astPtr = i16;
            Statement[] statementArr = new Statement[i11];
            block2.statements = statementArr;
            System.arraycopy(this.astStack, i16 + 1, statementArr, 0, i11);
            int[] iArr4 = this.intStack;
            int i17 = this.intPtr;
            this.intPtr = i17 - 1;
            block2.sourceStart = iArr4[i17];
            block2.sourceEnd = this.endStatementPosition;
            block = block2;
        }
        pushOnAstStack(block);
    }

    public void consumeBlockStatement() {
    }

    public void consumeBlockStatements() {
        concatNodeLists();
    }

    public void consumeCaseLabel() {
        Expression[] expressionArr;
        int[] iArr = this.expressionLengthStack;
        int i10 = this.expressionLengthPtr;
        this.expressionLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 != 0) {
            int i12 = this.expressionPtr - i11;
            this.expressionPtr = i12;
            expressionArr = new Expression[i11];
            System.arraycopy(this.expressionStack, i12 + 1, expressionArr, 0, i11);
        } else {
            expressionArr = null;
        }
        Expression expression = expressionArr[0];
        int i13 = expressionArr[i11 - 1].sourceEnd;
        int[] iArr2 = this.intStack;
        int i14 = this.intPtr;
        this.intPtr = i14 - 1;
        CaseStatement caseStatement = new CaseStatement(expression, i13, iArr2[i14]);
        if (expressionArr.length > 1) {
            if (this.parsingJava12Plus) {
                CompilerOptions compilerOptions = this.options;
                if (!compilerOptions.enablePreviewFeatures) {
                    problemReporter().previewFeatureNotEnabled(caseStatement.sourceStart, caseStatement.sourceEnd, "Multi constant case");
                } else if (compilerOptions.isAnyEnabled(IrritantSet.PREVIEW) && expressionArr.length > 1) {
                    problemReporter().previewFeatureUsed(caseStatement.sourceStart, caseStatement.sourceEnd);
                }
            } else {
                problemReporter().previewFeatureNotSupported(caseStatement.sourceStart, caseStatement.sourceEnd, "Multi constant case", "12");
            }
        }
        caseStatement.constantExpressions = expressionArr;
        if (hasLeadingTagComment(FALL_THROUGH_TAG, caseStatement.sourceStart)) {
            caseStatement.bits |= 536870912;
        }
        pushOnAstStack(caseStatement);
    }

    public void consumeCaseLabelExpr() {
        consumeCaseLabel();
        CaseStatement caseStatement = (CaseStatement) this.astStack[this.astPtr];
        if (this.parsingJava12Plus) {
            CompilerOptions compilerOptions = this.options;
            if (!compilerOptions.enablePreviewFeatures) {
                problemReporter().previewFeatureNotEnabled(caseStatement.sourceStart, caseStatement.sourceEnd, "Case Labels with '->'");
            } else if (compilerOptions.isAnyEnabled(IrritantSet.PREVIEW)) {
                problemReporter().previewFeatureUsed(caseStatement.sourceStart, caseStatement.sourceEnd);
            }
        } else {
            problemReporter().previewFeatureNotSupported(caseStatement.sourceStart, caseStatement.sourceEnd, "Case Labels with '->'", "12");
        }
        caseStatement.isExpr = true;
    }

    public void consumeCastExpressionLL1() {
        int i10 = this.expressionPtr - 1;
        this.expressionPtr = i10;
        Expression[] expressionArr = this.expressionStack;
        Expression[] expressionArr2 = this.expressionStack;
        int i11 = this.expressionPtr;
        Expression expression = expressionArr2[i11 + 1];
        CastExpression castExpression = new CastExpression(expression, (TypeReference) expressionArr2[i11]);
        expressionArr[i10] = castExpression;
        this.expressionLengthPtr--;
        updateSourcePosition(castExpression);
        castExpression.sourceEnd = expression.sourceEnd;
    }

    public void consumeCastExpressionLL1WithBounds() {
        Expression[] expressionArr = this.expressionStack;
        int i10 = this.expressionPtr;
        int i11 = i10 - 1;
        this.expressionPtr = i11;
        Expression expression = expressionArr[i10];
        int i12 = this.expressionLengthPtr - 1;
        this.expressionLengthPtr = i12;
        int i13 = this.expressionLengthStack[i12];
        TypeReference[] typeReferenceArr = new TypeReference[i13];
        int i14 = i11 - (i13 - 1);
        this.expressionPtr = i14;
        System.arraycopy(expressionArr, i14, typeReferenceArr, 0, i13);
        Expression[] expressionArr2 = this.expressionStack;
        int i15 = this.expressionPtr;
        CastExpression castExpression = new CastExpression(expression, createIntersectionCastTypeReference(typeReferenceArr));
        expressionArr2[i15] = castExpression;
        this.expressionLengthStack[this.expressionLengthPtr] = 1;
        updateSourcePosition(castExpression);
        castExpression.sourceEnd = expression.sourceEnd;
    }

    public void consumeCastExpressionWithGenericsArray() {
        TypeReference[] typeReferenceArr;
        TypeReference typeReference;
        int[] iArr = this.genericsLengthStack;
        int i10 = this.genericsLengthPtr;
        this.genericsLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 > 0) {
            typeReferenceArr = new TypeReference[i11 + 1];
            int i12 = this.genericsPtr - i11;
            this.genericsPtr = i12;
            System.arraycopy(this.genericsStack, i12 + 1, typeReferenceArr, 1, i11);
        } else {
            typeReferenceArr = null;
        }
        int[] iArr2 = this.intStack;
        int i13 = this.intPtr;
        int i14 = i13 - 1;
        this.intPtr = i14;
        int i15 = iArr2[i13];
        this.intPtr = i13 - 2;
        int i16 = iArr2[i14];
        pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[this.identifierLengthPtr]);
        if (i11 > 0) {
            typeReferenceArr[0] = getTypeReference(i16);
            typeReference = createIntersectionCastTypeReference(typeReferenceArr);
        } else {
            typeReference = getTypeReference(i16);
        }
        Expression[] expressionArr = this.expressionStack;
        int i17 = this.expressionPtr;
        Expression expression = this.expressionStack[this.expressionPtr];
        CastExpression castExpression = new CastExpression(expression, typeReference);
        expressionArr[i17] = castExpression;
        int i18 = this.intPtr;
        int i19 = i18 - 1;
        this.intPtr = i19;
        typeReference.sourceEnd = i15 - 1;
        int[] iArr3 = this.intStack;
        this.intPtr = i18 - 2;
        int i20 = iArr3[i19];
        castExpression.sourceStart = i20;
        typeReference.sourceStart = i20 + 1;
        castExpression.sourceEnd = expression.sourceEnd;
    }

    public void consumeCastExpressionWithNameArray() {
        TypeReference[] typeReferenceArr;
        TypeReference typeReference;
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        int i11 = iArr[i10];
        int[] iArr2 = this.genericsLengthStack;
        int i12 = this.genericsLengthPtr;
        this.genericsLengthPtr = i12 - 1;
        int i13 = iArr2[i12];
        if (i13 > 0) {
            typeReferenceArr = new TypeReference[i13 + 1];
            int i14 = this.genericsPtr - i13;
            this.genericsPtr = i14;
            System.arraycopy(this.genericsStack, i14 + 1, typeReferenceArr, 1, i13);
        } else {
            typeReferenceArr = null;
        }
        pushOnGenericsLengthStack(0);
        pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[this.identifierLengthPtr]);
        if (i13 > 0) {
            int[] iArr3 = this.intStack;
            int i15 = this.intPtr;
            this.intPtr = i15 - 1;
            typeReferenceArr[0] = getTypeReference(iArr3[i15]);
            typeReference = createIntersectionCastTypeReference(typeReferenceArr);
        } else {
            int[] iArr4 = this.intStack;
            int i16 = this.intPtr;
            this.intPtr = i16 - 1;
            typeReference = getTypeReference(iArr4[i16]);
        }
        Expression[] expressionArr = this.expressionStack;
        int i17 = this.expressionPtr;
        Expression expression = this.expressionStack[this.expressionPtr];
        CastExpression castExpression = new CastExpression(expression, typeReference);
        expressionArr[i17] = castExpression;
        typeReference.sourceEnd = i11 - 1;
        int[] iArr5 = this.intStack;
        int i18 = this.intPtr;
        this.intPtr = i18 - 1;
        int i19 = iArr5[i18];
        castExpression.sourceStart = i19;
        typeReference.sourceStart = i19 + 1;
        castExpression.sourceEnd = expression.sourceEnd;
    }

    public void consumeCastExpressionWithPrimitiveType() {
        TypeReference[] typeReferenceArr;
        TypeReference typeReference;
        int[] iArr = this.genericsLengthStack;
        int i10 = this.genericsLengthPtr;
        this.genericsLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 > 0) {
            typeReferenceArr = new TypeReference[i11 + 1];
            int i12 = this.genericsPtr - i11;
            this.genericsPtr = i12;
            System.arraycopy(this.genericsStack, i12 + 1, typeReferenceArr, 1, i11);
        } else {
            typeReferenceArr = null;
        }
        int[] iArr2 = this.intStack;
        int i13 = this.intPtr;
        int i14 = i13 - 1;
        this.intPtr = i14;
        int i15 = iArr2[i13];
        if (i11 > 0) {
            this.intPtr = i13 - 2;
            typeReferenceArr[0] = getTypeReference(iArr2[i14]);
            typeReference = createIntersectionCastTypeReference(typeReferenceArr);
        } else {
            this.intPtr = i13 - 2;
            typeReference = getTypeReference(iArr2[i14]);
        }
        Expression[] expressionArr = this.expressionStack;
        int i16 = this.expressionPtr;
        Expression expression = this.expressionStack[this.expressionPtr];
        CastExpression castExpression = new CastExpression(expression, typeReference);
        expressionArr[i16] = castExpression;
        typeReference.sourceEnd = i15 - 1;
        int[] iArr3 = this.intStack;
        int i17 = this.intPtr;
        this.intPtr = i17 - 1;
        int i18 = iArr3[i17];
        castExpression.sourceStart = i18;
        typeReference.sourceStart = i18 + 1;
        castExpression.sourceEnd = expression.sourceEnd;
    }

    public void consumeCastExpressionWithQualifiedGenericsArray() {
        TypeReference[] typeReferenceArr;
        int[] iArr = this.genericsLengthStack;
        int i10 = this.genericsLengthPtr;
        this.genericsLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 > 0) {
            typeReferenceArr = new TypeReference[i11 + 1];
            int i12 = this.genericsPtr - i11;
            this.genericsPtr = i12;
            System.arraycopy(this.genericsStack, i12 + 1, typeReferenceArr, 1, i11);
        } else {
            typeReferenceArr = null;
        }
        int[] iArr2 = this.intStack;
        int i13 = this.intPtr;
        int i14 = i13 - 1;
        this.intPtr = i14;
        int i15 = iArr2[i13];
        this.intPtr = i13 - 2;
        int i16 = iArr2[i14];
        TypeReference computeQualifiedGenericsFromRightSide = computeQualifiedGenericsFromRightSide(getTypeReference(0), i16, i16 != 0 ? getAnnotationsOnDimensions(i16) : null);
        if (i11 > 0) {
            typeReferenceArr[0] = computeQualifiedGenericsFromRightSide;
            computeQualifiedGenericsFromRightSide = createIntersectionCastTypeReference(typeReferenceArr);
        }
        this.intPtr--;
        Expression[] expressionArr = this.expressionStack;
        int i17 = this.expressionPtr;
        Expression expression = this.expressionStack[this.expressionPtr];
        CastExpression castExpression = new CastExpression(expression, computeQualifiedGenericsFromRightSide);
        expressionArr[i17] = castExpression;
        computeQualifiedGenericsFromRightSide.sourceEnd = i15 - 1;
        int[] iArr3 = this.intStack;
        int i18 = this.intPtr;
        this.intPtr = i18 - 1;
        int i19 = iArr3[i18];
        castExpression.sourceStart = i19;
        computeQualifiedGenericsFromRightSide.sourceStart = i19 + 1;
        castExpression.sourceEnd = expression.sourceEnd;
    }

    public void consumeCatchFormalParameter() {
        TypeReference typeReference;
        this.identifierLengthPtr--;
        char[][] cArr = this.identifierStack;
        int i10 = this.identifierPtr;
        char[] cArr2 = cArr[i10];
        long[] jArr = this.identifierPositionStack;
        this.identifierPtr = i10 - 1;
        long j10 = jArr[i10];
        int[] iArr = this.intStack;
        int i11 = this.intPtr;
        this.intPtr = i11 - 1;
        int i12 = iArr[i11];
        ASTNode[] aSTNodeArr = this.astStack;
        int i13 = this.astPtr;
        this.astPtr = i13 - 1;
        TypeReference typeReference2 = (TypeReference) aSTNodeArr[i13];
        if (i12 > 0) {
            TypeReference augmentTypeWithAdditionalDimensions = augmentTypeWithAdditionalDimensions(typeReference2, i12, null, false);
            augmentTypeWithAdditionalDimensions.sourceEnd = this.endPosition;
            if (augmentTypeWithAdditionalDimensions instanceof UnionTypeReference) {
                problemReporter().illegalArrayOfUnionType(cArr2, augmentTypeWithAdditionalDimensions);
            }
            typeReference = augmentTypeWithAdditionalDimensions;
        } else {
            typeReference = typeReference2;
        }
        this.astLengthPtr--;
        int[] iArr2 = this.intStack;
        int i14 = this.intPtr;
        this.intPtr = i14 - 1;
        int i15 = iArr2[i14];
        this.intPtr = i14 - 2;
        Argument argument = new Argument(cArr2, j10, typeReference, (-1048577) & this.intStack[this.intPtr + 1]);
        argument.bits &= -5;
        argument.declarationSourceStart = i15;
        int[] iArr3 = this.expressionLengthStack;
        int i16 = this.expressionLengthPtr;
        this.expressionLengthPtr = i16 - 1;
        int i17 = iArr3[i16];
        if (i17 != 0) {
            Expression[] expressionArr = this.expressionStack;
            int i18 = this.expressionPtr - i17;
            this.expressionPtr = i18;
            Annotation[] annotationArr = new Annotation[i17];
            argument.annotations = annotationArr;
            System.arraycopy(expressionArr, i18 + 1, annotationArr, 0, i17);
        }
        pushOnAstStack(argument);
        this.listLength++;
    }

    public void consumeCatchHeader() {
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement == null) {
            return;
        }
        if (!(recoveredElement instanceof RecoveredBlock)) {
            if (!(recoveredElement instanceof RecoveredMethod)) {
                return;
            }
            RecoveredMethod recoveredMethod = (RecoveredMethod) recoveredElement;
            if (recoveredMethod.methodBody != null || recoveredMethod.bracketBalance <= 0) {
                return;
            }
        }
        ASTNode[] aSTNodeArr = this.astStack;
        int i10 = this.astPtr;
        this.astPtr = i10 - 1;
        Argument argument = (Argument) aSTNodeArr[i10];
        LocalDeclaration localDeclaration = new LocalDeclaration(argument.name, argument.sourceStart, argument.sourceEnd);
        localDeclaration.type = argument.type;
        localDeclaration.declarationSourceStart = argument.declarationSourceStart;
        localDeclaration.declarationSourceEnd = argument.declarationSourceEnd;
        this.currentElement = this.currentElement.add(localDeclaration, 0);
        this.lastCheckPoint = this.scanner.startPosition;
        this.restartRecovery = true;
        this.lastIgnoredToken = -1;
    }

    public void consumeCatchType() {
        int[] iArr = this.astLengthStack;
        int i10 = this.astLengthPtr;
        this.astLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 == 1) {
            pushOnAstLengthStack(1);
            return;
        }
        ASTNode[] aSTNodeArr = this.astStack;
        int i12 = this.astPtr - i11;
        this.astPtr = i12;
        TypeReference[] typeReferenceArr = new TypeReference[i11];
        System.arraycopy(aSTNodeArr, i12 + 1, typeReferenceArr, 0, i11);
        UnionTypeReference unionTypeReference = new UnionTypeReference(typeReferenceArr);
        pushOnAstStack(unionTypeReference);
        if (this.options.sourceLevel < ClassFileConstants.JDK1_7) {
            problemReporter().multiCatchNotBelow17(unionTypeReference);
        }
    }

    public void consumeCatches() {
        optimizedConcatNodeLists();
    }

    public void consumeClassBodyDeclaration() {
        this.nestedMethod[this.nestedType] = r0[r1] - 1;
        ASTNode[] aSTNodeArr = this.astStack;
        int i10 = this.astPtr;
        int i11 = i10 - 1;
        this.astPtr = i11;
        Block block = (Block) aSTNodeArr[i10];
        this.astLengthPtr--;
        if (this.diet) {
            block.bits &= -9;
        }
        Initializer initializer = (Initializer) aSTNodeArr[i11];
        int i12 = block.sourceStart;
        initializer.sourceStart = i12;
        initializer.declarationSourceStart = i12;
        initializer.block = block;
        int i13 = this.intPtr;
        int[] iArr = this.intStack;
        int i14 = i13 - 2;
        this.intPtr = i14;
        initializer.bodyStart = iArr[i13 - 1];
        this.realBlockPtr--;
        this.intPtr = i13 - 3;
        int i15 = iArr[i14];
        if (i15 != -1) {
            initializer.declarationSourceStart = i15;
            initializer.javadoc = this.javadoc;
            this.javadoc = null;
        }
        initializer.bodyEnd = this.endPosition;
        int i16 = this.endStatementPosition;
        initializer.sourceEnd = i16;
        initializer.declarationSourceEnd = flushCommentsDefinedPriorTo(i16);
    }

    public void consumeClassBodyDeclarations() {
        concatNodeLists();
    }

    public void consumeClassBodyDeclarationsopt() {
        this.nestedType--;
    }

    public void consumeClassBodyopt() {
        pushOnAstStack(null);
        this.endPosition = this.rParenPos;
    }

    public void consumeClassDeclaration() {
        int kind;
        boolean z10;
        int[] iArr = this.astLengthStack;
        int i10 = this.astLengthPtr;
        this.astLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 != 0) {
            dispatchDeclarationInto(i11);
        }
        TypeDeclaration typeDeclaration = (TypeDeclaration) this.astStack[this.astPtr];
        if (!typeDeclaration.checkConstructors(this) && ((kind = TypeDeclaration.kind(typeDeclaration.modifiers)) == 1 || kind == 3)) {
            if (this.diet) {
                for (int i12 = this.nestedType; i12 > 0; i12--) {
                    if (this.variablesCounter[i12] > 0) {
                        z10 = true;
                        break;
                    }
                }
            }
            z10 = false;
            typeDeclaration.createDefaultConstructor((this.diet && this.dietInt == 0 && !z10) ? false : true, true);
        }
        if (this.scanner.containsAssertKeyword) {
            typeDeclaration.bits |= 1;
        }
        typeDeclaration.addClinit();
        int i13 = this.endStatementPosition;
        typeDeclaration.bodyEnd = i13;
        if (i11 == 0 && !containsComment(typeDeclaration.bodyStart, i13)) {
            typeDeclaration.bits |= 8;
        }
        typeDeclaration.declarationSourceEnd = flushCommentsDefinedPriorTo(this.endStatementPosition);
    }

    public void consumeClassHeader() {
        TypeDeclaration typeDeclaration = (TypeDeclaration) this.astStack[this.astPtr];
        if (this.currentToken == 49) {
            typeDeclaration.bodyStart = this.scanner.currentPosition;
        }
        if (this.currentElement != null) {
            this.restartRecovery = true;
        }
        this.scanner.commentPtr = -1;
    }

    public void consumeClassHeaderExtends() {
        TypeReference typeReference = getTypeReference(0);
        TypeDeclaration typeDeclaration = (TypeDeclaration) this.astStack[this.astPtr];
        typeDeclaration.bits |= typeReference.bits & 1048576;
        typeDeclaration.superclass = typeReference;
        typeReference.bits |= 16;
        int i10 = typeReference.sourceEnd + 1;
        typeDeclaration.bodyStart = i10;
        if (this.currentElement != null) {
            this.lastCheckPoint = i10;
        }
    }

    public void consumeClassHeaderImplements() {
        int[] iArr = this.astLengthStack;
        int i10 = this.astLengthPtr;
        this.astLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        int i12 = this.astPtr - i11;
        this.astPtr = i12;
        ASTNode[] aSTNodeArr = this.astStack;
        TypeDeclaration typeDeclaration = (TypeDeclaration) aSTNodeArr[i12];
        TypeReference[] typeReferenceArr = new TypeReference[i11];
        typeDeclaration.superInterfaces = typeReferenceArr;
        System.arraycopy(aSTNodeArr, i12 + 1, typeReferenceArr, 0, i11);
        for (TypeReference typeReference : typeDeclaration.superInterfaces) {
            typeDeclaration.bits |= typeReference.bits & 1048576;
            typeReference.bits |= 16;
        }
        int i13 = typeDeclaration.superInterfaces[i11 - 1].sourceEnd + 1;
        typeDeclaration.bodyStart = i13;
        this.listLength = 0;
        if (this.currentElement != null) {
            this.lastCheckPoint = i13;
        }
    }

    public void consumeClassHeaderName1() {
        CompilationUnitDeclaration compilationUnitDeclaration;
        TypeDeclaration typeDeclaration = new TypeDeclaration(this.compilationUnit.compilationResult);
        int[] iArr = this.nestedMethod;
        int i10 = this.nestedType;
        if (iArr[i10] != 0) {
            typeDeclaration.bits |= 256;
            markEnclosingMemberWithLocalType();
            blockReal();
        } else if (i10 != 0) {
            typeDeclaration.bits |= 1024;
        }
        long[] jArr = this.identifierPositionStack;
        int i11 = this.identifierPtr;
        long j10 = jArr[i11];
        typeDeclaration.sourceEnd = (int) j10;
        typeDeclaration.sourceStart = (int) (j10 >>> 32);
        char[][] cArr = this.identifierStack;
        this.identifierPtr = i11 - 1;
        char[] cArr2 = cArr[i11];
        typeDeclaration.name = cArr2;
        this.identifierLengthPtr--;
        int[] iArr2 = this.intStack;
        int i12 = this.intPtr;
        this.intPtr = i12 - 1;
        typeDeclaration.declarationSourceStart = iArr2[i12];
        int i13 = i12 - 3;
        this.intPtr = i13;
        int i14 = iArr2[i12 - 2];
        typeDeclaration.modifiersSourceStart = i14;
        this.intPtr = i12 - 4;
        typeDeclaration.modifiers = iArr2[i13];
        if (i14 >= 0) {
            typeDeclaration.declarationSourceStart = i14;
        }
        int i15 = typeDeclaration.bits;
        if ((i15 & 1024) == 0 && (i15 & 256) == 0 && (compilationUnitDeclaration = this.compilationUnit) != null && !CharOperation.equals(cArr2, compilationUnitDeclaration.getMainTypeName())) {
            typeDeclaration.bits |= 4096;
        }
        int[] iArr3 = this.expressionLengthStack;
        int i16 = this.expressionLengthPtr;
        this.expressionLengthPtr = i16 - 1;
        int i17 = iArr3[i16];
        if (i17 != 0) {
            Expression[] expressionArr = this.expressionStack;
            int i18 = this.expressionPtr - i17;
            this.expressionPtr = i18;
            Annotation[] annotationArr = new Annotation[i17];
            typeDeclaration.annotations = annotationArr;
            System.arraycopy(expressionArr, i18 + 1, annotationArr, 0, i17);
        }
        typeDeclaration.bodyStart = typeDeclaration.sourceEnd + 1;
        pushOnAstStack(typeDeclaration);
        this.listLength = 0;
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            this.lastCheckPoint = typeDeclaration.bodyStart;
            this.currentElement = recoveredElement.add(typeDeclaration, 0);
            this.lastIgnoredToken = -1;
        }
        typeDeclaration.javadoc = this.javadoc;
        this.javadoc = null;
    }

    public void consumeClassInstanceCreationExpression() {
        classInstanceCreation(false);
        consumeInvocationExpression();
    }

    public void consumeClassInstanceCreationExpressionName() {
        pushOnExpressionStack(getUnspecifiedReferenceOptimized());
    }

    public void consumeClassInstanceCreationExpressionQualified() {
        classInstanceCreation(true);
        Expression[] expressionArr = this.expressionStack;
        int i10 = this.expressionPtr;
        QualifiedAllocationExpression qualifiedAllocationExpression = (QualifiedAllocationExpression) expressionArr[i10];
        if (qualifiedAllocationExpression.anonymousType == null) {
            this.expressionLengthPtr--;
            int i11 = i10 - 1;
            this.expressionPtr = i11;
            qualifiedAllocationExpression.enclosingInstance = expressionArr[i11];
            expressionArr[i11] = qualifiedAllocationExpression;
        }
        qualifiedAllocationExpression.sourceStart = qualifiedAllocationExpression.enclosingInstance.sourceStart;
        consumeInvocationExpression();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x00da  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void consumeClassInstanceCreationExpressionQualifiedWithTypeArguments() {
        QualifiedAllocationExpression qualifiedAllocationExpression;
        int[] iArr = this.astLengthStack;
        int i10 = this.astLengthPtr;
        this.astLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 == 1) {
            ASTNode[] aSTNodeArr = this.astStack;
            int i12 = this.astPtr;
            if (aSTNodeArr[i12] == null) {
                this.astPtr = i12 - 1;
                QualifiedAllocationExpression qualifiedAllocationExpression2 = new QualifiedAllocationExpression();
                qualifiedAllocationExpression2.sourceEnd = this.endPosition;
                int[] iArr2 = this.expressionLengthStack;
                int i13 = this.expressionLengthPtr;
                this.expressionLengthPtr = i13 - 1;
                int i14 = iArr2[i13];
                if (i14 != 0) {
                    int i15 = this.expressionPtr - i14;
                    this.expressionPtr = i15;
                    Expression[] expressionArr = new Expression[i14];
                    qualifiedAllocationExpression2.arguments = expressionArr;
                    System.arraycopy(this.expressionStack, i15 + 1, expressionArr, 0, i14);
                }
                TypeReference typeReference = getTypeReference(0);
                qualifiedAllocationExpression2.type = typeReference;
                checkForDiamond(typeReference);
                int[] iArr3 = this.genericsLengthStack;
                int i16 = this.genericsLengthPtr;
                this.genericsLengthPtr = i16 - 1;
                int i17 = iArr3[i16];
                int i18 = this.genericsPtr - i17;
                this.genericsPtr = i18;
                TypeReference[] typeReferenceArr = new TypeReference[i17];
                qualifiedAllocationExpression2.typeArguments = typeReferenceArr;
                System.arraycopy(this.genericsStack, i18 + 1, typeReferenceArr, 0, i17);
                int i19 = this.intPtr;
                int[] iArr4 = this.intStack;
                this.intPtr = i19 - 2;
                qualifiedAllocationExpression2.sourceStart = iArr4[i19 - 1];
                pushOnExpressionStack(qualifiedAllocationExpression2);
                Expression[] expressionArr2 = this.expressionStack;
                int i20 = this.expressionPtr;
                qualifiedAllocationExpression = (QualifiedAllocationExpression) expressionArr2[i20];
                if (qualifiedAllocationExpression.anonymousType == null) {
                    this.expressionLengthPtr--;
                    int i21 = i20 - 1;
                    this.expressionPtr = i21;
                    qualifiedAllocationExpression.enclosingInstance = expressionArr2[i21];
                    expressionArr2[i21] = qualifiedAllocationExpression;
                }
                qualifiedAllocationExpression.sourceStart = qualifiedAllocationExpression.enclosingInstance.sourceStart;
                consumeInvocationExpression();
            }
        }
        dispatchDeclarationInto(i11);
        TypeDeclaration typeDeclaration = (TypeDeclaration) this.astStack[this.astPtr];
        int i22 = this.endStatementPosition;
        typeDeclaration.declarationSourceEnd = i22;
        typeDeclaration.bodyEnd = i22;
        if (i11 == 0 && !containsComment(typeDeclaration.bodyStart, i22)) {
            typeDeclaration.bits |= 8;
        }
        this.astPtr--;
        this.astLengthPtr--;
        QualifiedAllocationExpression qualifiedAllocationExpression3 = typeDeclaration.allocation;
        if (qualifiedAllocationExpression3 != null) {
            qualifiedAllocationExpression3.sourceEnd = this.endStatementPosition;
            int[] iArr5 = this.genericsLengthStack;
            int i23 = this.genericsLengthPtr;
            this.genericsLengthPtr = i23 - 1;
            int i24 = iArr5[i23];
            int i25 = this.genericsPtr - i24;
            this.genericsPtr = i25;
            TypeReference[] typeReferenceArr2 = new TypeReference[i24];
            qualifiedAllocationExpression3.typeArguments = typeReferenceArr2;
            System.arraycopy(this.genericsStack, i25 + 1, typeReferenceArr2, 0, i24);
            int[] iArr6 = this.intStack;
            int i26 = this.intPtr;
            this.intPtr = i26 - 1;
            qualifiedAllocationExpression3.sourceStart = iArr6[i26];
            checkForDiamond(qualifiedAllocationExpression3.type);
        }
        Expression[] expressionArr22 = this.expressionStack;
        int i202 = this.expressionPtr;
        qualifiedAllocationExpression = (QualifiedAllocationExpression) expressionArr22[i202];
        if (qualifiedAllocationExpression.anonymousType == null) {
        }
        qualifiedAllocationExpression.sourceStart = qualifiedAllocationExpression.enclosingInstance.sourceStart;
        consumeInvocationExpression();
    }

    public void consumeClassInstanceCreationExpressionWithTypeArguments() {
        int[] iArr = this.astLengthStack;
        int i10 = this.astLengthPtr;
        this.astLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 == 1) {
            ASTNode[] aSTNodeArr = this.astStack;
            int i12 = this.astPtr;
            if (aSTNodeArr[i12] == null) {
                this.astPtr = i12 - 1;
                AllocationExpression allocationExpression = new AllocationExpression();
                allocationExpression.sourceEnd = this.endPosition;
                int[] iArr2 = this.expressionLengthStack;
                int i13 = this.expressionLengthPtr;
                this.expressionLengthPtr = i13 - 1;
                int i14 = iArr2[i13];
                if (i14 != 0) {
                    int i15 = this.expressionPtr - i14;
                    this.expressionPtr = i15;
                    Expression[] expressionArr = new Expression[i14];
                    allocationExpression.arguments = expressionArr;
                    System.arraycopy(this.expressionStack, i15 + 1, expressionArr, 0, i14);
                }
                TypeReference typeReference = getTypeReference(0);
                allocationExpression.type = typeReference;
                checkForDiamond(typeReference);
                int[] iArr3 = this.genericsLengthStack;
                int i16 = this.genericsLengthPtr;
                this.genericsLengthPtr = i16 - 1;
                int i17 = iArr3[i16];
                int i18 = this.genericsPtr - i17;
                this.genericsPtr = i18;
                TypeReference[] typeReferenceArr = new TypeReference[i17];
                allocationExpression.typeArguments = typeReferenceArr;
                System.arraycopy(this.genericsStack, i18 + 1, typeReferenceArr, 0, i17);
                int i19 = this.intPtr;
                int[] iArr4 = this.intStack;
                this.intPtr = i19 - 2;
                allocationExpression.sourceStart = iArr4[i19 - 1];
                pushOnExpressionStack(allocationExpression);
                consumeInvocationExpression();
            }
        }
        dispatchDeclarationInto(i11);
        TypeDeclaration typeDeclaration = (TypeDeclaration) this.astStack[this.astPtr];
        int i20 = this.endStatementPosition;
        typeDeclaration.declarationSourceEnd = i20;
        typeDeclaration.bodyEnd = i20;
        if (i11 == 0 && !containsComment(typeDeclaration.bodyStart, i20)) {
            typeDeclaration.bits |= 8;
        }
        this.astPtr--;
        this.astLengthPtr--;
        QualifiedAllocationExpression qualifiedAllocationExpression = typeDeclaration.allocation;
        if (qualifiedAllocationExpression != null) {
            qualifiedAllocationExpression.sourceEnd = this.endStatementPosition;
            int[] iArr5 = this.genericsLengthStack;
            int i21 = this.genericsLengthPtr;
            this.genericsLengthPtr = i21 - 1;
            int i22 = iArr5[i21];
            int i23 = this.genericsPtr - i22;
            this.genericsPtr = i23;
            TypeReference[] typeReferenceArr2 = new TypeReference[i22];
            qualifiedAllocationExpression.typeArguments = typeReferenceArr2;
            System.arraycopy(this.genericsStack, i23 + 1, typeReferenceArr2, 0, i22);
            int[] iArr6 = this.intStack;
            int i24 = this.intPtr;
            this.intPtr = i24 - 1;
            qualifiedAllocationExpression.sourceStart = iArr6[i24];
            checkForDiamond(qualifiedAllocationExpression.type);
        }
        consumeInvocationExpression();
    }

    public void consumeClassOrInterface() {
        int[] iArr = this.genericsIdentifiersLengthStack;
        int i10 = this.genericsIdentifiersLengthPtr;
        iArr[i10] = iArr[i10] + this.identifierLengthStack[this.identifierLengthPtr];
        pushOnGenericsLengthStack(0);
    }

    public void consumeClassOrInterfaceName() {
        pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[this.identifierLengthPtr]);
        pushOnGenericsLengthStack(0);
    }

    public void consumeClassTypeElt() {
        pushOnAstStack(getTypeReference(0));
        this.listLength++;
    }

    public void consumeClassTypeList() {
        optimizedConcatNodeLists();
    }

    public void consumeCompilationUnit() {
    }

    public void consumeConditionalExpression(int i10) {
        this.intPtr -= 2;
        int i11 = this.expressionPtr - 2;
        this.expressionPtr = i11;
        this.expressionLengthPtr -= 2;
        Expression[] expressionArr = this.expressionStack;
        Expression[] expressionArr2 = this.expressionStack;
        int i12 = this.expressionPtr;
        expressionArr[i11] = new ConditionalExpression(expressionArr2[i12], expressionArr2[i12 + 1], expressionArr2[i12 + 2]);
    }

    public void consumeConditionalExpressionWithName(int i10) {
        this.intPtr -= 2;
        pushOnExpressionStack(getUnspecifiedReferenceOptimized());
        int i11 = this.expressionPtr - 2;
        this.expressionPtr = i11;
        this.expressionLengthPtr -= 2;
        Expression[] expressionArr = this.expressionStack;
        Expression[] expressionArr2 = this.expressionStack;
        int i12 = this.expressionPtr;
        expressionArr[i11] = new ConditionalExpression(expressionArr2[i12 + 2], expressionArr2[i12], expressionArr2[i12 + 1]);
    }

    public void consumeConstantExpression() {
    }

    public void consumeConstantExpressions() {
        concatExpressionLists();
    }

    public void consumeConstructorBlockStatements() {
        concatNodeLists();
    }

    public void consumeConstructorBody() {
        this.nestedMethod[this.nestedType] = r0[r1] - 1;
    }

    public void consumeConstructorDeclaration() {
        Statement[] statementArr;
        this.intPtr -= 2;
        boolean z10 = true;
        this.realBlockPtr--;
        int[] iArr = this.astLengthStack;
        int i10 = this.astLengthPtr;
        this.astLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        ExplicitConstructorCall explicitConstructorCall = null;
        if (i11 != 0) {
            int i12 = this.astPtr - i11;
            this.astPtr = i12;
            if (!this.options.ignoreMethodBodies) {
                ASTNode[] aSTNodeArr = this.astStack;
                if (aSTNodeArr[i12 + 1] instanceof ExplicitConstructorCall) {
                    int i13 = i11 - 1;
                    Statement[] statementArr2 = new Statement[i13];
                    System.arraycopy(aSTNodeArr, i12 + 2, statementArr2, 0, i13);
                    explicitConstructorCall = (ExplicitConstructorCall) this.astStack[this.astPtr + 1];
                    statementArr = statementArr2;
                } else {
                    statementArr = new Statement[i11];
                    System.arraycopy(aSTNodeArr, i12 + 1, statementArr, 0, i11);
                    explicitConstructorCall = SuperReference.implicitSuperConstructorCall();
                }
            }
            statementArr = null;
        } else {
            if (this.diet) {
                for (int i14 = this.nestedType; i14 > 0; i14--) {
                    if (this.variablesCounter[i14] > 0) {
                        break;
                    }
                }
            }
            z10 = false;
            if (!this.options.ignoreMethodBodies && (!this.diet || z10)) {
                statementArr = null;
                explicitConstructorCall = SuperReference.implicitSuperConstructorCall();
            }
            statementArr = null;
        }
        ConstructorDeclaration constructorDeclaration = (ConstructorDeclaration) this.astStack[this.astPtr];
        constructorDeclaration.constructorCall = explicitConstructorCall;
        constructorDeclaration.statements = statementArr;
        if (explicitConstructorCall != null && explicitConstructorCall.sourceEnd == 0) {
            explicitConstructorCall.sourceEnd = constructorDeclaration.sourceEnd;
            explicitConstructorCall.sourceStart = constructorDeclaration.sourceStart;
        }
        if ((!this.diet || this.dietInt != 0) && statementArr == null && ((explicitConstructorCall == null || explicitConstructorCall.isImplicitSuper()) && !containsComment(constructorDeclaration.bodyStart, this.endPosition))) {
            constructorDeclaration.bits |= 8;
        }
        constructorDeclaration.bodyEnd = this.endPosition;
        constructorDeclaration.declarationSourceEnd = flushCommentsDefinedPriorTo(this.endStatementPosition);
    }

    public void consumeConstructorHeader() {
        RecoveredElement recoveredElement;
        AbstractMethodDeclaration abstractMethodDeclaration = (AbstractMethodDeclaration) this.astStack[this.astPtr];
        int i10 = this.currentToken;
        if (i10 == 49) {
            abstractMethodDeclaration.bodyStart = this.scanner.currentPosition;
        }
        RecoveredElement recoveredElement2 = this.currentElement;
        if (recoveredElement2 != null) {
            if (i10 == 26) {
                abstractMethodDeclaration.modifiers |= 16777216;
                int i11 = this.scanner.currentPosition;
                abstractMethodDeclaration.declarationSourceEnd = i11 - 1;
                abstractMethodDeclaration.bodyEnd = i11 - 1;
                if (recoveredElement2.parseTree() == abstractMethodDeclaration && (recoveredElement = this.currentElement.parent) != null) {
                    this.currentElement = recoveredElement;
                }
            }
            this.restartRecovery = true;
        }
    }

    public void consumeConstructorHeaderName() {
        if (this.currentElement != null && this.lastIgnoredToken == 36) {
            this.lastCheckPoint = this.scanner.startPosition;
            this.restartRecovery = true;
            return;
        }
        ConstructorDeclaration constructorDeclaration = new ConstructorDeclaration(this.compilationUnit.compilationResult);
        char[][] cArr = this.identifierStack;
        int i10 = this.identifierPtr;
        constructorDeclaration.selector = cArr[i10];
        long[] jArr = this.identifierPositionStack;
        this.identifierPtr = i10 - 1;
        long j10 = jArr[i10];
        this.identifierLengthPtr--;
        int[] iArr = this.intStack;
        int i11 = this.intPtr;
        int i12 = i11 - 1;
        this.intPtr = i12;
        constructorDeclaration.declarationSourceStart = iArr[i11];
        this.intPtr = i11 - 2;
        constructorDeclaration.modifiers = iArr[i12];
        int[] iArr2 = this.expressionLengthStack;
        int i13 = this.expressionLengthPtr;
        this.expressionLengthPtr = i13 - 1;
        int i14 = iArr2[i13];
        if (i14 != 0) {
            Expression[] expressionArr = this.expressionStack;
            int i15 = this.expressionPtr - i14;
            this.expressionPtr = i15;
            Annotation[] annotationArr = new Annotation[i14];
            constructorDeclaration.annotations = annotationArr;
            System.arraycopy(expressionArr, i15 + 1, annotationArr, 0, i14);
        }
        constructorDeclaration.javadoc = this.javadoc;
        this.javadoc = null;
        constructorDeclaration.sourceStart = (int) (j10 >>> 32);
        pushOnAstStack(constructorDeclaration);
        int i16 = this.lParenPos;
        constructorDeclaration.sourceEnd = i16;
        int i17 = i16 + 1;
        constructorDeclaration.bodyStart = i17;
        this.listLength = 0;
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            this.lastCheckPoint = i17;
            if ((!(recoveredElement instanceof RecoveredType) || this.lastIgnoredToken == 1) && constructorDeclaration.modifiers == 0) {
                return;
            }
            this.currentElement = recoveredElement.add(constructorDeclaration, 0);
            this.lastIgnoredToken = -1;
        }
    }

    public void consumeConstructorHeaderNameWithTypeParameters() {
        if (this.currentElement != null && this.lastIgnoredToken == 36) {
            this.lastCheckPoint = this.scanner.startPosition;
            this.restartRecovery = true;
            return;
        }
        ConstructorDeclaration constructorDeclaration = new ConstructorDeclaration(this.compilationUnit.compilationResult);
        char[][] cArr = this.identifierStack;
        int i10 = this.identifierPtr;
        constructorDeclaration.selector = cArr[i10];
        long[] jArr = this.identifierPositionStack;
        this.identifierPtr = i10 - 1;
        long j10 = jArr[i10];
        this.identifierLengthPtr--;
        int[] iArr = this.genericsLengthStack;
        int i11 = this.genericsLengthPtr;
        this.genericsLengthPtr = i11 - 1;
        int i12 = iArr[i11];
        int i13 = this.genericsPtr - i12;
        this.genericsPtr = i13;
        TypeParameter[] typeParameterArr = new TypeParameter[i12];
        constructorDeclaration.typeParameters = typeParameterArr;
        System.arraycopy(this.genericsStack, i13 + 1, typeParameterArr, 0, i12);
        int[] iArr2 = this.intStack;
        int i14 = this.intPtr;
        int i15 = i14 - 1;
        this.intPtr = i15;
        constructorDeclaration.declarationSourceStart = iArr2[i14];
        this.intPtr = i14 - 2;
        constructorDeclaration.modifiers = iArr2[i15];
        int[] iArr3 = this.expressionLengthStack;
        int i16 = this.expressionLengthPtr;
        this.expressionLengthPtr = i16 - 1;
        int i17 = iArr3[i16];
        if (i17 != 0) {
            Expression[] expressionArr = this.expressionStack;
            int i18 = this.expressionPtr - i17;
            this.expressionPtr = i18;
            Annotation[] annotationArr = new Annotation[i17];
            constructorDeclaration.annotations = annotationArr;
            System.arraycopy(expressionArr, i18 + 1, annotationArr, 0, i17);
        }
        constructorDeclaration.javadoc = this.javadoc;
        this.javadoc = null;
        constructorDeclaration.sourceStart = (int) (j10 >>> 32);
        pushOnAstStack(constructorDeclaration);
        int i19 = this.lParenPos;
        constructorDeclaration.sourceEnd = i19;
        int i20 = i19 + 1;
        constructorDeclaration.bodyStart = i20;
        this.listLength = 0;
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            this.lastCheckPoint = i20;
            if ((!(recoveredElement instanceof RecoveredType) || this.lastIgnoredToken == 1) && constructorDeclaration.modifiers == 0) {
                return;
            }
            this.currentElement = recoveredElement.add(constructorDeclaration, 0);
            this.lastIgnoredToken = -1;
        }
    }

    public void consumeCreateInitializer() {
        pushOnAstStack(new Initializer(null, 0));
    }

    public void consumeDefaultLabel() {
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        int i11 = i10 - 1;
        this.intPtr = i11;
        int i12 = iArr[i10];
        this.intPtr = i10 - 2;
        CaseStatement caseStatement = new CaseStatement(null, i12, iArr[i11]);
        if (hasLeadingTagComment(FALL_THROUGH_TAG, caseStatement.sourceStart)) {
            caseStatement.bits |= 536870912;
        }
        if (hasLeadingTagComment(CASES_OMITTED_TAG, caseStatement.sourceStart)) {
            caseStatement.bits |= 1073741824;
        }
        pushOnAstStack(caseStatement);
    }

    public void consumeDefaultLabelExpr() {
        consumeDefaultLabel();
        CaseStatement caseStatement = (CaseStatement) this.astStack[this.astPtr];
        if (this.parsingJava12Plus) {
            CompilerOptions compilerOptions = this.options;
            if (!compilerOptions.enablePreviewFeatures) {
                problemReporter().previewFeatureNotEnabled(caseStatement.sourceStart, caseStatement.sourceEnd, "Case Labels with '->'");
            } else if (compilerOptions.isAnyEnabled(IrritantSet.PREVIEW)) {
                problemReporter().previewFeatureUsed(caseStatement.sourceStart, caseStatement.sourceEnd);
            }
        } else {
            problemReporter().previewFeatureNotSupported(caseStatement.sourceStart, caseStatement.sourceEnd, "Case Labels with '->'", "12");
        }
        caseStatement.isExpr = true;
    }

    public void consumeDefaultModifiers() {
        checkComment();
        pushOnIntStack(this.modifiers);
        int i10 = this.modifiersSourceStart;
        if (i10 < 0) {
            i10 = this.scanner.startPosition;
        }
        pushOnIntStack(i10);
        resetModifiers();
        pushOnExpressionStackLengthStack(0);
    }

    public void consumeDiet() {
        checkComment();
        pushOnIntStack(this.modifiersSourceStart);
        resetModifiers();
        jumpOverMethodBody();
    }

    public void consumeDimWithOrWithOutExpr() {
        pushOnExpressionStack(null);
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement == null || this.currentToken != 49) {
            return;
        }
        this.ignoreNextOpeningBrace = true;
        recoveredElement.bracketBalance++;
    }

    public void consumeDimWithOrWithOutExprs() {
        concatExpressionLists();
    }

    public void consumeDims() {
        pushOnIntStack(this.dimensions);
        this.dimensions = 0;
    }

    public void consumeElidedLeftBraceAndReturn() {
        int[] iArr = this.stateStackLengthStack;
        int length = iArr.length;
        int i10 = this.valueLambdaNestDepth + 1;
        this.valueLambdaNestDepth = i10;
        if (i10 >= length) {
            int[] iArr2 = new int[length + 4];
            this.stateStackLengthStack = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, length);
        }
        this.stateStackLengthStack[this.valueLambdaNestDepth] = this.stateStackTop;
    }

    public void consumeEmptyAnnotationTypeMemberDeclarationsopt() {
        pushOnAstLengthStack(0);
    }

    public void consumeEmptyArgumentListopt() {
        pushOnExpressionStackLengthStack(0);
    }

    public void consumeEmptyArguments() {
        pushOnIntStack(((FieldDeclaration) this.astStack[this.astPtr]).sourceEnd);
        pushOnExpressionStackLengthStack(0);
    }

    public void consumeEmptyArrayInitializer() {
        arrayInitializer(0);
    }

    public void consumeEmptyArrayInitializeropt() {
        pushOnExpressionStackLengthStack(0);
    }

    public void consumeEmptyBlockStatementsopt() {
        pushOnAstLengthStack(0);
    }

    public void consumeEmptyCatchesopt() {
        pushOnAstLengthStack(0);
    }

    public void consumeEmptyClassBodyDeclarationsopt() {
        pushOnAstLengthStack(0);
    }

    public void consumeEmptyDimsopt() {
        pushOnIntStack(0);
    }

    public void consumeEmptyEnumDeclarations() {
        pushOnAstLengthStack(0);
    }

    public void consumeEmptyExpression() {
        pushOnExpressionStackLengthStack(0);
    }

    public void consumeEmptyForInitopt() {
        pushOnAstLengthStack(0);
        this.forStartPosition = 0;
    }

    public void consumeEmptyForUpdateopt() {
        pushOnExpressionStackLengthStack(0);
    }

    public void consumeEmptyInterfaceMemberDeclarationsopt() {
        pushOnAstLengthStack(0);
    }

    public void consumeEmptyInternalCompilationUnit() {
        if (this.compilationUnit.isPackageInfo()) {
            CompilationUnitDeclaration compilationUnitDeclaration = this.compilationUnit;
            compilationUnitDeclaration.types = new TypeDeclaration[1];
            compilationUnitDeclaration.createPackageInfoType();
        }
    }

    public void consumeEmptyMemberValueArrayInitializer() {
        arrayInitializer(0);
    }

    public void consumeEmptyMemberValuePairsopt() {
        pushOnAstLengthStack(0);
    }

    public void consumeEmptyMethodHeaderDefaultValue() {
        if (((AbstractMethodDeclaration) this.astStack[this.astPtr]).isAnnotationMethod()) {
            pushOnExpressionStackLengthStack(0);
        }
        this.recordStringLiterals = true;
    }

    public void consumeEmptyModuleStatementsOpt() {
        pushOnAstLengthStack(0);
    }

    public void consumeEmptyStatement() {
        char c10;
        int hexadecimalValue;
        int hexadecimalValue2;
        int hexadecimalValue3;
        int hexadecimalValue4;
        char[] cArr = this.scanner.source;
        int i10 = this.endStatementPosition;
        if (cArr[i10] == ';') {
            int i11 = this.endStatementPosition;
            pushOnAstStack(new EmptyStatement(i11, i11));
            return;
        }
        if (cArr.length > 5) {
            int i12 = i10 - 4;
            while (true) {
                c10 = cArr[i12];
                if (c10 != 'u') {
                    break;
                } else {
                    i12--;
                }
            }
            if (c10 == '\\' && (hexadecimalValue = ScannerHelper.getHexadecimalValue(cArr[this.endStatementPosition - 3])) <= 15 && hexadecimalValue >= 0 && (hexadecimalValue2 = ScannerHelper.getHexadecimalValue(cArr[this.endStatementPosition - 2])) <= 15 && hexadecimalValue2 >= 0 && (hexadecimalValue3 = ScannerHelper.getHexadecimalValue(cArr[this.endStatementPosition - 1])) <= 15 && hexadecimalValue3 >= 0 && (hexadecimalValue4 = ScannerHelper.getHexadecimalValue(cArr[this.endStatementPosition])) <= 15 && hexadecimalValue4 >= 0 && ((char) ((((((hexadecimalValue * 16) + hexadecimalValue2) * 16) + hexadecimalValue3) * 16) + hexadecimalValue4)) == ';') {
                pushOnAstStack(new EmptyStatement(i12, this.endStatementPosition));
                return;
            }
        }
        pushOnAstStack(new EmptyStatement(this.endPosition + 1, this.endStatementPosition));
    }

    public void consumeEmptySwitchBlock() {
        pushOnAstLengthStack(0);
    }

    public void consumeEmptyTypeArguments() {
        pushOnGenericsLengthStack(0);
    }

    public void consumeEmptyTypeDeclaration() {
        pushOnAstLengthStack(0);
        if (!this.statementRecoveryActivated) {
            problemReporter().superfluousSemicolon(this.endPosition + 1, this.endStatementPosition);
        }
        flushCommentsDefinedPriorTo(this.endStatementPosition);
    }

    public void consumeEnhancedForStatement() {
        this.astLengthPtr--;
        ASTNode[] aSTNodeArr = this.astStack;
        int i10 = this.astPtr;
        int i11 = i10 - 1;
        this.astPtr = i11;
        Statement statement = (Statement) aSTNodeArr[i10];
        ForeachStatement foreachStatement = (ForeachStatement) aSTNodeArr[i11];
        foreachStatement.action = statement;
        if (statement instanceof EmptyStatement) {
            statement.bits |= 1;
        }
        foreachStatement.sourceEnd = this.endStatementPosition;
    }

    public void consumeEnhancedForStatementHeader() {
        ForeachStatement foreachStatement = (ForeachStatement) this.astStack[this.astPtr];
        this.expressionLengthPtr--;
        Expression[] expressionArr = this.expressionStack;
        int i10 = this.expressionPtr;
        this.expressionPtr = i10 - 1;
        Expression expression = expressionArr[i10];
        foreachStatement.collection = expression;
        LocalDeclaration localDeclaration = foreachStatement.elementVariable;
        int i11 = expression.sourceEnd;
        localDeclaration.declarationSourceEnd = i11;
        localDeclaration.declarationEnd = i11;
        foreachStatement.sourceEnd = this.rParenPos;
        if (this.statementRecoveryActivated || this.options.sourceLevel >= ClassFileConstants.JDK1_5 || this.lastErrorEndPositionBeforeRecovery >= this.scanner.currentPosition) {
            return;
        }
        problemReporter().invalidUsageOfForeachStatements(foreachStatement.elementVariable, expression);
    }

    public void consumeEnhancedForStatementHeaderInit(boolean z10) {
        int i10;
        int i11;
        char[][] cArr = this.identifierStack;
        int i12 = this.identifierPtr;
        char[] cArr2 = cArr[i12];
        long j10 = this.identifierPositionStack[i12];
        LocalDeclaration createLocalDeclaration = createLocalDeclaration(cArr2, (int) (j10 >>> 32), (int) j10);
        createLocalDeclaration.declarationSourceEnd = createLocalDeclaration.declarationEnd;
        createLocalDeclaration.bits |= 16;
        int[] iArr = this.intStack;
        int i13 = this.intPtr;
        this.intPtr = i13 - 1;
        int i14 = iArr[i13];
        Annotation[][] annotationsOnDimensions = i14 == 0 ? null : getAnnotationsOnDimensions(i14);
        this.identifierPtr--;
        this.identifierLengthPtr--;
        if (z10) {
            int[] iArr2 = this.intStack;
            int i15 = this.intPtr;
            int i16 = i15 - 1;
            this.intPtr = i16;
            i11 = iArr2[i15];
            this.intPtr = i15 - 2;
            i10 = iArr2[i16];
        } else {
            this.intPtr -= 2;
            i10 = 0;
            i11 = 0;
        }
        int[] iArr3 = this.intStack;
        int i17 = this.intPtr;
        this.intPtr = i17 - 1;
        TypeReference typeReference = getTypeReference(iArr3[i17]);
        int[] iArr4 = this.expressionLengthStack;
        int i18 = this.expressionLengthPtr;
        this.expressionLengthPtr = i18 - 1;
        int i19 = iArr4[i18];
        if (i19 != 0) {
            Expression[] expressionArr = this.expressionStack;
            int i20 = this.expressionPtr - i19;
            this.expressionPtr = i20;
            Annotation[] annotationArr = new Annotation[i19];
            createLocalDeclaration.annotations = annotationArr;
            System.arraycopy(expressionArr, i20 + 1, annotationArr, 0, i19);
            createLocalDeclaration.bits |= 1048576;
        }
        if (i14 != 0) {
            typeReference = augmentTypeWithAdditionalDimensions(typeReference, i14, annotationsOnDimensions, false);
        }
        if (z10) {
            createLocalDeclaration.declarationSourceStart = i11;
            createLocalDeclaration.modifiers = i10;
        } else {
            createLocalDeclaration.declarationSourceStart = typeReference.sourceStart;
        }
        createLocalDeclaration.type = typeReference;
        createLocalDeclaration.bits |= typeReference.bits & 1048576;
        int[] iArr5 = this.intStack;
        int i21 = this.intPtr;
        this.intPtr = i21 - 1;
        ForeachStatement foreachStatement = new ForeachStatement(createLocalDeclaration, iArr5[i21]);
        pushOnAstStack(foreachStatement);
        foreachStatement.sourceEnd = createLocalDeclaration.declarationSourceEnd;
        this.forStartPosition = 0;
    }

    public void consumeEnterAnonymousClassBody(boolean z10) {
        TypeReference typeReference = getTypeReference(0);
        TypeDeclaration typeDeclaration = new TypeDeclaration(this.compilationUnit.compilationResult);
        typeDeclaration.name = CharOperation.NO_CHAR;
        int i10 = typeDeclaration.bits | 768;
        typeDeclaration.bits = i10;
        typeDeclaration.bits = i10 | (typeReference.bits & 1048576);
        QualifiedAllocationExpression qualifiedAllocationExpression = new QualifiedAllocationExpression(typeDeclaration);
        markEnclosingMemberWithLocalType();
        pushOnAstStack(typeDeclaration);
        qualifiedAllocationExpression.sourceEnd = this.rParenPos;
        int[] iArr = this.expressionLengthStack;
        int i11 = this.expressionLengthPtr;
        this.expressionLengthPtr = i11 - 1;
        int i12 = iArr[i11];
        if (i12 != 0) {
            int i13 = this.expressionPtr - i12;
            this.expressionPtr = i13;
            Expression[] expressionArr = new Expression[i12];
            qualifiedAllocationExpression.arguments = expressionArr;
            System.arraycopy(this.expressionStack, i13 + 1, expressionArr, 0, i12);
        }
        if (z10) {
            this.expressionLengthPtr--;
            Expression[] expressionArr2 = this.expressionStack;
            int i14 = this.expressionPtr;
            this.expressionPtr = i14 - 1;
            qualifiedAllocationExpression.enclosingInstance = expressionArr2[i14];
        }
        qualifiedAllocationExpression.type = typeReference;
        typeDeclaration.sourceEnd = qualifiedAllocationExpression.sourceEnd;
        int i15 = typeReference.sourceStart;
        typeDeclaration.declarationSourceStart = i15;
        typeDeclaration.sourceStart = i15;
        int[] iArr2 = this.intStack;
        int i16 = this.intPtr;
        this.intPtr = i16 - 1;
        qualifiedAllocationExpression.sourceStart = iArr2[i16];
        pushOnExpressionStack(qualifiedAllocationExpression);
        Scanner scanner = this.scanner;
        int i17 = scanner.currentPosition;
        typeDeclaration.bodyStart = i17;
        this.listLength = 0;
        scanner.commentPtr = -1;
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            this.lastCheckPoint = i17;
            RecoveredElement add = recoveredElement.add(typeDeclaration, 0);
            this.currentElement = add;
            if (add instanceof RecoveredAnnotation) {
                this.ignoreNextOpeningBrace = true;
                add.bracketBalance++;
            } else if (isIndirectlyInsideLambdaExpression()) {
                this.ignoreNextOpeningBrace = true;
            } else {
                this.currentToken = 0;
            }
            this.lastIgnoredToken = -1;
        }
    }

    public void consumeEnterCompilationUnit() {
    }

    public void consumeEnterInstanceCreationArgumentList() {
    }

    public void consumeEnterMemberValue() {
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement == null || !(recoveredElement instanceof RecoveredAnnotation)) {
            return;
        }
        ((RecoveredAnnotation) recoveredElement).hasPendingMemberValueName = true;
    }

    public void consumeEnterMemberValueArrayInitializer() {
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            this.ignoreNextOpeningBrace = true;
            recoveredElement.bracketBalance++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0159, code lost:
    
        if (r1 != org.eclipse.jdt.internal.compiler.util.Util.getLineNumber((int) (r2 >>> 32), r5.lineEnds, 0, r5.linePtr)) goto L44;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void consumeEnterVariable() {
        TypeReference typeReference;
        char[][] cArr = this.identifierStack;
        int i10 = this.identifierPtr;
        char[] cArr2 = cArr[i10];
        long j10 = this.identifierPositionStack[i10];
        int[] iArr = this.intStack;
        int i11 = this.intPtr;
        this.intPtr = i11 - 1;
        int i12 = iArr[i11];
        Annotation[][] annotationsOnDimensions = i12 == 0 ? null : getAnnotationsOnDimensions(i12);
        boolean z10 = this.nestedMethod[this.nestedType] != 0;
        AbstractVariableDeclaration createLocalDeclaration = z10 ? createLocalDeclaration(cArr2, (int) (j10 >>> 32), (int) j10) : createFieldDeclaration(cArr2, (int) (j10 >>> 32), (int) j10);
        this.identifierPtr--;
        this.identifierLengthPtr--;
        int i13 = this.variablesCounter[this.nestedType];
        if (i13 == 0) {
            if (z10) {
                int[] iArr2 = this.intStack;
                int i14 = this.intPtr;
                int i15 = i14 - 1;
                this.intPtr = i15;
                createLocalDeclaration.declarationSourceStart = iArr2[i14];
                this.intPtr = i14 - 2;
                createLocalDeclaration.modifiers = iArr2[i15];
                int[] iArr3 = this.expressionLengthStack;
                int i16 = this.expressionLengthPtr;
                this.expressionLengthPtr = i16 - 1;
                int i17 = iArr3[i16];
                if (i17 != 0) {
                    Expression[] expressionArr = this.expressionStack;
                    int i18 = this.expressionPtr - i17;
                    this.expressionPtr = i18;
                    Annotation[] annotationArr = new Annotation[i17];
                    createLocalDeclaration.annotations = annotationArr;
                    System.arraycopy(expressionArr, i18 + 1, annotationArr, 0, i17);
                }
                int[] iArr4 = this.intStack;
                int i19 = this.intPtr;
                this.intPtr = i19 - 1;
                typeReference = getTypeReference(iArr4[i19]);
                if (createLocalDeclaration.declarationSourceStart == -1) {
                    createLocalDeclaration.declarationSourceStart = typeReference.sourceStart;
                }
                pushOnAstStack(typeReference);
            } else {
                int[] iArr5 = this.intStack;
                int i20 = this.intPtr;
                this.intPtr = i20 - 1;
                typeReference = getTypeReference(iArr5[i20]);
                pushOnAstStack(typeReference);
                int[] iArr6 = this.intStack;
                int i21 = this.intPtr;
                int i22 = i21 - 1;
                this.intPtr = i22;
                createLocalDeclaration.declarationSourceStart = iArr6[i21];
                this.intPtr = i21 - 2;
                createLocalDeclaration.modifiers = iArr6[i22];
                int[] iArr7 = this.expressionLengthStack;
                int i23 = this.expressionLengthPtr;
                this.expressionLengthPtr = i23 - 1;
                int i24 = iArr7[i23];
                if (i24 != 0) {
                    Expression[] expressionArr2 = this.expressionStack;
                    int i25 = this.expressionPtr - i24;
                    this.expressionPtr = i25;
                    Annotation[] annotationArr2 = new Annotation[i24];
                    createLocalDeclaration.annotations = annotationArr2;
                    System.arraycopy(expressionArr2, i25 + 1, annotationArr2, 0, i24);
                }
                ((FieldDeclaration) createLocalDeclaration).javadoc = this.javadoc;
            }
            this.javadoc = null;
        } else {
            ASTNode[] aSTNodeArr = this.astStack;
            int i26 = this.astPtr;
            typeReference = (TypeReference) aSTNodeArr[i26 - i13];
            AbstractVariableDeclaration abstractVariableDeclaration = (AbstractVariableDeclaration) aSTNodeArr[i26];
            createLocalDeclaration.declarationSourceStart = abstractVariableDeclaration.declarationSourceStart;
            createLocalDeclaration.modifiers = abstractVariableDeclaration.modifiers;
            Annotation[] annotationArr3 = abstractVariableDeclaration.annotations;
            if (annotationArr3 != null) {
                int length = annotationArr3.length;
                Annotation[] annotationArr4 = new Annotation[length];
                createLocalDeclaration.annotations = annotationArr4;
                System.arraycopy(annotationArr3, 0, annotationArr4, 0, length);
            }
            createLocalDeclaration.bits |= 4194304;
        }
        createLocalDeclaration.type = i12 == 0 ? typeReference : augmentTypeWithAdditionalDimensions(typeReference, i12, annotationsOnDimensions, false);
        createLocalDeclaration.bits |= typeReference.bits & 1048576;
        int[] iArr8 = this.variablesCounter;
        int i27 = this.nestedType;
        iArr8[i27] = iArr8[i27] + 1;
        pushOnAstStack(createLocalDeclaration);
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            if (!(recoveredElement instanceof RecoveredType)) {
                if (this.currentToken != 1) {
                    int i28 = createLocalDeclaration.type.sourceStart;
                    Scanner scanner = this.scanner;
                    int lineNumber = Util.getLineNumber(i28, scanner.lineEnds, 0, scanner.linePtr);
                    Scanner scanner2 = this.scanner;
                }
                this.lastCheckPoint = (int) (j10 >>> 32);
                this.restartRecovery = true;
                return;
            }
            if (z10) {
                LocalDeclaration localDeclaration = (LocalDeclaration) this.astStack[this.astPtr];
                this.lastCheckPoint = localDeclaration.sourceEnd + 1;
                this.currentElement = this.currentElement.add(localDeclaration, 0);
            } else {
                FieldDeclaration fieldDeclaration = (FieldDeclaration) this.astStack[this.astPtr];
                this.lastCheckPoint = fieldDeclaration.sourceEnd + 1;
                this.currentElement = this.currentElement.add(fieldDeclaration, 0);
            }
            this.lastIgnoredToken = -1;
        }
    }

    public void consumeEnumBodyNoConstants() {
    }

    public void consumeEnumBodyWithConstants() {
        concatNodeLists();
    }

    public void consumeEnumConstantHeader() {
        RecoveredType currentRecoveryType;
        FieldDeclaration fieldDeclaration = (FieldDeclaration) this.astStack[this.astPtr];
        boolean z10 = this.currentToken == 49;
        if (z10) {
            TypeDeclaration typeDeclaration = new TypeDeclaration(this.compilationUnit.compilationResult);
            typeDeclaration.name = CharOperation.NO_CHAR;
            typeDeclaration.bits |= 768;
            Scanner scanner = this.scanner;
            int i10 = scanner.startPosition;
            typeDeclaration.declarationSourceStart = i10;
            typeDeclaration.sourceStart = i10;
            typeDeclaration.sourceEnd = i10;
            typeDeclaration.modifiers = 0;
            typeDeclaration.bodyStart = scanner.currentPosition;
            markEnclosingMemberWithLocalType();
            consumeNestedType();
            int[] iArr = this.variablesCounter;
            int i11 = this.nestedType;
            iArr[i11] = iArr[i11] + 1;
            pushOnAstStack(typeDeclaration);
            QualifiedAllocationExpression qualifiedAllocationExpression = new QualifiedAllocationExpression(typeDeclaration);
            qualifiedAllocationExpression.enumConstant = fieldDeclaration;
            int[] iArr2 = this.expressionLengthStack;
            int i12 = this.expressionLengthPtr;
            this.expressionLengthPtr = i12 - 1;
            int i13 = iArr2[i12];
            if (i13 != 0) {
                int i14 = this.expressionPtr - i13;
                this.expressionPtr = i14;
                Expression[] expressionArr = new Expression[i13];
                qualifiedAllocationExpression.arguments = expressionArr;
                System.arraycopy(this.expressionStack, i14 + 1, expressionArr, 0, i13);
            }
            fieldDeclaration.initialization = qualifiedAllocationExpression;
        } else {
            AllocationExpression allocationExpression = new AllocationExpression();
            allocationExpression.enumConstant = fieldDeclaration;
            int[] iArr3 = this.expressionLengthStack;
            int i15 = this.expressionLengthPtr;
            this.expressionLengthPtr = i15 - 1;
            int i16 = iArr3[i15];
            if (i16 != 0) {
                int i17 = this.expressionPtr - i16;
                this.expressionPtr = i17;
                Expression[] expressionArr2 = new Expression[i16];
                allocationExpression.arguments = expressionArr2;
                System.arraycopy(this.expressionStack, i17 + 1, expressionArr2, 0, i16);
            }
            fieldDeclaration.initialization = allocationExpression;
        }
        fieldDeclaration.initialization.sourceStart = fieldDeclaration.declarationSourceStart;
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            if (!z10) {
                if (this.currentToken == 26 && (currentRecoveryType = currentRecoveryType()) != null) {
                    currentRecoveryType.insideEnumConstantPart = false;
                }
                this.lastCheckPoint = this.scanner.startPosition;
                this.lastIgnoredToken = -1;
                this.restartRecovery = true;
                return;
            }
            TypeDeclaration typeDeclaration2 = (TypeDeclaration) this.astStack[this.astPtr];
            this.currentElement = recoveredElement.add(typeDeclaration2, 0);
            this.lastCheckPoint = typeDeclaration2.bodyStart;
            this.lastIgnoredToken = -1;
            if (isIndirectlyInsideLambdaExpression()) {
                this.ignoreNextOpeningBrace = true;
            } else {
                this.currentToken = 0;
            }
        }
    }

    public void consumeEnumConstantHeaderName() {
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null && ((!(recoveredElement instanceof RecoveredType) && (!(recoveredElement instanceof RecoveredField) || ((RecoveredField) recoveredElement).fieldDeclaration.type != null)) || this.lastIgnoredToken == 1)) {
            this.lastCheckPoint = this.scanner.startPosition;
            this.restartRecovery = true;
            return;
        }
        long[] jArr = this.identifierPositionStack;
        int i10 = this.identifierPtr;
        long j10 = jArr[i10];
        FieldDeclaration createFieldDeclaration = createFieldDeclaration(this.identifierStack[i10], (int) (j10 >>> 32), (int) j10);
        this.identifierPtr--;
        this.identifierLengthPtr--;
        int[] iArr = this.intStack;
        int i11 = this.intPtr;
        int i12 = i11 - 1;
        this.intPtr = i12;
        int i13 = iArr[i11];
        createFieldDeclaration.modifiersSourceStart = i13;
        this.intPtr = i11 - 2;
        createFieldDeclaration.modifiers = iArr[i12];
        createFieldDeclaration.declarationSourceStart = i13;
        int[] iArr2 = this.expressionLengthStack;
        int i14 = this.expressionLengthPtr;
        this.expressionLengthPtr = i14 - 1;
        int i15 = iArr2[i14];
        if (i15 != 0) {
            Expression[] expressionArr = this.expressionStack;
            int i16 = this.expressionPtr - i15;
            this.expressionPtr = i16;
            Annotation[] annotationArr = new Annotation[i15];
            createFieldDeclaration.annotations = annotationArr;
            System.arraycopy(expressionArr, i16 + 1, annotationArr, 0, i15);
            createFieldDeclaration.bits |= 1048576;
        }
        pushOnAstStack(createFieldDeclaration);
        RecoveredElement recoveredElement2 = this.currentElement;
        if (recoveredElement2 != null) {
            this.lastCheckPoint = createFieldDeclaration.sourceEnd + 1;
            this.currentElement = recoveredElement2.add(createFieldDeclaration, 0);
        }
        createFieldDeclaration.javadoc = this.javadoc;
        this.javadoc = null;
    }

    public void consumeEnumConstantNoClassBody() {
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        int i11 = iArr[i10];
        FieldDeclaration fieldDeclaration = (FieldDeclaration) this.astStack[this.astPtr];
        fieldDeclaration.declarationEnd = i11;
        fieldDeclaration.declarationSourceEnd = i11;
        Expression expression = fieldDeclaration.initialization;
        if (expression != null) {
            expression.sourceEnd = i11;
        }
    }

    public void consumeEnumConstantWithClassBody() {
        int[] iArr = this.astLengthStack;
        int i10 = this.astLengthPtr;
        this.astLengthPtr = i10 - 1;
        dispatchDeclarationInto(iArr[i10]);
        ASTNode[] aSTNodeArr = this.astStack;
        int i11 = this.astPtr;
        this.astPtr = i11 - 1;
        TypeDeclaration typeDeclaration = (TypeDeclaration) aSTNodeArr[i11];
        this.astLengthPtr--;
        typeDeclaration.bodyEnd = this.endPosition;
        int flushCommentsDefinedPriorTo = flushCommentsDefinedPriorTo(this.endStatementPosition);
        typeDeclaration.declarationSourceEnd = flushCommentsDefinedPriorTo;
        FieldDeclaration fieldDeclaration = (FieldDeclaration) this.astStack[this.astPtr];
        fieldDeclaration.declarationEnd = this.endStatementPosition;
        fieldDeclaration.declarationSourceEnd = flushCommentsDefinedPriorTo;
        this.intPtr--;
        int[] iArr2 = this.variablesCounter;
        int i12 = this.nestedType;
        iArr2[i12] = 0;
        this.nestedType = i12 - 1;
        Expression expression = fieldDeclaration.initialization;
        if (expression != null) {
            expression.sourceEnd = flushCommentsDefinedPriorTo;
        }
    }

    public void consumeEnumConstants() {
        concatNodeLists();
    }

    public void consumeEnumDeclaration() {
        boolean z10;
        int[] iArr = this.astLengthStack;
        int i10 = this.astLengthPtr;
        this.astLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 != 0) {
            dispatchDeclarationIntoEnumDeclaration(i11);
        }
        TypeDeclaration typeDeclaration = (TypeDeclaration) this.astStack[this.astPtr];
        if (!typeDeclaration.checkConstructors(this)) {
            if (this.diet) {
                for (int i12 = this.nestedType; i12 > 0; i12--) {
                    if (this.variablesCounter[i12] > 0) {
                        z10 = true;
                        break;
                    }
                }
            }
            z10 = false;
            typeDeclaration.createDefaultConstructor(!this.diet || z10, true);
        }
        if (this.scanner.containsAssertKeyword) {
            typeDeclaration.bits |= 1;
        }
        typeDeclaration.addClinit();
        int i13 = this.endStatementPosition;
        typeDeclaration.bodyEnd = i13;
        if (i11 == 0 && !containsComment(typeDeclaration.bodyStart, i13)) {
            typeDeclaration.bits |= 8;
        }
        typeDeclaration.declarationSourceEnd = flushCommentsDefinedPriorTo(this.endStatementPosition);
    }

    public void consumeEnumDeclarations() {
    }

    public void consumeEnumHeader() {
        TypeDeclaration typeDeclaration = (TypeDeclaration) this.astStack[this.astPtr];
        if (this.currentToken == 49) {
            typeDeclaration.bodyStart = this.scanner.currentPosition;
        }
        if (this.currentElement != null) {
            this.restartRecovery = true;
        }
        this.scanner.commentPtr = -1;
    }

    public void consumeEnumHeaderName() {
        CompilationUnitDeclaration compilationUnitDeclaration;
        TypeDeclaration typeDeclaration = new TypeDeclaration(this.compilationUnit.compilationResult);
        int[] iArr = this.nestedMethod;
        int i10 = this.nestedType;
        if (iArr[i10] != 0) {
            blockReal();
        } else if (i10 != 0) {
            typeDeclaration.bits |= 1024;
        }
        long[] jArr = this.identifierPositionStack;
        int i11 = this.identifierPtr;
        long j10 = jArr[i11];
        typeDeclaration.sourceEnd = (int) j10;
        typeDeclaration.sourceStart = (int) (j10 >>> 32);
        char[][] cArr = this.identifierStack;
        this.identifierPtr = i11 - 1;
        char[] cArr2 = cArr[i11];
        typeDeclaration.name = cArr2;
        this.identifierLengthPtr--;
        int[] iArr2 = this.intStack;
        int i12 = this.intPtr;
        this.intPtr = i12 - 1;
        typeDeclaration.declarationSourceStart = iArr2[i12];
        int i13 = i12 - 3;
        this.intPtr = i13;
        int i14 = iArr2[i12 - 2];
        typeDeclaration.modifiersSourceStart = i14;
        this.intPtr = i12 - 4;
        typeDeclaration.modifiers = iArr2[i13] | 16384;
        if (i14 >= 0) {
            typeDeclaration.declarationSourceStart = i14;
        }
        int i15 = typeDeclaration.bits;
        if ((i15 & 1024) == 0 && (i15 & 256) == 0 && (compilationUnitDeclaration = this.compilationUnit) != null && !CharOperation.equals(cArr2, compilationUnitDeclaration.getMainTypeName())) {
            typeDeclaration.bits |= 4096;
        }
        int[] iArr3 = this.expressionLengthStack;
        int i16 = this.expressionLengthPtr;
        this.expressionLengthPtr = i16 - 1;
        int i17 = iArr3[i16];
        if (i17 != 0) {
            Expression[] expressionArr = this.expressionStack;
            int i18 = this.expressionPtr - i17;
            this.expressionPtr = i18;
            Annotation[] annotationArr = new Annotation[i17];
            typeDeclaration.annotations = annotationArr;
            System.arraycopy(expressionArr, i18 + 1, annotationArr, 0, i17);
        }
        typeDeclaration.bodyStart = typeDeclaration.sourceEnd + 1;
        pushOnAstStack(typeDeclaration);
        this.listLength = 0;
        if (!this.statementRecoveryActivated && this.options.sourceLevel < ClassFileConstants.JDK1_5 && this.lastErrorEndPositionBeforeRecovery < this.scanner.currentPosition) {
            problemReporter().invalidUsageOfEnumDeclarations(typeDeclaration);
        }
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            this.lastCheckPoint = typeDeclaration.bodyStart;
            this.currentElement = recoveredElement.add(typeDeclaration, 0);
            this.lastIgnoredToken = -1;
        }
        typeDeclaration.javadoc = this.javadoc;
        this.javadoc = null;
    }

    public void consumeEnumHeaderNameWithTypeParameters() {
        CompilationUnitDeclaration compilationUnitDeclaration;
        TypeDeclaration typeDeclaration = new TypeDeclaration(this.compilationUnit.compilationResult);
        int[] iArr = this.genericsLengthStack;
        int i10 = this.genericsLengthPtr;
        this.genericsLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        int i12 = this.genericsPtr - i11;
        this.genericsPtr = i12;
        TypeParameter[] typeParameterArr = new TypeParameter[i11];
        typeDeclaration.typeParameters = typeParameterArr;
        System.arraycopy(this.genericsStack, i12 + 1, typeParameterArr, 0, i11);
        problemReporter().invalidUsageOfTypeParametersForEnumDeclaration(typeDeclaration);
        typeDeclaration.bodyStart = typeDeclaration.typeParameters[i11 - 1].declarationSourceEnd + 1;
        this.listTypeParameterLength = 0;
        int[] iArr2 = this.nestedMethod;
        int i13 = this.nestedType;
        if (iArr2[i13] != 0) {
            blockReal();
        } else if (i13 != 0) {
            typeDeclaration.bits |= 1024;
        }
        long[] jArr = this.identifierPositionStack;
        int i14 = this.identifierPtr;
        long j10 = jArr[i14];
        typeDeclaration.sourceEnd = (int) j10;
        typeDeclaration.sourceStart = (int) (j10 >>> 32);
        char[][] cArr = this.identifierStack;
        this.identifierPtr = i14 - 1;
        char[] cArr2 = cArr[i14];
        typeDeclaration.name = cArr2;
        this.identifierLengthPtr--;
        int[] iArr3 = this.intStack;
        int i15 = this.intPtr;
        this.intPtr = i15 - 1;
        typeDeclaration.declarationSourceStart = iArr3[i15];
        int i16 = i15 - 3;
        this.intPtr = i16;
        int i17 = iArr3[i15 - 2];
        typeDeclaration.modifiersSourceStart = i17;
        this.intPtr = i15 - 4;
        typeDeclaration.modifiers = iArr3[i16] | 16384;
        if (i17 >= 0) {
            typeDeclaration.declarationSourceStart = i17;
        }
        int i18 = typeDeclaration.bits;
        if ((i18 & 1024) == 0 && (i18 & 256) == 0 && (compilationUnitDeclaration = this.compilationUnit) != null && !CharOperation.equals(cArr2, compilationUnitDeclaration.getMainTypeName())) {
            typeDeclaration.bits |= 4096;
        }
        int[] iArr4 = this.expressionLengthStack;
        int i19 = this.expressionLengthPtr;
        this.expressionLengthPtr = i19 - 1;
        int i20 = iArr4[i19];
        if (i20 != 0) {
            Expression[] expressionArr = this.expressionStack;
            int i21 = this.expressionPtr - i20;
            this.expressionPtr = i21;
            Annotation[] annotationArr = new Annotation[i20];
            typeDeclaration.annotations = annotationArr;
            System.arraycopy(expressionArr, i21 + 1, annotationArr, 0, i20);
        }
        typeDeclaration.bodyStart = typeDeclaration.sourceEnd + 1;
        pushOnAstStack(typeDeclaration);
        this.listLength = 0;
        if (!this.statementRecoveryActivated && this.options.sourceLevel < ClassFileConstants.JDK1_5 && this.lastErrorEndPositionBeforeRecovery < this.scanner.currentPosition) {
            problemReporter().invalidUsageOfEnumDeclarations(typeDeclaration);
        }
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            this.lastCheckPoint = typeDeclaration.bodyStart;
            this.currentElement = recoveredElement.add(typeDeclaration, 0);
            this.lastIgnoredToken = -1;
        }
        typeDeclaration.javadoc = this.javadoc;
        this.javadoc = null;
    }

    public void consumeEqualityExpression(int i10) {
        int i11 = this.expressionPtr - 1;
        this.expressionPtr = i11;
        this.expressionLengthPtr--;
        Expression[] expressionArr = this.expressionStack;
        Expression[] expressionArr2 = this.expressionStack;
        int i12 = this.expressionPtr;
        expressionArr[i11] = new EqualExpression(expressionArr2[i12], expressionArr2[i12 + 1], i10);
    }

    public void consumeEqualityExpressionWithName(int i10) {
        pushOnExpressionStack(getUnspecifiedReferenceOptimized());
        int i11 = this.expressionPtr - 1;
        this.expressionPtr = i11;
        this.expressionLengthPtr--;
        Expression[] expressionArr = this.expressionStack;
        Expression[] expressionArr2 = this.expressionStack;
        int i12 = this.expressionPtr;
        expressionArr[i11] = new EqualExpression(expressionArr2[i12 + 1], expressionArr2[i12], i10);
    }

    public void consumeExitMemberValue() {
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement == null || !(recoveredElement instanceof RecoveredAnnotation)) {
            return;
        }
        RecoveredAnnotation recoveredAnnotation = (RecoveredAnnotation) recoveredElement;
        recoveredAnnotation.hasPendingMemberValueName = false;
        recoveredAnnotation.memberValuPairEqualEnd = -1;
    }

    public void consumeExitTryBlock() {
        if (this.currentElement != null) {
            this.restartRecovery = true;
        }
    }

    public void consumeExitVariableWithInitialization() {
        this.expressionLengthPtr--;
        AbstractVariableDeclaration abstractVariableDeclaration = (AbstractVariableDeclaration) this.astStack[this.astPtr];
        Expression[] expressionArr = this.expressionStack;
        int i10 = this.expressionPtr;
        this.expressionPtr = i10 - 1;
        Expression expression = expressionArr[i10];
        abstractVariableDeclaration.initialization = expression;
        int i11 = expression.sourceEnd;
        abstractVariableDeclaration.declarationSourceEnd = i11;
        abstractVariableDeclaration.declarationEnd = i11;
        recoveryExitFromVariable();
    }

    public void consumeExitVariableWithoutInitialization() {
        int i10;
        AbstractVariableDeclaration abstractVariableDeclaration = (AbstractVariableDeclaration) this.astStack[this.astPtr];
        abstractVariableDeclaration.declarationSourceEnd = abstractVariableDeclaration.declarationEnd;
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null && (recoveredElement instanceof RecoveredField) && (i10 = this.endStatementPosition) > abstractVariableDeclaration.sourceEnd) {
            recoveredElement.updateSourceEndIfNecessary(i10);
        }
        recoveryExitFromVariable();
    }

    public void consumeExplicitConstructorInvocation(int i10, int i11) {
        int[] iArr = this.intStack;
        int i12 = this.intPtr;
        this.intPtr = i12 - 1;
        int i13 = iArr[i12];
        ExplicitConstructorCall explicitConstructorCall = new ExplicitConstructorCall(i11);
        int[] iArr2 = this.expressionLengthStack;
        int i14 = this.expressionLengthPtr;
        this.expressionLengthPtr = i14 - 1;
        int i15 = iArr2[i14];
        if (i15 != 0) {
            int i16 = this.expressionPtr - i15;
            this.expressionPtr = i16;
            Expression[] expressionArr = new Expression[i15];
            explicitConstructorCall.arguments = expressionArr;
            System.arraycopy(this.expressionStack, i16 + 1, expressionArr, 0, i15);
        }
        if (i10 == 0) {
            explicitConstructorCall.sourceStart = i13;
        } else if (i10 == 1) {
            this.expressionLengthPtr--;
            Expression[] expressionArr2 = this.expressionStack;
            int i17 = this.expressionPtr;
            this.expressionPtr = i17 - 1;
            Expression expression = expressionArr2[i17];
            explicitConstructorCall.qualification = expression;
            explicitConstructorCall.sourceStart = expression.sourceStart;
        } else if (i10 == 2) {
            NameReference unspecifiedReferenceOptimized = getUnspecifiedReferenceOptimized();
            explicitConstructorCall.qualification = unspecifiedReferenceOptimized;
            explicitConstructorCall.sourceStart = unspecifiedReferenceOptimized.sourceStart;
        }
        pushOnAstStack(explicitConstructorCall);
        explicitConstructorCall.sourceEnd = this.endStatementPosition;
    }

    public void consumeExplicitConstructorInvocationWithTypeArguments(int i10, int i11) {
        int[] iArr = this.intStack;
        int i12 = this.intPtr;
        this.intPtr = i12 - 1;
        int i13 = iArr[i12];
        ExplicitConstructorCall explicitConstructorCall = new ExplicitConstructorCall(i11);
        int[] iArr2 = this.expressionLengthStack;
        int i14 = this.expressionLengthPtr;
        this.expressionLengthPtr = i14 - 1;
        int i15 = iArr2[i14];
        if (i15 != 0) {
            int i16 = this.expressionPtr - i15;
            this.expressionPtr = i16;
            Expression[] expressionArr = new Expression[i15];
            explicitConstructorCall.arguments = expressionArr;
            System.arraycopy(this.expressionStack, i16 + 1, expressionArr, 0, i15);
        }
        int[] iArr3 = this.genericsLengthStack;
        int i17 = this.genericsLengthPtr;
        this.genericsLengthPtr = i17 - 1;
        int i18 = iArr3[i17];
        int i19 = this.genericsPtr - i18;
        this.genericsPtr = i19;
        TypeReference[] typeReferenceArr = new TypeReference[i18];
        explicitConstructorCall.typeArguments = typeReferenceArr;
        System.arraycopy(this.genericsStack, i19 + 1, typeReferenceArr, 0, i18);
        int[] iArr4 = this.intStack;
        int i20 = this.intPtr;
        this.intPtr = i20 - 1;
        explicitConstructorCall.typeArgumentsSourceStart = iArr4[i20];
        if (i10 == 0) {
            explicitConstructorCall.sourceStart = i13;
        } else if (i10 == 1) {
            this.expressionLengthPtr--;
            Expression[] expressionArr2 = this.expressionStack;
            int i21 = this.expressionPtr;
            this.expressionPtr = i21 - 1;
            Expression expression = expressionArr2[i21];
            explicitConstructorCall.qualification = expression;
            explicitConstructorCall.sourceStart = expression.sourceStart;
        } else if (i10 == 2) {
            NameReference unspecifiedReferenceOptimized = getUnspecifiedReferenceOptimized();
            explicitConstructorCall.qualification = unspecifiedReferenceOptimized;
            explicitConstructorCall.sourceStart = unspecifiedReferenceOptimized.sourceStart;
        }
        pushOnAstStack(explicitConstructorCall);
        explicitConstructorCall.sourceEnd = this.endStatementPosition;
    }

    public void consumeExplicitThisParameter(boolean z10) {
        pushOnExpressionStack(z10 ? getUnspecifiedReference(false) : null);
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        pushIdentifier(ConstantPool.This, (iArr[i10] << 32) + r7 + 3);
        pushOnIntStack(0);
        pushOnIntStack(0);
    }

    public void consumeExportsHeader() {
        ImportReference importReference = (ImportReference) this.astStack[this.astPtr];
        importReference.bits |= 262144;
        ExportsStatement exportsStatement = new ExportsStatement(importReference);
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        int i11 = iArr[i10];
        exportsStatement.declarationSourceStart = i11;
        exportsStatement.sourceStart = i11;
        int i12 = importReference.sourceEnd;
        exportsStatement.sourceEnd = i12;
        if (this.currentToken == 26) {
            exportsStatement.declarationSourceEnd = this.scanner.currentPosition - 1;
        } else {
            exportsStatement.declarationSourceEnd = i12;
        }
        int i13 = exportsStatement.declarationSourceEnd;
        exportsStatement.declarationEnd = i13;
        this.astStack[this.astPtr] = exportsStatement;
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement instanceof RecoveredModule) {
            this.lastCheckPoint = i13 + 1;
            this.currentElement = recoveredElement.add(exportsStatement, 0);
        }
    }

    public void consumeExportsStatement() {
        ExportsStatement exportsStatement = (ExportsStatement) this.astStack[this.astPtr];
        int i10 = this.endStatementPosition;
        exportsStatement.declarationSourceEnd = i10;
        exportsStatement.declarationEnd = i10;
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement instanceof RecoveredPackageVisibilityStatement) {
            this.lastCheckPoint = i10 + 1;
            this.currentElement = recoveredElement.parent;
            this.lastIgnoredToken = -1;
            this.restartRecovery = true;
        }
    }

    public void consumeExpression() {
        int i10 = this.valueLambdaNestDepth;
        if (i10 < 0 || this.stateStackLengthStack[i10] != this.stateStackTop - 1) {
            return;
        }
        this.valueLambdaNestDepth = i10 - 1;
        this.scanner.ungetToken(this.currentToken);
        this.currentToken = 68;
        Expression[] expressionArr = this.expressionStack;
        int i11 = this.expressionPtr;
        this.expressionPtr = i11 - 1;
        this.expressionLengthPtr--;
        pushOnAstStack(expressionArr[i11]);
    }

    public void consumeExpressionStatement() {
        this.expressionLengthPtr--;
        Expression[] expressionArr = this.expressionStack;
        int i10 = this.expressionPtr;
        this.expressionPtr = i10 - 1;
        Expression expression = expressionArr[i10];
        expression.statementEnd = this.endStatementPosition;
        expression.bits |= 1048576;
        pushOnAstStack(expression);
    }

    public void consumeFieldAccess(boolean z10) {
        char[][] cArr = this.identifierStack;
        int i10 = this.identifierPtr;
        char[] cArr2 = cArr[i10];
        long[] jArr = this.identifierPositionStack;
        this.identifierPtr = i10 - 1;
        FieldReference fieldReference = new FieldReference(cArr2, jArr[i10]);
        this.identifierLengthPtr--;
        if (z10) {
            int[] iArr = this.intStack;
            int i11 = this.intPtr;
            this.intPtr = i11 - 1;
            fieldReference.sourceStart = iArr[i11];
            fieldReference.receiver = new SuperReference(fieldReference.sourceStart, this.endPosition);
            pushOnExpressionStack(fieldReference);
            return;
        }
        Expression[] expressionArr = this.expressionStack;
        int i12 = this.expressionPtr;
        Expression expression = expressionArr[i12];
        fieldReference.receiver = expression;
        fieldReference.sourceStart = expression.sourceStart;
        expressionArr[i12] = fieldReference;
    }

    public void consumeFieldDeclaration() {
        int i10 = this.astLengthStack[this.astLengthPtr];
        for (int i11 = i10 - 1; i11 >= 0; i11--) {
            FieldDeclaration fieldDeclaration = (FieldDeclaration) this.astStack[this.astPtr - i11];
            int i12 = this.endStatementPosition;
            fieldDeclaration.declarationSourceEnd = i12;
            fieldDeclaration.declarationEnd = i12;
        }
        updateSourceDeclarationParts(i10);
        int flushCommentsDefinedPriorTo = flushCommentsDefinedPriorTo(this.endStatementPosition);
        if (flushCommentsDefinedPriorTo != this.endStatementPosition) {
            for (int i13 = 0; i13 < i10; i13++) {
                ((FieldDeclaration) this.astStack[this.astPtr - i13]).declarationSourceEnd = flushCommentsDefinedPriorTo;
            }
        }
        int i14 = this.astPtr - this.variablesCounter[this.nestedType];
        ASTNode[] aSTNodeArr = this.astStack;
        System.arraycopy(aSTNodeArr, i14 + 1, aSTNodeArr, i14, i10);
        this.astPtr--;
        int[] iArr = this.astLengthStack;
        int i15 = this.astLengthPtr - 1;
        this.astLengthPtr = i15;
        iArr[i15] = i10;
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            this.lastCheckPoint = flushCommentsDefinedPriorTo + 1;
            RecoveredElement recoveredElement2 = recoveredElement.parent;
            if (recoveredElement2 != null && (recoveredElement instanceof RecoveredField) && !(recoveredElement instanceof RecoveredInitializer)) {
                this.currentElement = recoveredElement2;
            }
            this.restartRecovery = true;
        }
        this.variablesCounter[this.nestedType] = 0;
    }

    public void consumeForInit() {
        pushOnAstLengthStack(-1);
        this.forStartPosition = 0;
    }

    public void consumeForceNoDiet() {
        this.dietInt++;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:46:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void consumeFormalParameter(boolean z10) {
        NameReference nameReference;
        int i10;
        Annotation[] annotationArr;
        TypeReference typeReference;
        Argument argument;
        int i11;
        int[] iArr = this.intStack;
        int i12 = this.intPtr;
        int i13 = i12 - 1;
        this.intPtr = i13;
        boolean z11 = iArr[i12] == 0;
        if (z11) {
            Expression[] expressionArr = this.expressionStack;
            int i14 = this.expressionPtr;
            this.expressionPtr = i14 - 1;
            NameReference nameReference2 = (NameReference) expressionArr[i14];
            this.expressionLengthPtr--;
            nameReference = nameReference2;
        } else {
            nameReference = null;
        }
        this.identifierLengthPtr--;
        char[][] cArr = this.identifierStack;
        int i15 = this.identifierPtr;
        char[] cArr2 = cArr[i15];
        long[] jArr = this.identifierPositionStack;
        this.identifierPtr = i15 - 1;
        long j10 = jArr[i15];
        this.intPtr = i12 - 2;
        int i16 = iArr[i13];
        Annotation[][] annotationsOnDimensions = i16 == 0 ? null : getAnnotationsOnDimensions(i16);
        if (z10) {
            int[] iArr2 = this.intStack;
            int i17 = this.intPtr;
            this.intPtr = i17 - 1;
            i10 = iArr2[i17];
            int[] iArr3 = this.typeAnnotationLengthStack;
            int i18 = this.typeAnnotationLengthPtr;
            this.typeAnnotationLengthPtr = i18 - 1;
            int i19 = iArr3[i18];
            if (i19 != 0) {
                Annotation[] annotationArr2 = this.typeAnnotationStack;
                int i20 = this.typeAnnotationPtr - i19;
                this.typeAnnotationPtr = i20;
                annotationArr = new Annotation[i19];
                System.arraycopy(annotationArr2, i20 + 1, annotationArr, 0, i19);
                int[] iArr4 = this.intStack;
                int i21 = this.intPtr;
                this.intPtr = i21 - 1;
                typeReference = getTypeReference(iArr4[i21]);
                if (!z10 || i16 != 0) {
                    if (z10) {
                        typeReference = augmentTypeWithAdditionalDimensions(typeReference, 1, annotationArr != null ? new Annotation[][]{annotationArr} : null, true);
                    }
                    if (i16 != 0) {
                        typeReference = augmentTypeWithAdditionalDimensions(typeReference, i16, annotationsOnDimensions, false);
                    }
                    typeReference.sourceEnd = !typeReference.isParameterizedTypeReference() ? this.endStatementPosition : this.endPosition;
                }
                if (z10) {
                    if (i16 == 0) {
                        typeReference.sourceEnd = i10;
                    }
                    typeReference.bits |= 16384;
                }
                int[] iArr5 = this.intStack;
                int i22 = this.intPtr;
                this.intPtr = i22 - 1;
                int i23 = iArr5[i22];
                if (z11) {
                    int[] iArr6 = this.intStack;
                    int i24 = this.intPtr;
                    this.intPtr = i24 - 1;
                    argument = new Argument(cArr2, j10, typeReference, iArr6[i24] & (-1048577));
                } else {
                    int[] iArr7 = this.intStack;
                    int i25 = this.intPtr;
                    this.intPtr = i25 - 1;
                    argument = new Receiver(cArr2, j10, typeReference, nameReference, iArr7[i25] & (-1048577));
                }
                argument.declarationSourceStart = i23;
                argument.bits |= typeReference.bits & 1048576;
                int[] iArr8 = this.expressionLengthStack;
                int i26 = this.expressionLengthPtr;
                this.expressionLengthPtr = i26 - 1;
                i11 = iArr8[i26];
                if (i11 != 0) {
                    Expression[] expressionArr2 = this.expressionStack;
                    int i27 = this.expressionPtr - i11;
                    this.expressionPtr = i27;
                    Annotation[] annotationArr3 = new Annotation[i11];
                    argument.annotations = annotationArr3;
                    System.arraycopy(expressionArr2, i27 + 1, annotationArr3, 0, i11);
                    argument.bits |= 1048576;
                    RecoveredType currentRecoveryType = currentRecoveryType();
                    if (currentRecoveryType != null) {
                        currentRecoveryType.annotationsConsumed(argument.annotations);
                    }
                }
                pushOnAstStack(argument);
                this.listLength++;
                if (z10) {
                    return;
                }
                boolean z12 = this.statementRecoveryActivated;
                if (!z12 && this.options.sourceLevel < ClassFileConstants.JDK1_5 && this.lastErrorEndPositionBeforeRecovery < this.scanner.currentPosition) {
                    problemReporter().invalidUsageOfVarargs(argument);
                    return;
                } else {
                    if (z12 || i16 <= 0) {
                        return;
                    }
                    problemReporter().illegalExtendedDimensions(argument);
                    return;
                }
            }
        } else {
            i10 = 0;
        }
        annotationArr = null;
        int[] iArr42 = this.intStack;
        int i212 = this.intPtr;
        this.intPtr = i212 - 1;
        typeReference = getTypeReference(iArr42[i212]);
        if (!z10) {
        }
        if (z10) {
        }
        if (i16 != 0) {
        }
        typeReference.sourceEnd = !typeReference.isParameterizedTypeReference() ? this.endStatementPosition : this.endPosition;
        if (z10) {
        }
        int[] iArr52 = this.intStack;
        int i222 = this.intPtr;
        this.intPtr = i222 - 1;
        int i232 = iArr52[i222];
        if (z11) {
        }
        argument.declarationSourceStart = i232;
        argument.bits |= typeReference.bits & 1048576;
        int[] iArr82 = this.expressionLengthStack;
        int i262 = this.expressionLengthPtr;
        this.expressionLengthPtr = i262 - 1;
        i11 = iArr82[i262];
        if (i11 != 0) {
        }
        pushOnAstStack(argument);
        this.listLength++;
        if (z10) {
        }
    }

    public void consumeFormalParameterList() {
        optimizedConcatNodeLists();
    }

    public void consumeFormalParameterListopt() {
        pushOnAstLengthStack(0);
    }

    public void consumeGenericType() {
    }

    public void consumeGenericTypeArrayType() {
    }

    public void consumeGenericTypeNameArrayType() {
    }

    public void consumeGenericTypeWithDiamond() {
        pushOnGenericsLengthStack(-1);
        concatGenericsLists();
        this.intPtr--;
    }

    public void consumeIdentifierOrNew(boolean z10) {
        if (z10) {
            int[] iArr = this.intStack;
            int i10 = this.intPtr;
            this.intPtr = i10 - 1;
            pushIdentifier(ConstantPool.Init, (iArr[i10] << 32) + r6 + 2);
        }
    }

    public void consumeImportDeclaration() {
        ImportReference importReference = (ImportReference) this.astStack[this.astPtr];
        importReference.declarationEnd = this.endStatementPosition;
        int flushCommentsDefinedPriorTo = flushCommentsDefinedPriorTo(importReference.declarationSourceEnd);
        importReference.declarationSourceEnd = flushCommentsDefinedPriorTo;
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            this.lastCheckPoint = flushCommentsDefinedPriorTo + 1;
            this.currentElement = recoveredElement.add(importReference, 0);
            this.lastIgnoredToken = -1;
            this.restartRecovery = true;
        }
    }

    public void consumeImportDeclarations() {
        optimizedConcatNodeLists();
    }

    public void consumeInsideCastExpression() {
    }

    public void consumeInsideCastExpressionLL1() {
        pushOnGenericsLengthStack(0);
        pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[this.identifierLengthPtr]);
        pushOnExpressionStack(getTypeReference(0));
    }

    public void consumeInsideCastExpressionLL1WithBounds() {
        int[] iArr = this.genericsLengthStack;
        int i10 = this.genericsLengthPtr;
        this.genericsLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        TypeReference[] typeReferenceArr = new TypeReference[i11 + 1];
        int i12 = this.genericsPtr - i11;
        this.genericsPtr = i12;
        System.arraycopy(this.genericsStack, i12 + 1, typeReferenceArr, 1, i11);
        pushOnGenericsLengthStack(0);
        pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[this.identifierLengthPtr]);
        typeReferenceArr[0] = getTypeReference(0);
        for (int i13 = 0; i13 <= i11; i13++) {
            pushOnExpressionStack(typeReferenceArr[i13]);
            if (i13 > 0) {
                int[] iArr2 = this.expressionLengthStack;
                int i14 = this.expressionLengthPtr - 1;
                this.expressionLengthPtr = i14;
                iArr2[i14] = iArr2[i14] + 1;
            }
        }
    }

    public void consumeInsideCastExpressionWithQualifiedGenerics() {
    }

    public void consumeInstanceOfExpression() {
        Expression[] expressionArr = this.expressionStack;
        int i10 = this.expressionPtr;
        Expression expression = this.expressionStack[this.expressionPtr];
        int[] iArr = this.intStack;
        int i11 = this.intPtr;
        this.intPtr = i11 - 1;
        InstanceOfExpression instanceOfExpression = new InstanceOfExpression(expression, getTypeReference(iArr[i11]));
        expressionArr[i10] = instanceOfExpression;
        if (instanceOfExpression.sourceEnd == 0) {
            instanceOfExpression.sourceEnd = this.scanner.startPosition - 1;
        }
    }

    public void consumeInstanceOfExpressionWithName() {
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        TypeReference typeReference = getTypeReference(iArr[i10]);
        pushOnExpressionStack(getUnspecifiedReferenceOptimized());
        Expression[] expressionArr = this.expressionStack;
        int i11 = this.expressionPtr;
        InstanceOfExpression instanceOfExpression = new InstanceOfExpression(this.expressionStack[this.expressionPtr], typeReference);
        expressionArr[i11] = instanceOfExpression;
        if (instanceOfExpression.sourceEnd == 0) {
            instanceOfExpression.sourceEnd = this.scanner.startPosition - 1;
        }
    }

    public void consumeInterfaceDeclaration() {
        int[] iArr = this.astLengthStack;
        int i10 = this.astLengthPtr;
        this.astLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 != 0) {
            dispatchDeclarationInto(i11);
        }
        TypeDeclaration typeDeclaration = (TypeDeclaration) this.astStack[this.astPtr];
        typeDeclaration.checkConstructors(this);
        FieldDeclaration[] fieldDeclarationArr = typeDeclaration.fields;
        int length = fieldDeclarationArr == null ? 0 : fieldDeclarationArr.length;
        for (int i12 = 0; i12 < length; i12++) {
            FieldDeclaration fieldDeclaration = fieldDeclarationArr[i12];
            if (fieldDeclaration instanceof Initializer) {
                problemReporter().interfaceCannotHaveInitializers(typeDeclaration.name, fieldDeclaration);
            }
        }
        if (this.scanner.containsAssertKeyword) {
            typeDeclaration.bits |= 1;
        }
        typeDeclaration.addClinit();
        int i13 = this.endStatementPosition;
        typeDeclaration.bodyEnd = i13;
        if (i11 == 0 && !containsComment(typeDeclaration.bodyStart, i13)) {
            typeDeclaration.bits |= 8;
        }
        typeDeclaration.declarationSourceEnd = flushCommentsDefinedPriorTo(this.endStatementPosition);
    }

    public void consumeInterfaceHeader() {
        TypeDeclaration typeDeclaration = (TypeDeclaration) this.astStack[this.astPtr];
        if (this.currentToken == 49) {
            typeDeclaration.bodyStart = this.scanner.currentPosition;
        }
        if (this.currentElement != null) {
            this.restartRecovery = true;
        }
        this.scanner.commentPtr = -1;
    }

    public void consumeInterfaceHeaderExtends() {
        int[] iArr = this.astLengthStack;
        int i10 = this.astLengthPtr;
        this.astLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        int i12 = this.astPtr - i11;
        this.astPtr = i12;
        ASTNode[] aSTNodeArr = this.astStack;
        TypeDeclaration typeDeclaration = (TypeDeclaration) aSTNodeArr[i12];
        TypeReference[] typeReferenceArr = new TypeReference[i11];
        typeDeclaration.superInterfaces = typeReferenceArr;
        System.arraycopy(aSTNodeArr, i12 + 1, typeReferenceArr, 0, i11);
        for (TypeReference typeReference : typeDeclaration.superInterfaces) {
            typeDeclaration.bits |= typeReference.bits & 1048576;
            typeReference.bits |= 16;
        }
        int i13 = typeDeclaration.superInterfaces[i11 - 1].sourceEnd + 1;
        typeDeclaration.bodyStart = i13;
        this.listLength = 0;
        if (this.currentElement != null) {
            this.lastCheckPoint = i13;
        }
    }

    public void consumeInterfaceHeaderName1() {
        CompilationUnitDeclaration compilationUnitDeclaration;
        TypeDeclaration typeDeclaration = new TypeDeclaration(this.compilationUnit.compilationResult);
        int[] iArr = this.nestedMethod;
        int i10 = this.nestedType;
        if (iArr[i10] != 0) {
            typeDeclaration.bits |= 256;
            markEnclosingMemberWithLocalType();
            blockReal();
        } else if (i10 != 0) {
            typeDeclaration.bits |= 1024;
        }
        long[] jArr = this.identifierPositionStack;
        int i11 = this.identifierPtr;
        long j10 = jArr[i11];
        typeDeclaration.sourceEnd = (int) j10;
        typeDeclaration.sourceStart = (int) (j10 >>> 32);
        char[][] cArr = this.identifierStack;
        this.identifierPtr = i11 - 1;
        char[] cArr2 = cArr[i11];
        typeDeclaration.name = cArr2;
        this.identifierLengthPtr--;
        int[] iArr2 = this.intStack;
        int i12 = this.intPtr;
        this.intPtr = i12 - 1;
        typeDeclaration.declarationSourceStart = iArr2[i12];
        int i13 = i12 - 3;
        this.intPtr = i13;
        int i14 = iArr2[i12 - 2];
        typeDeclaration.modifiersSourceStart = i14;
        this.intPtr = i12 - 4;
        typeDeclaration.modifiers = iArr2[i13] | 512;
        if (i14 >= 0) {
            typeDeclaration.declarationSourceStart = i14;
        }
        int i15 = typeDeclaration.bits;
        if ((i15 & 1024) == 0 && (i15 & 256) == 0 && (compilationUnitDeclaration = this.compilationUnit) != null && !CharOperation.equals(cArr2, compilationUnitDeclaration.getMainTypeName())) {
            typeDeclaration.bits |= 4096;
        }
        int[] iArr3 = this.expressionLengthStack;
        int i16 = this.expressionLengthPtr;
        this.expressionLengthPtr = i16 - 1;
        int i17 = iArr3[i16];
        if (i17 != 0) {
            Expression[] expressionArr = this.expressionStack;
            int i18 = this.expressionPtr - i17;
            this.expressionPtr = i18;
            Annotation[] annotationArr = new Annotation[i17];
            typeDeclaration.annotations = annotationArr;
            System.arraycopy(expressionArr, i18 + 1, annotationArr, 0, i17);
        }
        typeDeclaration.bodyStart = typeDeclaration.sourceEnd + 1;
        pushOnAstStack(typeDeclaration);
        this.listLength = 0;
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            this.lastCheckPoint = typeDeclaration.bodyStart;
            this.currentElement = recoveredElement.add(typeDeclaration, 0);
            this.lastIgnoredToken = -1;
        }
        typeDeclaration.javadoc = this.javadoc;
        this.javadoc = null;
    }

    public void consumeInterfaceMemberDeclarations() {
        concatNodeLists();
    }

    public void consumeInterfaceMemberDeclarationsopt() {
        this.nestedType--;
    }

    public void consumeInterfaceMethodDeclaration(boolean z10) {
        int i10;
        boolean z11 = true;
        Statement[] statementArr = null;
        if (z10) {
            i10 = 0;
        } else {
            this.intPtr -= 2;
            int[] iArr = this.realBlockStack;
            int i11 = this.realBlockPtr;
            this.realBlockPtr = i11 - 1;
            i10 = iArr[i11];
            int[] iArr2 = this.astLengthStack;
            int i12 = this.astLengthPtr;
            this.astLengthPtr = i12 - 1;
            int i13 = iArr2[i12];
            if (i13 != 0) {
                if (this.options.ignoreMethodBodies) {
                    this.astPtr -= i13;
                } else {
                    ASTNode[] aSTNodeArr = this.astStack;
                    int i14 = this.astPtr - i13;
                    this.astPtr = i14;
                    Statement[] statementArr2 = new Statement[i13];
                    System.arraycopy(aSTNodeArr, i14 + 1, statementArr2, 0, i13);
                    statementArr = statementArr2;
                }
            }
        }
        MethodDeclaration methodDeclaration = (MethodDeclaration) this.astStack[this.astPtr];
        methodDeclaration.statements = statementArr;
        methodDeclaration.explicitDeclarations = i10;
        methodDeclaration.bodyEnd = this.endPosition;
        methodDeclaration.declarationSourceEnd = flushCommentsDefinedPriorTo(this.endStatementPosition);
        int i15 = methodDeclaration.modifiers;
        boolean z12 = (65536 & i15) != 0;
        boolean z13 = (i15 & 8) != 0;
        boolean z14 = (i15 & 2) != 0;
        if ((!this.parsingJava9Plus || !z14) && !z12 && !z13) {
            z11 = false;
        }
        if (!this.parsingJava8Plus) {
            if (z12) {
                problemReporter().defaultMethodsNotBelow18(methodDeclaration);
            }
            if (z13) {
                problemReporter().staticInterfaceMethodsNotBelow18(methodDeclaration);
            }
        } else if (z11 && z10) {
            methodDeclaration.modifiers = 16777216 | i15;
        }
        if (z11 || this.statementRecoveryActivated || z10) {
            return;
        }
        problemReporter().abstractMethodNeedingNoBody(methodDeclaration);
    }

    public void consumeInterfaceType() {
        pushOnAstStack(getTypeReference(0));
        this.listLength++;
    }

    public void consumeInterfaceTypeList() {
        optimizedConcatNodeLists();
    }

    public void consumeInternalCompilationUnit() {
        if (this.compilationUnit.isPackageInfo()) {
            CompilationUnitDeclaration compilationUnitDeclaration = this.compilationUnit;
            compilationUnitDeclaration.types = new TypeDeclaration[1];
            compilationUnitDeclaration.createPackageInfoType();
        }
    }

    public void consumeInternalCompilationUnitWithModuleDeclaration() {
        CompilationUnitDeclaration compilationUnitDeclaration = this.compilationUnit;
        ASTNode[] aSTNodeArr = this.astStack;
        int i10 = this.astPtr;
        this.astPtr = i10 - 1;
        compilationUnitDeclaration.moduleDeclaration = (ModuleDeclaration) aSTNodeArr[i10];
        int[] iArr = this.astLengthStack;
        int i11 = this.astLengthPtr;
        this.astLengthPtr = i11 - 1;
        iArr[i11] = 0;
    }

    public void consumeInternalCompilationUnitWithTypes() {
        int[] iArr = this.astLengthStack;
        int i10 = this.astLengthPtr;
        this.astLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 != 0) {
            if (!this.compilationUnit.isPackageInfo()) {
                TypeDeclaration[] typeDeclarationArr = new TypeDeclaration[i11];
                this.compilationUnit.types = typeDeclarationArr;
                int i12 = this.astPtr - i11;
                this.astPtr = i12;
                System.arraycopy(this.astStack, i12 + 1, typeDeclarationArr, 0, i11);
                return;
            }
            TypeDeclaration[] typeDeclarationArr2 = new TypeDeclaration[i11 + 1];
            this.compilationUnit.types = typeDeclarationArr2;
            int i13 = this.astPtr - i11;
            this.astPtr = i13;
            System.arraycopy(this.astStack, i13 + 1, typeDeclarationArr2, 1, i11);
            this.compilationUnit.createPackageInfoType();
        }
    }

    public void consumeInvalidAnnotationTypeDeclaration() {
        TypeDeclaration typeDeclaration = (TypeDeclaration) this.astStack[this.astPtr];
        if (!this.statementRecoveryActivated) {
            problemReporter().illegalLocalTypeDeclaration(typeDeclaration);
        }
        this.astPtr--;
        pushOnAstLengthStack(-1);
        concatNodeLists();
    }

    public void consumeInvalidConstructorDeclaration() {
        ConstructorDeclaration constructorDeclaration = (ConstructorDeclaration) this.astStack[this.astPtr];
        constructorDeclaration.bodyEnd = this.endPosition;
        constructorDeclaration.declarationSourceEnd = flushCommentsDefinedPriorTo(this.endStatementPosition);
        constructorDeclaration.modifiers |= 16777216;
    }

    public void consumeInvalidEnumDeclaration() {
        TypeDeclaration typeDeclaration = (TypeDeclaration) this.astStack[this.astPtr];
        if (!this.statementRecoveryActivated) {
            problemReporter().illegalLocalTypeDeclaration(typeDeclaration);
        }
        this.astPtr--;
        pushOnAstLengthStack(-1);
        concatNodeLists();
    }

    public void consumeInvalidInterfaceDeclaration() {
        TypeDeclaration typeDeclaration = (TypeDeclaration) this.astStack[this.astPtr];
        if (!this.statementRecoveryActivated) {
            problemReporter().illegalLocalTypeDeclaration(typeDeclaration);
        }
        this.astPtr--;
        pushOnAstLengthStack(-1);
        concatNodeLists();
    }

    public void consumeInvocationExpression() {
    }

    public void consumeLabel() {
    }

    public void consumeLambdaExpression() {
        this.nestedType--;
        this.astLengthPtr--;
        ASTNode[] aSTNodeArr = this.astStack;
        int i10 = this.astPtr;
        this.astPtr = i10 - 1;
        Statement statement = (Statement) aSTNodeArr[i10];
        if ((statement instanceof Block) && this.options.ignoreMethodBodies) {
            Block block = new Block(0);
            block.sourceStart = statement.sourceStart;
            block.sourceEnd = statement.sourceEnd;
            statement = block;
        }
        ASTNode[] aSTNodeArr2 = this.astStack;
        int i11 = this.astPtr;
        this.astPtr = i11 - 1;
        LambdaExpression lambdaExpression = (LambdaExpression) aSTNodeArr2[i11];
        this.astLengthPtr--;
        lambdaExpression.setBody(statement);
        lambdaExpression.sourceEnd = statement.sourceEnd;
        if (statement instanceof Expression) {
            Expression expression = (Expression) statement;
            if (expression.isTrulyExpression()) {
                expression.statementEnd = statement.sourceEnd;
            }
        }
        if (!this.parsingJava8Plus) {
            problemReporter().lambdaExpressionsNotBelow18(lambdaExpression);
        }
        setArgumentsTypeVar(lambdaExpression);
        pushOnExpressionStack(lambdaExpression);
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            this.lastCheckPoint = statement.sourceEnd + 1;
            recoveredElement.lambdaNestLevel--;
        }
        this.referenceContext.compilationResult().hasFunctionalTypes = true;
        markEnclosingMemberWithLocalOrFunctionalType(LocalTypeKind.LAMBDA);
        if (lambdaExpression.compilationResult.getCompilationUnit() == null) {
            int i12 = (lambdaExpression.sourceEnd - lambdaExpression.sourceStart) + 1;
            char[] source = this.scanner.getSource();
            int i13 = lambdaExpression.sourceStart;
            char[] cArr = new char[i12];
            lambdaExpression.text = cArr;
            System.arraycopy(source, i13, cArr, 0, i12);
        }
    }

    public void consumeLambdaHeader() {
        Argument[] argumentArr;
        int i10 = this.scanner.currentPosition;
        int i11 = i10 - 1;
        int[] iArr = this.astLengthStack;
        int i12 = this.astLengthPtr;
        this.astLengthPtr = i12 - 1;
        int i13 = iArr[i12];
        int i14 = this.astPtr - i13;
        this.astPtr = i14;
        if (i13 != 0) {
            argumentArr = new Argument[i13];
            System.arraycopy(this.astStack, i14 + 1, argumentArr, 0, i13);
        } else {
            argumentArr = null;
        }
        for (int i15 = 0; i15 < i13; i15++) {
            Argument argument = argumentArr[i15];
            if (argument.isReceiver()) {
                problemReporter().illegalThis(argument);
            }
            char[] cArr = argument.name;
            if (cArr.length == 1 && cArr[0] == '_') {
                problemReporter().illegalUseOfUnderscoreAsAnIdentifier(argument.sourceStart, argument.sourceEnd, true);
            }
        }
        LambdaExpression lambdaExpression = (LambdaExpression) this.astStack[this.astPtr];
        lambdaExpression.setArguments(argumentArr);
        lambdaExpression.setArrowPosition(i11);
        int[] iArr2 = this.intStack;
        int i16 = this.intPtr;
        int i17 = i16 - 1;
        this.intPtr = i17;
        lambdaExpression.sourceEnd = iArr2[i16];
        this.intPtr = i16 - 2;
        lambdaExpression.sourceStart = iArr2[i17];
        lambdaExpression.hasParentheses = this.scanner.getSource()[lambdaExpression.sourceStart] == '(';
        this.listLength -= argumentArr == null ? 0 : argumentArr.length;
        this.processingLambdaParameterList = false;
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            this.lastCheckPoint = i10;
            recoveredElement.lambdaNestLevel++;
        }
    }

    public void consumeLeftParen() {
        pushOnIntStack(this.lParenPos);
    }

    public void consumeLocalVariableDeclaration() {
        int i10 = this.astLengthStack[this.astLengthPtr];
        int i11 = this.astPtr - this.variablesCounter[this.nestedType];
        ASTNode[] aSTNodeArr = this.astStack;
        System.arraycopy(aSTNodeArr, i11 + 1, aSTNodeArr, i11, i10);
        this.astPtr--;
        int[] iArr = this.astLengthStack;
        int i12 = this.astLengthPtr - 1;
        this.astLengthPtr = i12;
        iArr[i12] = i10;
        this.variablesCounter[this.nestedType] = 0;
        this.forStartPosition = 0;
    }

    public void consumeLocalVariableDeclarationStatement() {
        Expression singleNameReference;
        int i10 = this.astLengthStack[this.astLengthPtr];
        if (i10 == 1) {
            LocalDeclaration localDeclaration = (LocalDeclaration) this.astStack[this.astPtr];
            if (localDeclaration.isRecoveredFromLoneIdentifier()) {
                TypeReference typeReference = localDeclaration.type;
                if (typeReference instanceof QualifiedTypeReference) {
                    QualifiedTypeReference qualifiedTypeReference = (QualifiedTypeReference) typeReference;
                    singleNameReference = new QualifiedNameReference(qualifiedTypeReference.tokens, qualifiedTypeReference.sourcePositions, 0, 0);
                } else {
                    singleNameReference = new SingleNameReference(localDeclaration.type.getLastToken(), 0L);
                }
                TypeReference typeReference2 = localDeclaration.type;
                singleNameReference.sourceStart = typeReference2.sourceStart;
                singleNameReference.sourceEnd = typeReference2.sourceEnd;
                SingleNameReference singleNameReference2 = new SingleNameReference(localDeclaration.name, 0L);
                singleNameReference2.sourceStart = localDeclaration.sourceStart;
                singleNameReference2.sourceEnd = localDeclaration.sourceEnd;
                Assignment assignment = new Assignment(singleNameReference, singleNameReference2, 0);
                int i11 = this.endStatementPosition;
                if (i11 == localDeclaration.sourceEnd) {
                    i11++;
                }
                assignment.sourceEnd = i11;
                assignment.statementEnd = i11;
                this.astStack[this.astPtr] = assignment;
                RecoveryScanner recoveryScanner = this.recoveryScanner;
                if (recoveryScanner != null) {
                    RecoveryScannerData data = recoveryScanner.getData();
                    int i12 = data.insertedTokensPtr;
                    while (i12 > 0) {
                        int[] iArr = data.insertedTokensPosition;
                        if (iArr[i12] != iArr[i12 - 1]) {
                            break;
                        } else {
                            i12--;
                        }
                    }
                    if (i12 >= 0) {
                        this.recoveryScanner.insertTokenAhead(72, i12);
                    }
                }
                RecoveredElement recoveredElement = this.currentElement;
                if (recoveredElement != null) {
                    this.lastCheckPoint = assignment.sourceEnd + 1;
                    this.currentElement = recoveredElement.add(assignment, 0);
                    return;
                }
                return;
            }
        }
        int[] iArr2 = this.realBlockStack;
        int i13 = this.realBlockPtr;
        iArr2[i13] = iArr2[i13] + 1;
        for (int i14 = i10 - 1; i14 >= 0; i14--) {
            LocalDeclaration localDeclaration2 = (LocalDeclaration) this.astStack[this.astPtr - i14];
            int i15 = this.endStatementPosition;
            localDeclaration2.declarationSourceEnd = i15;
            localDeclaration2.declarationEnd = i15;
        }
    }

    public void consumeMarkerAnnotation(boolean z10) {
        int i10 = this.identifierPtr;
        TypeReference annotationType = getAnnotationType();
        int[] iArr = this.intStack;
        int i11 = this.intPtr;
        this.intPtr = i11 - 1;
        Annotation markerAnnotation = new MarkerAnnotation(annotationType, iArr[i11]);
        markerAnnotation.declarationSourceEnd = markerAnnotation.sourceEnd;
        if (z10) {
            pushOnTypeAnnotationStack(markerAnnotation);
        } else {
            pushOnExpressionStack(markerAnnotation);
        }
        if (!this.statementRecoveryActivated && this.options.sourceLevel < ClassFileConstants.JDK1_5 && this.lastErrorEndPositionBeforeRecovery < this.scanner.currentPosition) {
            problemReporter().invalidUsageOfAnnotation(markerAnnotation);
        }
        this.recordStringLiterals = true;
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement == null || !(recoveredElement instanceof RecoveredAnnotation)) {
            return;
        }
        this.currentElement = ((RecoveredAnnotation) recoveredElement).addAnnotation(markerAnnotation, i10);
    }

    public void consumeMemberValueArrayInitializer() {
        int[] iArr = this.expressionLengthStack;
        int i10 = this.expressionLengthPtr;
        this.expressionLengthPtr = i10 - 1;
        arrayInitializer(iArr[i10]);
    }

    public void consumeMemberValueAsName() {
        pushOnExpressionStack(getUnspecifiedReferenceOptimized());
    }

    public void consumeMemberValuePair() {
        char[][] cArr = this.identifierStack;
        int i10 = this.identifierPtr;
        char[] cArr2 = cArr[i10];
        long[] jArr = this.identifierPositionStack;
        this.identifierPtr = i10 - 1;
        long j10 = jArr[i10];
        this.identifierLengthPtr--;
        Expression[] expressionArr = this.expressionStack;
        int i11 = this.expressionPtr;
        this.expressionPtr = i11 - 1;
        Expression expression = expressionArr[i11];
        this.expressionLengthPtr--;
        pushOnAstStack(new MemberValuePair(cArr2, (int) (j10 >>> 32), (int) j10, expression));
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement == null || !(recoveredElement instanceof RecoveredAnnotation)) {
            return;
        }
        ((RecoveredAnnotation) recoveredElement).setKind(1);
    }

    public void consumeMemberValuePairs() {
        concatNodeLists();
    }

    public void consumeMemberValues() {
        concatExpressionLists();
    }

    public void consumeMethodBody() {
        this.nestedMethod[this.nestedType] = r0[r1] - 1;
    }

    public void consumeMethodDeclaration(boolean z10, boolean z11) {
        if (z10) {
            this.intPtr -= 2;
        }
        int i10 = 0;
        Statement[] statementArr = null;
        if (z10) {
            int[] iArr = this.realBlockStack;
            int i11 = this.realBlockPtr;
            this.realBlockPtr = i11 - 1;
            int i12 = iArr[i11];
            int[] iArr2 = this.astLengthStack;
            int i13 = this.astLengthPtr;
            this.astLengthPtr = i13 - 1;
            int i14 = iArr2[i13];
            if (i14 != 0) {
                if (this.options.ignoreMethodBodies) {
                    this.astPtr -= i14;
                } else {
                    ASTNode[] aSTNodeArr = this.astStack;
                    int i15 = this.astPtr - i14;
                    this.astPtr = i15;
                    Statement[] statementArr2 = new Statement[i14];
                    System.arraycopy(aSTNodeArr, i15 + 1, statementArr2, 0, i14);
                    i10 = i12;
                    statementArr = statementArr2;
                }
            }
            i10 = i12;
        }
        MethodDeclaration methodDeclaration = (MethodDeclaration) this.astStack[this.astPtr];
        methodDeclaration.statements = statementArr;
        methodDeclaration.explicitDeclarations = i10;
        if (!z10) {
            methodDeclaration.modifiers |= 16777216;
        } else if ((!this.diet || this.dietInt != 0) && statementArr == null && !containsComment(methodDeclaration.bodyStart, this.endPosition)) {
            methodDeclaration.bits |= 8;
        }
        methodDeclaration.bodyEnd = this.endPosition;
        methodDeclaration.declarationSourceEnd = flushCommentsDefinedPriorTo(this.endStatementPosition);
        if (!z11 || this.tolerateDefaultClassMethods) {
            return;
        }
        if (this.options.sourceLevel >= ClassFileConstants.JDK1_8) {
            problemReporter().defaultModifierIllegallySpecified(methodDeclaration.sourceStart, methodDeclaration.sourceEnd);
        } else {
            problemReporter().illegalModifierForMethod(methodDeclaration);
        }
    }

    public void consumeMethodHeader() {
        RecoveredElement recoveredElement;
        AbstractMethodDeclaration abstractMethodDeclaration = (AbstractMethodDeclaration) this.astStack[this.astPtr];
        int i10 = this.currentToken;
        if (i10 == 49) {
            abstractMethodDeclaration.bodyStart = this.scanner.currentPosition;
        }
        RecoveredElement recoveredElement2 = this.currentElement;
        if (recoveredElement2 != null) {
            if (i10 == 26) {
                abstractMethodDeclaration.modifiers |= 16777216;
                int i11 = this.scanner.currentPosition;
                abstractMethodDeclaration.declarationSourceEnd = i11 - 1;
                abstractMethodDeclaration.bodyEnd = i11 - 1;
                if (recoveredElement2.parseTree() == abstractMethodDeclaration && (recoveredElement = this.currentElement.parent) != null) {
                    this.currentElement = recoveredElement;
                }
            } else if (i10 == 49 && (recoveredElement2 instanceof RecoveredMethod) && ((RecoveredMethod) recoveredElement2).methodDeclaration != abstractMethodDeclaration) {
                this.ignoreNextOpeningBrace = true;
                recoveredElement2.bracketBalance++;
            }
            this.restartRecovery = true;
        }
    }

    public void consumeMethodHeaderDefaultValue() {
        MethodDeclaration methodDeclaration = (MethodDeclaration) this.astStack[this.astPtr];
        int[] iArr = this.expressionLengthStack;
        int i10 = this.expressionLengthPtr;
        this.expressionLengthPtr = i10 - 1;
        if (iArr[i10] == 1) {
            this.intPtr -= 2;
            if (methodDeclaration.isAnnotationMethod()) {
                ((AnnotationMethodDeclaration) methodDeclaration).defaultValue = this.expressionStack[this.expressionPtr];
                methodDeclaration.modifiers |= 131072;
            }
            this.expressionPtr--;
            this.recordStringLiterals = true;
        }
        if (this.currentElement == null || !methodDeclaration.isAnnotationMethod()) {
            return;
        }
        this.currentElement.updateSourceEndIfNecessary(((AnnotationMethodDeclaration) methodDeclaration).defaultValue.sourceEnd);
    }

    public void consumeMethodHeaderExtendedDims() {
        MethodDeclaration methodDeclaration = (MethodDeclaration) this.astStack[this.astPtr];
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        int i11 = iArr[i10];
        if (methodDeclaration.isAnnotationMethod()) {
            ((AnnotationMethodDeclaration) methodDeclaration).extendedDimensions = i11;
        }
        if (i11 != 0) {
            methodDeclaration.sourceEnd = this.endPosition;
            TypeReference augmentTypeWithAdditionalDimensions = augmentTypeWithAdditionalDimensions(methodDeclaration.returnType, i11, getAnnotationsOnDimensions(i11), false);
            methodDeclaration.returnType = augmentTypeWithAdditionalDimensions;
            methodDeclaration.bits = (augmentTypeWithAdditionalDimensions.bits & 1048576) | methodDeclaration.bits;
            if (this.currentToken == 49) {
                methodDeclaration.bodyStart = this.endPosition + 1;
            }
            if (this.currentElement != null) {
                this.lastCheckPoint = methodDeclaration.bodyStart;
            }
        }
    }

    public void consumeMethodHeaderName(boolean z10) {
        MethodDeclaration methodDeclaration;
        if (z10) {
            methodDeclaration = new AnnotationMethodDeclaration(this.compilationUnit.compilationResult);
            this.recordStringLiterals = false;
        } else {
            methodDeclaration = new MethodDeclaration(this.compilationUnit.compilationResult);
        }
        char[][] cArr = this.identifierStack;
        int i10 = this.identifierPtr;
        methodDeclaration.selector = cArr[i10];
        long[] jArr = this.identifierPositionStack;
        this.identifierPtr = i10 - 1;
        long j10 = jArr[i10];
        this.identifierLengthPtr--;
        int[] iArr = this.intStack;
        int i11 = this.intPtr;
        this.intPtr = i11 - 1;
        TypeReference typeReference = getTypeReference(iArr[i11]);
        methodDeclaration.returnType = typeReference;
        methodDeclaration.bits = (typeReference.bits & 1048576) | methodDeclaration.bits;
        int[] iArr2 = this.intStack;
        int i12 = this.intPtr;
        int i13 = i12 - 1;
        this.intPtr = i13;
        methodDeclaration.declarationSourceStart = iArr2[i12];
        this.intPtr = i12 - 2;
        methodDeclaration.modifiers = iArr2[i13];
        int[] iArr3 = this.expressionLengthStack;
        int i14 = this.expressionLengthPtr;
        this.expressionLengthPtr = i14 - 1;
        int i15 = iArr3[i14];
        if (i15 != 0) {
            Expression[] expressionArr = this.expressionStack;
            int i16 = this.expressionPtr - i15;
            this.expressionPtr = i16;
            Annotation[] annotationArr = new Annotation[i15];
            methodDeclaration.annotations = annotationArr;
            System.arraycopy(expressionArr, i16 + 1, annotationArr, 0, i15);
        }
        methodDeclaration.javadoc = this.javadoc;
        this.javadoc = null;
        methodDeclaration.sourceStart = (int) (j10 >>> 32);
        pushOnAstStack(methodDeclaration);
        int i17 = this.lParenPos;
        methodDeclaration.sourceEnd = i17;
        methodDeclaration.bodyStart = i17 + 1;
        this.listLength = 0;
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            if (!(recoveredElement instanceof RecoveredType)) {
                int i18 = methodDeclaration.returnType.sourceStart;
                Scanner scanner = this.scanner;
                int lineNumber = Util.getLineNumber(i18, scanner.lineEnds, 0, scanner.linePtr);
                int i19 = methodDeclaration.sourceStart;
                Scanner scanner2 = this.scanner;
                if (lineNumber != Util.getLineNumber(i19, scanner2.lineEnds, 0, scanner2.linePtr)) {
                    this.lastCheckPoint = methodDeclaration.sourceStart;
                    this.restartRecovery = true;
                    return;
                }
            }
            this.lastCheckPoint = methodDeclaration.bodyStart;
            this.currentElement = this.currentElement.add(methodDeclaration, 0);
            this.lastIgnoredToken = -1;
        }
    }

    public void consumeMethodHeaderNameWithTypeParameters(boolean z10) {
        MethodDeclaration methodDeclaration;
        if (z10) {
            methodDeclaration = new AnnotationMethodDeclaration(this.compilationUnit.compilationResult);
            this.recordStringLiterals = false;
        } else {
            methodDeclaration = new MethodDeclaration(this.compilationUnit.compilationResult);
        }
        char[][] cArr = this.identifierStack;
        int i10 = this.identifierPtr;
        methodDeclaration.selector = cArr[i10];
        long[] jArr = this.identifierPositionStack;
        this.identifierPtr = i10 - 1;
        long j10 = jArr[i10];
        this.identifierLengthPtr--;
        int[] iArr = this.intStack;
        int i11 = this.intPtr;
        this.intPtr = i11 - 1;
        TypeReference typeReference = getTypeReference(iArr[i11]);
        if (z10) {
            rejectIllegalLeadingTypeAnnotations(typeReference);
        }
        methodDeclaration.returnType = typeReference;
        methodDeclaration.bits |= typeReference.bits & 1048576;
        int[] iArr2 = this.genericsLengthStack;
        int i12 = this.genericsLengthPtr;
        this.genericsLengthPtr = i12 - 1;
        int i13 = iArr2[i12];
        int i14 = this.genericsPtr - i13;
        this.genericsPtr = i14;
        TypeParameter[] typeParameterArr = new TypeParameter[i13];
        methodDeclaration.typeParameters = typeParameterArr;
        System.arraycopy(this.genericsStack, i14 + 1, typeParameterArr, 0, i13);
        int[] iArr3 = this.intStack;
        int i15 = this.intPtr;
        int i16 = i15 - 1;
        this.intPtr = i16;
        methodDeclaration.declarationSourceStart = iArr3[i15];
        this.intPtr = i15 - 2;
        methodDeclaration.modifiers = iArr3[i16];
        int[] iArr4 = this.expressionLengthStack;
        int i17 = this.expressionLengthPtr;
        this.expressionLengthPtr = i17 - 1;
        int i18 = iArr4[i17];
        if (i18 != 0) {
            Expression[] expressionArr = this.expressionStack;
            int i19 = this.expressionPtr - i18;
            this.expressionPtr = i19;
            Annotation[] annotationArr = new Annotation[i18];
            methodDeclaration.annotations = annotationArr;
            System.arraycopy(expressionArr, i19 + 1, annotationArr, 0, i18);
        }
        methodDeclaration.javadoc = this.javadoc;
        this.javadoc = null;
        methodDeclaration.sourceStart = (int) (j10 >>> 32);
        pushOnAstStack(methodDeclaration);
        int i20 = this.lParenPos;
        methodDeclaration.sourceEnd = i20;
        methodDeclaration.bodyStart = i20 + 1;
        this.listLength = 0;
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            boolean z11 = recoveredElement instanceof RecoveredType;
            if (!z11) {
                int i21 = methodDeclaration.returnType.sourceStart;
                Scanner scanner = this.scanner;
                int lineNumber = Util.getLineNumber(i21, scanner.lineEnds, 0, scanner.linePtr);
                int i22 = methodDeclaration.sourceStart;
                Scanner scanner2 = this.scanner;
                if (lineNumber != Util.getLineNumber(i22, scanner2.lineEnds, 0, scanner2.linePtr)) {
                    this.lastCheckPoint = methodDeclaration.sourceStart;
                    this.restartRecovery = true;
                    return;
                }
            }
            if (z11) {
                ((RecoveredType) this.currentElement).pendingTypeParameters = null;
            }
            this.lastCheckPoint = methodDeclaration.bodyStart;
            this.currentElement = this.currentElement.add(methodDeclaration, 0);
            this.lastIgnoredToken = -1;
        }
    }

    public void consumeMethodHeaderRightParen() {
        int i10;
        int[] iArr = this.astLengthStack;
        int i11 = this.astLengthPtr;
        this.astLengthPtr = i11 - 1;
        int i12 = iArr[i11];
        int i13 = this.astPtr - i12;
        this.astPtr = i13;
        ASTNode[] aSTNodeArr = this.astStack;
        AbstractMethodDeclaration abstractMethodDeclaration = (AbstractMethodDeclaration) aSTNodeArr[i13];
        abstractMethodDeclaration.sourceEnd = this.rParenPos;
        if (i12 != 0) {
            Argument argument = (Argument) aSTNodeArr[i13 + 1];
            if (!argument.isReceiver()) {
                ASTNode[] aSTNodeArr2 = this.astStack;
                int i14 = this.astPtr + 1;
                Argument[] argumentArr = new Argument[i12];
                abstractMethodDeclaration.arguments = argumentArr;
                System.arraycopy(aSTNodeArr2, i14, argumentArr, 0, i12);
                int length = abstractMethodDeclaration.arguments.length;
                int i15 = 0;
                while (true) {
                    if (i15 >= length) {
                        break;
                    }
                    if ((abstractMethodDeclaration.arguments[i15].bits & 1048576) != 0) {
                        abstractMethodDeclaration.bits |= 1048576;
                        break;
                    }
                    i15++;
                }
            } else {
                abstractMethodDeclaration.receiver = (Receiver) argument;
                if (i12 > 1) {
                    ASTNode[] aSTNodeArr3 = this.astStack;
                    int i16 = this.astPtr + 2;
                    int i17 = i12 - 1;
                    Argument[] argumentArr2 = new Argument[i17];
                    abstractMethodDeclaration.arguments = argumentArr2;
                    System.arraycopy(aSTNodeArr3, i16, argumentArr2, 0, i17);
                }
                Annotation[] annotationArr = argument.annotations;
                if (annotationArr != null && annotationArr.length > 0) {
                    TypeReference typeReference = argument.type;
                    if (typeReference.annotations == null) {
                        typeReference.bits |= 1048576;
                        typeReference.annotations = new Annotation[typeReference.getAnnotatableLevels()];
                        abstractMethodDeclaration.bits |= 1048576;
                    }
                    typeReference.annotations[0] = annotationArr;
                    int i18 = annotationArr[0].sourceStart;
                    if (typeReference.sourceStart > i18) {
                        typeReference.sourceStart = i18;
                    }
                    argument.annotations = null;
                }
                abstractMethodDeclaration.bits = (argument.type.bits & 1048576) | abstractMethodDeclaration.bits;
            }
        }
        int i19 = this.rParenPos + 1;
        abstractMethodDeclaration.bodyStart = i19;
        this.listLength = 0;
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            this.lastCheckPoint = i19;
            if (recoveredElement.parseTree() != abstractMethodDeclaration && abstractMethodDeclaration.isConstructor()) {
                if (i12 != 0 || (i10 = this.currentToken) == 49 || i10 == 120) {
                    this.currentElement = this.currentElement.add(abstractMethodDeclaration, 0);
                    this.lastIgnoredToken = -1;
                }
            }
        }
    }

    public void consumeMethodHeaderThrowsClause() {
        int[] iArr = this.astLengthStack;
        int i10 = this.astLengthPtr;
        this.astLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        int i12 = this.astPtr - i11;
        this.astPtr = i12;
        ASTNode[] aSTNodeArr = this.astStack;
        AbstractMethodDeclaration abstractMethodDeclaration = (AbstractMethodDeclaration) aSTNodeArr[i12];
        TypeReference[] typeReferenceArr = new TypeReference[i11];
        abstractMethodDeclaration.thrownExceptions = typeReferenceArr;
        System.arraycopy(aSTNodeArr, i12 + 1, typeReferenceArr, 0, i11);
        TypeReference typeReference = abstractMethodDeclaration.thrownExceptions[i11 - 1];
        abstractMethodDeclaration.sourceEnd = typeReference.sourceEnd;
        int i13 = typeReference.sourceEnd + 1;
        abstractMethodDeclaration.bodyStart = i13;
        this.listLength = 0;
        if (this.currentElement != null) {
            this.lastCheckPoint = i13;
        }
    }

    public void consumeMethodInvocationName() {
        MessageSend newMessageSend = newMessageSend();
        newMessageSend.sourceEnd = this.rParenPos;
        long[] jArr = this.identifierPositionStack;
        int i10 = this.identifierPtr;
        long j10 = jArr[i10];
        newMessageSend.nameSourcePosition = j10;
        newMessageSend.sourceStart = (int) (j10 >>> 32);
        char[][] cArr = this.identifierStack;
        this.identifierPtr = i10 - 1;
        newMessageSend.selector = cArr[i10];
        int[] iArr = this.identifierLengthStack;
        int i11 = this.identifierLengthPtr;
        int i12 = iArr[i11];
        if (i12 == 1) {
            newMessageSend.receiver = ThisReference.implicitThis();
            this.identifierLengthPtr--;
        } else {
            iArr[i11] = i12 - 1;
            NameReference unspecifiedReference = getUnspecifiedReference();
            newMessageSend.receiver = unspecifiedReference;
            newMessageSend.sourceStart = unspecifiedReference.sourceStart;
        }
        int[] iArr2 = this.typeAnnotationLengthStack;
        int i13 = this.typeAnnotationLengthPtr;
        this.typeAnnotationLengthPtr = i13 - 1;
        int i14 = iArr2[i13];
        if (i14 != 0) {
            Annotation[] annotationArr = this.typeAnnotationStack;
            int i15 = this.typeAnnotationPtr - i14;
            this.typeAnnotationPtr = i15;
            Annotation[] annotationArr2 = new Annotation[i14];
            System.arraycopy(annotationArr, i15 + 1, annotationArr2, 0, i14);
            problemReporter().misplacedTypeAnnotations(annotationArr2[0], annotationArr2[i14 - 1]);
        }
        pushOnExpressionStack(newMessageSend);
        consumeInvocationExpression();
    }

    public void consumeMethodInvocationNameWithTypeArguments() {
        MessageSend newMessageSendWithTypeArguments = newMessageSendWithTypeArguments();
        newMessageSendWithTypeArguments.sourceEnd = this.rParenPos;
        long[] jArr = this.identifierPositionStack;
        int i10 = this.identifierPtr;
        long j10 = jArr[i10];
        newMessageSendWithTypeArguments.nameSourcePosition = j10;
        newMessageSendWithTypeArguments.sourceStart = (int) (j10 >>> 32);
        char[][] cArr = this.identifierStack;
        this.identifierPtr = i10 - 1;
        newMessageSendWithTypeArguments.selector = cArr[i10];
        this.identifierLengthPtr--;
        int[] iArr = this.genericsLengthStack;
        int i11 = this.genericsLengthPtr;
        this.genericsLengthPtr = i11 - 1;
        int i12 = iArr[i11];
        int i13 = this.genericsPtr - i12;
        this.genericsPtr = i13;
        TypeReference[] typeReferenceArr = new TypeReference[i12];
        newMessageSendWithTypeArguments.typeArguments = typeReferenceArr;
        System.arraycopy(this.genericsStack, i13 + 1, typeReferenceArr, 0, i12);
        this.intPtr--;
        NameReference unspecifiedReference = getUnspecifiedReference();
        newMessageSendWithTypeArguments.receiver = unspecifiedReference;
        newMessageSendWithTypeArguments.sourceStart = unspecifiedReference.sourceStart;
        pushOnExpressionStack(newMessageSendWithTypeArguments);
        consumeInvocationExpression();
    }

    public void consumeMethodInvocationPrimary() {
        MessageSend newMessageSend = newMessageSend();
        long[] jArr = this.identifierPositionStack;
        int i10 = this.identifierPtr;
        long j10 = jArr[i10];
        newMessageSend.nameSourcePosition = j10;
        newMessageSend.sourceStart = (int) (j10 >>> 32);
        char[][] cArr = this.identifierStack;
        this.identifierPtr = i10 - 1;
        newMessageSend.selector = cArr[i10];
        this.identifierLengthPtr--;
        Expression[] expressionArr = this.expressionStack;
        int i11 = this.expressionPtr;
        Expression expression = expressionArr[i11];
        newMessageSend.receiver = expression;
        newMessageSend.sourceStart = expression.sourceStart;
        newMessageSend.sourceEnd = this.rParenPos;
        expressionArr[i11] = newMessageSend;
        consumeInvocationExpression();
    }

    public void consumeMethodInvocationPrimaryWithTypeArguments() {
        MessageSend newMessageSendWithTypeArguments = newMessageSendWithTypeArguments();
        long[] jArr = this.identifierPositionStack;
        int i10 = this.identifierPtr;
        long j10 = jArr[i10];
        newMessageSendWithTypeArguments.nameSourcePosition = j10;
        newMessageSendWithTypeArguments.sourceStart = (int) (j10 >>> 32);
        char[][] cArr = this.identifierStack;
        this.identifierPtr = i10 - 1;
        newMessageSendWithTypeArguments.selector = cArr[i10];
        this.identifierLengthPtr--;
        int[] iArr = this.genericsLengthStack;
        int i11 = this.genericsLengthPtr;
        this.genericsLengthPtr = i11 - 1;
        int i12 = iArr[i11];
        int i13 = this.genericsPtr - i12;
        this.genericsPtr = i13;
        TypeReference[] typeReferenceArr = new TypeReference[i12];
        newMessageSendWithTypeArguments.typeArguments = typeReferenceArr;
        System.arraycopy(this.genericsStack, i13 + 1, typeReferenceArr, 0, i12);
        this.intPtr--;
        Expression[] expressionArr = this.expressionStack;
        int i14 = this.expressionPtr;
        Expression expression = expressionArr[i14];
        newMessageSendWithTypeArguments.receiver = expression;
        newMessageSendWithTypeArguments.sourceStart = expression.sourceStart;
        newMessageSendWithTypeArguments.sourceEnd = this.rParenPos;
        expressionArr[i14] = newMessageSendWithTypeArguments;
        consumeInvocationExpression();
    }

    public void consumeMethodInvocationSuper() {
        MessageSend newMessageSend = newMessageSend();
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        newMessageSend.sourceStart = iArr[i10];
        newMessageSend.sourceEnd = this.rParenPos;
        long[] jArr = this.identifierPositionStack;
        int i11 = this.identifierPtr;
        newMessageSend.nameSourcePosition = jArr[i11];
        char[][] cArr = this.identifierStack;
        this.identifierPtr = i11 - 1;
        newMessageSend.selector = cArr[i11];
        this.identifierLengthPtr--;
        newMessageSend.receiver = new SuperReference(newMessageSend.sourceStart, this.endPosition);
        pushOnExpressionStack(newMessageSend);
        consumeInvocationExpression();
    }

    public void consumeMethodInvocationSuperWithTypeArguments() {
        MessageSend newMessageSendWithTypeArguments = newMessageSendWithTypeArguments();
        this.intPtr--;
        newMessageSendWithTypeArguments.sourceEnd = this.rParenPos;
        long[] jArr = this.identifierPositionStack;
        int i10 = this.identifierPtr;
        newMessageSendWithTypeArguments.nameSourcePosition = jArr[i10];
        char[][] cArr = this.identifierStack;
        this.identifierPtr = i10 - 1;
        newMessageSendWithTypeArguments.selector = cArr[i10];
        this.identifierLengthPtr--;
        int[] iArr = this.genericsLengthStack;
        int i11 = this.genericsLengthPtr;
        this.genericsLengthPtr = i11 - 1;
        int i12 = iArr[i11];
        int i13 = this.genericsPtr - i12;
        this.genericsPtr = i13;
        TypeReference[] typeReferenceArr = new TypeReference[i12];
        newMessageSendWithTypeArguments.typeArguments = typeReferenceArr;
        System.arraycopy(this.genericsStack, i13 + 1, typeReferenceArr, 0, i12);
        int[] iArr2 = this.intStack;
        int i14 = this.intPtr;
        this.intPtr = i14 - 1;
        newMessageSendWithTypeArguments.sourceStart = iArr2[i14];
        newMessageSendWithTypeArguments.receiver = new SuperReference(newMessageSendWithTypeArguments.sourceStart, this.endPosition);
        pushOnExpressionStack(newMessageSendWithTypeArguments);
        consumeInvocationExpression();
    }

    public void consumeModifiers() {
        int i10 = this.modifiersSourceStart;
        checkComment();
        pushOnIntStack(this.modifiers);
        if (this.modifiersSourceStart >= i10) {
            this.modifiersSourceStart = i10;
        }
        pushOnIntStack(this.modifiersSourceStart);
        resetModifiers();
    }

    public void consumeModifiers2() {
        int[] iArr = this.expressionLengthStack;
        int i10 = this.expressionLengthPtr;
        int i11 = i10 - 1;
        int i12 = iArr[i11];
        this.expressionLengthPtr = i10 - 1;
        iArr[i11] = i12 + iArr[i10];
    }

    public void consumeModuleDeclaration() {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int[] iArr = this.astLengthStack;
        int i15 = this.astLengthPtr;
        this.astLengthPtr = i15 - 1;
        int i16 = iArr[i15];
        int[] iArr2 = new int[i16 + 1];
        int i17 = 3;
        int i18 = 2;
        if (i16 != 0) {
            i10 = 0;
            i11 = 0;
            i12 = 0;
            i13 = 0;
            i14 = 0;
            for (int i19 = i16 - 1; i19 >= 0; i19--) {
                ASTNode[] aSTNodeArr = this.astStack;
                int i20 = this.astPtr;
                this.astPtr = i20 - 1;
                ASTNode aSTNode = aSTNodeArr[i20];
                if (aSTNode instanceof RequiresStatement) {
                    iArr2[i19] = 1;
                    i10++;
                } else if (aSTNode instanceof ExportsStatement) {
                    iArr2[i19] = 2;
                    i11++;
                } else if (aSTNode instanceof UsesStatement) {
                    iArr2[i19] = 3;
                    i12++;
                } else if (aSTNode instanceof ProvidesStatement) {
                    iArr2[i19] = 4;
                    i13++;
                } else if (aSTNode instanceof OpensStatement) {
                    iArr2[i19] = 5;
                    i14++;
                }
            }
        } else {
            i10 = 0;
            i11 = 0;
            i12 = 0;
            i13 = 0;
            i14 = 0;
        }
        ModuleDeclaration moduleDeclaration = (ModuleDeclaration) this.astStack[this.astPtr];
        moduleDeclaration.requiresCount = i10;
        moduleDeclaration.exportsCount = i11;
        moduleDeclaration.usesCount = i12;
        moduleDeclaration.servicesCount = i13;
        moduleDeclaration.opensCount = i14;
        moduleDeclaration.requires = new RequiresStatement[i10];
        moduleDeclaration.exports = new ExportsStatement[i11];
        moduleDeclaration.uses = new UsesStatement[i12];
        moduleDeclaration.services = new ProvidesStatement[i13];
        moduleDeclaration.opens = new OpensStatement[i14];
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        int i24 = 0;
        int i25 = 0;
        int i26 = 0;
        int i27 = iArr2[0];
        int i28 = 0;
        while (i21 <= i16) {
            if (i27 != iArr2[i21]) {
                if (i27 == 1) {
                    int i29 = i21 - i22;
                    i28 += i29;
                    System.arraycopy(this.astStack, this.astPtr + i22 + 1, moduleDeclaration.requires, i28 - i29, i29);
                } else if (i27 == i18) {
                    int i30 = i21 - i22;
                    i23 += i30;
                    System.arraycopy(this.astStack, this.astPtr + i22 + 1, moduleDeclaration.exports, i23 - i30, i30);
                } else if (i27 == i17) {
                    int i31 = i21 - i22;
                    i24 += i31;
                    System.arraycopy(this.astStack, this.astPtr + i22 + 1, moduleDeclaration.uses, i24 - i31, i31);
                } else if (i27 == 4) {
                    int i32 = i21 - i22;
                    i25 += i32;
                    System.arraycopy(this.astStack, this.astPtr + i22 + 1, moduleDeclaration.services, i25 - i32, i32);
                } else if (i27 == 5) {
                    int i33 = i21 - i22;
                    i26 += i33;
                    System.arraycopy(this.astStack, this.astPtr + i22 + 1, moduleDeclaration.opens, i26 - i33, i33);
                }
                i27 = iArr2[i21];
                i22 = i21;
            }
            i21++;
            i17 = 3;
            i18 = 2;
        }
        int i34 = this.endStatementPosition;
        moduleDeclaration.bodyEnd = i34;
        moduleDeclaration.declarationSourceEnd = flushCommentsDefinedPriorTo(i34);
    }

    public void consumeModuleHeader() {
        int[] iArr = this.identifierLengthStack;
        int i10 = this.identifierLengthPtr;
        this.identifierLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        char[][] cArr = new char[i11];
        int i12 = this.identifierPtr - i11;
        this.identifierPtr = i12;
        long[] jArr = new long[i11];
        char[][] cArr2 = this.identifierStack;
        int i13 = i12 + 1;
        this.identifierPtr = i13;
        System.arraycopy(cArr2, i13, cArr, 0, i11);
        long[] jArr2 = this.identifierPositionStack;
        int i14 = this.identifierPtr;
        this.identifierPtr = i14 - 1;
        System.arraycopy(jArr2, i14, jArr, 0, i11);
        ModuleDeclaration moduleDeclaration = new ModuleDeclaration(this.compilationUnit.compilationResult, cArr, jArr);
        int[] iArr2 = this.intStack;
        int i15 = this.intPtr;
        int i16 = i15 - 1;
        this.intPtr = i16;
        moduleDeclaration.declarationSourceStart = iArr2[i15];
        moduleDeclaration.bodyStart = moduleDeclaration.sourceEnd + 1;
        int i17 = i15 - 2;
        this.intPtr = i17;
        int i18 = iArr2[i16];
        moduleDeclaration.modifiersSourceStart = i18;
        this.intPtr = i15 - 3;
        moduleDeclaration.modifiers = iArr2[i17];
        if (i18 >= 0) {
            moduleDeclaration.declarationSourceStart = i18;
        }
        int[] iArr3 = this.expressionLengthStack;
        int i19 = this.expressionLengthPtr;
        this.expressionLengthPtr = i19 - 1;
        int i20 = iArr3[i19];
        if (i20 != 0) {
            Expression[] expressionArr = this.expressionStack;
            int i21 = this.expressionPtr - i20;
            this.expressionPtr = i21;
            Annotation[] annotationArr = new Annotation[i20];
            moduleDeclaration.annotations = annotationArr;
            System.arraycopy(expressionArr, i21 + 1, annotationArr, 0, i20);
        }
        pushOnAstStack(moduleDeclaration);
        this.listLength = 0;
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            this.lastCheckPoint = moduleDeclaration.bodyStart;
            this.currentElement = recoveredElement.add(moduleDeclaration, 0);
            this.lastIgnoredToken = -1;
        }
    }

    public void consumeModuleModifiers() {
        checkComment();
        int[] iArr = this.intStack;
        int i10 = this.intPtr - 1;
        iArr[i10] = iArr[i10] | this.modifiers;
        resetModifiers();
        int[] iArr2 = this.expressionLengthStack;
        int i11 = this.expressionLengthPtr;
        int i12 = i11 - 1;
        int i13 = iArr2[i12];
        this.expressionLengthPtr = i11 - 1;
        iArr2[i12] = i13 + iArr2[i11];
    }

    public void consumeModuleStatements() {
        concatNodeLists();
    }

    public void consumeMultipleResources() {
        concatNodeLists();
    }

    public void consumeNameArrayType() {
        pushOnGenericsLengthStack(0);
        pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[this.identifierLengthPtr]);
    }

    public void consumeNestedLambda() {
        consumeNestedType();
        int[] iArr = this.nestedMethod;
        int i10 = this.nestedType;
        iArr[i10] = iArr[i10] + 1;
        pushOnAstStack(new LambdaExpression(this.compilationUnit.compilationResult, isAssistParser()));
        this.processingLambdaParameterList = true;
    }

    public void consumeNestedMethod() {
        jumpOverMethodBody();
        int[] iArr = this.nestedMethod;
        int i10 = this.nestedType;
        iArr[i10] = iArr[i10] + 1;
        pushOnIntStack(this.scanner.currentPosition);
        consumeOpenBlock();
    }

    public void consumeNestedType() {
        int[] iArr = this.nestedMethod;
        int length = iArr.length;
        int i10 = this.nestedType + 1;
        this.nestedType = i10;
        if (i10 >= length) {
            int i11 = length + 30;
            int[] iArr2 = new int[i11];
            this.nestedMethod = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, length);
            int[] iArr3 = this.variablesCounter;
            int[] iArr4 = new int[i11];
            this.variablesCounter = iArr4;
            System.arraycopy(iArr3, 0, iArr4, 0, length);
        }
        int[] iArr5 = this.nestedMethod;
        int i12 = this.nestedType;
        iArr5[i12] = 0;
        this.variablesCounter[i12] = 0;
    }

    public void consumeNonTypeUseName() {
        for (int i10 = this.identifierLengthStack[this.identifierLengthPtr]; i10 > 0; i10--) {
            int i11 = this.typeAnnotationLengthPtr;
            if (i11 < 0) {
                return;
            }
            int[] iArr = this.typeAnnotationLengthStack;
            this.typeAnnotationLengthPtr = i11 - 1;
            int i12 = iArr[i11];
            if (i12 != 0) {
                Annotation[] annotationArr = this.typeAnnotationStack;
                int i13 = this.typeAnnotationPtr - i12;
                this.typeAnnotationPtr = i13;
                Annotation[] annotationArr2 = new Annotation[i12];
                System.arraycopy(annotationArr, i13 + 1, annotationArr2, 0, i12);
                problemReporter().misplacedTypeAnnotations(annotationArr2[0], annotationArr2[i12 - 1]);
            }
        }
    }

    public void consumeNormalAnnotation(boolean z10) {
        int i10 = this.identifierPtr;
        TypeReference annotationType = getAnnotationType();
        int[] iArr = this.intStack;
        int i11 = this.intPtr;
        this.intPtr = i11 - 1;
        NormalAnnotation normalAnnotation = new NormalAnnotation(annotationType, iArr[i11]);
        int[] iArr2 = this.astLengthStack;
        int i12 = this.astLengthPtr;
        this.astLengthPtr = i12 - 1;
        int i13 = iArr2[i12];
        if (i13 != 0) {
            ASTNode[] aSTNodeArr = this.astStack;
            int i14 = this.astPtr - i13;
            this.astPtr = i14;
            MemberValuePair[] memberValuePairArr = new MemberValuePair[i13];
            normalAnnotation.memberValuePairs = memberValuePairArr;
            System.arraycopy(aSTNodeArr, i14 + 1, memberValuePairArr, 0, i13);
        }
        normalAnnotation.declarationSourceEnd = this.rParenPos;
        if (z10) {
            pushOnTypeAnnotationStack(normalAnnotation);
        } else {
            pushOnExpressionStack(normalAnnotation);
        }
        if (this.currentElement != null) {
            annotationRecoveryCheckPoint(normalAnnotation.sourceStart, normalAnnotation.declarationSourceEnd);
            RecoveredElement recoveredElement = this.currentElement;
            if (recoveredElement instanceof RecoveredAnnotation) {
                this.currentElement = ((RecoveredAnnotation) recoveredElement).addAnnotation(normalAnnotation, i10);
            }
        }
        if (!this.statementRecoveryActivated && this.options.sourceLevel < ClassFileConstants.JDK1_5 && this.lastErrorEndPositionBeforeRecovery < this.scanner.currentPosition) {
            problemReporter().invalidUsageOfAnnotation(normalAnnotation);
        }
        this.recordStringLiterals = true;
    }

    public void consumeOneDimLoop(boolean z10) {
        this.dimensions++;
        if (z10) {
            return;
        }
        pushOnTypeAnnotationLengthStack(0);
    }

    public void consumeOneMoreTypeAnnotation() {
        int[] iArr = this.typeAnnotationLengthStack;
        int i10 = this.typeAnnotationLengthPtr - 1;
        this.typeAnnotationLengthPtr = i10;
        iArr[i10] = iArr[i10] + 1;
    }

    public void consumeOnlySynchronized() {
        pushOnIntStack(this.synchronizedBlockSourceStart);
        resetModifiers();
        this.expressionLengthPtr--;
    }

    public void consumeOnlyTypeArguments() {
        if (this.statementRecoveryActivated || this.options.sourceLevel >= ClassFileConstants.JDK1_5 || this.lastErrorEndPositionBeforeRecovery >= this.scanner.currentPosition) {
            return;
        }
        int i10 = this.genericsLengthStack[this.genericsLengthPtr];
        ProblemReporter problemReporter = problemReporter();
        ASTNode[] aSTNodeArr = this.genericsStack;
        int i11 = this.genericsPtr;
        problemReporter.invalidUsageOfTypeArguments((TypeReference) aSTNodeArr[(i11 - i10) + 1], (TypeReference) aSTNodeArr[i11]);
    }

    public void consumeOnlyTypeArgumentsForCastExpression() {
    }

    public void consumeOpenBlock() {
        pushOnIntStack(this.scanner.startPosition);
        int[] iArr = this.realBlockStack;
        int length = iArr.length;
        int i10 = this.realBlockPtr + 1;
        this.realBlockPtr = i10;
        if (i10 >= length) {
            int[] iArr2 = new int[length + 255];
            this.realBlockStack = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, length);
        }
        this.realBlockStack[this.realBlockPtr] = 0;
    }

    public void consumeOpensHeader() {
        ImportReference importReference = (ImportReference) this.astStack[this.astPtr];
        importReference.bits |= 262144;
        OpensStatement opensStatement = new OpensStatement(importReference);
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        int i11 = iArr[i10];
        opensStatement.declarationSourceStart = i11;
        opensStatement.sourceStart = i11;
        int i12 = importReference.sourceEnd;
        opensStatement.sourceEnd = i12;
        if (this.currentToken == 26) {
            opensStatement.declarationSourceEnd = this.scanner.currentPosition - 1;
        } else {
            opensStatement.declarationSourceEnd = i12;
        }
        int i13 = opensStatement.declarationSourceEnd;
        opensStatement.declarationEnd = i13;
        this.astStack[this.astPtr] = opensStatement;
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement instanceof RecoveredModule) {
            this.lastCheckPoint = i13 + 1;
            this.currentElement = recoveredElement.add(opensStatement, 0);
        }
    }

    public void consumeOpensStatement() {
        OpensStatement opensStatement = (OpensStatement) this.astStack[this.astPtr];
        int i10 = this.endStatementPosition;
        opensStatement.declarationSourceEnd = i10;
        opensStatement.declarationEnd = i10;
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement instanceof RecoveredPackageVisibilityStatement) {
            this.lastCheckPoint = i10 + 1;
            this.currentElement = recoveredElement.parent;
            this.lastIgnoredToken = -1;
            this.restartRecovery = true;
        }
    }

    public void consumePackageComment() {
        if (this.options.sourceLevel >= ClassFileConstants.JDK1_5) {
            checkComment();
            resetModifiers();
        }
    }

    public void consumePackageDeclaration() {
        CompilationUnitDeclaration compilationUnitDeclaration = this.compilationUnit;
        ImportReference importReference = compilationUnitDeclaration.currentPackage;
        compilationUnitDeclaration.javadoc = this.javadoc;
        this.javadoc = null;
        importReference.declarationEnd = this.endStatementPosition;
        importReference.declarationSourceEnd = flushCommentsDefinedPriorTo(importReference.declarationSourceEnd);
        if (this.firstToken == 29) {
            this.unstackedAct = ParserBasicInformation.ACCEPT_ACTION;
        }
    }

    public void consumePackageDeclarationName() {
        int[] iArr = this.identifierLengthStack;
        int i10 = this.identifierLengthPtr;
        this.identifierLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        char[][] cArr = new char[i11];
        int i12 = this.identifierPtr - i11;
        this.identifierPtr = i12;
        long[] jArr = new long[i11];
        char[][] cArr2 = this.identifierStack;
        int i13 = i12 + 1;
        this.identifierPtr = i13;
        System.arraycopy(cArr2, i13, cArr, 0, i11);
        long[] jArr2 = this.identifierPositionStack;
        int i14 = this.identifierPtr;
        this.identifierPtr = i14 - 1;
        System.arraycopy(jArr2, i14, jArr, 0, i11);
        ImportReference importReference = new ImportReference(cArr, jArr, false, 0);
        this.compilationUnit.currentPackage = importReference;
        if (this.currentToken == 26) {
            importReference.declarationSourceEnd = this.scanner.currentPosition - 1;
        } else {
            importReference.declarationSourceEnd = importReference.sourceEnd;
        }
        int i15 = importReference.declarationSourceEnd;
        importReference.declarationEnd = i15;
        int[] iArr2 = this.intStack;
        int i16 = this.intPtr;
        this.intPtr = i16 - 1;
        importReference.declarationSourceStart = iArr2[i16];
        Javadoc javadoc = this.javadoc;
        if (javadoc != null) {
            importReference.declarationSourceStart = javadoc.sourceStart;
        }
        if (this.currentElement != null) {
            this.lastCheckPoint = i15 + 1;
            this.restartRecovery = true;
        }
    }

    public void consumePackageDeclarationNameWithModifiers() {
        int i10;
        int[] iArr = this.identifierLengthStack;
        int i11 = this.identifierLengthPtr;
        this.identifierLengthPtr = i11 - 1;
        int i12 = iArr[i11];
        char[][] cArr = new char[i12];
        int i13 = this.identifierPtr - i12;
        this.identifierPtr = i13;
        long[] jArr = new long[i12];
        char[][] cArr2 = this.identifierStack;
        int i14 = i13 + 1;
        this.identifierPtr = i14;
        System.arraycopy(cArr2, i14, cArr, 0, i12);
        long[] jArr2 = this.identifierPositionStack;
        int i15 = this.identifierPtr;
        this.identifierPtr = i15 - 1;
        System.arraycopy(jArr2, i15, jArr, 0, i12);
        int[] iArr2 = this.intStack;
        int i16 = this.intPtr;
        int i17 = i16 - 1;
        this.intPtr = i17;
        int i18 = iArr2[i16];
        this.intPtr = i16 - 2;
        int i19 = iArr2[i17];
        ImportReference importReference = new ImportReference(cArr, jArr, false, i19);
        this.compilationUnit.currentPackage = importReference;
        int[] iArr3 = this.expressionLengthStack;
        int i20 = this.expressionLengthPtr;
        this.expressionLengthPtr = i20 - 1;
        int i21 = iArr3[i20];
        if (i21 != 0) {
            Expression[] expressionArr = this.expressionStack;
            int i22 = this.expressionPtr - i21;
            this.expressionPtr = i22;
            Annotation[] annotationArr = new Annotation[i21];
            importReference.annotations = annotationArr;
            System.arraycopy(expressionArr, i22 + 1, annotationArr, 0, i21);
            importReference.declarationSourceStart = i18;
            int[] iArr4 = this.intStack;
            int i23 = this.intPtr;
            this.intPtr = i23 - 1;
            i10 = iArr4[i23] - 2;
        } else {
            int[] iArr5 = this.intStack;
            int i24 = this.intPtr;
            this.intPtr = i24 - 1;
            int i25 = iArr5[i24];
            importReference.declarationSourceStart = i25;
            i10 = i25 - 2;
            Javadoc javadoc = this.javadoc;
            if (javadoc != null) {
                importReference.declarationSourceStart = javadoc.sourceStart;
            }
        }
        if (i19 != 0) {
            problemReporter().illegalModifiers(i18, i10);
        }
        if (this.currentToken == 26) {
            importReference.declarationSourceEnd = this.scanner.currentPosition - 1;
        } else {
            importReference.declarationSourceEnd = importReference.sourceEnd;
        }
        int i26 = importReference.declarationSourceEnd;
        importReference.declarationEnd = i26;
        if (this.currentElement != null) {
            this.lastCheckPoint = i26 + 1;
            this.restartRecovery = true;
        }
    }

    public void consumePostfixExpression() {
        pushOnExpressionStack(getUnspecifiedReferenceOptimized());
    }

    public void consumePrimaryNoNewArray() {
        Expression expression = this.expressionStack[this.expressionPtr];
        updateSourcePosition(expression);
        int i10 = expression.bits;
        expression.bits = (i10 & (-534773761)) | ((((534773760 & i10) >> 21) + 1) << 21);
    }

    public void consumePrimaryNoNewArrayArrayType() {
        this.intPtr--;
        pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[this.identifierLengthPtr]);
        pushOnGenericsLengthStack(0);
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        int i11 = i10 - 1;
        this.intPtr = i11;
        int i12 = iArr[i10];
        this.intPtr = i10 - 2;
        ClassLiteralAccess classLiteralAccess = new ClassLiteralAccess(i12, getTypeReference(iArr[i11]));
        pushOnExpressionStack(classLiteralAccess);
        rejectIllegalTypeAnnotations(classLiteralAccess.type);
    }

    public void consumePrimaryNoNewArrayName() {
        this.intPtr--;
        pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[this.identifierLengthPtr]);
        pushOnGenericsLengthStack(0);
        TypeReference typeReference = getTypeReference(0);
        rejectIllegalTypeAnnotations(typeReference);
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        pushOnExpressionStack(new ClassLiteralAccess(iArr[i10], typeReference));
    }

    public void consumePrimaryNoNewArrayNameThis() {
        pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[this.identifierLengthPtr]);
        pushOnGenericsLengthStack(0);
        TypeReference typeReference = getTypeReference(0);
        rejectIllegalTypeAnnotations(typeReference);
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        pushOnExpressionStack(new QualifiedThisReference(typeReference, iArr[i10], this.endPosition));
    }

    public void consumePrimaryNoNewArrayPrimitiveArrayType() {
        this.intPtr--;
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        int i11 = i10 - 1;
        this.intPtr = i11;
        int i12 = iArr[i10];
        this.intPtr = i10 - 2;
        ClassLiteralAccess classLiteralAccess = new ClassLiteralAccess(i12, getTypeReference(iArr[i11]));
        pushOnExpressionStack(classLiteralAccess);
        rejectIllegalTypeAnnotations(classLiteralAccess.type);
    }

    public void consumePrimaryNoNewArrayPrimitiveType() {
        this.intPtr--;
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        ClassLiteralAccess classLiteralAccess = new ClassLiteralAccess(iArr[i10], getTypeReference(0));
        pushOnExpressionStack(classLiteralAccess);
        rejectIllegalTypeAnnotations(classLiteralAccess.type);
    }

    public void consumePrimaryNoNewArrayThis() {
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        pushOnExpressionStack(new ThisReference(iArr[i10], this.endPosition));
    }

    public void consumePrimaryNoNewArrayWithName() {
        pushOnExpressionStack(getUnspecifiedReferenceOptimized());
        Expression expression = this.expressionStack[this.expressionPtr];
        updateSourcePosition(expression);
        int i10 = expression.bits;
        expression.bits = (i10 & (-534773761)) | ((((534773760 & i10) >> 21) + 1) << 21);
    }

    public void consumePrimitiveArrayType() {
    }

    public void consumePrimitiveType() {
        pushOnIntStack(0);
    }

    public void consumeProvidesInterface() {
        pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[this.identifierLengthPtr]);
        pushOnGenericsLengthStack(0);
        TypeReference typeReference = getTypeReference(0);
        if (typeReference.annotations != null) {
            int i10 = 0;
            while (true) {
                Annotation[][] annotationArr = typeReference.annotations;
                if (i10 >= annotationArr.length) {
                    break;
                }
                Annotation[] annotationArr2 = annotationArr[i10];
                if (annotationArr2 != null && annotationArr2.length > 0) {
                    problemReporter().misplacedTypeAnnotations(annotationArr2[0], annotationArr2[annotationArr2.length - 1]);
                    typeReference.annotations[i10] = null;
                }
                i10++;
            }
        }
        ProvidesStatement providesStatement = new ProvidesStatement();
        providesStatement.serviceInterface = typeReference;
        pushOnAstStack(providesStatement);
        int[] iArr = this.intStack;
        int i11 = this.intPtr;
        this.intPtr = i11 - 1;
        int i12 = iArr[i11];
        providesStatement.declarationSourceStart = i12;
        providesStatement.sourceStart = i12;
        int i13 = typeReference.sourceEnd;
        providesStatement.sourceEnd = i13;
        providesStatement.declarationSourceEnd = i13;
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement instanceof RecoveredModule) {
            this.lastCheckPoint = typeReference.sourceEnd + 1;
            this.currentElement = recoveredElement.add(providesStatement, 0);
            this.lastIgnoredToken = -1;
        }
    }

    public void consumeProvidesStatement() {
        ProvidesStatement providesStatement = (ProvidesStatement) this.astStack[this.astPtr];
        int i10 = this.endStatementPosition;
        providesStatement.declarationSourceEnd = i10;
        providesStatement.declarationEnd = i10;
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement instanceof RecoveredProvidesStatement) {
            this.lastIgnoredToken = -1;
            this.currentElement = recoveredElement.parent;
            this.restartRecovery = true;
        }
    }

    public void consumePushCombineModifiers() {
        int i10 = this.intPtr;
        int[] iArr = this.intStack;
        this.intPtr = i10 - 2;
        int i11 = iArr[i10 - 1];
        int i12 = 65536 | i11;
        int i13 = i10 - 4;
        this.intPtr = i13;
        if ((iArr[i10 - 5] & i12) != 0) {
            i12 = 4259840 | i11;
        }
        int i14 = i10 - 5;
        iArr[i14] = iArr[i14] | i12;
        int[] iArr2 = this.expressionLengthStack;
        int i15 = this.expressionLengthPtr;
        int i16 = i15 - 1;
        int i17 = iArr2[i16];
        this.expressionLengthPtr = i15 - 1;
        iArr2[i16] = i17 + iArr2[i15];
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            recoveredElement.addModifier(i12, iArr[i13]);
        }
    }

    public void consumePushLeftBrace() {
        pushOnIntStack(this.endPosition);
    }

    public void consumePushModifiers() {
        pushOnIntStack(this.modifiers);
        pushOnIntStack(this.modifiersSourceStart);
        resetModifiers();
        pushOnExpressionStackLengthStack(0);
    }

    public void consumePushModifiersForHeader() {
        checkComment();
        pushOnIntStack(this.modifiers);
        pushOnIntStack(this.modifiersSourceStart);
        resetModifiers();
        pushOnExpressionStackLengthStack(0);
    }

    public void consumePushPosition() {
        pushOnIntStack(this.endPosition);
    }

    public void consumePushRealModifiers() {
        checkComment();
        pushOnIntStack(this.modifiers);
        pushOnIntStack(this.modifiersSourceStart);
        resetModifiers();
    }

    public void consumeQualifiedName(boolean z10) {
        int[] iArr = this.identifierLengthStack;
        int i10 = this.identifierLengthPtr - 1;
        this.identifierLengthPtr = i10;
        iArr[i10] = iArr[i10] + 1;
        if (z10) {
            return;
        }
        pushOnTypeAnnotationLengthStack(0);
    }

    public void consumeQualifiedSuperReceiver() {
        pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[this.identifierLengthPtr]);
        pushOnGenericsLengthStack(0);
        TypeReference typeReference = getTypeReference(0);
        rejectIllegalTypeAnnotations(typeReference);
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        pushOnExpressionStack(new QualifiedSuperReference(typeReference, iArr[i10], this.endPosition));
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0022, code lost:
    
        if ((r0.typeDeclaration.modifiers & 8192) != 0) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
    
        if ((((org.eclipse.jdt.internal.compiler.parser.RecoveredType) r0).typeDeclaration.modifiers & 8192) != 0) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0013, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0014, code lost:
    
        r3 = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void consumeRecoveryMethodHeaderName() {
        RecoveredElement recoveredElement = this.currentElement;
        boolean z10 = true;
        boolean z11 = false;
        if (!(recoveredElement instanceof RecoveredType)) {
            RecoveredType enclosingType = recoveredElement.enclosingType();
            if (enclosingType != null) {
            }
        }
        consumeMethodHeaderName(z11);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0022, code lost:
    
        if ((r0.typeDeclaration.modifiers & 8192) != 0) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
    
        if ((((org.eclipse.jdt.internal.compiler.parser.RecoveredType) r0).typeDeclaration.modifiers & 8192) != 0) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0013, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0014, code lost:
    
        r3 = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void consumeRecoveryMethodHeaderNameWithTypeParameters() {
        RecoveredElement recoveredElement = this.currentElement;
        boolean z10 = true;
        boolean z11 = false;
        if (!(recoveredElement instanceof RecoveredType)) {
            RecoveredType enclosingType = recoveredElement.enclosingType();
            if (enclosingType != null) {
            }
        }
        consumeMethodHeaderNameWithTypeParameters(z11);
    }

    public void consumeReduceImports() {
        int[] iArr = this.astLengthStack;
        int i10 = this.astLengthPtr;
        this.astLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 != 0) {
            int i12 = this.astPtr - i11;
            this.astPtr = i12;
            ImportReference[] importReferenceArr = new ImportReference[i11];
            this.compilationUnit.imports = importReferenceArr;
            System.arraycopy(this.astStack, i12 + 1, importReferenceArr, 0, i11);
        }
    }

    public void consumeReferenceExpression(ReferenceExpression referenceExpression) {
        pushOnExpressionStack(referenceExpression);
        if (!this.parsingJava8Plus) {
            problemReporter().referenceExpressionsNotBelow18(referenceExpression);
        }
        if (referenceExpression.compilationResult.getCompilationUnit() == null) {
            int i10 = (referenceExpression.sourceEnd - referenceExpression.sourceStart) + 1;
            char[] source = this.scanner.getSource();
            int i11 = referenceExpression.sourceStart;
            char[] cArr = new char[i10];
            referenceExpression.text = cArr;
            System.arraycopy(source, i11, cArr, 0, i10);
        }
        this.referenceContext.compilationResult().hasFunctionalTypes = true;
        markEnclosingMemberWithLocalOrFunctionalType(LocalTypeKind.METHOD_REFERENCE);
    }

    public void consumeReferenceExpressionGenericTypeForm() {
        TypeReference[] typeReferenceArr;
        Expression typeReference;
        ReferenceExpression newReferenceExpression = newReferenceExpression();
        long[] jArr = this.identifierPositionStack;
        int i10 = this.identifierPtr;
        long j10 = jArr[i10];
        int i11 = (int) j10;
        newReferenceExpression.nameSourceStart = (int) (j10 >>> 32);
        char[][] cArr = this.identifierStack;
        this.identifierPtr = i10 - 1;
        char[] cArr2 = cArr[i10];
        this.identifierLengthPtr--;
        int[] iArr = this.genericsLengthStack;
        int i12 = this.genericsLengthPtr;
        this.genericsLengthPtr = i12 - 1;
        int i13 = iArr[i12];
        if (i13 > 0) {
            int i14 = this.genericsPtr - i13;
            this.genericsPtr = i14;
            typeReferenceArr = new TypeReference[i13];
            System.arraycopy(this.genericsStack, i14 + 1, typeReferenceArr, 0, i13);
            this.intPtr--;
        } else {
            typeReferenceArr = null;
        }
        int[] iArr2 = this.intStack;
        int i15 = this.intPtr;
        int i16 = i15 - 1;
        this.intPtr = i16;
        int i17 = iArr2[i15];
        int i18 = i15 - 2;
        this.intPtr = i18;
        boolean z10 = iArr2[i16] != 0;
        this.intPtr = i15 - 3;
        int i19 = iArr2[i18];
        if (z10) {
            typeReference = computeQualifiedGenericsFromRightSide(getTypeReference(0), i19, i19 != 0 ? getAnnotationsOnDimensions(i19) : null);
        } else {
            pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[this.identifierLengthPtr]);
            typeReference = getTypeReference(i19);
        }
        Expression expression = typeReference;
        this.intPtr--;
        expression.sourceEnd = i17;
        newReferenceExpression.initialize(this.compilationUnit.compilationResult, expression, typeReferenceArr, cArr2, i11);
        consumeReferenceExpression(newReferenceExpression);
    }

    public void consumeReferenceExpressionPrimaryForm() {
        TypeReference[] typeReferenceArr;
        ReferenceExpression newReferenceExpression = newReferenceExpression();
        long[] jArr = this.identifierPositionStack;
        int i10 = this.identifierPtr;
        long j10 = jArr[i10];
        int i11 = (int) j10;
        newReferenceExpression.nameSourceStart = (int) (j10 >>> 32);
        char[][] cArr = this.identifierStack;
        this.identifierPtr = i10 - 1;
        char[] cArr2 = cArr[i10];
        this.identifierLengthPtr--;
        int[] iArr = this.genericsLengthStack;
        int i12 = this.genericsLengthPtr;
        this.genericsLengthPtr = i12 - 1;
        int i13 = iArr[i12];
        if (i13 > 0) {
            int i14 = this.genericsPtr - i13;
            this.genericsPtr = i14;
            typeReferenceArr = new TypeReference[i13];
            System.arraycopy(this.genericsStack, i14 + 1, typeReferenceArr, 0, i13);
            this.intPtr--;
        } else {
            typeReferenceArr = null;
        }
        Expression[] expressionArr = this.expressionStack;
        int i15 = this.expressionPtr;
        this.expressionPtr = i15 - 1;
        this.expressionLengthPtr--;
        newReferenceExpression.initialize(this.compilationUnit.compilationResult, expressionArr[i15], typeReferenceArr, cArr2, i11);
        consumeReferenceExpression(newReferenceExpression);
    }

    public void consumeReferenceExpressionSuperForm() {
        TypeReference[] typeReferenceArr;
        ReferenceExpression newReferenceExpression = newReferenceExpression();
        long[] jArr = this.identifierPositionStack;
        int i10 = this.identifierPtr;
        long j10 = jArr[i10];
        int i11 = (int) j10;
        newReferenceExpression.nameSourceStart = (int) (j10 >>> 32);
        char[][] cArr = this.identifierStack;
        this.identifierPtr = i10 - 1;
        char[] cArr2 = cArr[i10];
        this.identifierLengthPtr--;
        int[] iArr = this.genericsLengthStack;
        int i12 = this.genericsLengthPtr;
        this.genericsLengthPtr = i12 - 1;
        int i13 = iArr[i12];
        if (i13 > 0) {
            int i14 = this.genericsPtr - i13;
            this.genericsPtr = i14;
            typeReferenceArr = new TypeReference[i13];
            System.arraycopy(this.genericsStack, i14 + 1, typeReferenceArr, 0, i13);
            this.intPtr--;
        } else {
            typeReferenceArr = null;
        }
        int[] iArr2 = this.intStack;
        int i15 = this.intPtr;
        this.intPtr = i15 - 1;
        newReferenceExpression.initialize(this.compilationUnit.compilationResult, new SuperReference(iArr2[i15], this.endPosition), typeReferenceArr, cArr2, i11);
        consumeReferenceExpression(newReferenceExpression);
    }

    public void consumeReferenceExpressionTypeArgumentsAndTrunk(boolean z10) {
        pushOnIntStack(z10 ? 1 : 0);
        pushOnIntStack(this.scanner.startPosition - 1);
    }

    public void consumeReferenceExpressionTypeForm(boolean z10) {
        TypeReference[] typeReferenceArr;
        ReferenceExpression newReferenceExpression = newReferenceExpression();
        long[] jArr = this.identifierPositionStack;
        int i10 = this.identifierPtr;
        long j10 = jArr[i10];
        int i11 = (int) j10;
        newReferenceExpression.nameSourceStart = (int) (j10 >>> 32);
        char[][] cArr = this.identifierStack;
        this.identifierPtr = i10 - 1;
        char[] cArr2 = cArr[i10];
        boolean z11 = true;
        this.identifierLengthPtr--;
        int[] iArr = this.genericsLengthStack;
        int i12 = this.genericsLengthPtr;
        this.genericsLengthPtr = i12 - 1;
        int i13 = iArr[i12];
        if (i13 > 0) {
            int i14 = this.genericsPtr - i13;
            this.genericsPtr = i14;
            TypeReference[] typeReferenceArr2 = new TypeReference[i13];
            System.arraycopy(this.genericsStack, i14 + 1, typeReferenceArr2, 0, i13);
            this.intPtr--;
            typeReferenceArr = typeReferenceArr2;
        } else {
            typeReferenceArr = null;
        }
        int[] iArr2 = this.intStack;
        int i15 = this.intPtr;
        this.intPtr = i15 - 1;
        int i16 = iArr2[i15];
        int i17 = this.identifierLengthStack[this.identifierLengthPtr];
        int i18 = 0;
        while (i17 > 0) {
            int i19 = this.typeAnnotationLengthPtr;
            if (i19 < 0) {
                break;
            }
            if (this.typeAnnotationLengthStack[i19 - i18] != 0) {
                break;
            }
            i17--;
            i18++;
        }
        z11 = false;
        if (i16 > 0 || z11) {
            if (!z10) {
                pushOnGenericsLengthStack(0);
                pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[this.identifierLengthPtr]);
            }
            newReferenceExpression.initialize(this.compilationUnit.compilationResult, getTypeReference(i16), typeReferenceArr, cArr2, i11);
        } else {
            newReferenceExpression.initialize(this.compilationUnit.compilationResult, getUnspecifiedReference(), typeReferenceArr, cArr2, i11);
        }
        if (CharOperation.equals(cArr2, TypeConstants.INIT)) {
            Expression expression = newReferenceExpression.lhs;
            if (expression instanceof NameReference) {
                expression.bits &= -4;
            }
        }
        consumeReferenceExpression(newReferenceExpression);
    }

    public void consumeReferenceType() {
        pushOnIntStack(0);
    }

    public void consumeReferenceType1() {
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        pushOnGenericsStack(getTypeReference(iArr[i10]));
    }

    public void consumeReferenceType2() {
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        pushOnGenericsStack(getTypeReference(iArr[i10]));
    }

    public void consumeReferenceType3() {
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        pushOnGenericsStack(getTypeReference(iArr[i10]));
    }

    public void consumeRequiresStatement() {
        RequiresStatement requiresStatement = (RequiresStatement) this.astStack[this.astPtr];
        int i10 = this.endStatementPosition;
        requiresStatement.declarationSourceEnd = i10;
        requiresStatement.declarationEnd = i10;
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement instanceof RecoveredModule) {
            this.lastCheckPoint = i10 + 1;
            this.currentElement = recoveredElement.add(requiresStatement, 0);
            this.lastIgnoredToken = -1;
            this.restartRecovery = true;
        }
    }

    public void consumeResourceAsFieldAccess() {
        Expression[] expressionArr = this.expressionStack;
        int i10 = this.expressionPtr;
        this.expressionPtr = i10 - 1;
        pushOnAstStack((FieldReference) expressionArr[i10]);
    }

    public void consumeResourceAsLocalVariable() {
        pushOnAstStack(getUnspecifiedReference(true));
    }

    public void consumeResourceAsLocalVariableDeclaration() {
        consumeLocalVariableDeclaration();
    }

    public void consumeResourceOptionalTrailingSemiColon(boolean z10) {
        Statement statement = (Statement) this.astStack[this.astPtr];
        if (z10 && (statement instanceof LocalDeclaration)) {
            ((LocalDeclaration) statement).declarationSourceEnd = this.endStatementPosition;
        }
    }

    public void consumeResourceSpecification() {
    }

    public void consumeRestoreDiet() {
        this.dietInt--;
    }

    public void consumeRightParen() {
        pushOnIntStack(this.rParenPos);
    }

    public void consumeRule(int i10) {
        switch (i10) {
            case 35:
                consumePrimitiveType();
                return;
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
            case 50:
            case 51:
            case 52:
            case 62:
            case 64:
            case 65:
            case 66:
            case 67:
            case 72:
            case 73:
            case 74:
            case 101:
            case 103:
            case 104:
            case 106:
            case 107:
            case 109:
            case 110:
            case 111:
            case 112:
            case 113:
            case 118:
            case 120:
            case 121:
            case 124:
            case 127:
            case 137:
            case 142:
            case 143:
            case 144:
            case 145:
            case 146:
            case 147:
            case 148:
            case 149:
            case 150:
            case 151:
            case 152:
            case 153:
            case 154:
            case 155:
            case 156:
            case 157:
            case 158:
            case 159:
            case 160:
            case 161:
            case 162:
            case 164:
            case 166:
            case 172:
            case 173:
            case 174:
            case 175:
            case 180:
            case 181:
            case 183:
            case 184:
            case 185:
            case 187:
            case 188:
            case 189:
            case 190:
            case 191:
            case 192:
            case 193:
            case 194:
            case 195:
            case 196:
            case 197:
            case 202:
            case 206:
            case 209:
            case 210:
            case 212:
            case 213:
            case 214:
            case 219:
            case 220:
            case 221:
            case 222:
            case 223:
            case 224:
            case 226:
            case 227:
            case 229:
            case 231:
            case 232:
            case 238:
            case 239:
            case 240:
            case 241:
            case 258:
            case 267:
            case 291:
            case 294:
            case 295:
            case ParserBasicInformation.SCOPE_SIZE:
            case 304:
            case 305:
            case 306:
            case 307:
            case 308:
            case 309:
            case 310:
            case 311:
            case 312:
            case 313:
            case TypedValues.AttributesType.TYPE_PIVOT_TARGET:
            case 324:
            case 325:
            case 326:
            case 327:
            case 328:
            case 329:
            case 339:
            case DisplayMetrics.DENSITY_340:
            case 341:
            case 342:
            case 343:
            case C3679c.f32391d:
            case 345:
            case 346:
            case 347:
            case 348:
            case 349:
            case a.f24083g0:
            case 351:
            case 352:
            case 353:
            case 354:
            case 355:
            case 356:
            case 357:
            case 358:
            case 359:
            case DisplayMetrics.DENSITY_360:
            case w0.f14283E:
            case 362:
            case 363:
            case 364:
            case 370:
            case 371:
            case 372:
            case 373:
            case 374:
            case 375:
            case 376:
            case 377:
            case 383:
            case 384:
            case 386:
            case 388:
            case 390:
            case 394:
            case 395:
            case ParserBasicInformation.NUM_NON_TERMINALS:
            case 398:
            case 412:
            case 413:
            case HttpURLConnection.HTTP_REQ_TOO_LONG:
            case 441:
            case 443:
            case 446:
            case 449:
            case 450:
            case 451:
            case 452:
            case 456:
            case 457:
            case 464:
            case 465:
            case 466:
            case 467:
            case 468:
            case 478:
            case 484:
            case 485:
            case 486:
            case 487:
            case 488:
            case 491:
            case 492:
            case 504:
            case TypedValues.PositionType.TYPE_PERCENT_Y:
            case 509:
            case 517:
            case 519:
            case 522:
            case 523:
            case 540:
            case 542:
            case 543:
            case 547:
            case 548:
            case 551:
            case 554:
            case 557:
            case 565:
            case 566:
            case 567:
            case 573:
            case 577:
            case 580:
            case 584:
            case 589:
            case 591:
            case 594:
            case 596:
            case 598:
            case 600:
            case TypedValues.MotionType.TYPE_QUANTIZE_MOTION_PHASE:
            case TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR:
            case TypedValues.MotionType.TYPE_ANIMATE_CIRCLEANGLE_TO:
            case TypedValues.MotionType.TYPE_PATHMOTION_ARC:
            case TypedValues.MotionType.TYPE_POLAR_RELATIVETO:
            case 624:
            case 625:
            case 627:
            case 628:
            case 630:
            case 631:
            case 632:
            case 638:
            case DisplayMetrics.DENSITY_XXXHIGH:
            case 642:
            case 643:
            case 644:
            case 646:
            case 647:
            case 648:
            case 653:
            case 655:
            case 656:
            case 657:
            case 659:
            case 668:
            case 676:
            case 679:
            case 691:
            case 693:
            case 696:
            case 697:
            case 698:
            case 701:
            case 703:
            case TypedValues.TransitionType.TYPE_AUTO_TRANSITION:
            case TypedValues.TransitionType.TYPE_TRANSITION_FLAGS:
            case 709:
            case 710:
            case 730:
            case 732:
            case 735:
            case 738:
            case 743:
            case 746:
            case 747:
            case 748:
            case 749:
            case 750:
            case 753:
            case 754:
            case 757:
            case 758:
            case 765:
            case 770:
            case 777:
            case ALC.ALC_CAPTURE_SAMPLES:
            case 789:
            case 794:
            case 797:
            case 800:
            case MediaRecorder.MEDIA_RECORDER_INFO_NEXT_OUTPUT_FILE_STARTED:
            case 806:
            case 809:
            case 812:
            case 813:
            case 814:
            case 821:
            case 824:
            case 832:
            case 833:
            case 834:
            case 835:
            case 836:
            case 837:
            case 838:
            case 842:
            case 843:
            case 848:
            case 850:
            case 851:
            case 857:
            default:
                return;
            case 49:
                consumeReferenceType();
                return;
            case 53:
                consumeClassOrInterfaceName();
                return;
            case 54:
                consumeClassOrInterface();
                return;
            case 55:
                consumeGenericType();
                return;
            case 56:
                consumeGenericTypeWithDiamond();
                return;
            case 57:
                consumeArrayTypeWithTypeArgumentsName();
                return;
            case 58:
                consumePrimitiveArrayType();
                return;
            case 59:
                consumeNameArrayType();
                return;
            case 60:
                consumeGenericTypeNameArrayType();
                return;
            case 61:
                consumeGenericTypeArrayType();
                return;
            case 63:
                consumeZeroTypeAnnotations();
                return;
            case 68:
                consumeUnannotatableQualifiedName();
                return;
            case 69:
                consumeQualifiedName(false);
                return;
            case 70:
                consumeQualifiedName(true);
                return;
            case 71:
                consumeZeroTypeAnnotations();
                return;
            case 75:
                consumeOneMoreTypeAnnotation();
                return;
            case 76:
                consumeTypeAnnotation();
                return;
            case 77:
                consumeTypeAnnotation();
                return;
            case 78:
                consumeTypeAnnotation();
                return;
            case 79:
                consumeAnnotationName();
                return;
            case 80:
                consumeNormalAnnotation(true);
                return;
            case 81:
                consumeMarkerAnnotation(true);
                return;
            case 82:
                consumeSingleMemberAnnotation(true);
                return;
            case 83:
                consumeNonTypeUseName();
                return;
            case 84:
                consumeZeroTypeAnnotations();
                return;
            case 85:
                consumeExplicitThisParameter(false);
                return;
            case 86:
                consumeExplicitThisParameter(true);
                return;
            case 87:
                consumeVariableDeclaratorIdParameter();
                return;
            case 88:
                consumeCompilationUnit();
                return;
            case 89:
                consumeInternalCompilationUnit();
                return;
            case 90:
                consumeInternalCompilationUnit();
                return;
            case 91:
                consumeInternalCompilationUnitWithTypes();
                return;
            case 92:
                consumeInternalCompilationUnitWithTypes();
                return;
            case 93:
                consumeInternalCompilationUnit();
                return;
            case 94:
                consumeInternalCompilationUnitWithTypes();
                return;
            case 95:
                consumeInternalCompilationUnitWithTypes();
                return;
            case 96:
                consumeEmptyInternalCompilationUnit();
                return;
            case 97:
                consumeInternalCompilationUnitWithModuleDeclaration();
                return;
            case 98:
                consumeInternalCompilationUnitWithModuleDeclaration();
                return;
            case 99:
                consumeModuleDeclaration();
                return;
            case 100:
                consumeModuleHeader();
                return;
            case 102:
                consumeModuleModifiers();
                return;
            case 105:
                consumeEmptyModuleStatementsOpt();
                return;
            case 108:
                consumeModuleStatements();
                return;
            case 114:
                consumeRequiresStatement();
                return;
            case 115:
                consumeSingleRequiresModuleName();
                return;
            case 116:
                consumeModifiers();
                return;
            case 117:
                consumeDefaultModifiers();
                return;
            case 119:
                consumeModifiers2();
                return;
            case 122:
                consumeExportsStatement();
                return;
            case 123:
                consumeExportsHeader();
                return;
            case 125:
                consumeTargetModuleList();
                return;
            case 126:
                consumeSingleTargetModuleName();
                return;
            case 128:
                consumeTargetModuleNameList();
                return;
            case 129:
                consumeSinglePkgName();
                return;
            case 130:
                consumeOpensStatement();
                return;
            case 131:
                consumeOpensHeader();
                return;
            case 132:
                consumeUsesStatement();
                return;
            case 133:
                consumeUsesHeader();
                return;
            case 134:
                consumeProvidesStatement();
                return;
            case 135:
                consumeProvidesInterface();
                return;
            case 136:
                consumeSingleServiceImplName();
                return;
            case 138:
                consumeServiceImplNameList();
                return;
            case 139:
                consumeWithClause();
                return;
            case 140:
                consumeReduceImports();
                return;
            case 141:
                consumeEnterCompilationUnit();
                return;
            case 163:
                consumeCatchHeader();
                return;
            case 165:
                consumeImportDeclarations();
                return;
            case 167:
                consumeTypeDeclarations();
                return;
            case 168:
                consumePackageDeclaration();
                return;
            case 169:
                consumePackageDeclarationNameWithModifiers();
                return;
            case 170:
                consumePackageDeclarationName();
                return;
            case 171:
                consumePackageComment();
                return;
            case 176:
                consumeImportDeclaration();
                return;
            case 177:
                consumeSingleTypeImportDeclarationName();
                return;
            case 178:
                consumeImportDeclaration();
                return;
            case 179:
                consumeTypeImportOnDemandDeclarationName();
                return;
            case 182:
                consumeEmptyTypeDeclaration();
                return;
            case 186:
                consumeModifiers2();
                return;
            case 198:
                consumeAnnotationAsModifier();
                return;
            case 199:
                consumeClassDeclaration();
                return;
            case 200:
                consumeClassHeader();
                return;
            case 201:
                consumeTypeHeaderNameWithTypeParameters();
                return;
            case 203:
                consumeClassHeaderName1();
                return;
            case 204:
                consumeClassHeaderExtends();
                return;
            case 205:
                consumeClassHeaderImplements();
                return;
            case 207:
                consumeInterfaceTypeList();
                return;
            case 208:
                consumeInterfaceType();
                return;
            case 211:
                consumeClassBodyDeclarations();
                return;
            case 215:
                consumeClassBodyDeclaration();
                return;
            case 216:
                consumeDiet();
                return;
            case 217:
                consumeClassBodyDeclaration();
                return;
            case 218:
                consumeCreateInitializer();
                return;
            case 225:
                consumeEmptyTypeDeclaration();
                return;
            case 228:
                consumeFieldDeclaration();
                return;
            case 230:
                consumeVariableDeclarators();
                return;
            case 233:
                consumeEnterVariable();
                return;
            case 234:
                consumeExitVariableWithInitialization();
                return;
            case 235:
                consumeExitVariableWithoutInitialization();
                return;
            case 236:
                consumeForceNoDiet();
                return;
            case 237:
                consumeRestoreDiet();
                return;
            case 242:
                consumeMethodDeclaration(true, false);
                return;
            case 243:
                consumeMethodDeclaration(true, true);
                return;
            case 244:
                consumeMethodDeclaration(false, false);
                return;
            case 245:
                consumeMethodHeader();
                return;
            case 246:
                consumeMethodHeader();
                return;
            case 247:
                consumeMethodHeaderNameWithTypeParameters(false);
                return;
            case 248:
                consumeMethodHeaderName(false);
                return;
            case 249:
                consumeMethodHeaderNameWithTypeParameters(false);
                return;
            case 250:
                consumeMethodHeaderName(false);
                return;
            case 251:
                consumePushCombineModifiers();
                return;
            case 252:
                consumeMethodHeaderRightParen();
                return;
            case 253:
                consumeMethodHeaderExtendedDims();
                return;
            case 254:
                consumeMethodHeaderThrowsClause();
                return;
            case 255:
                consumeConstructorHeader();
                return;
            case 256:
                consumeConstructorHeaderNameWithTypeParameters();
                return;
            case 257:
                consumeConstructorHeaderName();
                return;
            case 259:
                consumeFormalParameterList();
                return;
            case 260:
                consumeFormalParameter(false);
                return;
            case 261:
                consumeFormalParameter(true);
                return;
            case 262:
                consumeFormalParameter(true);
                return;
            case 263:
                consumeCatchFormalParameter();
                return;
            case 264:
                consumeCatchType();
                return;
            case 265:
                consumeUnionTypeAsClassType();
                return;
            case 266:
                consumeUnionType();
                return;
            case 268:
                consumeClassTypeList();
                return;
            case 269:
                consumeClassTypeElt();
                return;
            case 270:
                consumeMethodBody();
                return;
            case 271:
                consumeNestedMethod();
                return;
            case 272:
                consumeStaticInitializer();
                return;
            case 273:
                consumeStaticOnly();
                return;
            case 274:
                consumeConstructorDeclaration();
                return;
            case 275:
                consumeInvalidConstructorDeclaration();
                return;
            case 276:
                consumeExplicitConstructorInvocation(0, 3);
                return;
            case 277:
                consumeExplicitConstructorInvocationWithTypeArguments(0, 3);
                return;
            case KeyEvent.KEYCODE_COPY:
                consumeExplicitConstructorInvocation(0, 2);
                return;
            case KeyEvent.KEYCODE_PASTE:
                consumeExplicitConstructorInvocationWithTypeArguments(0, 2);
                return;
            case 280:
                consumeExplicitConstructorInvocation(1, 2);
                return;
            case KeyEvent.KEYCODE_SYSTEM_NAVIGATION_DOWN:
                consumeExplicitConstructorInvocationWithTypeArguments(1, 2);
                return;
            case KeyEvent.KEYCODE_SYSTEM_NAVIGATION_LEFT:
                consumeExplicitConstructorInvocation(2, 2);
                return;
            case KeyEvent.KEYCODE_SYSTEM_NAVIGATION_RIGHT:
                consumeExplicitConstructorInvocationWithTypeArguments(2, 2);
                return;
            case 284:
                consumeExplicitConstructorInvocation(1, 3);
                return;
            case a0.f9668n:
                consumeExplicitConstructorInvocationWithTypeArguments(1, 3);
                return;
            case 286:
                consumeExplicitConstructorInvocation(2, 3);
                return;
            case 287:
                consumeExplicitConstructorInvocationWithTypeArguments(2, 3);
                return;
            case 288:
                consumeInterfaceDeclaration();
                return;
            case 289:
                consumeInterfaceHeader();
                return;
            case 290:
                consumeTypeHeaderNameWithTypeParameters();
                return;
            case 292:
                consumeInterfaceHeaderName1();
                return;
            case 293:
                consumeInterfaceHeaderExtends();
                return;
            case 296:
                consumeInterfaceMemberDeclarations();
                return;
            case ParserBasicInformation.SCOPE_UBOUND:
                consumeEmptyTypeDeclaration();
                return;
            case 299:
                consumeInterfaceMethodDeclaration(false);
                return;
            case 300:
                consumeInterfaceMethodDeclaration(false);
                return;
            case 301:
                consumeInterfaceMethodDeclaration(true);
                return;
            case 302:
                consumeInvalidConstructorDeclaration(true);
                return;
            case 303:
                consumeInvalidConstructorDeclaration(false);
                return;
            case 314:
                consumePushLeftBrace();
                return;
            case 315:
                consumeEmptyArrayInitializer();
                return;
            case TypedValues.AttributesType.TYPE_PATH_ROTATE:
                consumeArrayInitializer();
                return;
            case TypedValues.AttributesType.TYPE_EASING:
                consumeArrayInitializer();
                return;
            case 319:
                consumeVariableInitializers();
                return;
            case 320:
                consumeBlock();
                return;
            case 321:
                consumeOpenBlock();
                return;
            case 322:
                consumeBlockStatement();
                return;
            case 323:
                consumeBlockStatements();
                return;
            case 330:
                consumeInvalidInterfaceDeclaration();
                return;
            case 331:
                consumeInvalidAnnotationTypeDeclaration();
                return;
            case 332:
                consumeInvalidEnumDeclaration();
                return;
            case 333:
                consumeLocalVariableDeclarationStatement();
                return;
            case 334:
                consumeLocalVariableDeclaration();
                return;
            case 335:
                consumeLocalVariableDeclaration();
                return;
            case 336:
                consumePushModifiers();
                return;
            case 337:
                consumePushModifiersForHeader();
                return;
            case 338:
                consumePushRealModifiers();
                return;
            case 365:
                consumeEmptyStatement();
                return;
            case 366:
                consumeStatementLabel();
                return;
            case 367:
                consumeStatementLabel();
                return;
            case 368:
                consumeLabel();
                return;
            case 369:
                consumeExpressionStatement();
                return;
            case 378:
                consumeStatementIfNoElse();
                return;
            case 379:
                consumeStatementIfWithElse();
                return;
            case 380:
                consumeStatementIfWithElse();
                return;
            case 381:
                consumeStatementSwitch();
                return;
            case 382:
                consumeEmptySwitchBlock();
                return;
            case 385:
                consumeSwitchBlock();
                return;
            case 387:
                consumeSwitchBlockStatements();
                return;
            case 389:
                consumeSwitchBlockStatement();
                return;
            case JavaSearchPattern.MATCH_MODE_MASK:
                consumeSwitchLabels();
                return;
            case 392:
                consumeCaseLabel();
                return;
            case 393:
                consumeDefaultLabel();
                return;
            case 396:
                consumeSwitchExpression();
                return;
            case 399:
                consumeSwitchLabeledRule();
                return;
            case 400:
                consumeSwitchLabeledExpression();
                return;
            case 401:
                consumeSwitchLabeledBlock();
                return;
            case 402:
                consumeSwitchLabeledThrowStatement();
                return;
            case 403:
                consumeDefaultLabelExpr();
                return;
            case 404:
                consumeCaseLabelExpr();
                return;
            case 405:
                consumeSwitchLabelCaseLhs();
                return;
            case 406:
                consumeStatementWhile();
                return;
            case HttpURLConnection.HTTP_PROXY_AUTH:
                consumeStatementWhile();
                return;
            case HttpURLConnection.HTTP_CLIENT_TIMEOUT:
                consumeStatementDo();
                return;
            case HttpURLConnection.HTTP_CONFLICT:
                consumeStatementFor();
                return;
            case HttpURLConnection.HTTP_GONE:
                consumeStatementFor();
                return;
            case 411:
                consumeForInit();
                return;
            case HttpURLConnection.HTTP_UNSUPPORTED_TYPE:
                consumeStatementExpressionList();
                return;
            case 416:
                consumeSimpleAssertStatement();
                return;
            case 417:
                consumeAssertStatement();
                return;
            case 418:
                consumeStatementBreak();
                return;
            case 419:
                consumeStatementBreakWithLabel();
                return;
            case 420:
                consumeStatementContinue();
                return;
            case TypedValues.CycleType.TYPE_WAVE_SHAPE:
                consumeStatementContinueWithLabel();
                return;
            case TypedValues.CycleType.TYPE_CUSTOM_WAVE_SHAPE:
                consumeStatementReturn();
                return;
            case TypedValues.CycleType.TYPE_WAVE_PERIOD:
                consumeStatementThrow();
                return;
            case TypedValues.CycleType.TYPE_WAVE_OFFSET:
                consumeThrowExpression();
                return;
            case TypedValues.CycleType.TYPE_WAVE_PHASE:
                consumeStatementSynchronized();
                return;
            case 426:
                consumeOnlySynchronized();
                return;
            case 427:
                consumeStatementTry(false, false);
                return;
            case 428:
                consumeStatementTry(true, false);
                return;
            case 429:
                consumeStatementTry(false, true);
                return;
            case 430:
                consumeStatementTry(true, true);
                return;
            case 431:
                consumeResourceSpecification();
                return;
            case 432:
                consumeResourceOptionalTrailingSemiColon(false);
                return;
            case 433:
                consumeResourceOptionalTrailingSemiColon(true);
                return;
            case 434:
                consumeSingleResource();
                return;
            case 435:
                consumeMultipleResources();
                return;
            case 436:
                consumeResourceOptionalTrailingSemiColon(true);
                return;
            case 437:
                consumeResourceAsLocalVariableDeclaration();
                return;
            case 438:
                consumeResourceAsLocalVariableDeclaration();
                return;
            case 439:
                consumeResourceAsLocalVariable();
                return;
            case 440:
                consumeResourceAsFieldAccess();
                return;
            case 442:
                consumeExitTryBlock();
                return;
            case 444:
                consumeCatches();
                return;
            case 445:
                consumeStatementCatch();
                return;
            case AbstractC15010e.f104124f:
                consumeLeftParen();
                return;
            case 448:
                consumeRightParen();
                return;
            case 453:
                consumePrimaryNoNewArrayThis();
                return;
            case 454:
                consumePrimaryNoNewArray();
                return;
            case 455:
                consumePrimaryNoNewArrayWithName();
                return;
            case 458:
                consumePrimaryNoNewArrayNameThis();
                return;
            case 459:
                consumeQualifiedSuperReceiver();
                return;
            case 460:
                consumePrimaryNoNewArrayName();
                return;
            case 461:
                consumePrimaryNoNewArrayArrayType();
                return;
            case 462:
                consumePrimaryNoNewArrayPrimitiveArrayType();
                return;
            case 463:
                consumePrimaryNoNewArrayPrimitiveType();
                return;
            case 469:
                consumeReferenceExpressionTypeArgumentsAndTrunk(false);
                return;
            case FloatingActionButton.f64463z:
                consumeReferenceExpressionTypeArgumentsAndTrunk(true);
                return;
            case 471:
                consumeReferenceExpressionTypeForm(true);
                return;
            case 472:
                consumeReferenceExpressionTypeForm(false);
                return;
            case 473:
                consumeReferenceExpressionGenericTypeForm();
                return;
            case 474:
                consumeReferenceExpressionPrimaryForm();
                return;
            case 475:
                consumeReferenceExpressionPrimaryForm();
                return;
            case 476:
                consumeReferenceExpressionSuperForm();
                return;
            case 477:
                consumeEmptyTypeArguments();
                return;
            case 479:
                consumeIdentifierOrNew(false);
                return;
            case DisplayMetrics.DENSITY_XXHIGH:
                consumeIdentifierOrNew(true);
                return;
            case 481:
                consumeLambdaExpression();
                return;
            case 482:
                consumeNestedLambda();
                return;
            case 483:
                consumeTypeElidedLambdaParameter(false);
                return;
            case 489:
                consumeFormalParameterList();
                return;
            case 490:
                consumeTypeElidedLambdaParameter(true);
                return;
            case 493:
                consumeElidedLeftBraceAndReturn();
                return;
            case 494:
                consumeAllocationHeader();
                return;
            case 495:
                consumeClassInstanceCreationExpressionWithTypeArguments();
                return;
            case 496:
                consumeClassInstanceCreationExpression();
                return;
            case 497:
                consumeClassInstanceCreationExpressionQualifiedWithTypeArguments();
                return;
            case 498:
                consumeClassInstanceCreationExpressionQualified();
                return;
            case 499:
                consumeClassInstanceCreationExpressionQualified();
                return;
            case 500:
                consumeClassInstanceCreationExpressionQualifiedWithTypeArguments();
                return;
            case 501:
                consumeEnterInstanceCreationArgumentList();
                return;
            case 502:
                consumeClassInstanceCreationExpressionName();
                return;
            case 503:
                consumeClassBodyopt();
                return;
            case 505:
                consumeEnterAnonymousClassBody(false);
                return;
            case TypedValues.PositionType.TYPE_PERCENT_X:
                consumeClassBodyopt();
                return;
            case TypedValues.PositionType.TYPE_CURVE_FIT:
                consumeEnterAnonymousClassBody(true);
                return;
            case TypedValues.PositionType.TYPE_POSITION_TYPE:
                consumeArgumentList();
                return;
            case 511:
                consumeArrayCreationHeader();
                return;
            case 512:
                consumeArrayCreationHeader();
                return;
            case 513:
                consumeArrayCreationExpressionWithoutInitializer();
                return;
            case 514:
                consumeArrayCreationExpressionWithInitializer();
                return;
            case 515:
                consumeArrayCreationExpressionWithoutInitializer();
                return;
            case 516:
                consumeArrayCreationExpressionWithInitializer();
                return;
            case 518:
                consumeDimWithOrWithOutExprs();
                return;
            case BluetoothClass.Device.PHONE_CORDLESS:
                consumeDimWithOrWithOutExpr();
                return;
            case 521:
                consumeDims();
                return;
            case BluetoothClass.Device.PHONE_SMART:
                consumeOneDimLoop(false);
                return;
            case 525:
                consumeOneDimLoop(true);
                return;
            case ParserBasicInformation.NUM_SYMBOLS:
                consumeFieldAccess(false);
                return;
            case 527:
                consumeFieldAccess(true);
                return;
            case BluetoothClass.Device.PHONE_MODEM_OR_GATEWAY:
                consumeFieldAccess(false);
                return;
            case 529:
                consumeMethodInvocationName();
                return;
            case 530:
                consumeMethodInvocationNameWithTypeArguments();
                return;
            case 531:
                consumeMethodInvocationPrimaryWithTypeArguments();
                return;
            case BluetoothClass.Device.PHONE_ISDN:
                consumeMethodInvocationPrimary();
                return;
            case 533:
                consumeMethodInvocationPrimary();
                return;
            case 534:
                consumeMethodInvocationPrimaryWithTypeArguments();
                return;
            case 535:
                consumeMethodInvocationSuperWithTypeArguments();
                return;
            case 536:
                consumeMethodInvocationSuper();
                return;
            case 537:
                consumeArrayAccess(true);
                return;
            case 538:
                consumeArrayAccess(false);
                return;
            case 539:
                consumeArrayAccess(false);
                return;
            case 541:
                consumePostfixExpression();
                return;
            case 544:
                consumeUnaryExpression(14, true);
                return;
            case 545:
                consumeUnaryExpression(13, true);
                return;
            case 546:
                consumePushPosition();
                return;
            case 549:
                consumeUnaryExpression(14);
                return;
            case 550:
                consumeUnaryExpression(13);
                return;
            case 552:
                consumeUnaryExpression(14, false);
                return;
            case 553:
                consumeUnaryExpression(13, false);
                return;
            case 555:
                consumeUnaryExpression(12);
                return;
            case 556:
                consumeUnaryExpression(11);
                return;
            case 558:
                consumeCastExpressionWithPrimitiveType();
                return;
            case 559:
                consumeCastExpressionWithGenericsArray();
                return;
            case DisplayMetrics.DENSITY_560:
                consumeCastExpressionWithQualifiedGenericsArray();
                return;
            case 561:
                consumeCastExpressionLL1();
                return;
            case 562:
                consumeCastExpressionLL1WithBounds();
                return;
            case 563:
                consumeCastExpressionWithNameArray();
                return;
            case 564:
                consumeZeroAdditionalBounds();
                return;
            case 568:
                consumeOnlyTypeArgumentsForCastExpression();
                return;
            case 569:
                consumeInsideCastExpression();
                return;
            case 570:
                consumeInsideCastExpressionLL1();
                return;
            case 571:
                consumeInsideCastExpressionLL1WithBounds();
                return;
            case 572:
                consumeInsideCastExpressionWithQualifiedGenerics();
                return;
            case 574:
                consumeBinaryExpression(15);
                return;
            case 575:
                consumeBinaryExpression(9);
                return;
            case 576:
                consumeBinaryExpression(16);
                return;
            case 578:
                consumeBinaryExpression(14);
                return;
            case 579:
                consumeBinaryExpression(13);
                return;
            case 581:
                consumeBinaryExpression(10);
                return;
            case 582:
                consumeBinaryExpression(17);
                return;
            case 583:
                consumeBinaryExpression(19);
                return;
            case 585:
                consumeBinaryExpression(4);
                return;
            case 586:
                consumeBinaryExpression(6);
                return;
            case 587:
                consumeBinaryExpression(5);
                return;
            case 588:
                consumeBinaryExpression(7);
                return;
            case 590:
                consumeInstanceOfExpression();
                return;
            case 592:
                consumeEqualityExpression(18);
                return;
            case 593:
                consumeEqualityExpression(29);
                return;
            case 595:
                consumeBinaryExpression(2);
                return;
            case 597:
                consumeBinaryExpression(8);
                return;
            case 599:
                consumeBinaryExpression(3);
                return;
            case 601:
                consumeBinaryExpression(0);
                return;
            case TypedValues.MotionType.TYPE_EASING:
                consumeBinaryExpression(1);
                return;
            case TypedValues.MotionType.TYPE_ANIMATE_RELATIVE_TO:
                consumeConditionalExpression(23);
                return;
            case TypedValues.MotionType.TYPE_DRAW_PATH:
                consumeAssignment();
                return;
            case TypedValues.MotionType.TYPE_QUANTIZE_MOTIONSTEPS:
                ignoreExpressionAssignment();
                return;
            case TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR_TYPE:
                consumeAssignmentOperator(30);
                return;
            case TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR_ID:
                consumeAssignmentOperator(15);
                return;
            case 613:
                consumeAssignmentOperator(9);
                return;
            case 614:
                consumeAssignmentOperator(16);
                return;
            case 615:
                consumeAssignmentOperator(14);
                return;
            case 616:
                consumeAssignmentOperator(13);
                return;
            case 617:
                consumeAssignmentOperator(10);
                return;
            case 618:
                consumeAssignmentOperator(17);
                return;
            case 619:
                consumeAssignmentOperator(19);
                return;
            case 620:
                consumeAssignmentOperator(2);
                return;
            case 621:
                consumeAssignmentOperator(8);
                return;
            case 622:
                consumeAssignmentOperator(3);
                return;
            case 623:
                consumeExpression();
                return;
            case 626:
                consumeEmptyExpression();
                return;
            case 629:
                consumeConstantExpressions();
                return;
            case 633:
                consumeEmptyClassBodyDeclarationsopt();
                return;
            case 634:
                consumeClassBodyDeclarationsopt();
                return;
            case 635:
                consumeDefaultModifiers();
                return;
            case 636:
                consumeModifiers();
                return;
            case 637:
                consumeEmptyBlockStatementsopt();
                return;
            case 639:
                consumeEmptyDimsopt();
                return;
            case 641:
                consumeEmptyArgumentListopt();
                return;
            case 645:
                consumeFormalParameterListopt();
                return;
            case 649:
                consumeEmptyInterfaceMemberDeclarationsopt();
                return;
            case 650:
                consumeInterfaceMemberDeclarationsopt();
                return;
            case 651:
                consumeNestedType();
                return;
            case 652:
                consumeEmptyForInitopt();
                return;
            case 654:
                consumeEmptyForUpdateopt();
                return;
            case 658:
                consumeEmptyCatchesopt();
                return;
            case 660:
                consumeEnumDeclaration();
                return;
            case 661:
                consumeEnumHeader();
                return;
            case 662:
                consumeEnumHeaderName();
                return;
            case 663:
                consumeEnumHeaderNameWithTypeParameters();
                return;
            case 664:
                consumeEnumBodyNoConstants();
                return;
            case 665:
                consumeEnumBodyNoConstants();
                return;
            case 666:
                consumeEnumBodyWithConstants();
                return;
            case 667:
                consumeEnumBodyWithConstants();
                return;
            case 669:
                consumeEnumConstants();
                return;
            case 670:
                consumeEnumConstantHeaderName();
                return;
            case 671:
                consumeEnumConstantHeader();
                return;
            case 672:
                consumeEnumConstantWithClassBody();
                return;
            case 673:
                consumeEnumConstantNoClassBody();
                return;
            case 674:
                consumeArguments();
                return;
            case 675:
                consumeEmptyArguments();
                return;
            case 677:
                consumeEnumDeclarations();
                return;
            case 678:
                consumeEmptyEnumDeclarations();
                return;
            case 680:
                consumeEnhancedForStatement();
                return;
            case 681:
                consumeEnhancedForStatement();
                return;
            case 682:
                consumeEnhancedForStatementHeaderInit(false);
                return;
            case 683:
                consumeEnhancedForStatementHeaderInit(true);
                return;
            case 684:
                consumeEnhancedForStatementHeader();
                return;
            case 685:
                consumeImportDeclaration();
                return;
            case 686:
                consumeSingleStaticImportDeclarationName();
                return;
            case 687:
                consumeImportDeclaration();
                return;
            case 688:
                consumeStaticImportOnDemandDeclarationName();
                return;
            case 689:
                consumeTypeArguments();
                return;
            case 690:
                consumeOnlyTypeArguments();
                return;
            case 692:
                consumeTypeArgumentList1();
                return;
            case 694:
                consumeTypeArgumentList();
                return;
            case 695:
                consumeTypeArgument();
                return;
            case 699:
                consumeReferenceType1();
                return;
            case 700:
                consumeTypeArgumentReferenceType1();
                return;
            case 702:
                consumeTypeArgumentList2();
                return;
            case TypedValues.TransitionType.TYPE_INTERPOLATOR:
                consumeReferenceType2();
                return;
            case TypedValues.TransitionType.TYPE_STAGGERED:
                consumeTypeArgumentReferenceType2();
                return;
            case 708:
                consumeTypeArgumentList3();
                return;
            case 711:
                consumeReferenceType3();
                return;
            case 712:
                consumeWildcard();
                return;
            case 713:
                consumeWildcardWithBounds();
                return;
            case 714:
                consumeWildcardBoundsExtends();
                return;
            case 715:
                consumeWildcardBoundsSuper();
                return;
            case 716:
                consumeWildcard1();
                return;
            case 717:
                consumeWildcard1WithBounds();
                return;
            case 718:
                consumeWildcardBounds1Extends();
                return;
            case 719:
                consumeWildcardBounds1Super();
                return;
            case 720:
                consumeWildcard2();
                return;
            case 721:
                consumeWildcard2WithBounds();
                return;
            case 722:
                consumeWildcardBounds2Extends();
                return;
            case 723:
                consumeWildcardBounds2Super();
                return;
            case 724:
                consumeWildcard3();
                return;
            case 725:
                consumeWildcard3WithBounds();
                return;
            case 726:
                consumeWildcardBounds3Extends();
                return;
            case 727:
                consumeWildcardBounds3Super();
                return;
            case 728:
                consumeTypeParameterHeader();
                return;
            case 729:
                consumeTypeParameters();
                return;
            case 731:
                consumeTypeParameterList();
                return;
            case 733:
                consumeTypeParameterWithExtends();
                return;
            case 734:
                consumeTypeParameterWithExtendsAndBounds();
                return;
            case 736:
                consumeAdditionalBoundList();
                return;
            case 737:
                consumeAdditionalBound();
                return;
            case 739:
                consumeTypeParameterList1();
                return;
            case 740:
                consumeTypeParameter1();
                return;
            case 741:
                consumeTypeParameter1WithExtends();
                return;
            case 742:
                consumeTypeParameter1WithExtendsAndBounds();
                return;
            case 744:
                consumeAdditionalBoundList1();
                return;
            case 745:
                consumeAdditionalBound1();
                return;
            case 751:
                consumeUnaryExpression(14);
                return;
            case 752:
                consumeUnaryExpression(13);
                return;
            case 755:
                consumeUnaryExpression(12);
                return;
            case 756:
                consumeUnaryExpression(11);
                return;
            case 759:
                consumeBinaryExpression(15);
                return;
            case C15378a.f116963b:
                consumeBinaryExpressionWithName(15);
                return;
            case ConstantPool.STRING_INITIAL_SIZE:
                consumeBinaryExpression(9);
                return;
            case 762:
                consumeBinaryExpressionWithName(9);
                return;
            case 763:
                consumeBinaryExpression(16);
                return;
            case 764:
                consumeBinaryExpressionWithName(16);
                return;
            case 766:
                consumeBinaryExpression(14);
                return;
            case Opcodes.OP_INSTANCE_OF_JUMBO:
                consumeBinaryExpressionWithName(14);
                return;
            case 768:
                consumeBinaryExpression(13);
                return;
            case 769:
                consumeBinaryExpressionWithName(13);
                return;
            case 771:
                consumeBinaryExpression(10);
                return;
            case 772:
                consumeBinaryExpressionWithName(10);
                return;
            case 773:
                consumeBinaryExpression(17);
                return;
            case 774:
                consumeBinaryExpressionWithName(17);
                return;
            case 775:
                consumeBinaryExpression(19);
                return;
            case 776:
                consumeBinaryExpressionWithName(19);
                return;
            case ConstantPool.UTF8_INITIAL_SIZE:
                consumeBinaryExpression(4);
                return;
            case 779:
                consumeBinaryExpressionWithName(4);
                return;
            case 780:
                consumeBinaryExpression(6);
                return;
            case 781:
                consumeBinaryExpressionWithName(6);
                return;
            case 782:
                consumeBinaryExpression(5);
                return;
            case 783:
                consumeBinaryExpressionWithName(5);
                return;
            case ALC.ALC_CAPTURE_DEVICE_SPECIFIER:
                consumeBinaryExpression(7);
                return;
            case ALC.ALC_CAPTURE_DEFAULT_DEVICE_SPECIFIER:
                consumeBinaryExpressionWithName(7);
                return;
            case ALC.ALC_CONNECTED:
                consumeInstanceOfExpressionWithName();
                return;
            case 788:
                consumeInstanceOfExpression();
                return;
            case 790:
                consumeEqualityExpression(18);
                return;
            case 791:
                consumeEqualityExpressionWithName(18);
                return;
            case 792:
                consumeEqualityExpression(29);
                return;
            case 793:
                consumeEqualityExpressionWithName(29);
                return;
            case 795:
                consumeBinaryExpression(2);
                return;
            case 796:
                consumeBinaryExpressionWithName(2);
                return;
            case 798:
                consumeBinaryExpression(8);
                return;
            case 799:
                consumeBinaryExpressionWithName(8);
                return;
            case 801:
                consumeBinaryExpression(3);
                return;
            case 802:
                consumeBinaryExpressionWithName(3);
                return;
            case MediaPlayer.MEDIA_INFO_AUDIO_NOT_PLAYING:
                consumeBinaryExpression(0);
                return;
            case MediaPlayer.MEDIA_INFO_VIDEO_NOT_PLAYING:
                consumeBinaryExpressionWithName(0);
                return;
            case 807:
                consumeBinaryExpression(1);
                return;
            case 808:
                consumeBinaryExpressionWithName(1);
                return;
            case 810:
                consumeConditionalExpression(23);
                return;
            case 811:
                consumeConditionalExpressionWithName(23);
                return;
            case 815:
                consumeAnnotationTypeDeclarationHeaderName();
                return;
            case 816:
                consumeAnnotationTypeDeclarationHeaderNameWithTypeParameters();
                return;
            case 817:
                consumeAnnotationTypeDeclarationHeaderNameWithTypeParameters();
                return;
            case 818:
                consumeAnnotationTypeDeclarationHeaderName();
                return;
            case 819:
                consumeAnnotationTypeDeclarationHeader();
                return;
            case 820:
                consumeAnnotationTypeDeclaration();
                return;
            case 822:
                consumeEmptyAnnotationTypeMemberDeclarationsopt();
                return;
            case 823:
                consumeAnnotationTypeMemberDeclarationsopt();
                return;
            case 825:
                consumeAnnotationTypeMemberDeclarations();
                return;
            case 826:
                consumeMethodHeaderNameWithTypeParameters(true);
                return;
            case 827:
                consumeMethodHeaderName(true);
                return;
            case 828:
                consumeEmptyMethodHeaderDefaultValue();
                return;
            case 829:
                consumeMethodHeaderDefaultValue();
                return;
            case 830:
                consumeMethodHeader();
                return;
            case 831:
                consumeAnnotationTypeMemberDeclaration();
                return;
            case 839:
                consumeAnnotationName();
                return;
            case DatatypeConstants.MIN_TIMEZONE_OFFSET:
                consumeNormalAnnotation(false);
                return;
            case 841:
                consumeEmptyMemberValuePairsopt();
                return;
            case 844:
                consumeMemberValuePairs();
                return;
            case 845:
                consumeMemberValuePair();
                return;
            case 846:
                consumeEnterMemberValue();
                return;
            case 847:
                consumeExitMemberValue();
                return;
            case 849:
                consumeMemberValueAsName();
                return;
            case 852:
                consumeMemberValueArrayInitializer();
                return;
            case 853:
                consumeMemberValueArrayInitializer();
                return;
            case 854:
                consumeEmptyMemberValueArrayInitializer();
                return;
            case 855:
                consumeEmptyMemberValueArrayInitializer();
                return;
            case 856:
                consumeEnterMemberValueArrayInitializer();
                return;
            case 858:
                consumeMemberValues();
                return;
            case 859:
                consumeMarkerAnnotation(false);
                return;
            case 860:
                consumeSingleMemberAnnotationMemberValue();
                return;
            case 861:
                consumeSingleMemberAnnotation(false);
                return;
            case 862:
                consumeRecoveryMethodHeaderNameWithTypeParameters();
                return;
            case 863:
                consumeRecoveryMethodHeaderName();
                return;
            case 864:
                consumeRecoveryMethodHeaderNameWithTypeParameters();
                return;
            case 865:
                consumeRecoveryMethodHeaderName();
                return;
            case 866:
                consumeMethodHeader();
                return;
            case ParserBasicInformation.NUM_RULES:
                consumeMethodHeader();
                return;
        }
    }

    public void consumeServiceImplNameList() {
        this.listLength++;
        optimizedConcatNodeLists();
    }

    public void consumeSimpleAssertStatement() {
        this.expressionLengthPtr--;
        Expression[] expressionArr = this.expressionStack;
        int i10 = this.expressionPtr;
        this.expressionPtr = i10 - 1;
        Expression expression = expressionArr[i10];
        int[] iArr = this.intStack;
        int i11 = this.intPtr;
        this.intPtr = i11 - 1;
        pushOnAstStack(new AssertStatement(expression, iArr[i11]));
    }

    public void consumeSingleMemberAnnotation(boolean z10) {
        int i10 = this.identifierPtr;
        TypeReference annotationType = getAnnotationType();
        int[] iArr = this.intStack;
        int i11 = this.intPtr;
        this.intPtr = i11 - 1;
        SingleMemberAnnotation singleMemberAnnotation = new SingleMemberAnnotation(annotationType, iArr[i11]);
        Expression[] expressionArr = this.expressionStack;
        int i12 = this.expressionPtr;
        this.expressionPtr = i12 - 1;
        singleMemberAnnotation.memberValue = expressionArr[i12];
        this.expressionLengthPtr--;
        singleMemberAnnotation.declarationSourceEnd = this.rParenPos;
        if (z10) {
            pushOnTypeAnnotationStack(singleMemberAnnotation);
        } else {
            pushOnExpressionStack(singleMemberAnnotation);
        }
        if (this.currentElement != null) {
            annotationRecoveryCheckPoint(singleMemberAnnotation.sourceStart, singleMemberAnnotation.declarationSourceEnd);
            RecoveredElement recoveredElement = this.currentElement;
            if (recoveredElement instanceof RecoveredAnnotation) {
                this.currentElement = ((RecoveredAnnotation) recoveredElement).addAnnotation(singleMemberAnnotation, i10);
            }
        }
        if (!this.statementRecoveryActivated && this.options.sourceLevel < ClassFileConstants.JDK1_5 && this.lastErrorEndPositionBeforeRecovery < this.scanner.currentPosition) {
            problemReporter().invalidUsageOfAnnotation(singleMemberAnnotation);
        }
        this.recordStringLiterals = true;
    }

    public void consumeSingleMemberAnnotationMemberValue() {
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement == null || !(recoveredElement instanceof RecoveredAnnotation)) {
            return;
        }
        ((RecoveredAnnotation) recoveredElement).setKind(2);
    }

    public void consumeSinglePkgName() {
        int[] iArr = this.identifierLengthStack;
        int i10 = this.identifierLengthPtr;
        this.identifierLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        char[][] cArr = new char[i11];
        int i12 = this.identifierPtr - i11;
        this.identifierPtr = i12;
        long[] jArr = new long[i11];
        System.arraycopy(this.identifierStack, i12 + 1, cArr, 0, i11);
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, jArr, 0, i11);
        ImportReference importReference = new ImportReference(cArr, jArr, false, 0);
        pushOnAstStack(importReference);
        if (this.currentElement instanceof RecoveredModule) {
            this.lastCheckPoint = importReference.sourceEnd + 1;
        }
    }

    public void consumeSingleRequiresModuleName() {
        int[] iArr = this.identifierLengthStack;
        int i10 = this.identifierLengthPtr;
        this.identifierLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        char[][] cArr = new char[i11];
        int i12 = this.identifierPtr - i11;
        this.identifierPtr = i12;
        long[] jArr = new long[i11];
        System.arraycopy(this.identifierStack, i12 + 1, cArr, 0, i11);
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, jArr, 0, i11);
        ModuleReference moduleReference = new ModuleReference(cArr, jArr);
        RequiresStatement requiresStatement = new RequiresStatement(moduleReference);
        if (this.currentToken == 26) {
            requiresStatement.declarationSourceEnd = moduleReference.sourceEnd + 1;
        } else {
            requiresStatement.declarationSourceEnd = moduleReference.sourceEnd;
        }
        requiresStatement.declarationEnd = requiresStatement.declarationSourceEnd;
        int[] iArr2 = this.intStack;
        int i13 = this.intPtr;
        int i14 = i13 - 1;
        this.intPtr = i14;
        requiresStatement.modifiersSourceStart = iArr2[i13];
        int i15 = requiresStatement.modifiers;
        int i16 = i13 - 2;
        this.intPtr = i16;
        requiresStatement.modifiers = iArr2[i14] | i15;
        this.intPtr = i13 - 3;
        int i17 = iArr2[i16];
        requiresStatement.declarationSourceStart = i17;
        requiresStatement.sourceStart = i17;
        requiresStatement.sourceEnd = moduleReference.sourceEnd;
        pushOnAstStack(requiresStatement);
        if (this.currentElement instanceof RecoveredModule) {
            this.lastCheckPoint = requiresStatement.declarationSourceEnd;
        }
    }

    public void consumeSingleResource() {
    }

    public void consumeSingleServiceImplName() {
        pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[this.identifierLengthPtr]);
        pushOnGenericsLengthStack(0);
        TypeReference typeReference = getTypeReference(0);
        if (typeReference.annotations != null) {
            int i10 = 0;
            while (true) {
                Annotation[][] annotationArr = typeReference.annotations;
                if (i10 >= annotationArr.length) {
                    break;
                }
                Annotation[] annotationArr2 = annotationArr[i10];
                if (annotationArr2 != null && annotationArr2.length > 0) {
                    problemReporter().misplacedTypeAnnotations(annotationArr2[0], annotationArr2[annotationArr2.length - 1]);
                    typeReference.annotations[i10] = null;
                }
                i10++;
            }
        }
        pushOnAstStack(typeReference);
        if (this.currentElement instanceof RecoveredModule) {
            this.lastCheckPoint = typeReference.sourceEnd + 1;
        }
    }

    public void consumeSingleStaticImportDeclarationName() {
        int[] iArr = this.identifierLengthStack;
        int i10 = this.identifierLengthPtr;
        this.identifierLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        char[][] cArr = new char[i11];
        int i12 = this.identifierPtr - i11;
        this.identifierPtr = i12;
        long[] jArr = new long[i11];
        System.arraycopy(this.identifierStack, i12 + 1, cArr, 0, i11);
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, jArr, 0, i11);
        ImportReference importReference = new ImportReference(cArr, jArr, false, 8);
        pushOnAstStack(importReference);
        this.modifiers = 0;
        this.modifiersSourceStart = -1;
        if (this.currentToken == 26) {
            importReference.declarationSourceEnd = this.scanner.currentPosition - 1;
        } else {
            importReference.declarationSourceEnd = importReference.sourceEnd;
        }
        importReference.declarationEnd = importReference.declarationSourceEnd;
        int[] iArr2 = this.intStack;
        int i13 = this.intPtr;
        this.intPtr = i13 - 1;
        importReference.declarationSourceStart = iArr2[i13];
        if (!this.statementRecoveryActivated && this.options.sourceLevel < ClassFileConstants.JDK1_5 && this.lastErrorEndPositionBeforeRecovery < this.scanner.currentPosition) {
            importReference.modifiers = 0;
            problemReporter().invalidUsageOfStaticImports(importReference);
        }
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            this.lastCheckPoint = importReference.declarationSourceEnd + 1;
            this.currentElement = recoveredElement.add(importReference, 0);
            this.lastIgnoredToken = -1;
            this.restartRecovery = true;
        }
    }

    public void consumeSingleTargetModuleName() {
        int[] iArr = this.identifierLengthStack;
        int i10 = this.identifierLengthPtr;
        this.identifierLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        char[][] cArr = new char[i11];
        int i12 = this.identifierPtr - i11;
        this.identifierPtr = i12;
        long[] jArr = new long[i11];
        System.arraycopy(this.identifierStack, i12 + 1, cArr, 0, i11);
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, jArr, 0, i11);
        ModuleReference moduleReference = new ModuleReference(cArr, jArr);
        pushOnAstStack(moduleReference);
        if (this.currentElement != null) {
            this.lastCheckPoint = moduleReference.sourceEnd + 1;
        }
    }

    public void consumeSingleTypeImportDeclarationName() {
        int[] iArr = this.identifierLengthStack;
        int i10 = this.identifierLengthPtr;
        this.identifierLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        char[][] cArr = new char[i11];
        int i12 = this.identifierPtr - i11;
        this.identifierPtr = i12;
        long[] jArr = new long[i11];
        System.arraycopy(this.identifierStack, i12 + 1, cArr, 0, i11);
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, jArr, 0, i11);
        ImportReference importReference = new ImportReference(cArr, jArr, false, 0);
        pushOnAstStack(importReference);
        if (this.currentToken == 26) {
            importReference.declarationSourceEnd = this.scanner.currentPosition - 1;
        } else {
            importReference.declarationSourceEnd = importReference.sourceEnd;
        }
        int i13 = importReference.declarationSourceEnd;
        importReference.declarationEnd = i13;
        int[] iArr2 = this.intStack;
        int i14 = this.intPtr;
        this.intPtr = i14 - 1;
        importReference.declarationSourceStart = iArr2[i14];
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            this.lastCheckPoint = i13 + 1;
            this.currentElement = recoveredElement.add(importReference, 0);
            this.lastIgnoredToken = -1;
            this.restartRecovery = true;
        }
    }

    public void consumeStatementBreak() {
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        pushOnAstStack(new BreakStatement(null, iArr[i10], this.endStatementPosition));
        TypeDeclaration typeDeclaration = this.pendingRecoveredType;
        if (typeDeclaration != null) {
            if (typeDeclaration.allocation != null || this.endPosition > typeDeclaration.declarationSourceEnd) {
                this.pendingRecoveredType = null;
            } else {
                this.astStack[this.astPtr] = typeDeclaration;
                this.pendingRecoveredType = null;
            }
        }
    }

    public void consumeStatementBreakWithLabel() {
        int[] iArr = this.expressionLengthStack;
        int i10 = this.expressionLengthPtr;
        this.expressionLengthPtr = i10 - 1;
        if (iArr[i10] != 0) {
            Expression[] expressionArr = this.expressionStack;
            int i11 = this.expressionPtr;
            this.expressionPtr = i11 - 1;
            Expression expression = expressionArr[i11];
            char[] source = expression instanceof Literal ? ((Literal) expression).source() : expression instanceof SingleNameReference ? ((SingleNameReference) expression).token : null;
            int[] iArr2 = this.intStack;
            int i12 = this.intPtr;
            this.intPtr = i12 - 1;
            BreakStatement breakStatement = new BreakStatement(source, iArr2[i12], this.endStatementPosition);
            pushOnAstStack(breakStatement);
            breakStatement.expression = expression;
            if (expression instanceof SingleNameReference) {
                ((SingleNameReference) expression).isLabel = true;
            }
        }
    }

    public void consumeStatementCatch() {
        this.astLengthPtr--;
        this.listLength = 0;
    }

    public void consumeStatementContinue() {
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        pushOnAstStack(new ContinueStatement(null, iArr[i10], this.endStatementPosition));
    }

    public void consumeStatementContinueWithLabel() {
        char[][] cArr = this.identifierStack;
        int i10 = this.identifierPtr;
        this.identifierPtr = i10 - 1;
        char[] cArr2 = cArr[i10];
        int[] iArr = this.intStack;
        int i11 = this.intPtr;
        this.intPtr = i11 - 1;
        pushOnAstStack(new ContinueStatement(cArr2, iArr[i11], this.endStatementPosition));
        this.identifierLengthPtr--;
    }

    public void consumeStatementDo() {
        this.intPtr--;
        ASTNode[] aSTNodeArr = this.astStack;
        int i10 = this.astPtr;
        Statement statement = (Statement) aSTNodeArr[i10];
        this.expressionLengthPtr--;
        Expression[] expressionArr = this.expressionStack;
        int i11 = this.expressionPtr;
        this.expressionPtr = i11 - 1;
        Expression expression = expressionArr[i11];
        int[] iArr = this.intStack;
        int i12 = this.intPtr;
        this.intPtr = i12 - 1;
        aSTNodeArr[i10] = new DoStatement(expression, statement, iArr[i12], this.endStatementPosition);
    }

    public void consumeStatementExpressionList() {
        concatExpressionLists();
    }

    public void consumeStatementFor() {
        Statement[] statementArr;
        Expression expression;
        boolean z10;
        this.astLengthPtr--;
        ASTNode[] aSTNodeArr = this.astStack;
        int i10 = this.astPtr;
        this.astPtr = i10 - 1;
        Statement statement = (Statement) aSTNodeArr[i10];
        int[] iArr = this.expressionLengthStack;
        int i11 = this.expressionLengthPtr;
        this.expressionLengthPtr = i11 - 1;
        int i12 = iArr[i11];
        Statement[] statementArr2 = null;
        if (i12 == 0) {
            statementArr = null;
        } else {
            int i13 = this.expressionPtr - i12;
            this.expressionPtr = i13;
            Statement[] statementArr3 = new Statement[i12];
            System.arraycopy(this.expressionStack, i13 + 1, statementArr3, 0, i12);
            statementArr = statementArr3;
        }
        int[] iArr2 = this.expressionLengthStack;
        int i14 = this.expressionLengthPtr;
        int i15 = i14 - 1;
        this.expressionLengthPtr = i15;
        if (iArr2[i14] != 0) {
            Expression[] expressionArr = this.expressionStack;
            int i16 = this.expressionPtr;
            this.expressionPtr = i16 - 1;
            expression = expressionArr[i16];
        } else {
            expression = null;
        }
        int[] iArr3 = this.astLengthStack;
        int i17 = this.astLengthPtr;
        this.astLengthPtr = i17 - 1;
        int i18 = iArr3[i17];
        if (i18 != 0) {
            if (i18 != -1) {
                int i19 = this.astPtr - i18;
                this.astPtr = i19;
                Statement[] statementArr4 = new Statement[i18];
                System.arraycopy(this.astStack, i19 + 1, statementArr4, 0, i18);
                z10 = true;
                statementArr2 = statementArr4;
                int[] iArr4 = this.intStack;
                int i20 = this.intPtr;
                this.intPtr = i20 - 1;
                pushOnAstStack(new ForStatement(statementArr2, expression, statementArr, statement, z10, iArr4[i20], this.endStatementPosition));
            }
            this.expressionLengthPtr = i14 - 2;
            int i21 = iArr2[i15];
            int i22 = this.expressionPtr - i21;
            this.expressionPtr = i22;
            Statement[] statementArr5 = new Statement[i21];
            System.arraycopy(this.expressionStack, i22 + 1, statementArr5, 0, i21);
            statementArr2 = statementArr5;
        }
        z10 = false;
        int[] iArr42 = this.intStack;
        int i202 = this.intPtr;
        this.intPtr = i202 - 1;
        pushOnAstStack(new ForStatement(statementArr2, expression, statementArr, statement, z10, iArr42[i202], this.endStatementPosition));
    }

    public void consumeStatementIfNoElse() {
        this.expressionLengthPtr--;
        ASTNode[] aSTNodeArr = this.astStack;
        int i10 = this.astPtr;
        Statement statement = (Statement) aSTNodeArr[i10];
        Expression[] expressionArr = this.expressionStack;
        int i11 = this.expressionPtr;
        this.expressionPtr = i11 - 1;
        Expression expression = expressionArr[i11];
        int[] iArr = this.intStack;
        int i12 = this.intPtr;
        this.intPtr = i12 - 1;
        aSTNodeArr[i10] = new IfStatement(expression, statement, iArr[i12], this.endStatementPosition);
    }

    public void consumeStatementIfWithElse() {
        this.expressionLengthPtr--;
        this.astLengthPtr--;
        ASTNode[] aSTNodeArr = this.astStack;
        int i10 = this.astPtr - 1;
        this.astPtr = i10;
        Expression[] expressionArr = this.expressionStack;
        int i11 = this.expressionPtr;
        this.expressionPtr = i11 - 1;
        Expression expression = expressionArr[i11];
        ASTNode[] aSTNodeArr2 = this.astStack;
        int i12 = this.astPtr;
        Statement statement = (Statement) aSTNodeArr2[i12];
        Statement statement2 = (Statement) aSTNodeArr2[i12 + 1];
        int[] iArr = this.intStack;
        int i13 = this.intPtr;
        this.intPtr = i13 - 1;
        aSTNodeArr[i10] = new IfStatement(expression, statement, statement2, iArr[i13], this.endStatementPosition);
    }

    public void consumeStatementLabel() {
        ASTNode[] aSTNodeArr = this.astStack;
        int i10 = this.astPtr;
        Statement statement = (Statement) aSTNodeArr[i10];
        char[][] cArr = this.identifierStack;
        int i11 = this.identifierPtr;
        char[] cArr2 = cArr[i11];
        long[] jArr = this.identifierPositionStack;
        this.identifierPtr = i11 - 1;
        aSTNodeArr[i10] = new LabeledStatement(cArr2, statement, jArr[i11], this.endStatementPosition);
        this.identifierLengthPtr--;
    }

    public void consumeStatementReturn() {
        int[] iArr = this.expressionLengthStack;
        int i10 = this.expressionLengthPtr;
        this.expressionLengthPtr = i10 - 1;
        if (iArr[i10] == 0) {
            int[] iArr2 = this.intStack;
            int i11 = this.intPtr;
            this.intPtr = i11 - 1;
            pushOnAstStack(new ReturnStatement(null, iArr2[i11], this.endStatementPosition));
            return;
        }
        Expression[] expressionArr = this.expressionStack;
        int i12 = this.expressionPtr;
        this.expressionPtr = i12 - 1;
        Expression expression = expressionArr[i12];
        int[] iArr3 = this.intStack;
        int i13 = this.intPtr;
        this.intPtr = i13 - 1;
        pushOnAstStack(new ReturnStatement(expression, iArr3[i13], this.endStatementPosition));
    }

    public void consumeStatementSwitch() {
        createSwitchStatementOrExpression(true);
    }

    public void consumeStatementSynchronized() {
        int[] iArr = this.astLengthStack;
        int i10 = this.astLengthPtr;
        if (iArr[i10] == 0) {
            iArr[i10] = 1;
            this.expressionLengthPtr--;
            ASTNode[] aSTNodeArr = this.astStack;
            int i11 = this.astPtr + 1;
            this.astPtr = i11;
            Expression[] expressionArr = this.expressionStack;
            int i12 = this.expressionPtr;
            this.expressionPtr = i12 - 1;
            Expression expression = expressionArr[i12];
            int[] iArr2 = this.intStack;
            int i13 = this.intPtr;
            this.intPtr = i13 - 1;
            aSTNodeArr[i11] = new SynchronizedStatement(expression, null, iArr2[i13], this.endStatementPosition);
        } else {
            this.expressionLengthPtr--;
            ASTNode[] aSTNodeArr2 = this.astStack;
            int i14 = this.astPtr;
            Expression[] expressionArr2 = this.expressionStack;
            int i15 = this.expressionPtr;
            this.expressionPtr = i15 - 1;
            Expression expression2 = expressionArr2[i15];
            Block block = (Block) this.astStack[this.astPtr];
            int[] iArr3 = this.intStack;
            int i16 = this.intPtr;
            this.intPtr = i16 - 1;
            aSTNodeArr2[i14] = new SynchronizedStatement(expression2, block, iArr3[i16], this.endStatementPosition);
        }
        this.modifiers = 0;
        this.modifiersSourceStart = -1;
    }

    public void consumeStatementThrow() {
        this.expressionLengthPtr--;
        Expression[] expressionArr = this.expressionStack;
        int i10 = this.expressionPtr;
        this.expressionPtr = i10 - 1;
        Expression expression = expressionArr[i10];
        int[] iArr = this.intStack;
        int i11 = this.intPtr;
        this.intPtr = i11 - 1;
        pushOnAstStack(new ThrowStatement(expression, iArr[i11], this.endStatementPosition));
    }

    public void consumeStatementTry(boolean z10, boolean z11) {
        TryStatement tryStatement = new TryStatement();
        if (z10) {
            this.astLengthPtr--;
            ASTNode[] aSTNodeArr = this.astStack;
            int i10 = this.astPtr;
            this.astPtr = i10 - 1;
            tryStatement.finallyBlock = (Block) aSTNodeArr[i10];
        }
        int[] iArr = this.astLengthStack;
        int i11 = this.astLengthPtr;
        this.astLengthPtr = i11 - 1;
        int i12 = iArr[i11];
        if (i12 != 0) {
            if (i12 == 1) {
                ASTNode[] aSTNodeArr2 = this.astStack;
                int i13 = this.astPtr;
                int i14 = i13 - 1;
                this.astPtr = i14;
                tryStatement.catchBlocks = new Block[]{(Block) aSTNodeArr2[i13]};
                this.astPtr = i13 - 2;
                tryStatement.catchArguments = new Argument[]{(Argument) aSTNodeArr2[i14]};
            } else {
                Block[] blockArr = new Block[i12];
                tryStatement.catchBlocks = blockArr;
                Argument[] argumentArr = new Argument[i12];
                tryStatement.catchArguments = argumentArr;
                while (true) {
                    int i15 = i12 - 1;
                    if (i12 <= 0) {
                        break;
                    }
                    ASTNode[] aSTNodeArr3 = this.astStack;
                    int i16 = this.astPtr;
                    int i17 = i16 - 1;
                    this.astPtr = i17;
                    blockArr[i15] = (Block) aSTNodeArr3[i16];
                    this.astPtr = i16 - 2;
                    argumentArr[i15] = (Argument) aSTNodeArr3[i17];
                    i12 = i15;
                }
            }
        }
        int i18 = this.astLengthPtr;
        int i19 = i18 - 1;
        this.astLengthPtr = i19;
        ASTNode[] aSTNodeArr4 = this.astStack;
        int i20 = this.astPtr;
        int i21 = i20 - 1;
        this.astPtr = i21;
        tryStatement.tryBlock = (Block) aSTNodeArr4[i20];
        if (z11) {
            int[] iArr2 = this.astLengthStack;
            this.astLengthPtr = i18 - 2;
            int i22 = iArr2[i19];
            Statement[] statementArr = new Statement[i22];
            int i23 = i21 - i22;
            this.astPtr = i23;
            System.arraycopy(aSTNodeArr4, i23 + 1, statementArr, 0, i22);
            tryStatement.resources = statementArr;
            if (this.options.sourceLevel < ClassFileConstants.JDK1_7) {
                problemReporter().autoManagedResourcesNotBelow17(statementArr);
            }
            if (this.options.sourceLevel < ClassFileConstants.JDK9) {
                for (int i24 = 0; i24 < i22; i24++) {
                    Statement statement = statementArr[i24];
                    if ((statement instanceof FieldReference) || (statement instanceof NameReference)) {
                        problemReporter().autoManagedVariableResourcesNotBelow9((Expression) statement);
                    }
                }
            }
        }
        tryStatement.sourceEnd = this.endStatementPosition;
        int[] iArr3 = this.intStack;
        int i25 = this.intPtr;
        this.intPtr = i25 - 1;
        tryStatement.sourceStart = iArr3[i25];
        pushOnAstStack(tryStatement);
    }

    public void consumeStatementWhile() {
        this.expressionLengthPtr--;
        ASTNode[] aSTNodeArr = this.astStack;
        int i10 = this.astPtr;
        Statement statement = (Statement) aSTNodeArr[i10];
        Expression[] expressionArr = this.expressionStack;
        int i11 = this.expressionPtr;
        this.expressionPtr = i11 - 1;
        Expression expression = expressionArr[i11];
        int[] iArr = this.intStack;
        int i12 = this.intPtr;
        this.intPtr = i12 - 1;
        aSTNodeArr[i10] = new WhileStatement(expression, statement, iArr[i12], this.endStatementPosition);
    }

    public void consumeStaticImportOnDemandDeclarationName() {
        int[] iArr = this.identifierLengthStack;
        int i10 = this.identifierLengthPtr;
        this.identifierLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        char[][] cArr = new char[i11];
        int i12 = this.identifierPtr - i11;
        this.identifierPtr = i12;
        long[] jArr = new long[i11];
        System.arraycopy(this.identifierStack, i12 + 1, cArr, 0, i11);
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, jArr, 0, i11);
        ImportReference importReference = new ImportReference(cArr, jArr, true, 8);
        pushOnAstStack(importReference);
        int[] iArr2 = this.intStack;
        int i13 = this.intPtr;
        int i14 = i13 - 1;
        this.intPtr = i14;
        importReference.trailingStarPosition = iArr2[i13];
        this.modifiers = 0;
        this.modifiersSourceStart = -1;
        if (this.currentToken == 26) {
            importReference.declarationSourceEnd = this.scanner.currentPosition - 1;
        } else {
            importReference.declarationSourceEnd = importReference.sourceEnd;
        }
        importReference.declarationEnd = importReference.declarationSourceEnd;
        this.intPtr = i13 - 2;
        importReference.declarationSourceStart = iArr2[i14];
        if (!this.statementRecoveryActivated && this.options.sourceLevel < ClassFileConstants.JDK1_5 && this.lastErrorEndPositionBeforeRecovery < this.scanner.currentPosition) {
            importReference.modifiers = 0;
            problemReporter().invalidUsageOfStaticImports(importReference);
        }
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            this.lastCheckPoint = importReference.declarationSourceEnd + 1;
            this.currentElement = recoveredElement.add(importReference, 0);
            this.lastIgnoredToken = -1;
            this.restartRecovery = true;
        }
    }

    public void consumeStaticInitializer() {
        Block block = (Block) this.astStack[this.astPtr];
        if (this.diet) {
            block.bits &= -9;
        }
        Initializer initializer = new Initializer(block, 8);
        this.astStack[this.astPtr] = initializer;
        int i10 = this.endStatementPosition;
        initializer.sourceEnd = i10;
        int flushCommentsDefinedPriorTo = flushCommentsDefinedPriorTo(i10);
        initializer.declarationSourceEnd = flushCommentsDefinedPriorTo;
        this.nestedMethod[this.nestedType] = r2[r3] - 1;
        int[] iArr = this.intStack;
        int i11 = this.intPtr;
        int i12 = i11 - 1;
        this.intPtr = i12;
        initializer.declarationSourceStart = iArr[i11];
        this.intPtr = i11 - 2;
        initializer.bodyStart = iArr[i12];
        initializer.bodyEnd = this.endPosition;
        initializer.javadoc = this.javadoc;
        this.javadoc = null;
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            this.lastCheckPoint = flushCommentsDefinedPriorTo;
            this.currentElement = recoveredElement.add((FieldDeclaration) initializer, 0);
            this.lastIgnoredToken = -1;
        }
    }

    public void consumeStaticOnly() {
        int i10 = this.modifiersSourceStart;
        checkComment();
        if (this.modifiersSourceStart >= i10) {
            this.modifiersSourceStart = i10;
        }
        pushOnIntStack(this.scanner.currentPosition);
        int i11 = this.modifiersSourceStart;
        if (i11 < 0) {
            i11 = this.scanner.startPosition;
        }
        pushOnIntStack(i11);
        jumpOverMethodBody();
        int[] iArr = this.nestedMethod;
        int i12 = this.nestedType;
        iArr[i12] = iArr[i12] + 1;
        resetModifiers();
        this.expressionLengthPtr--;
        if (this.currentElement != null) {
            this.recoveredStaticInitializerStart = this.intStack[this.intPtr];
        }
    }

    public void consumeSwitchBlock() {
        concatNodeLists();
    }

    public void consumeSwitchBlockStatement() {
        concatNodeLists();
    }

    public void consumeSwitchBlockStatements() {
        concatNodeLists();
    }

    public void consumeSwitchExprThrowDefaultArm() {
        consumeStatementThrow();
    }

    public void consumeSwitchExpression() {
        createSwitchStatementOrExpression(false);
        int[] iArr = this.astLengthStack;
        int i10 = this.astLengthPtr;
        this.astLengthPtr = i10 - 1;
        if (iArr[i10] != 0) {
            ASTNode[] aSTNodeArr = this.astStack;
            int i11 = this.astPtr;
            this.astPtr = i11 - 1;
            SwitchExpression switchExpression = (SwitchExpression) aSTNodeArr[i11];
            if (this.parsingJava12Plus) {
                CompilerOptions compilerOptions = this.options;
                if (!compilerOptions.enablePreviewFeatures) {
                    problemReporter().previewFeatureNotEnabled(switchExpression.sourceStart, switchExpression.sourceEnd, "Switch Expressions");
                } else if (compilerOptions.isAnyEnabled(IrritantSet.PREVIEW)) {
                    problemReporter().previewFeatureUsed(switchExpression.sourceStart, switchExpression.sourceEnd);
                }
            } else {
                problemReporter().previewFeatureNotSupported(switchExpression.sourceStart, switchExpression.sourceEnd, "Switch Expressions", "12");
            }
            collectResultExpressions(switchExpression);
            pushOnExpressionStack(switchExpression);
        }
    }

    public void consumeSwitchLabelCaseLhs() {
    }

    public void consumeSwitchLabeledBlock() {
        concatNodeLists();
    }

    public void consumeSwitchLabeledExpression() {
        consumeExpressionStatement();
        Expression expression = (Expression) this.astStack[this.astPtr];
        BreakStatement breakStatement = new BreakStatement(null, expression.sourceStart, this.endStatementPosition);
        breakStatement.isImplicit = true;
        breakStatement.expression = expression;
        this.astStack[this.astPtr] = breakStatement;
        concatNodeLists();
    }

    public void consumeSwitchLabeledRule() {
    }

    public void consumeSwitchLabeledRuleToBlockStatement() {
    }

    public void consumeSwitchLabeledRules() {
        concatNodeLists();
    }

    public void consumeSwitchLabeledThrowStatement() {
        consumeStatementThrow();
        concatNodeLists();
    }

    public void consumeSwitchLabels() {
        optimizedConcatNodeLists();
    }

    public void consumeTargetModuleList() {
        int[] iArr = this.astLengthStack;
        int i10 = this.astLengthPtr;
        this.astLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        int i12 = this.astPtr - i11;
        this.astPtr = i12;
        ASTNode[] aSTNodeArr = this.astStack;
        PackageVisibilityStatement packageVisibilityStatement = (PackageVisibilityStatement) aSTNodeArr[i12];
        if (i11 > 0) {
            ModuleReference[] moduleReferenceArr = new ModuleReference[i11];
            packageVisibilityStatement.targets = moduleReferenceArr;
            System.arraycopy(aSTNodeArr, i12 + 1, moduleReferenceArr, 0, i11);
            int i13 = packageVisibilityStatement.targets[i11 - 1].sourceEnd;
            packageVisibilityStatement.sourceEnd = i13;
            if (this.currentToken == 26) {
                packageVisibilityStatement.declarationSourceEnd = i13 + 1;
            } else {
                packageVisibilityStatement.declarationSourceEnd = i13;
            }
        }
        this.listLength = 0;
        if (this.currentElement != null) {
            this.lastCheckPoint = packageVisibilityStatement.sourceEnd;
        }
    }

    public void consumeTargetModuleNameList() {
        this.listLength++;
        optimizedConcatNodeLists();
    }

    public void consumeThrowExpression() {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0007. Please report as an issue. */
    public void consumeToken(int i10) {
        StringLiteral createStringLiteral;
        switch (i10) {
            case 2:
            case 3:
                Scanner scanner = this.scanner;
                this.endPosition = scanner.startPosition;
                this.endStatementPosition = scanner.currentPosition - 1;
                return;
            case 4:
            case 5:
            case 63:
            case 64:
                this.endPosition = this.scanner.startPosition;
                return;
            case 6:
            case 9:
            case 10:
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
            case 24:
            case 28:
            case 30:
            case 31:
            case 32:
            case 61:
            case 62:
            case 65:
            case 68:
            case 84:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
            case 92:
            case 93:
            case 94:
            case 95:
            case 96:
            case 97:
            case 102:
            case 111:
            case 112:
            case 120:
            default:
                return;
            case 7:
                this.colonColonStart = this.scanner.currentPosition - 2;
                return;
            case 8:
                pushOnIntStack(this.scanner.currentPosition - 1);
                return;
            case 11:
                pushOnIntStack(this.scanner.startPosition);
                return;
            case 22:
                pushIdentifier();
                Scanner scanner2 = this.scanner;
                if (scanner2.useAssertAsAnIndentifier && this.lastErrorEndPositionBeforeRecovery < scanner2.currentPosition) {
                    long j10 = this.identifierPositionStack[this.identifierPtr];
                    if (!this.statementRecoveryActivated) {
                        problemReporter().useAssertAsAnIdentifier((int) (j10 >>> 32), (int) j10);
                    }
                }
                Scanner scanner3 = this.scanner;
                if (!scanner3.useEnumAsAnIndentifier || this.lastErrorEndPositionBeforeRecovery >= scanner3.currentPosition) {
                    return;
                }
                long j11 = this.identifierPositionStack[this.identifierPtr];
                if (this.statementRecoveryActivated) {
                    return;
                }
                problemReporter().useEnumAsAnIdentifier((int) (j11 >>> 32), (int) j11);
                return;
            case 23:
                this.lParenPos = this.scanner.startPosition;
                return;
            case 25:
                this.rParenPos = this.scanner.currentPosition - 1;
                return;
            case 26:
            case 33:
                Scanner scanner4 = this.scanner;
                this.endStatementPosition = scanner4.currentPosition - 1;
                this.endPosition = scanner4.startPosition - 1;
                return;
            case 27:
                this.expectTypeAnnotation = true;
                pushOnIntStack(this.dimensions);
                this.dimensions = 0;
                pushOnIntStack(this.scanner.startPosition);
                return;
            case 29:
                pushOnIntStack(this.scanner.startPosition);
                pushOnIntStack(this.scanner.currentPosition - 1);
                return;
            case 34:
            case 35:
                Scanner scanner5 = this.scanner;
                this.endPosition = scanner5.currentPosition - 1;
                pushOnIntStack(scanner5.startPosition);
                return;
            case 36:
                resetModifiers();
                pushOnIntStack(this.scanner.startPosition);
                return;
            case 37:
                pushOnIntStack(this.scanner.startPosition);
                return;
            case 38:
                Scanner scanner6 = this.scanner;
                pushOnExpressionStack(new FalseLiteral(scanner6.startPosition, scanner6.currentPosition - 1));
                return;
            case 39:
                Scanner scanner7 = this.scanner;
                pushOnExpressionStack(new NullLiteral(scanner7.startPosition, scanner7.currentPosition - 1));
                return;
            case 40:
                Scanner scanner8 = this.scanner;
                pushOnExpressionStack(new TrueLiteral(scanner8.startPosition, scanner8.currentPosition - 1));
                return;
            case 41:
                char[] currentTokenSource = this.scanner.getCurrentTokenSource();
                Scanner scanner9 = this.scanner;
                pushOnExpressionStack(IntLiteral.buildIntLiteral(currentTokenSource, scanner9.startPosition, scanner9.currentPosition - 1));
                return;
            case 42:
                char[] currentTokenSource2 = this.scanner.getCurrentTokenSource();
                Scanner scanner10 = this.scanner;
                pushOnExpressionStack(LongLiteral.buildLongLiteral(currentTokenSource2, scanner10.startPosition, scanner10.currentPosition - 1));
                return;
            case 43:
                char[] currentTokenSource3 = this.scanner.getCurrentTokenSource();
                Scanner scanner11 = this.scanner;
                pushOnExpressionStack(new FloatLiteral(currentTokenSource3, scanner11.startPosition, scanner11.currentPosition - 1));
                return;
            case 44:
                char[] currentTokenSource4 = this.scanner.getCurrentTokenSource();
                Scanner scanner12 = this.scanner;
                pushOnExpressionStack(new DoubleLiteral(currentTokenSource4, scanner12.startPosition, scanner12.currentPosition - 1));
                return;
            case 45:
                char[] currentTokenSource5 = this.scanner.getCurrentTokenSource();
                Scanner scanner13 = this.scanner;
                pushOnExpressionStack(new CharLiteral(currentTokenSource5, scanner13.startPosition, scanner13.currentPosition - 1));
                return;
            case 46:
                if (this.recordStringLiterals && !this.reparsingLambdaExpression && this.checkExternalizeStrings) {
                    int i11 = this.lastPosistion;
                    Scanner scanner14 = this.scanner;
                    if (i11 < scanner14.currentPosition && !this.statementRecoveryActivated) {
                        char[] currentTokenSourceString = scanner14.getCurrentTokenSourceString();
                        Scanner scanner15 = this.scanner;
                        int i12 = scanner15.startPosition;
                        createStringLiteral = createStringLiteral(currentTokenSourceString, i12, scanner15.currentPosition - 1, Util.getLineNumber(i12, scanner15.lineEnds, 0, scanner15.linePtr));
                        this.compilationUnit.recordStringLiteral(createStringLiteral, this.currentElement != null);
                        pushOnExpressionStack(createStringLiteral);
                        return;
                    }
                }
                char[] currentTokenSourceString2 = this.scanner.getCurrentTokenSourceString();
                Scanner scanner16 = this.scanner;
                createStringLiteral = createStringLiteral(currentTokenSourceString2, scanner16.startPosition, scanner16.currentPosition - 1, 0);
                pushOnExpressionStack(createStringLiteral);
                return;
            case 47:
                flushCommentsDefinedPriorTo(this.scanner.currentPosition);
                return;
            case 48:
                if (isParsingModuleDeclaration()) {
                    checkAndSetModifiers(64);
                } else {
                    checkAndSetModifiers(8);
                }
                pushOnExpressionStackLengthStack(0);
                return;
            case 49:
                this.endStatementPosition = this.scanner.currentPosition - 1;
                this.endPosition = this.scanner.startPosition;
                return;
            case 50:
                this.synchronizedBlockSourceStart = this.scanner.startPosition;
                checkAndSetModifiers(32);
                pushOnExpressionStackLengthStack(0);
                return;
            case 51:
                consumeNestedType();
                this.switchNestingLevel++;
                int[] iArr = this.nestedMethod;
                int i13 = this.nestedType;
                iArr[i13] = iArr[i13] + 1;
                pushOnIntStack(this.scanner.startPosition);
                return;
            case 52:
                checkAndSetModifiers(1024);
                pushOnExpressionStackLengthStack(0);
                return;
            case 53:
                checkAndSetModifiers(16);
                pushOnExpressionStackLengthStack(0);
                return;
            case 54:
                checkAndSetModifiers(256);
                pushOnExpressionStackLengthStack(0);
                return;
            case 55:
                checkAndSetModifiers(2);
                pushOnExpressionStackLengthStack(0);
                return;
            case 56:
                checkAndSetModifiers(4);
                pushOnExpressionStackLengthStack(0);
                return;
            case 57:
                checkAndSetModifiers(1);
                pushOnExpressionStackLengthStack(0);
                return;
            case 58:
                checkAndSetModifiers(2048);
                pushOnExpressionStackLengthStack(0);
                return;
            case 59:
                checkAndSetModifiers(128);
                pushOnExpressionStackLengthStack(0);
                return;
            case 60:
                checkAndSetModifiers(64);
                pushOnExpressionStackLengthStack(0);
                return;
            case 66:
                Scanner scanner17 = this.scanner;
                int i14 = scanner17.startPosition;
                this.rBracketPosition = i14;
                this.endPosition = i14;
                this.endStatementPosition = scanner17.currentPosition - 1;
                return;
            case 67:
                pushOnIntStack(this.scanner.currentPosition - 1);
                pushOnIntStack(this.scanner.startPosition);
                return;
            case 69:
                this.caseFlagSet = true;
                return;
            case 70:
                pushOnIntStack(this.scanner.currentPosition - 1);
                pushOnIntStack(this.scanner.startPosition);
                return;
            case 71:
                pushOnIntStack(this.scanner.currentPosition - 1);
                pushOnIntStack(this.scanner.startPosition);
                return;
            case 72:
                RecoveredElement recoveredElement = this.currentElement;
                if (recoveredElement == null || !(recoveredElement instanceof RecoveredAnnotation)) {
                    return;
                }
                RecoveredAnnotation recoveredAnnotation = (RecoveredAnnotation) recoveredElement;
                if (recoveredAnnotation.memberValuPairEqualEnd == -1) {
                    recoveredAnnotation.memberValuPairEqualEnd = this.scanner.currentPosition - 1;
                    return;
                }
                return;
            case 73:
                pushOnIntStack(this.scanner.startPosition);
                pushOnIntStack(this.scanner.currentPosition - 1);
                return;
            case 74:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 81:
            case 82:
            case 83:
            case 85:
            case 101:
            case 106:
            case 113:
            case 115:
            case 116:
            case 117:
            case 118:
            case 119:
                pushOnIntStack(this.scanner.startPosition);
                return;
            case 80:
                this.forStartPosition = this.scanner.startPosition;
                pushOnIntStack(this.scanner.startPosition);
                return;
            case 98:
                if (!this.caseFlagSet && this.scanner.lookBack[0] != 73) {
                    consumeLambdaHeader();
                }
                this.caseFlagSet = false;
                return;
            case 99:
                pushIdentifier(-5);
                pushOnIntStack(this.scanner.currentPosition - 1);
                pushOnIntStack(this.scanner.startPosition);
                return;
            case 100:
                pushIdentifier(-3);
                pushOnIntStack(this.scanner.currentPosition - 1);
                pushOnIntStack(this.scanner.startPosition);
                return;
            case 103:
                pushIdentifier(-2);
                pushOnIntStack(this.scanner.currentPosition - 1);
                pushOnIntStack(this.scanner.startPosition);
                return;
            case 104:
                pushIdentifier(-8);
                pushOnIntStack(this.scanner.currentPosition - 1);
                pushOnIntStack(this.scanner.startPosition);
                return;
            case 105:
                pushIdentifier(-9);
                pushOnIntStack(this.scanner.currentPosition - 1);
                pushOnIntStack(this.scanner.startPosition);
                return;
            case 107:
                pushIdentifier(-10);
                pushOnIntStack(this.scanner.currentPosition - 1);
                pushOnIntStack(this.scanner.startPosition);
                return;
            case 108:
                pushIdentifier(-7);
                pushOnIntStack(this.scanner.currentPosition - 1);
                pushOnIntStack(this.scanner.startPosition);
                return;
            case 109:
                pushIdentifier(-4);
                pushOnIntStack(this.scanner.currentPosition - 1);
                pushOnIntStack(this.scanner.startPosition);
                return;
            case 110:
                pushIdentifier(-6);
                pushOnIntStack(this.scanner.currentPosition - 1);
                pushOnIntStack(this.scanner.startPosition);
                return;
            case 114:
                checkAndSetModifiers(32);
                pushOnExpressionStackLengthStack(0);
                return;
            case 121:
                checkAndSetModifiers(32);
                pushOnExpressionStackLengthStack(0);
                return;
            case 122:
                pushOnIntStack(this.scanner.currentPosition - 1);
                return;
        }
    }

    public void consumeTypeAnnotation() {
        if (!this.statementRecoveryActivated && this.options.sourceLevel < ClassFileConstants.JDK1_8 && this.lastErrorEndPositionBeforeRecovery < this.scanner.currentPosition) {
            problemReporter().invalidUsageOfTypeAnnotations(this.typeAnnotationStack[this.typeAnnotationPtr]);
        }
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        this.dimensions = iArr[i10];
    }

    public void consumeTypeArgument() {
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        pushOnGenericsStack(getTypeReference(iArr[i10]));
    }

    public void consumeTypeArgumentList() {
        concatGenericsLists();
    }

    public void consumeTypeArgumentList1() {
        concatGenericsLists();
    }

    public void consumeTypeArgumentList2() {
        concatGenericsLists();
    }

    public void consumeTypeArgumentList3() {
        concatGenericsLists();
    }

    public void consumeTypeArgumentReferenceType1() {
        concatGenericsLists();
        pushOnGenericsStack(getTypeReference(0));
        this.intPtr--;
    }

    public void consumeTypeArgumentReferenceType2() {
        concatGenericsLists();
        pushOnGenericsStack(getTypeReference(0));
        this.intPtr--;
    }

    public void consumeTypeArguments() {
        concatGenericsLists();
        this.intPtr--;
        if (this.statementRecoveryActivated || this.options.sourceLevel >= ClassFileConstants.JDK1_5 || this.lastErrorEndPositionBeforeRecovery >= this.scanner.currentPosition) {
            return;
        }
        int i10 = this.genericsLengthStack[this.genericsLengthPtr];
        ProblemReporter problemReporter = problemReporter();
        ASTNode[] aSTNodeArr = this.genericsStack;
        int i11 = this.genericsPtr;
        problemReporter.invalidUsageOfTypeArguments((TypeReference) aSTNodeArr[(i11 - i10) + 1], (TypeReference) aSTNodeArr[i11]);
    }

    public void consumeTypeDeclarations() {
        concatNodeLists();
    }

    public void consumeTypeElidedLambdaParameter(boolean z10) {
        int i10;
        int i11;
        int i12;
        if (z10) {
            int[] iArr = this.intStack;
            int i13 = this.intPtr;
            int i14 = i13 - 1;
            this.intPtr = i14;
            i10 = iArr[i13];
            this.intPtr = i13 - 2;
            i11 = iArr[i14];
            int[] iArr2 = this.expressionLengthStack;
            int i15 = this.expressionLengthPtr;
            this.expressionLengthPtr = i15 - 1;
            i12 = iArr2[i15];
            this.expressionPtr -= i12;
        } else {
            i10 = 0;
            i11 = 0;
            i12 = 0;
        }
        Argument typeElidedArgument = typeElidedArgument();
        if (i11 != 0 || i12 != 0) {
            problemReporter().illegalModifiersForElidedType(typeElidedArgument);
            typeElidedArgument.declarationSourceStart = i10;
        }
        if (!z10) {
            pushOnIntStack(typeElidedArgument.declarationSourceStart);
            pushOnIntStack(typeElidedArgument.declarationSourceEnd);
        }
        pushOnAstStack(typeElidedArgument);
        this.listLength++;
    }

    public void consumeTypeHeaderNameWithTypeParameters() {
        TypeDeclaration typeDeclaration = (TypeDeclaration) this.astStack[this.astPtr];
        int[] iArr = this.genericsLengthStack;
        int i10 = this.genericsLengthPtr;
        this.genericsLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        int i12 = this.genericsPtr - i11;
        this.genericsPtr = i12;
        TypeParameter[] typeParameterArr = new TypeParameter[i11];
        typeDeclaration.typeParameters = typeParameterArr;
        System.arraycopy(this.genericsStack, i12 + 1, typeParameterArr, 0, i11);
        int i13 = typeDeclaration.typeParameters[i11 - 1].declarationSourceEnd + 1;
        typeDeclaration.bodyStart = i13;
        this.listTypeParameterLength = 0;
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            if (recoveredElement instanceof RecoveredType) {
                ((RecoveredType) recoveredElement).pendingTypeParameters = null;
                this.lastCheckPoint = i13;
            } else {
                this.lastCheckPoint = i13;
                this.currentElement = recoveredElement.add(typeDeclaration, 0);
                this.lastIgnoredToken = -1;
            }
        }
    }

    public void consumeTypeImportOnDemandDeclarationName() {
        int[] iArr = this.identifierLengthStack;
        int i10 = this.identifierLengthPtr;
        this.identifierLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        char[][] cArr = new char[i11];
        int i12 = this.identifierPtr - i11;
        this.identifierPtr = i12;
        long[] jArr = new long[i11];
        System.arraycopy(this.identifierStack, i12 + 1, cArr, 0, i11);
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, jArr, 0, i11);
        ImportReference importReference = new ImportReference(cArr, jArr, true, 0);
        pushOnAstStack(importReference);
        int[] iArr2 = this.intStack;
        int i13 = this.intPtr;
        int i14 = i13 - 1;
        this.intPtr = i14;
        importReference.trailingStarPosition = iArr2[i13];
        if (this.currentToken == 26) {
            importReference.declarationSourceEnd = this.scanner.currentPosition - 1;
        } else {
            importReference.declarationSourceEnd = importReference.sourceEnd;
        }
        int i15 = importReference.declarationSourceEnd;
        importReference.declarationEnd = i15;
        this.intPtr = i13 - 2;
        importReference.declarationSourceStart = iArr2[i14];
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            this.lastCheckPoint = i15 + 1;
            this.currentElement = recoveredElement.add(importReference, 0);
            this.lastIgnoredToken = -1;
            this.restartRecovery = true;
        }
    }

    public void consumeTypeParameter1() {
    }

    public void consumeTypeParameter1WithExtends() {
        ASTNode[] aSTNodeArr = this.genericsStack;
        int i10 = this.genericsPtr;
        int i11 = i10 - 1;
        this.genericsPtr = i11;
        TypeReference typeReference = (TypeReference) aSTNodeArr[i10];
        this.genericsLengthPtr--;
        TypeParameter typeParameter = (TypeParameter) aSTNodeArr[i11];
        typeParameter.declarationSourceEnd = typeReference.sourceEnd;
        typeParameter.type = typeReference;
        int i12 = typeReference.bits | 16;
        typeReference.bits = i12;
        typeParameter.bits |= i12 & 1048576;
        aSTNodeArr[i11] = typeParameter;
    }

    public void consumeTypeParameter1WithExtendsAndBounds() {
        int[] iArr = this.genericsLengthStack;
        int i10 = this.genericsLengthPtr;
        this.genericsLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        TypeReference[] typeReferenceArr = new TypeReference[i11];
        int i12 = this.genericsPtr - i11;
        this.genericsPtr = i12;
        System.arraycopy(this.genericsStack, i12 + 1, typeReferenceArr, 0, i11);
        int[] iArr2 = this.intStack;
        int i13 = this.intPtr;
        this.intPtr = i13 - 1;
        TypeReference typeReference = getTypeReference(iArr2[i13]);
        TypeParameter typeParameter = (TypeParameter) this.genericsStack[this.genericsPtr];
        typeParameter.declarationSourceEnd = typeReferenceArr[i11 - 1].sourceEnd;
        typeParameter.type = typeReference;
        typeParameter.bits |= typeReference.bits & 1048576;
        typeReference.bits |= 16;
        typeParameter.bounds = typeReferenceArr;
        for (int i14 = 0; i14 < i11; i14++) {
            TypeReference typeReference2 = typeReferenceArr[i14];
            int i15 = typeReference2.bits | 16;
            typeReference2.bits = i15;
            typeParameter.bits |= i15 & 1048576;
        }
    }

    public void consumeTypeParameterHeader() {
        TypeParameter typeParameter = new TypeParameter();
        int[] iArr = this.typeAnnotationLengthStack;
        int i10 = this.typeAnnotationLengthPtr;
        this.typeAnnotationLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 != 0) {
            Annotation[] annotationArr = this.typeAnnotationStack;
            int i12 = this.typeAnnotationPtr - i11;
            this.typeAnnotationPtr = i12;
            Annotation[] annotationArr2 = new Annotation[i11];
            typeParameter.annotations = annotationArr2;
            System.arraycopy(annotationArr, i12 + 1, annotationArr2, 0, i11);
            typeParameter.bits |= 1048576;
        }
        long[] jArr = this.identifierPositionStack;
        int i13 = this.identifierPtr;
        long j10 = jArr[i13];
        int i14 = (int) j10;
        typeParameter.declarationSourceEnd = i14;
        typeParameter.sourceEnd = i14;
        int i15 = (int) (j10 >>> 32);
        typeParameter.declarationSourceStart = i15;
        typeParameter.sourceStart = i15;
        char[][] cArr = this.identifierStack;
        this.identifierPtr = i13 - 1;
        typeParameter.name = cArr[i13];
        this.identifierLengthPtr--;
        pushOnGenericsStack(typeParameter);
        this.listTypeParameterLength++;
    }

    public void consumeTypeParameterList() {
        concatGenericsLists();
    }

    public void consumeTypeParameterList1() {
        concatGenericsLists();
    }

    public void consumeTypeParameterWithExtends() {
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        TypeReference typeReference = getTypeReference(iArr[i10]);
        TypeParameter typeParameter = (TypeParameter) this.genericsStack[this.genericsPtr];
        typeParameter.declarationSourceEnd = typeReference.sourceEnd;
        typeParameter.type = typeReference;
        typeParameter.bits |= typeReference.bits & 1048576;
        typeReference.bits |= 16;
    }

    public void consumeTypeParameterWithExtendsAndBounds() {
        int[] iArr = this.genericsLengthStack;
        int i10 = this.genericsLengthPtr;
        this.genericsLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        TypeReference[] typeReferenceArr = new TypeReference[i11];
        int i12 = this.genericsPtr - i11;
        this.genericsPtr = i12;
        System.arraycopy(this.genericsStack, i12 + 1, typeReferenceArr, 0, i11);
        int[] iArr2 = this.intStack;
        int i13 = this.intPtr;
        this.intPtr = i13 - 1;
        TypeReference typeReference = getTypeReference(iArr2[i13]);
        TypeParameter typeParameter = (TypeParameter) this.genericsStack[this.genericsPtr];
        typeParameter.type = typeReference;
        typeParameter.bits |= typeReference.bits & 1048576;
        typeReference.bits |= 16;
        typeParameter.bounds = typeReferenceArr;
        typeParameter.declarationSourceEnd = typeReferenceArr[i11 - 1].sourceEnd;
        for (int i14 = 0; i14 < i11; i14++) {
            TypeReference typeReference2 = typeReferenceArr[i14];
            int i15 = typeReference2.bits | 16;
            typeReference2.bits = i15;
            typeParameter.bits |= i15 & 1048576;
        }
    }

    public void consumeTypeParameters() {
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        int i11 = iArr[i10];
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null && (recoveredElement instanceof RecoveredType)) {
            int i12 = this.genericsLengthStack[this.genericsLengthPtr];
            TypeParameter[] typeParameterArr = new TypeParameter[i12];
            System.arraycopy(this.genericsStack, (this.genericsPtr - i12) + 1, typeParameterArr, 0, i12);
            ((RecoveredType) recoveredElement).add(typeParameterArr, i11);
        }
        if (this.statementRecoveryActivated || this.options.sourceLevel >= ClassFileConstants.JDK1_5 || this.lastErrorEndPositionBeforeRecovery >= this.scanner.currentPosition) {
            return;
        }
        int i13 = this.genericsLengthStack[this.genericsLengthPtr];
        ProblemReporter problemReporter = problemReporter();
        ASTNode[] aSTNodeArr = this.genericsStack;
        int i14 = this.genericsPtr;
        problemReporter.invalidUsageOfTypeParameters((TypeParameter) aSTNodeArr[(i14 - i13) + 1], (TypeParameter) aSTNodeArr[i14]);
    }

    public void consumeUnannotatableQualifiedName() {
        int[] iArr = this.identifierLengthStack;
        int i10 = this.identifierLengthPtr - 1;
        this.identifierLengthPtr = i10;
        iArr[i10] = iArr[i10] + 1;
    }

    public void consumeUnaryExpression(int i10) {
        Expression unaryExpression;
        Expression expression = this.expressionStack[this.expressionPtr];
        if (i10 == 13) {
            if (expression instanceof IntLiteral) {
                IntLiteral intLiteral = (IntLiteral) expression;
                unaryExpression = intLiteral.convertToMinValue();
                if (unaryExpression == intLiteral) {
                    unaryExpression = new UnaryExpression(expression, i10);
                }
            } else if (expression instanceof LongLiteral) {
                LongLiteral longLiteral = (LongLiteral) expression;
                unaryExpression = longLiteral.convertToMinValue();
                if (unaryExpression == longLiteral) {
                    unaryExpression = new UnaryExpression(expression, i10);
                }
            } else {
                unaryExpression = new UnaryExpression(expression, i10);
            }
        } else {
            unaryExpression = new UnaryExpression(expression, i10);
        }
        int[] iArr = this.intStack;
        int i11 = this.intPtr;
        this.intPtr = i11 - 1;
        unaryExpression.sourceStart = iArr[i11];
        unaryExpression.sourceEnd = expression.sourceEnd;
        this.expressionStack[this.expressionPtr] = unaryExpression;
    }

    public void consumeUnionType() {
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        pushOnAstStack(getTypeReference(iArr[i10]));
        optimizedConcatNodeLists();
    }

    public void consumeUnionTypeAsClassType() {
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        pushOnAstStack(getTypeReference(iArr[i10]));
    }

    public void consumeUsesHeader() {
        pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[this.identifierLengthPtr]);
        pushOnGenericsLengthStack(0);
        TypeReference typeReference = getTypeReference(0);
        if (typeReference.annotations != null) {
            int i10 = 0;
            while (true) {
                Annotation[][] annotationArr = typeReference.annotations;
                if (i10 >= annotationArr.length) {
                    break;
                }
                Annotation[] annotationArr2 = annotationArr[i10];
                if (annotationArr2 != null && annotationArr2.length > 0) {
                    problemReporter().misplacedTypeAnnotations(annotationArr2[0], annotationArr2[annotationArr2.length - 1]);
                    typeReference.annotations[i10] = null;
                }
                i10++;
            }
        }
        UsesStatement usesStatement = new UsesStatement(typeReference);
        if (this.currentToken == 26) {
            usesStatement.declarationSourceEnd = typeReference.sourceEnd + 1;
        } else {
            usesStatement.declarationSourceEnd = typeReference.sourceEnd;
        }
        usesStatement.declarationEnd = usesStatement.declarationSourceEnd;
        int[] iArr = this.intStack;
        int i11 = this.intPtr;
        this.intPtr = i11 - 1;
        int i12 = iArr[i11];
        usesStatement.declarationSourceStart = i12;
        usesStatement.sourceStart = i12;
        usesStatement.sourceEnd = typeReference.sourceEnd;
        pushOnAstStack(usesStatement);
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement instanceof RecoveredModule) {
            this.lastCheckPoint = usesStatement.sourceEnd + 1;
            this.currentElement = recoveredElement.add(usesStatement, 0);
        }
    }

    public void consumeUsesStatement() {
        UsesStatement usesStatement = (UsesStatement) this.astStack[this.astPtr];
        int i10 = this.endStatementPosition;
        usesStatement.declarationSourceEnd = i10;
        usesStatement.declarationEnd = i10;
        if (this.currentElement instanceof RecoveredModule) {
            this.lastCheckPoint = i10;
            this.lastIgnoredToken = -1;
            this.restartRecovery = true;
        }
    }

    public void consumeVariableDeclaratorIdParameter() {
        pushOnIntStack(1);
    }

    public void consumeVariableDeclarators() {
        optimizedConcatNodeLists();
    }

    public void consumeVariableInitializers() {
        concatExpressionLists();
    }

    public void consumeWildcard() {
        Wildcard wildcard = new Wildcard(0);
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        int i11 = i10 - 1;
        this.intPtr = i11;
        wildcard.sourceEnd = iArr[i10];
        this.intPtr = i10 - 2;
        wildcard.sourceStart = iArr[i11];
        annotateTypeReference(wildcard);
        pushOnGenericsStack(wildcard);
    }

    public void consumeWildcard1() {
        Wildcard wildcard = new Wildcard(0);
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        int i11 = i10 - 1;
        this.intPtr = i11;
        wildcard.sourceEnd = iArr[i10];
        this.intPtr = i10 - 2;
        wildcard.sourceStart = iArr[i11];
        annotateTypeReference(wildcard);
        pushOnGenericsStack(wildcard);
    }

    public void consumeWildcard1WithBounds() {
    }

    public void consumeWildcard2() {
        Wildcard wildcard = new Wildcard(0);
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        int i11 = i10 - 1;
        this.intPtr = i11;
        wildcard.sourceEnd = iArr[i10];
        this.intPtr = i10 - 2;
        wildcard.sourceStart = iArr[i11];
        annotateTypeReference(wildcard);
        pushOnGenericsStack(wildcard);
    }

    public void consumeWildcard2WithBounds() {
    }

    public void consumeWildcard3() {
        Wildcard wildcard = new Wildcard(0);
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        int i11 = i10 - 1;
        this.intPtr = i11;
        wildcard.sourceEnd = iArr[i10];
        this.intPtr = i10 - 2;
        wildcard.sourceStart = iArr[i11];
        annotateTypeReference(wildcard);
        pushOnGenericsStack(wildcard);
    }

    public void consumeWildcard3WithBounds() {
    }

    public void consumeWildcardBounds1Extends() {
        Wildcard wildcard = new Wildcard(1);
        TypeReference typeReference = (TypeReference) this.genericsStack[this.genericsPtr];
        wildcard.bound = typeReference;
        wildcard.sourceEnd = typeReference.sourceEnd;
        int i10 = this.intPtr;
        int[] iArr = this.intStack;
        this.intPtr = i10 - 2;
        wildcard.sourceStart = iArr[i10 - 1];
        annotateTypeReference(wildcard);
        this.genericsStack[this.genericsPtr] = wildcard;
    }

    public void consumeWildcardBounds1Super() {
        Wildcard wildcard = new Wildcard(2);
        TypeReference typeReference = (TypeReference) this.genericsStack[this.genericsPtr];
        wildcard.bound = typeReference;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        wildcard.sourceEnd = typeReference.sourceEnd;
        int[] iArr = this.intStack;
        this.intPtr = i10 - 3;
        wildcard.sourceStart = iArr[i10 - 2];
        annotateTypeReference(wildcard);
        this.genericsStack[this.genericsPtr] = wildcard;
    }

    public void consumeWildcardBounds2Extends() {
        Wildcard wildcard = new Wildcard(1);
        TypeReference typeReference = (TypeReference) this.genericsStack[this.genericsPtr];
        wildcard.bound = typeReference;
        wildcard.sourceEnd = typeReference.sourceEnd;
        int i10 = this.intPtr;
        int[] iArr = this.intStack;
        this.intPtr = i10 - 2;
        wildcard.sourceStart = iArr[i10 - 1];
        annotateTypeReference(wildcard);
        this.genericsStack[this.genericsPtr] = wildcard;
    }

    public void consumeWildcardBounds2Super() {
        Wildcard wildcard = new Wildcard(2);
        TypeReference typeReference = (TypeReference) this.genericsStack[this.genericsPtr];
        wildcard.bound = typeReference;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        wildcard.sourceEnd = typeReference.sourceEnd;
        int[] iArr = this.intStack;
        this.intPtr = i10 - 3;
        wildcard.sourceStart = iArr[i10 - 2];
        annotateTypeReference(wildcard);
        this.genericsStack[this.genericsPtr] = wildcard;
    }

    public void consumeWildcardBounds3Extends() {
        Wildcard wildcard = new Wildcard(1);
        TypeReference typeReference = (TypeReference) this.genericsStack[this.genericsPtr];
        wildcard.bound = typeReference;
        wildcard.sourceEnd = typeReference.sourceEnd;
        int i10 = this.intPtr;
        int[] iArr = this.intStack;
        this.intPtr = i10 - 2;
        wildcard.sourceStart = iArr[i10 - 1];
        annotateTypeReference(wildcard);
        this.genericsStack[this.genericsPtr] = wildcard;
    }

    public void consumeWildcardBounds3Super() {
        Wildcard wildcard = new Wildcard(2);
        TypeReference typeReference = (TypeReference) this.genericsStack[this.genericsPtr];
        wildcard.bound = typeReference;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        wildcard.sourceEnd = typeReference.sourceEnd;
        int[] iArr = this.intStack;
        this.intPtr = i10 - 3;
        wildcard.sourceStart = iArr[i10 - 2];
        annotateTypeReference(wildcard);
        this.genericsStack[this.genericsPtr] = wildcard;
    }

    public void consumeWildcardBoundsExtends() {
        Wildcard wildcard = new Wildcard(1);
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        TypeReference typeReference = getTypeReference(iArr[i10]);
        wildcard.bound = typeReference;
        wildcard.sourceEnd = typeReference.sourceEnd;
        int i11 = this.intPtr;
        int[] iArr2 = this.intStack;
        this.intPtr = i11 - 2;
        wildcard.sourceStart = iArr2[i11 - 1];
        annotateTypeReference(wildcard);
        pushOnGenericsStack(wildcard);
    }

    public void consumeWildcardBoundsSuper() {
        Wildcard wildcard = new Wildcard(2);
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        TypeReference typeReference = getTypeReference(iArr[i10]);
        wildcard.bound = typeReference;
        int i11 = this.intPtr;
        this.intPtr = i11 - 1;
        wildcard.sourceEnd = typeReference.sourceEnd;
        int[] iArr2 = this.intStack;
        this.intPtr = i11 - 3;
        wildcard.sourceStart = iArr2[i11 - 2];
        annotateTypeReference(wildcard);
        pushOnGenericsStack(wildcard);
    }

    public void consumeWildcardWithBounds() {
    }

    public void consumeWithClause() {
        int[] iArr = this.astLengthStack;
        int i10 = this.astLengthPtr;
        this.astLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        int i12 = this.astPtr - i11;
        this.astPtr = i12;
        ASTNode[] aSTNodeArr = this.astStack;
        ProvidesStatement providesStatement = (ProvidesStatement) aSTNodeArr[i12];
        TypeReference[] typeReferenceArr = new TypeReference[i11];
        providesStatement.implementations = typeReferenceArr;
        System.arraycopy(aSTNodeArr, i12 + 1, typeReferenceArr, 0, i11);
        int i13 = providesStatement.implementations[i11 - 1].sourceEnd;
        providesStatement.sourceEnd = i13;
        if (this.currentToken == 26) {
            providesStatement.declarationSourceEnd = i13 + 1;
        } else {
            providesStatement.declarationSourceEnd = i13;
        }
        this.listLength = 0;
        if (this.currentElement instanceof RecoveredProvidesStatement) {
            this.lastCheckPoint = providesStatement.declarationSourceEnd;
        }
    }

    public void consumeZeroAdditionalBounds() {
        if (this.currentToken == 25) {
            pushOnGenericsLengthStack(0);
        }
    }

    public void consumeZeroTypeAnnotations() {
        pushOnTypeAnnotationLengthStack(0);
    }

    public boolean containsComment(int i10, int i11) {
        for (int i12 = this.scanner.commentPtr; i12 >= 0; i12--) {
            int i13 = this.scanner.commentStarts[i12];
            if (i13 < 0) {
                i13 = -i13;
            }
            if (i13 >= i10 && i13 <= i11) {
                return true;
            }
        }
        return false;
    }

    public MethodDeclaration convertToMethodDeclaration(ConstructorDeclaration constructorDeclaration, CompilationResult compilationResult) {
        MethodDeclaration methodDeclaration = new MethodDeclaration(compilationResult);
        methodDeclaration.typeParameters = constructorDeclaration.typeParameters;
        methodDeclaration.sourceStart = constructorDeclaration.sourceStart;
        methodDeclaration.sourceEnd = constructorDeclaration.sourceEnd;
        methodDeclaration.bodyStart = constructorDeclaration.bodyStart;
        methodDeclaration.bodyEnd = constructorDeclaration.bodyEnd;
        methodDeclaration.declarationSourceEnd = constructorDeclaration.declarationSourceEnd;
        methodDeclaration.declarationSourceStart = constructorDeclaration.declarationSourceStart;
        methodDeclaration.selector = constructorDeclaration.selector;
        methodDeclaration.statements = constructorDeclaration.statements;
        methodDeclaration.modifiers = constructorDeclaration.modifiers;
        methodDeclaration.annotations = constructorDeclaration.annotations;
        methodDeclaration.arguments = constructorDeclaration.arguments;
        methodDeclaration.thrownExceptions = constructorDeclaration.thrownExceptions;
        methodDeclaration.explicitDeclarations = constructorDeclaration.explicitDeclarations;
        methodDeclaration.returnType = null;
        methodDeclaration.javadoc = constructorDeclaration.javadoc;
        methodDeclaration.bits = constructorDeclaration.bits;
        return methodDeclaration;
    }

    public void copyState(Parser parser) {
        this.stateStackTop = parser.stateStackTop;
        this.unstackedAct = parser.unstackedAct;
        this.identifierPtr = parser.identifierPtr;
        this.identifierLengthPtr = parser.identifierLengthPtr;
        this.astPtr = parser.astPtr;
        this.astLengthPtr = parser.astLengthPtr;
        this.expressionPtr = parser.expressionPtr;
        this.expressionLengthPtr = parser.expressionLengthPtr;
        this.genericsPtr = parser.genericsPtr;
        this.genericsLengthPtr = parser.genericsLengthPtr;
        this.genericsIdentifiersLengthPtr = parser.genericsIdentifiersLengthPtr;
        this.typeAnnotationPtr = parser.typeAnnotationPtr;
        this.typeAnnotationLengthPtr = parser.typeAnnotationLengthPtr;
        this.intPtr = parser.intPtr;
        this.nestedType = parser.nestedType;
        this.switchNestingLevel = parser.switchNestingLevel;
        this.realBlockPtr = parser.realBlockPtr;
        this.valueLambdaNestDepth = parser.valueLambdaNestDepth;
        int[] iArr = parser.stack;
        int length = iArr.length;
        int[] iArr2 = new int[length];
        this.stack = iArr2;
        System.arraycopy(iArr, 0, iArr2, 0, length);
        char[][] cArr = parser.identifierStack;
        int length2 = cArr.length;
        char[][] cArr2 = new char[length2];
        this.identifierStack = cArr2;
        System.arraycopy(cArr, 0, cArr2, 0, length2);
        int[] iArr3 = parser.identifierLengthStack;
        int length3 = iArr3.length;
        int[] iArr4 = new int[length3];
        this.identifierLengthStack = iArr4;
        System.arraycopy(iArr3, 0, iArr4, 0, length3);
        long[] jArr = parser.identifierPositionStack;
        int length4 = jArr.length;
        long[] jArr2 = new long[length4];
        this.identifierPositionStack = jArr2;
        System.arraycopy(jArr, 0, jArr2, 0, length4);
        ASTNode[] aSTNodeArr = parser.astStack;
        int length5 = aSTNodeArr.length;
        ASTNode[] aSTNodeArr2 = new ASTNode[length5];
        this.astStack = aSTNodeArr2;
        System.arraycopy(aSTNodeArr, 0, aSTNodeArr2, 0, length5);
        int[] iArr5 = parser.astLengthStack;
        int length6 = iArr5.length;
        int[] iArr6 = new int[length6];
        this.astLengthStack = iArr6;
        System.arraycopy(iArr5, 0, iArr6, 0, length6);
        Expression[] expressionArr = parser.expressionStack;
        int length7 = expressionArr.length;
        Expression[] expressionArr2 = new Expression[length7];
        this.expressionStack = expressionArr2;
        System.arraycopy(expressionArr, 0, expressionArr2, 0, length7);
        int[] iArr7 = parser.expressionLengthStack;
        int length8 = iArr7.length;
        int[] iArr8 = new int[length8];
        this.expressionLengthStack = iArr8;
        System.arraycopy(iArr7, 0, iArr8, 0, length8);
        ASTNode[] aSTNodeArr3 = parser.genericsStack;
        int length9 = aSTNodeArr3.length;
        ASTNode[] aSTNodeArr4 = new ASTNode[length9];
        this.genericsStack = aSTNodeArr4;
        System.arraycopy(aSTNodeArr3, 0, aSTNodeArr4, 0, length9);
        int[] iArr9 = parser.genericsLengthStack;
        int length10 = iArr9.length;
        int[] iArr10 = new int[length10];
        this.genericsLengthStack = iArr10;
        System.arraycopy(iArr9, 0, iArr10, 0, length10);
        int[] iArr11 = parser.genericsIdentifiersLengthStack;
        int length11 = iArr11.length;
        int[] iArr12 = new int[length11];
        this.genericsIdentifiersLengthStack = iArr12;
        System.arraycopy(iArr11, 0, iArr12, 0, length11);
        Annotation[] annotationArr = parser.typeAnnotationStack;
        int length12 = annotationArr.length;
        Annotation[] annotationArr2 = new Annotation[length12];
        this.typeAnnotationStack = annotationArr2;
        System.arraycopy(annotationArr, 0, annotationArr2, 0, length12);
        int[] iArr13 = parser.typeAnnotationLengthStack;
        int length13 = iArr13.length;
        int[] iArr14 = new int[length13];
        this.typeAnnotationLengthStack = iArr14;
        System.arraycopy(iArr13, 0, iArr14, 0, length13);
        int[] iArr15 = parser.intStack;
        int length14 = iArr15.length;
        int[] iArr16 = new int[length14];
        this.intStack = iArr16;
        System.arraycopy(iArr15, 0, iArr16, 0, length14);
        int[] iArr17 = parser.nestedMethod;
        int length15 = iArr17.length;
        int[] iArr18 = new int[length15];
        this.nestedMethod = iArr18;
        System.arraycopy(iArr17, 0, iArr18, 0, length15);
        int[] iArr19 = parser.realBlockStack;
        int length16 = iArr19.length;
        int[] iArr20 = new int[length16];
        this.realBlockStack = iArr20;
        System.arraycopy(iArr19, 0, iArr20, 0, length16);
        int[] iArr21 = parser.stateStackLengthStack;
        int length17 = iArr21.length;
        int[] iArr22 = new int[length17];
        this.stateStackLengthStack = iArr22;
        System.arraycopy(iArr21, 0, iArr22, 0, length17);
        int[] iArr23 = parser.variablesCounter;
        int length18 = iArr23.length;
        int[] iArr24 = new int[length18];
        this.variablesCounter = iArr24;
        System.arraycopy(iArr23, 0, iArr24, 0, length18);
        int[] iArr25 = parser.stack;
        int length19 = iArr25.length;
        int[] iArr26 = new int[length19];
        this.stack = iArr26;
        System.arraycopy(iArr25, 0, iArr26, 0, length19);
        int[] iArr27 = parser.stack;
        int length20 = iArr27.length;
        int[] iArr28 = new int[length20];
        this.stack = iArr28;
        System.arraycopy(iArr27, 0, iArr28, 0, length20);
        int[] iArr29 = parser.stack;
        int length21 = iArr29.length;
        int[] iArr30 = new int[length21];
        this.stack = iArr30;
        System.arraycopy(iArr29, 0, iArr30, 0, length21);
        this.listLength = parser.listLength;
        this.listTypeParameterLength = parser.listTypeParameterLength;
        this.dimensions = parser.dimensions;
        this.recoveredStaticInitializerStart = parser.recoveredStaticInitializerStart;
    }

    public FieldDeclaration createFieldDeclaration(char[] cArr, int i10, int i11) {
        return new FieldDeclaration(cArr, i10, i11);
    }

    public IntersectionCastTypeReference createIntersectionCastTypeReference(TypeReference[] typeReferenceArr) {
        if (this.options.sourceLevel < ClassFileConstants.JDK1_8) {
            problemReporter().intersectionCastNotBelow18(typeReferenceArr);
        }
        return new IntersectionCastTypeReference(typeReferenceArr);
    }

    public JavadocParser createJavadocParser() {
        return new JavadocParser(this);
    }

    public LocalDeclaration createLocalDeclaration(char[] cArr, int i10, int i11) {
        return new LocalDeclaration(cArr, i10, i11);
    }

    public StringLiteral createStringLiteral(char[] cArr, int i10, int i11, int i12) {
        return new StringLiteral(cArr, i10, i11, i12);
    }

    public RecoveredType currentRecoveryType() {
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            return recoveredElement instanceof RecoveredType ? (RecoveredType) recoveredElement : recoveredElement.enclosingType();
        }
        return null;
    }

    public CompilationUnitDeclaration dietParse(ICompilationUnit iCompilationUnit, CompilationResult compilationResult) {
        boolean z10 = this.diet;
        int i10 = this.dietInt;
        try {
            this.dietInt = 0;
            this.diet = true;
            return parse(iCompilationUnit, compilationResult);
        } finally {
            this.diet = z10;
            this.dietInt = i10;
        }
    }

    public void dispatchDeclarationInto(int i10) {
        if (i10 == 0) {
            return;
        }
        int[] iArr = new int[i10 + 1];
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        boolean z10 = false;
        for (int i14 = i10 - 1; i14 >= 0; i14--) {
            ASTNode[] aSTNodeArr = this.astStack;
            int i15 = this.astPtr;
            this.astPtr = i15 - 1;
            ASTNode aSTNode = aSTNodeArr[i15];
            if (aSTNode instanceof AbstractMethodDeclaration) {
                iArr[i14] = 2;
                i12++;
                if (((AbstractMethodDeclaration) aSTNode).isAbstract()) {
                    z10 = true;
                }
            } else if (aSTNode instanceof TypeDeclaration) {
                iArr[i14] = 3;
                i13++;
            } else {
                iArr[i14] = 1;
                i11++;
            }
        }
        TypeDeclaration typeDeclaration = (TypeDeclaration) this.astStack[this.astPtr];
        if (i11 != 0) {
            typeDeclaration.fields = new FieldDeclaration[i11];
        }
        if (i12 != 0) {
            typeDeclaration.methods = new AbstractMethodDeclaration[i12];
            if (z10) {
                typeDeclaration.bits |= 2048;
            }
        }
        if (i13 != 0) {
            typeDeclaration.memberTypes = new TypeDeclaration[i13];
        }
        int i16 = iArr[0];
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        for (int i21 = 0; i21 <= i10; i21++) {
            if (i16 != iArr[i21]) {
                if (i16 == 1) {
                    int i22 = i21 - i18;
                    i17 += i22;
                    System.arraycopy(this.astStack, this.astPtr + i18 + 1, typeDeclaration.fields, i17 - i22, i22);
                } else if (i16 == 2) {
                    int i23 = i21 - i18;
                    i19 += i23;
                    System.arraycopy(this.astStack, this.astPtr + i18 + 1, typeDeclaration.methods, i19 - i23, i23);
                } else if (i16 == 3) {
                    int i24 = i21 - i18;
                    i20 += i24;
                    System.arraycopy(this.astStack, this.astPtr + i18 + 1, typeDeclaration.memberTypes, i20 - i24, i24);
                }
                i16 = iArr[i21];
                i18 = i21;
            }
        }
        TypeDeclaration[] typeDeclarationArr = typeDeclaration.memberTypes;
        if (typeDeclarationArr != null) {
            for (int length = typeDeclarationArr.length - 1; length >= 0; length--) {
                typeDeclaration.memberTypes[length].enclosingType = typeDeclaration;
            }
        }
    }

    public void dispatchDeclarationIntoEnumDeclaration(int i10) {
        int i11;
        if (i10 == 0) {
            return;
        }
        int[] iArr = new int[i10 + 1];
        TypeDeclaration typeDeclaration = (TypeDeclaration) this.astStack[this.astPtr - i10];
        int i12 = i10 - 1;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        boolean z10 = false;
        int i17 = 0;
        while (true) {
            i11 = 3;
            if (i12 < 0) {
                break;
            }
            ASTNode[] aSTNodeArr = this.astStack;
            int i18 = this.astPtr;
            this.astPtr = i18 - 1;
            ASTNode aSTNode = aSTNodeArr[i18];
            if (aSTNode instanceof AbstractMethodDeclaration) {
                iArr[i12] = 2;
                i15++;
                if (((AbstractMethodDeclaration) aSTNode).isAbstract()) {
                    z10 = true;
                }
            } else if (aSTNode instanceof TypeDeclaration) {
                iArr[i12] = 3;
                i16++;
            } else if (aSTNode instanceof FieldDeclaration) {
                iArr[i12] = 1;
                i14++;
                if (((FieldDeclaration) aSTNode).getKind() == 3) {
                    i17++;
                }
            }
            i12--;
        }
        if (i14 != 0) {
            typeDeclaration.fields = new FieldDeclaration[i14];
        }
        if (i15 != 0) {
            typeDeclaration.methods = new AbstractMethodDeclaration[i15];
            if (z10) {
                typeDeclaration.bits |= 2048;
            }
        }
        if (i16 != 0) {
            typeDeclaration.memberTypes = new TypeDeclaration[i16];
        }
        int i19 = iArr[0];
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        while (i13 <= i10) {
            if (i19 != iArr[i13]) {
                if (i19 == 1) {
                    int i24 = i13 - i21;
                    i20 += i24;
                    System.arraycopy(this.astStack, this.astPtr + i21 + 1, typeDeclaration.fields, i20 - i24, i24);
                } else if (i19 == 2) {
                    int i25 = i13 - i21;
                    i22 += i25;
                    System.arraycopy(this.astStack, this.astPtr + i21 + 1, typeDeclaration.methods, i22 - i25, i25);
                } else if (i19 == i11) {
                    int i26 = i13 - i21;
                    i23 += i26;
                    System.arraycopy(this.astStack, this.astPtr + i21 + 1, typeDeclaration.memberTypes, i23 - i26, i26);
                }
                i19 = iArr[i13];
                i21 = i13;
            }
            i13++;
            i11 = 3;
        }
        TypeDeclaration[] typeDeclarationArr = typeDeclaration.memberTypes;
        if (typeDeclarationArr != null) {
            for (int length = typeDeclarationArr.length - 1; length >= 0; length--) {
                typeDeclaration.memberTypes[length].enclosingType = typeDeclaration;
            }
        }
        typeDeclaration.enumConstantsCounter = i17;
    }

    public CompilationUnitDeclaration endParse(int i10) {
        this.lastAct = i10;
        if (this.statementRecoveryActivated) {
            RecoveredElement buildInitialRecoveryState = buildInitialRecoveryState();
            if (buildInitialRecoveryState != null) {
                buildInitialRecoveryState.topElement().updateParseTree();
            }
            if (this.hasError) {
                resetStacks();
            }
        } else if (this.currentElement != null) {
            if (VERBOSE_RECOVERY) {
                PrintStream printStream = System.out;
                printStream.print(Messages.parser_syntaxRecovery);
                printStream.println("--------------------------");
                printStream.println(this.compilationUnit);
                printStream.println("----------------------------------");
            }
            this.currentElement.topElement().updateParseTree();
        } else if (this.diet & VERBOSE_RECOVERY) {
            PrintStream printStream2 = System.out;
            printStream2.print(Messages.parser_regularParse);
            printStream2.println("--------------------------");
            printStream2.println(this.compilationUnit);
            printStream2.println("----------------------------------");
        }
        persistLineSeparatorPositions();
        int i11 = 0;
        while (true) {
            if (i11 >= this.scanner.foundTaskCount) {
                this.javadoc = null;
                return this.compilationUnit;
            }
            if (!this.statementRecoveryActivated) {
                ProblemReporter problemReporter = problemReporter();
                String str = new String(this.scanner.foundTaskTags[i11]);
                String str2 = new String(this.scanner.foundTaskMessages[i11]);
                char[] cArr = this.scanner.foundTaskPriorities[i11];
                String str3 = cArr != null ? new String(cArr) : null;
                int[] iArr = this.scanner.foundTaskPositions[i11];
                problemReporter.task(str, str2, str3, iArr[0], iArr[1]);
            }
            i11++;
        }
    }

    public int flushCommentsDefinedPriorTo(int i10) {
        int i11 = this.scanner.commentPtr;
        if (i11 < 0) {
            return i10;
        }
        int i12 = 0;
        while (i11 >= 0) {
            int i13 = this.scanner.commentStops[i11];
            if (i13 < 0) {
                i13 = -i13;
            }
            if (i13 <= i10) {
                break;
            }
            i11--;
            i12++;
        }
        if (i12 > 0) {
            Scanner scanner = this.scanner;
            int i14 = i11 + 1;
            int i15 = -scanner.commentStops[i14];
            if (i15 > 0) {
                int i16 = i15 - 1;
                int lineNumber = Util.getLineNumber(i10, scanner.lineEnds, 0, scanner.linePtr);
                Scanner scanner2 = this.scanner;
                if (lineNumber == Util.getLineNumber(i16, scanner2.lineEnds, 0, scanner2.linePtr)) {
                    i12--;
                    i10 = i16;
                    i11 = i14;
                }
            }
        }
        if (i11 < 0) {
            return i10;
        }
        if (i12 != 0) {
            if (i12 == 1) {
                Scanner scanner3 = this.scanner;
                int[] iArr = scanner3.commentStarts;
                int i17 = i11 + 1;
                iArr[0] = iArr[i17];
                int[] iArr2 = scanner3.commentStops;
                iArr2[0] = iArr2[i17];
                int[] iArr3 = scanner3.commentTagStarts;
                iArr3[0] = iArr3[i17];
            } else if (i12 != 2) {
                int[] iArr4 = this.scanner.commentStarts;
                int i18 = i11 + 1;
                System.arraycopy(iArr4, i18, iArr4, 0, i12);
                int[] iArr5 = this.scanner.commentStops;
                System.arraycopy(iArr5, i18, iArr5, 0, i12);
                int[] iArr6 = this.scanner.commentTagStarts;
                System.arraycopy(iArr6, i18, iArr6, 0, i12);
            } else {
                Scanner scanner4 = this.scanner;
                int[] iArr7 = scanner4.commentStarts;
                int i19 = i11 + 1;
                iArr7[0] = iArr7[i19];
                int[] iArr8 = scanner4.commentStops;
                iArr8[0] = iArr8[i19];
                int[] iArr9 = scanner4.commentTagStarts;
                iArr9[0] = iArr9[i19];
                int i20 = i11 + 2;
                iArr7[1] = iArr7[i20];
                iArr8[1] = iArr8[i20];
                iArr9[1] = iArr9[i20];
            }
        }
        this.scanner.commentPtr = i12 - 1;
        return i10;
    }

    public TypeReference getAnnotationType() {
        int[] iArr = this.identifierLengthStack;
        int i10 = this.identifierLengthPtr;
        this.identifierLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 == 1) {
            char[][] cArr = this.identifierStack;
            int i12 = this.identifierPtr;
            char[] cArr2 = cArr[i12];
            long[] jArr = this.identifierPositionStack;
            this.identifierPtr = i12 - 1;
            return new SingleTypeReference(cArr2, jArr[i12]);
        }
        char[][] cArr3 = new char[i11];
        int i13 = this.identifierPtr - i11;
        this.identifierPtr = i13;
        long[] jArr2 = new long[i11];
        System.arraycopy(this.identifierStack, i13 + 1, cArr3, 0, i11);
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, jArr2, 0, i11);
        return new QualifiedTypeReference(cArr3, jArr2);
    }

    public Annotation[][] getAnnotationsOnDimensions(int i10) {
        Annotation[][] annotationArr = null;
        if (i10 > 0) {
            for (int i11 = 0; i11 < i10; i11++) {
                int[] iArr = this.typeAnnotationLengthStack;
                int i12 = this.typeAnnotationLengthPtr;
                this.typeAnnotationLengthPtr = i12 - 1;
                int i13 = iArr[i12];
                if (i13 != 0) {
                    Annotation[] annotationArr2 = this.typeAnnotationStack;
                    int i14 = this.typeAnnotationPtr - i13;
                    this.typeAnnotationPtr = i14;
                    Annotation[] annotationArr3 = new Annotation[i13];
                    System.arraycopy(annotationArr2, i14 + 1, annotationArr3, 0, i13);
                    if (annotationArr == null) {
                        annotationArr = new Annotation[i10];
                    }
                    annotationArr[(i10 - i11) - 1] = annotationArr3;
                }
            }
        }
        return annotationArr;
    }

    public int getFirstToken() {
        return this.firstToken;
    }

    public int[] getJavaDocPositions() {
        int i10;
        int i11 = this.scanner.commentPtr;
        int i12 = 0;
        for (int i13 = 0; i13 <= i11; i13++) {
            Scanner scanner = this.scanner;
            if (scanner.commentStarts[i13] >= 0 && scanner.commentStops[i13] > 0) {
                i12++;
            }
        }
        if (i12 == 0) {
            return null;
        }
        int[] iArr = new int[i12 * 2];
        int i14 = 0;
        for (int i15 = 0; i15 <= i11; i15++) {
            Scanner scanner2 = this.scanner;
            int i16 = scanner2.commentStarts[i15];
            if (i16 >= 0 && (i10 = scanner2.commentStops[i15]) > 0) {
                int i17 = i14 + 1;
                iArr[i14] = i16;
                i14 += 2;
                iArr[i17] = i10 - 1;
            }
        }
        return iArr;
    }

    public void getMethodBodies(CompilationUnitDeclaration compilationUnitDeclaration) {
        if (compilationUnitDeclaration == null) {
            return;
        }
        if (compilationUnitDeclaration.ignoreMethodBodies) {
            compilationUnitDeclaration.ignoreFurtherInvestigation = true;
            return;
        }
        if ((compilationUnitDeclaration.bits & 16) != 0) {
            return;
        }
        Scanner scanner = this.scanner;
        int[] iArr = scanner.lineEnds;
        int i10 = scanner.linePtr;
        CompilationResult compilationResult = compilationUnitDeclaration.compilationResult;
        ReadManager readManager = this.readManager;
        char[] contents = readManager != null ? readManager.getContents(compilationResult.compilationUnit) : compilationResult.compilationUnit.getContents();
        this.scanner.setSource(contents, compilationResult);
        JavadocParser javadocParser = this.javadocParser;
        if (javadocParser != null && javadocParser.checkDocComment) {
            javadocParser.scanner.setSource(contents);
        }
        TypeDeclaration[] typeDeclarationArr = compilationUnitDeclaration.types;
        if (typeDeclarationArr != null) {
            int length = typeDeclarationArr.length;
            for (int i11 = 0; i11 < length; i11++) {
                compilationUnitDeclaration.types[i11].parseMethods(this, compilationUnitDeclaration);
            }
        }
        compilationUnitDeclaration.bits |= 16;
        Scanner scanner2 = this.scanner;
        scanner2.lineEnds = iArr;
        scanner2.linePtr = i10;
    }

    public char getNextCharacter(char[] cArr, int[] iArr) {
        char c10;
        int i10;
        int i11 = iArr[0];
        iArr[0] = i11 + 1;
        char c11 = cArr[i11];
        if (c11 != '\\') {
            return c11;
        }
        iArr[0] = i11 + 2;
        while (true) {
            int i12 = iArr[0];
            c10 = cArr[i12];
            i10 = i12 + 1;
            if (c10 != 'u') {
                break;
            }
            iArr[0] = i10;
        }
        iArr[0] = i10;
        int hexadecimalValue = ScannerHelper.getHexadecimalValue(c10);
        if (hexadecimalValue > 15 || hexadecimalValue < 0) {
            return c11;
        }
        int i13 = iArr[0];
        iArr[0] = i13 + 1;
        int hexadecimalValue2 = ScannerHelper.getHexadecimalValue(cArr[i13]);
        if (hexadecimalValue2 > 15 || hexadecimalValue2 < 0) {
            return c11;
        }
        int i14 = iArr[0];
        iArr[0] = i14 + 1;
        int hexadecimalValue3 = ScannerHelper.getHexadecimalValue(cArr[i14]);
        if (hexadecimalValue3 > 15 || hexadecimalValue3 < 0) {
            return c11;
        }
        int i15 = iArr[0];
        iArr[0] = i15 + 1;
        int hexadecimalValue4 = ScannerHelper.getHexadecimalValue(cArr[i15]);
        return (hexadecimalValue4 > 15 || hexadecimalValue4 < 0) ? c11 : (char) ((((((hexadecimalValue * 16) + hexadecimalValue2) * 16) + hexadecimalValue3) * 16) + hexadecimalValue4);
    }

    public Expression getTypeReference(Expression expression) {
        expression.bits = (expression.bits & (-8)) | 4;
        return expression;
    }

    public TypeReference getTypeReferenceForGenericType(int i10, int i11, int i12) {
        TypeReference[] typeReferenceArr;
        Annotation[][] annotationsOnDimensions = i10 == 0 ? null : getAnnotationsOnDimensions(i10);
        if (i11 == 1 && i12 == 1) {
            int[] iArr = this.genericsLengthStack;
            int i13 = this.genericsLengthPtr;
            this.genericsLengthPtr = i13 - 1;
            int i14 = iArr[i13];
            if (i14 < 0) {
                typeReferenceArr = TypeReference.NO_TYPE_ARGUMENTS;
            } else {
                TypeReference[] typeReferenceArr2 = new TypeReference[i14];
                int i15 = this.genericsPtr - i14;
                this.genericsPtr = i15;
                System.arraycopy(this.genericsStack, i15 + 1, typeReferenceArr2, 0, i14);
                typeReferenceArr = typeReferenceArr2;
            }
            char[][] cArr = this.identifierStack;
            int i16 = this.identifierPtr;
            char[] cArr2 = cArr[i16];
            long[] jArr = this.identifierPositionStack;
            this.identifierPtr = i16 - 1;
            ParameterizedSingleTypeReference parameterizedSingleTypeReference = new ParameterizedSingleTypeReference(cArr2, typeReferenceArr, i10, annotationsOnDimensions, jArr[i16]);
            if (i10 != 0) {
                parameterizedSingleTypeReference.sourceEnd = this.endStatementPosition;
            }
            return parameterizedSingleTypeReference;
        }
        TypeReference[][] typeReferenceArr3 = new TypeReference[i12];
        char[][] cArr3 = new char[i12];
        long[] jArr2 = new long[i12];
        while (i12 > 0) {
            int[] iArr2 = this.genericsLengthStack;
            int i17 = this.genericsLengthPtr;
            this.genericsLengthPtr = i17 - 1;
            int i18 = iArr2[i17];
            if (i18 > 0) {
                int i19 = this.genericsPtr - i18;
                this.genericsPtr = i19;
                TypeReference[] typeReferenceArr4 = new TypeReference[i18];
                typeReferenceArr3[i12 - 1] = typeReferenceArr4;
                System.arraycopy(this.genericsStack, i19 + 1, typeReferenceArr4, 0, i18);
            } else if (i18 < 0) {
                typeReferenceArr3[i12 - 1] = TypeReference.NO_TYPE_ARGUMENTS;
            }
            if (i11 != 1) {
                int i20 = this.identifierPtr - i11;
                this.identifierPtr = i20;
                int i21 = i12 - i11;
                System.arraycopy(this.identifierStack, i20 + 1, cArr3, i21, i11);
                System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, jArr2, i21, i11);
            } else {
                int i22 = i12 - 1;
                char[][] cArr4 = this.identifierStack;
                int i23 = this.identifierPtr;
                cArr3[i22] = cArr4[i23];
                long[] jArr3 = this.identifierPositionStack;
                this.identifierPtr = i23 - 1;
                jArr2[i22] = jArr3[i23];
            }
            i12 -= i11;
            if (i12 > 0) {
                int[] iArr3 = this.identifierLengthStack;
                int i24 = this.identifierLengthPtr;
                this.identifierLengthPtr = i24 - 1;
                i11 = iArr3[i24];
            }
        }
        ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference = new ParameterizedQualifiedTypeReference(cArr3, typeReferenceArr3, i10, annotationsOnDimensions, jArr2);
        if (i10 != 0) {
            parameterizedQualifiedTypeReference.sourceEnd = this.endStatementPosition;
        }
        return parameterizedQualifiedTypeReference;
    }

    public NameReference getUnspecifiedReference() {
        return getUnspecifiedReference(true);
    }

    public NameReference getUnspecifiedReferenceOptimized() {
        consumeNonTypeUseName();
        int[] iArr = this.identifierLengthStack;
        int i10 = this.identifierLengthPtr;
        this.identifierLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 == 1) {
            char[][] cArr = this.identifierStack;
            int i12 = this.identifierPtr;
            char[] cArr2 = cArr[i12];
            long[] jArr = this.identifierPositionStack;
            this.identifierPtr = i12 - 1;
            SingleNameReference singleNameReference = new SingleNameReference(cArr2, jArr[i12]);
            singleNameReference.bits = (singleNameReference.bits & (-8)) | 3;
            return singleNameReference;
        }
        char[][] cArr3 = new char[i11];
        int i13 = this.identifierPtr - i11;
        this.identifierPtr = i13;
        System.arraycopy(this.identifierStack, i13 + 1, cArr3, 0, i11);
        long[] jArr2 = new long[i11];
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, jArr2, 0, i11);
        long[] jArr3 = this.identifierPositionStack;
        int i14 = this.identifierPtr;
        QualifiedNameReference qualifiedNameReference = new QualifiedNameReference(cArr3, jArr2, (int) (jArr3[i14 + 1] >> 32), (int) jArr3[i14 + i11]);
        qualifiedNameReference.bits = (qualifiedNameReference.bits & (-8)) | 3;
        return qualifiedNameReference;
    }

    public void goForBlockStatementsOrCatchHeader() {
        this.firstToken = 8;
        this.scanner.recordLineSeparator = false;
    }

    public void goForBlockStatementsopt() {
        this.firstToken = 64;
        this.scanner.recordLineSeparator = false;
    }

    public void goForClassBodyDeclarations() {
        this.firstToken = 21;
        this.scanner.recordLineSeparator = true;
    }

    public void goForCompilationUnit() {
        this.firstToken = 2;
        Scanner scanner = this.scanner;
        scanner.foundTaskCount = 0;
        scanner.recordLineSeparator = true;
    }

    public void goForExpression(boolean z10) {
        this.firstToken = 9;
        this.scanner.recordLineSeparator = z10;
    }

    public void goForFieldDeclaration() {
        this.firstToken = 30;
        this.scanner.recordLineSeparator = true;
    }

    public void goForGenericMethodDeclaration() {
        this.firstToken = 10;
        this.scanner.recordLineSeparator = true;
    }

    public void goForHeaders() {
        RecoveredType currentRecoveryType = currentRecoveryType();
        if (currentRecoveryType == null || !currentRecoveryType.insideEnumConstantPart) {
            this.firstToken = 16;
        } else {
            this.firstToken = 63;
        }
        Scanner scanner = this.scanner;
        scanner.recordLineSeparator = true;
        scanner.scanContext = null;
    }

    public void goForImportDeclaration() {
        this.firstToken = 31;
        this.scanner.recordLineSeparator = true;
    }

    public void goForInitializer() {
        this.firstToken = 14;
        this.scanner.recordLineSeparator = false;
    }

    public void goForMemberValue() {
        this.firstToken = 31;
        this.scanner.recordLineSeparator = true;
    }

    public void goForMethodBody() {
        this.firstToken = 3;
        this.scanner.recordLineSeparator = false;
    }

    public void goForPackageDeclaration() {
        goForPackageDeclaration(true);
    }

    public void goForTypeDeclaration() {
        this.firstToken = 4;
        this.scanner.recordLineSeparator = true;
    }

    public boolean hasLeadingTagComment(char[] cArr, int i10) {
        int i11;
        int i12 = this.scanner.commentPtr;
        if (i12 < 0 || (i11 = this.astLengthPtr) < 0 || this.astLengthStack[i11] <= 1) {
            return false;
        }
        int i13 = this.astStack[this.astPtr].sourceEnd;
        while (i12 >= 0) {
            Scanner scanner = this.scanner;
            int i14 = scanner.commentStarts[i12];
            if (i14 < 0) {
                i14 = -i14;
            }
            if (i14 < i13) {
                return false;
            }
            if (i14 <= i10) {
                char[] cArr2 = scanner.source;
                int i15 = i14 + 2;
                while (i15 < i10) {
                    char c10 = cArr2[i15];
                    if (c10 >= '\u0080' || (ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[c10] & 256) == 0) {
                        break;
                    }
                    i15++;
                }
                int length = cArr.length;
                int i16 = 0;
                while (i16 < length) {
                    if (i15 < i10 && cArr2[i15] == cArr[i16]) {
                        i16++;
                        i15++;
                    } else if (i16 == 0) {
                        return false;
                    }
                }
                return true;
            }
            i12--;
        }
        return false;
    }

    public void ignoreExpressionAssignment() {
        this.intPtr--;
        Expression[] expressionArr = this.expressionStack;
        int i10 = this.expressionPtr;
        this.expressionPtr = i10 - 1;
        ArrayInitializer arrayInitializer = (ArrayInitializer) expressionArr[i10];
        this.expressionLengthPtr--;
        if (this.statementRecoveryActivated) {
            return;
        }
        problemReporter().arrayConstantsOnlyInArrayInitializers(arrayInitializer.sourceStart, arrayInitializer.sourceEnd);
    }

    public void ignoreNextClosingBrace() {
        this.ignoreNextClosingBrace = true;
    }

    public void initialize() {
        initialize(false);
    }

    public void initializeScanner() {
        CompilerOptions compilerOptions = this.options;
        this.scanner = new Scanner(false, false, false, compilerOptions.sourceLevel, compilerOptions.complianceLevel, compilerOptions.taskTags, compilerOptions.taskPriorities, compilerOptions.isTaskCaseSensitive);
    }

    public boolean isAssistParser() {
        return false;
    }

    public boolean isIndirectlyInsideLambdaExpression() {
        return false;
    }

    @Override
    public boolean isParsingModuleDeclaration() {
        CompilationUnitDeclaration compilationUnitDeclaration;
        return this.parsingJava9Plus && (compilationUnitDeclaration = this.compilationUnit) != null && compilationUnitDeclaration.isModuleInfo();
    }

    public void jumpOverMethodBody() {
        if (this.diet && this.dietInt == 0) {
            this.scanner.diet = true;
        }
    }

    public void markEnclosingMemberWithLocalOrFunctionalType(LocalTypeKind localTypeKind) {
        for (int i10 = this.astPtr; i10 >= 0; i10--) {
            ASTNode aSTNode = this.astStack[i10];
            if ((aSTNode instanceof AbstractMethodDeclaration) || (aSTNode instanceof FieldDeclaration) || ((aSTNode instanceof TypeDeclaration) && ((TypeDeclaration) aSTNode).declarationSourceEnd == 0)) {
                int i11 = $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$parser$Parser$LocalTypeKind()[localTypeKind.ordinal()];
                if (i11 != 1) {
                    if (i11 == 2) {
                        aSTNode.bits |= 2097152;
                        return;
                    } else if (i11 != 3) {
                        return;
                    } else {
                        aSTNode.bits |= 2097152;
                    }
                }
                aSTNode.bits |= 2;
                return;
            }
        }
        Object obj = this.referenceContext;
        if ((obj instanceof AbstractMethodDeclaration) || (obj instanceof TypeDeclaration)) {
            ASTNode aSTNode2 = (ASTNode) obj;
            int i12 = $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$parser$Parser$LocalTypeKind()[localTypeKind.ordinal()];
            if (i12 != 1) {
                if (i12 == 2) {
                    aSTNode2.bits |= 2097152;
                    return;
                } else if (i12 != 3) {
                    return;
                } else {
                    aSTNode2.bits |= 2097152;
                }
            }
            aSTNode2.bits |= 2;
        }
    }

    public void markEnclosingMemberWithLocalType() {
        if (this.currentElement != null) {
            return;
        }
        markEnclosingMemberWithLocalOrFunctionalType(LocalTypeKind.LOCAL);
    }

    public boolean moveRecoveryCheckpoint() {
        int i10;
        int i11 = this.lastCheckPoint;
        Scanner scanner = this.scanner;
        scanner.startPosition = i11;
        scanner.currentPosition = i11;
        scanner.diet = false;
        if (this.restartRecovery) {
            this.lastIgnoredToken = -1;
            scanner.insideRecovery = true;
            return true;
        }
        this.lastIgnoredToken = this.nextIgnoredToken;
        this.nextIgnoredToken = -1;
        do {
            try {
                try {
                    Scanner scanner2 = this.scanner;
                    int[] iArr = scanner2.lookBack;
                    iArr[1] = 0;
                    iArr[0] = 0;
                    this.nextIgnoredToken = scanner2.getNextNotFakedToken();
                } catch (InvalidInputException unused) {
                    Scanner scanner3 = this.scanner;
                    int i12 = scanner3.currentPosition;
                    int[] iArr2 = scanner3.lookBack;
                    iArr2[1] = 0;
                    iArr2[0] = 0;
                    i11 = i12;
                }
                i10 = this.nextIgnoredToken;
            } finally {
                int[] iArr3 = this.scanner.lookBack;
                iArr3[1] = 0;
                iArr3[0] = 0;
            }
        } while (i10 < 0);
        if (i10 == 61 && this.currentToken == 61) {
            return false;
        }
        Scanner scanner4 = this.scanner;
        this.lastCheckPoint = scanner4.currentPosition;
        scanner4.startPosition = i11;
        scanner4.currentPosition = i11;
        scanner4.commentPtr = -1;
        scanner4.foundTaskCount = 0;
        return true;
    }

    public MessageSend newMessageSend() {
        MessageSend messageSend = new MessageSend();
        int[] iArr = this.expressionLengthStack;
        int i10 = this.expressionLengthPtr;
        this.expressionLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 != 0) {
            int i12 = this.expressionPtr - i11;
            this.expressionPtr = i12;
            Expression[] expressionArr = new Expression[i11];
            messageSend.arguments = expressionArr;
            System.arraycopy(this.expressionStack, i12 + 1, expressionArr, 0, i11);
        }
        return messageSend;
    }

    public MessageSend newMessageSendWithTypeArguments() {
        MessageSend messageSend = new MessageSend();
        int[] iArr = this.expressionLengthStack;
        int i10 = this.expressionLengthPtr;
        this.expressionLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 != 0) {
            int i12 = this.expressionPtr - i11;
            this.expressionPtr = i12;
            Expression[] expressionArr = new Expression[i11];
            messageSend.arguments = expressionArr;
            System.arraycopy(this.expressionStack, i12 + 1, expressionArr, 0, i11);
        }
        return messageSend;
    }

    public ReferenceExpression newReferenceExpression() {
        return new ReferenceExpression(this.scanner);
    }

    public void optimizedConcatNodeLists() {
        int[] iArr = this.astLengthStack;
        int i10 = this.astLengthPtr - 1;
        this.astLengthPtr = i10;
        iArr[i10] = iArr[i10] + 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:111:0x0127, code lost:
    
        if (r7 != 16966) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0129, code lost:
    
        if (r9 == 0) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x012b, code lost:
    
        r13.lastErrorEndPosition = r8;
     */
    /* JADX WARN: Finally extract failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void parse() {
        int i10;
        boolean z10 = this.diet;
        int firstToken = getFirstToken();
        this.hasError = false;
        this.hasReportedError = false;
        this.unstackedAct = 16966;
        this.stateStackTop = -1;
        this.currentToken = getFirstToken();
        try {
            this.scanner.setActiveParser(this);
        } catch (Throwable th2) {
            this.unstackedAct = 16966;
            this.scanner.setActiveParser(null);
            throw th2;
        }
        loop0: while (true) {
            i10 = 1124;
            while (true) {
                int[] iArr = this.stack;
                int length = iArr.length;
                int i11 = this.stateStackTop + 1;
                this.stateStackTop = i11;
                if (i11 >= length) {
                    int[] iArr2 = new int[length + 255];
                    this.stack = iArr2;
                    System.arraycopy(iArr, 0, iArr2, 0, length);
                }
                this.stack[this.stateStackTop] = i10;
                i10 = actFromTokenOrSynthetic(i10);
                this.unstackedAct = i10;
                if (i10 == 16966 || this.restartRecovery) {
                    int i12 = this.scanner.currentPosition - 1;
                    if (!this.hasReportedError) {
                        this.hasError = true;
                    }
                    int i13 = this.currentToken;
                    int resumeOnSyntaxError = resumeOnSyntaxError();
                    if (resumeOnSyntaxError == 0) {
                        i10 = 16966;
                        break loop0;
                    }
                    if (resumeOnSyntaxError == 1) {
                        break;
                    }
                    if (resumeOnSyntaxError == 2 && i10 == 16966) {
                        int[] iArr3 = this.stack;
                        int i14 = this.stateStackTop;
                        this.stateStackTop = i14 - 1;
                        i10 = iArr3[i14];
                    }
                }
                if (i10 <= 867) {
                    this.stateStackTop--;
                } else {
                    if (i10 <= 16966) {
                        if (i10 >= 16965) {
                            break loop0;
                        }
                        consumeToken(this.currentToken);
                        if (this.currentElement != null) {
                            boolean z11 = this.recordStringLiterals;
                            this.recordStringLiterals = false;
                            recoveryTokenCheck();
                            this.recordStringLiterals = z11;
                        }
                        try {
                            this.currentToken = this.scanner.getNextToken();
                        } catch (InvalidInputException e10) {
                            if (!this.hasReportedError) {
                                problemReporter().scannerError(this, e10.getMessage());
                                this.hasReportedError = true;
                            }
                            this.lastCheckPoint = this.scanner.currentPosition;
                            this.currentToken = 0;
                            this.restartRecovery = true;
                        }
                        if (this.statementRecoveryActivated) {
                            jumpOverType();
                        }
                    } else {
                        consumeToken(this.currentToken);
                        if (this.currentElement != null) {
                            boolean z12 = this.recordStringLiterals;
                            this.recordStringLiterals = false;
                            recoveryTokenCheck();
                            this.recordStringLiterals = z12;
                        }
                        try {
                            this.currentToken = this.scanner.getNextToken();
                        } catch (InvalidInputException e11) {
                            if (!this.hasReportedError) {
                                problemReporter().scannerError(this, e11.getMessage());
                                this.hasReportedError = true;
                            }
                            this.lastCheckPoint = this.scanner.currentPosition;
                            this.currentToken = 0;
                            this.restartRecovery = true;
                        }
                        if (this.statementRecoveryActivated) {
                            jumpOverType();
                        }
                        i10 -= 16966;
                        this.unstackedAct = i10;
                    }
                    this.unstackedAct = 16966;
                    this.scanner.setActiveParser(null);
                    throw th2;
                }
                do {
                    int i15 = this.stateStackTop - (rhs[i10] - 1);
                    this.stateStackTop = i15;
                    this.unstackedAct = ntAction(this.stack[i15], lhs[i10]);
                    consumeRule(i10);
                    i10 = this.unstackedAct;
                    if (i10 == 16965) {
                        break loop0;
                    }
                } while (i10 <= 867);
            }
            this.stateStackTop = -1;
            this.currentToken = getFirstToken();
        }
        this.unstackedAct = 16966;
        this.scanner.setActiveParser(null);
        endParse(i10);
        NLSTag[] nLSTags = this.scanner.getNLSTags();
        if (nLSTags != null) {
            this.compilationUnit.nlsTags = nLSTags;
        }
        Scanner scanner = this.scanner;
        scanner.checkNonExternalizedStringLiterals = false;
        if (scanner.checkUninternedIdentityComparison) {
            this.compilationUnit.validIdentityComparisonLines = scanner.getIdentityComparisonLines();
            this.scanner.checkUninternedIdentityComparison = false;
        }
        if (this.reportSyntaxErrorIsRequired && this.hasError && !this.statementRecoveryActivated) {
            if (!this.options.performStatementsRecovery) {
                reportSyntaxErrors(z10, firstToken);
            } else {
                RecoveryScannerData recoveryScannerData = this.referenceContext.compilationResult().recoveryScannerData;
                RecoveryScanner recoveryScanner = this.recoveryScanner;
                if (recoveryScanner == null) {
                    this.recoveryScanner = new RecoveryScanner(this.scanner, recoveryScannerData);
                } else {
                    recoveryScanner.setData(recoveryScannerData);
                }
                this.recoveryScanner.setSource(this.scanner.source);
                RecoveryScanner recoveryScanner2 = this.recoveryScanner;
                Scanner scanner2 = this.scanner;
                recoveryScanner2.lineEnds = scanner2.lineEnds;
                recoveryScanner2.linePtr = scanner2.linePtr;
                reportSyntaxErrors(z10, firstToken);
                if (recoveryScannerData == null) {
                    this.referenceContext.compilationResult().recoveryScannerData = this.recoveryScanner.getData();
                }
                if (this.methodRecoveryActivated && this.options.performStatementsRecovery) {
                    this.methodRecoveryActivated = false;
                    recoverStatements();
                    this.methodRecoveryActivated = true;
                    this.lastAct = 16966;
                }
            }
        }
        this.problemReporter.referenceContext = null;
    }

    public ASTNode[] parseClassBodyDeclarations(char[] cArr, int i10, int i11, CompilationUnitDeclaration compilationUnitDeclaration) {
        ASTNode[] aSTNodeArr;
        boolean z10 = this.diet;
        int i12 = this.dietInt;
        boolean z11 = this.tolerateDefaultClassMethods;
        initialize();
        goForClassBodyDeclarations();
        this.scanner.setSource(cArr);
        int i13 = (i11 + i10) - 1;
        this.scanner.resetTo(i10, i13);
        JavadocParser javadocParser = this.javadocParser;
        if (javadocParser != null && javadocParser.checkDocComment) {
            javadocParser.scanner.setSource(cArr);
            this.javadocParser.scanner.resetTo(i10, i13);
        }
        this.nestedType = 1;
        TypeDeclaration typeDeclaration = new TypeDeclaration(compilationUnitDeclaration.compilationResult);
        typeDeclaration.name = Util.EMPTY_STRING.toCharArray();
        typeDeclaration.fields = new FieldDeclaration[0];
        this.compilationUnit = compilationUnitDeclaration;
        compilationUnitDeclaration.types = r14;
        TypeDeclaration[] typeDeclarationArr = {typeDeclaration};
        this.referenceContext = compilationUnitDeclaration;
        try {
            try {
                this.diet = true;
                this.dietInt = 0;
                this.tolerateDefaultClassMethods = this.parsingJava8Plus;
                parse();
            } catch (AbortCompilation unused) {
                this.lastAct = 16966;
            }
            if (this.lastAct == 16966) {
                CompilerOptions compilerOptions = this.options;
                if (!compilerOptions.performMethodsFullRecovery && !compilerOptions.performStatementsRecovery) {
                    return null;
                }
                final ArrayList arrayList = new ArrayList();
                ASTVisitor aSTVisitor = new ASTVisitor() {
                    @Override
                    public boolean visit(MethodDeclaration methodDeclaration, ClassScope classScope) {
                        if (methodDeclaration.isDefaultConstructor()) {
                            return false;
                        }
                        arrayList.add(methodDeclaration);
                        return false;
                    }

                    @Override
                    public boolean visit(FieldDeclaration fieldDeclaration, MethodScope methodScope) {
                        arrayList.add(fieldDeclaration);
                        return false;
                    }

                    @Override
                    public boolean visit(TypeDeclaration typeDeclaration2, ClassScope classScope) {
                        arrayList.add(typeDeclaration2);
                        return false;
                    }
                };
                compilationUnitDeclaration.ignoreFurtherInvestigation = false;
                compilationUnitDeclaration.traverse(aSTVisitor, compilationUnitDeclaration.scope);
                compilationUnitDeclaration.ignoreFurtherInvestigation = true;
                aSTNodeArr = (ASTNode[]) arrayList.toArray(new ASTNode[arrayList.size()]);
            } else {
                int i14 = this.astLengthPtr;
                if (i14 > -1) {
                    int[] iArr = this.astLengthStack;
                    this.astLengthPtr = i14 - 1;
                    int i15 = iArr[i14];
                    if (i15 != 0) {
                        ASTNode[] aSTNodeArr2 = new ASTNode[i15];
                        int i16 = this.astPtr - i15;
                        this.astPtr = i16;
                        System.arraycopy(this.astStack, i16 + 1, aSTNodeArr2, 0, i15);
                        aSTNodeArr = aSTNodeArr2;
                    }
                }
                aSTNodeArr = new ASTNode[0];
            }
            boolean z12 = false;
            TypeDeclaration typeDeclaration2 = null;
            for (ASTNode aSTNode : aSTNodeArr) {
                if (aSTNode instanceof TypeDeclaration) {
                    ((TypeDeclaration) aSTNode).parseMethods(this, compilationUnitDeclaration);
                } else if (aSTNode instanceof AbstractMethodDeclaration) {
                    ((AbstractMethodDeclaration) aSTNode).parseStatements(this, compilationUnitDeclaration);
                } else if (aSTNode instanceof FieldDeclaration) {
                    FieldDeclaration fieldDeclaration = (FieldDeclaration) aSTNode;
                    if (fieldDeclaration.getKind() == 2) {
                        if (typeDeclaration2 == null) {
                            typeDeclaration2 = typeDeclaration;
                        }
                        FieldDeclaration[] fieldDeclarationArr = typeDeclaration2.fields;
                        if (fieldDeclarationArr == null) {
                            typeDeclaration2.fields = r1;
                            FieldDeclaration[] fieldDeclarationArr2 = {fieldDeclaration};
                        } else {
                            int length = fieldDeclarationArr.length;
                            FieldDeclaration[] fieldDeclarationArr3 = new FieldDeclaration[length + 1];
                            System.arraycopy(fieldDeclarationArr, 0, fieldDeclarationArr3, 0, length);
                            fieldDeclarationArr3[length] = fieldDeclaration;
                            typeDeclaration2.fields = fieldDeclarationArr3;
                        }
                        z12 = true;
                    }
                }
                if ((524288 & aSTNode.bits) != 0) {
                    CompilerOptions compilerOptions2 = this.options;
                    if (!compilerOptions2.performMethodsFullRecovery && !compilerOptions2.performStatementsRecovery) {
                        return null;
                    }
                }
            }
            if (z12) {
                for (FieldDeclaration fieldDeclaration2 : typeDeclaration2.fields) {
                    Initializer initializer = (Initializer) fieldDeclaration2;
                    initializer.parseStatements(this, typeDeclaration2, compilationUnitDeclaration);
                    if ((initializer.bits & 524288) != 0) {
                        CompilerOptions compilerOptions3 = this.options;
                        if (!compilerOptions3.performMethodsFullRecovery && !compilerOptions3.performStatementsRecovery) {
                            return null;
                        }
                    }
                }
            }
            return aSTNodeArr;
        } finally {
            this.diet = z10;
            this.dietInt = i12;
            this.tolerateDefaultClassMethods = z11;
        }
    }

    public Expression parseExpression(char[] cArr, int i10, int i11, CompilationUnitDeclaration compilationUnitDeclaration, boolean z10) {
        initialize();
        goForExpression(z10);
        int[] iArr = this.nestedMethod;
        int i12 = this.nestedType;
        iArr[i12] = iArr[i12] + 1;
        this.referenceContext = compilationUnitDeclaration;
        this.compilationUnit = compilationUnitDeclaration;
        this.scanner.setSource(cArr);
        this.scanner.resetTo(i10, (i11 + i10) - 1);
        try {
            parse();
        } catch (AbortCompilation unused) {
            this.lastAct = 16966;
        } finally {
            this.nestedMethod[this.nestedType] = r4[r5] - 1;
        }
        if (this.lastAct == 16966) {
            return null;
        }
        return this.expressionStack[this.expressionPtr];
    }

    public Expression parseLambdaExpression(char[] cArr, int i10, int i11, CompilationUnitDeclaration compilationUnitDeclaration, boolean z10) {
        this.haltOnSyntaxError = true;
        this.reparsingLambdaExpression = true;
        return parseExpression(cArr, i10, i11, compilationUnitDeclaration, z10);
    }

    public Expression parseMemberValue(char[] cArr, int i10, int i11, CompilationUnitDeclaration compilationUnitDeclaration) {
        initialize();
        goForMemberValue();
        int[] iArr = this.nestedMethod;
        int i12 = this.nestedType;
        iArr[i12] = iArr[i12] + 1;
        this.referenceContext = compilationUnitDeclaration;
        this.compilationUnit = compilationUnitDeclaration;
        this.scanner.setSource(cArr);
        this.scanner.resetTo(i10, (i11 + i10) - 1);
        try {
            parse();
        } catch (AbortCompilation unused) {
            this.lastAct = 16966;
        } finally {
            this.nestedMethod[this.nestedType] = r5[r6] - 1;
        }
        if (this.lastAct == 16966) {
            return null;
        }
        return this.expressionStack[this.expressionPtr];
    }

    public char[][] parsePackageDeclaration(char[] cArr, CompilationResult compilationResult) {
        ImportReference importReference;
        initialize();
        goForPackageDeclaration(false);
        CompilationUnitDeclaration compilationUnitDeclaration = new CompilationUnitDeclaration(problemReporter(), compilationResult, cArr.length);
        this.compilationUnit = compilationUnitDeclaration;
        this.referenceContext = compilationUnitDeclaration;
        this.scanner.setSource(cArr);
        try {
            parse();
        } catch (AbortCompilation unused) {
            this.lastAct = 16966;
        }
        if (this.lastAct == 16966 || (importReference = this.compilationUnit.currentPackage) == null) {
            return null;
        }
        return importReference.getImportName();
    }

    public void parseStatements(ReferenceContext referenceContext, int i10, int i11, TypeDeclaration[] typeDeclarationArr, CompilationUnitDeclaration compilationUnitDeclaration) {
        boolean z10 = this.statementRecoveryActivated;
        this.statementRecoveryActivated = true;
        initialize();
        goForBlockStatementsopt();
        int[] iArr = this.nestedMethod;
        int i12 = this.nestedType;
        iArr[i12] = iArr[i12] + 1;
        pushOnRealBlockStack(0);
        pushOnAstLengthStack(0);
        this.referenceContext = referenceContext;
        this.compilationUnit = compilationUnitDeclaration;
        this.pendingRecoveredType = null;
        if (typeDeclarationArr == null || typeDeclarationArr.length <= 0) {
            this.recoveredTypes = null;
            this.recoveredTypePtr = -1;
            this.nextTypeStart = -1;
        } else {
            this.recoveredTypes = typeDeclarationArr;
            this.recoveredTypePtr = 0;
            TypeDeclaration typeDeclaration = typeDeclarationArr[0];
            QualifiedAllocationExpression qualifiedAllocationExpression = typeDeclaration.allocation;
            this.nextTypeStart = qualifiedAllocationExpression == null ? typeDeclaration.declarationSourceStart : qualifiedAllocationExpression.sourceStart;
        }
        this.scanner.resetTo(i10, i11);
        this.lastCheckPoint = this.scanner.initialPosition;
        this.stateStackTop = -1;
        try {
            try {
                parse();
                int[] iArr2 = this.nestedMethod;
                int i13 = this.nestedType;
                iArr2[i13] = iArr2[i13] - 1;
            } catch (AbortCompilation unused) {
                this.lastAct = 16966;
                int[] iArr3 = this.nestedMethod;
                int i14 = this.nestedType;
                iArr3[i14] = iArr3[i14] - 1;
            }
            this.recoveredTypes = null;
            this.statementRecoveryActivated = z10;
            checkNonNLSAfterBodyEnd(i11);
        } catch (Throwable th2) {
            int[] iArr4 = this.nestedMethod;
            int i15 = this.nestedType;
            iArr4[i15] = iArr4[i15] - 1;
            this.recoveredTypes = null;
            this.statementRecoveryActivated = z10;
            throw th2;
        }
    }

    public void persistLineSeparatorPositions() {
        Scanner scanner = this.scanner;
        if (scanner.recordLineSeparator) {
            this.compilationUnit.compilationResult.lineSeparatorPositions = scanner.getLineEnds();
        }
    }

    public void prepareForBlockStatements() {
        int[] iArr = this.nestedMethod;
        this.nestedType = 0;
        iArr[0] = 1;
        this.variablesCounter[0] = 0;
        int[] iArr2 = this.realBlockStack;
        this.realBlockPtr = 1;
        iArr2[1] = 0;
        this.switchNestingLevel = 0;
    }

    public ProblemReporter problemReporter() {
        Scanner scanner = this.scanner;
        if (scanner.recordLineSeparator) {
            this.compilationUnit.compilationResult.lineSeparatorPositions = scanner.getLineEnds();
        }
        ProblemReporter problemReporter = this.problemReporter;
        problemReporter.referenceContext = this.referenceContext;
        return problemReporter;
    }

    public void pushIdentifier(char[] cArr, long j10) {
        char[][] cArr2 = this.identifierStack;
        int length = cArr2.length;
        int i10 = this.identifierPtr + 1;
        this.identifierPtr = i10;
        if (i10 >= length) {
            int i11 = length + 20;
            char[][] cArr3 = new char[i11];
            this.identifierStack = cArr3;
            System.arraycopy(cArr2, 0, cArr3, 0, length);
            long[] jArr = this.identifierPositionStack;
            long[] jArr2 = new long[i11];
            this.identifierPositionStack = jArr2;
            System.arraycopy(jArr, 0, jArr2, 0, length);
        }
        char[][] cArr4 = this.identifierStack;
        int i12 = this.identifierPtr;
        cArr4[i12] = cArr;
        this.identifierPositionStack[i12] = j10;
        int[] iArr = this.identifierLengthStack;
        int length2 = iArr.length;
        int i13 = this.identifierLengthPtr + 1;
        this.identifierLengthPtr = i13;
        if (i13 >= length2) {
            int[] iArr2 = new int[length2 + 10];
            this.identifierLengthStack = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, length2);
        }
        this.identifierLengthStack[this.identifierLengthPtr] = 1;
        if (this.parsingJava8Plus && cArr.length == 1 && cArr[0] == '_' && !this.processingLambdaParameterList) {
            problemReporter().illegalUseOfUnderscoreAsAnIdentifier((int) (j10 >>> 32), (int) j10, this.parsingJava9Plus);
        }
    }

    public void pushOnAstLengthStack(int i10) {
        int[] iArr = this.astLengthStack;
        int length = iArr.length;
        int i11 = this.astLengthPtr + 1;
        this.astLengthPtr = i11;
        if (i11 >= length) {
            int[] iArr2 = new int[length + 255];
            this.astLengthStack = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, length);
        }
        this.astLengthStack[this.astLengthPtr] = i10;
    }

    public void pushOnAstStack(ASTNode aSTNode) {
        ASTNode[] aSTNodeArr = this.astStack;
        int length = aSTNodeArr.length;
        int i10 = this.astPtr + 1;
        this.astPtr = i10;
        if (i10 >= length) {
            ASTNode[] aSTNodeArr2 = new ASTNode[length + 100];
            this.astStack = aSTNodeArr2;
            System.arraycopy(aSTNodeArr, 0, aSTNodeArr2, 0, length);
            this.astPtr = length;
        }
        this.astStack[this.astPtr] = aSTNode;
        int[] iArr = this.astLengthStack;
        int length2 = iArr.length;
        int i11 = this.astLengthPtr + 1;
        this.astLengthPtr = i11;
        if (i11 >= length2) {
            int[] iArr2 = new int[length2 + 100];
            this.astLengthStack = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, length2);
        }
        this.astLengthStack[this.astLengthPtr] = 1;
    }

    public void pushOnExpressionStack(Expression expression) {
        Expression[] expressionArr = this.expressionStack;
        int length = expressionArr.length;
        int i10 = this.expressionPtr + 1;
        this.expressionPtr = i10;
        if (i10 >= length) {
            Expression[] expressionArr2 = new Expression[length + 100];
            this.expressionStack = expressionArr2;
            System.arraycopy(expressionArr, 0, expressionArr2, 0, length);
        }
        this.expressionStack[this.expressionPtr] = expression;
        int[] iArr = this.expressionLengthStack;
        int length2 = iArr.length;
        int i11 = this.expressionLengthPtr + 1;
        this.expressionLengthPtr = i11;
        if (i11 >= length2) {
            int[] iArr2 = new int[length2 + 100];
            this.expressionLengthStack = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, length2);
        }
        this.expressionLengthStack[this.expressionLengthPtr] = 1;
    }

    public void pushOnExpressionStackLengthStack(int i10) {
        int[] iArr = this.expressionLengthStack;
        int length = iArr.length;
        int i11 = this.expressionLengthPtr + 1;
        this.expressionLengthPtr = i11;
        if (i11 >= length) {
            int[] iArr2 = new int[length + 255];
            this.expressionLengthStack = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, length);
        }
        this.expressionLengthStack[this.expressionLengthPtr] = i10;
    }

    public void pushOnGenericsIdentifiersLengthStack(int i10) {
        int[] iArr = this.genericsIdentifiersLengthStack;
        int length = iArr.length;
        int i11 = this.genericsIdentifiersLengthPtr + 1;
        this.genericsIdentifiersLengthPtr = i11;
        if (i11 >= length) {
            int[] iArr2 = new int[length + 10];
            this.genericsIdentifiersLengthStack = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, length);
        }
        this.genericsIdentifiersLengthStack[this.genericsIdentifiersLengthPtr] = i10;
    }

    public void pushOnGenericsLengthStack(int i10) {
        int[] iArr = this.genericsLengthStack;
        int length = iArr.length;
        int i11 = this.genericsLengthPtr + 1;
        this.genericsLengthPtr = i11;
        if (i11 >= length) {
            int[] iArr2 = new int[length + 10];
            this.genericsLengthStack = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, length);
        }
        this.genericsLengthStack[this.genericsLengthPtr] = i10;
    }

    public void pushOnGenericsStack(ASTNode aSTNode) {
        ASTNode[] aSTNodeArr = this.genericsStack;
        int length = aSTNodeArr.length;
        int i10 = this.genericsPtr + 1;
        this.genericsPtr = i10;
        if (i10 >= length) {
            ASTNode[] aSTNodeArr2 = new ASTNode[length + 10];
            this.genericsStack = aSTNodeArr2;
            System.arraycopy(aSTNodeArr, 0, aSTNodeArr2, 0, length);
        }
        this.genericsStack[this.genericsPtr] = aSTNode;
        int[] iArr = this.genericsLengthStack;
        int length2 = iArr.length;
        int i11 = this.genericsLengthPtr + 1;
        this.genericsLengthPtr = i11;
        if (i11 >= length2) {
            int[] iArr2 = new int[length2 + 10];
            this.genericsLengthStack = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, length2);
        }
        this.genericsLengthStack[this.genericsLengthPtr] = 1;
    }

    public void pushOnIntStack(int i10) {
        int[] iArr = this.intStack;
        int length = iArr.length;
        int i11 = this.intPtr + 1;
        this.intPtr = i11;
        if (i11 >= length) {
            int[] iArr2 = new int[length + 255];
            this.intStack = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, length);
        }
        this.intStack[this.intPtr] = i10;
    }

    public void pushOnRealBlockStack(int i10) {
        int[] iArr = this.realBlockStack;
        int length = iArr.length;
        int i11 = this.realBlockPtr + 1;
        this.realBlockPtr = i11;
        if (i11 >= length) {
            int[] iArr2 = new int[length + 255];
            this.realBlockStack = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, length);
        }
        this.realBlockStack[this.realBlockPtr] = i10;
    }

    public void pushOnTypeAnnotationLengthStack(int i10) {
        int[] iArr = this.typeAnnotationLengthStack;
        int length = iArr.length;
        int i11 = this.typeAnnotationLengthPtr + 1;
        this.typeAnnotationLengthPtr = i11;
        if (i11 >= length) {
            int[] iArr2 = new int[length + 100];
            this.typeAnnotationLengthStack = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, length);
        }
        this.typeAnnotationLengthStack[this.typeAnnotationLengthPtr] = i10;
    }

    public void pushOnTypeAnnotationStack(Annotation annotation) {
        Annotation[] annotationArr = this.typeAnnotationStack;
        int length = annotationArr.length;
        int i10 = this.typeAnnotationPtr + 1;
        this.typeAnnotationPtr = i10;
        if (i10 >= length) {
            Annotation[] annotationArr2 = new Annotation[length + 100];
            this.typeAnnotationStack = annotationArr2;
            System.arraycopy(annotationArr, 0, annotationArr2, 0, length);
        }
        this.typeAnnotationStack[this.typeAnnotationPtr] = annotation;
        int[] iArr = this.typeAnnotationLengthStack;
        int length2 = iArr.length;
        int i11 = this.typeAnnotationLengthPtr + 1;
        this.typeAnnotationLengthPtr = i11;
        if (i11 >= length2) {
            int[] iArr2 = new int[length2 + 100];
            this.typeAnnotationLengthStack = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, length2);
        }
        this.typeAnnotationLengthStack[this.typeAnnotationLengthPtr] = 1;
    }

    public void recoverStatements() {
        C1MethodVisitor c1MethodVisitor = new C1MethodVisitor();
        C1TypeVisitor c1TypeVisitor = new C1TypeVisitor();
        c1MethodVisitor.typeVisitor = c1TypeVisitor;
        c1TypeVisitor.methodVisitor = c1MethodVisitor;
        ReferenceContext referenceContext = this.referenceContext;
        if (referenceContext instanceof AbstractMethodDeclaration) {
            ((AbstractMethodDeclaration) referenceContext).traverse(c1MethodVisitor, (ClassScope) null);
            return;
        }
        if (referenceContext instanceof TypeDeclaration) {
            TypeDeclaration typeDeclaration = (TypeDeclaration) referenceContext;
            int length = typeDeclaration.fields.length;
            for (int i10 = 0; i10 < length; i10++) {
                FieldDeclaration fieldDeclaration = typeDeclaration.fields[i10];
                if (fieldDeclaration.getKind() == 2) {
                    Initializer initializer = (Initializer) fieldDeclaration;
                    if (initializer.block != null) {
                        c1MethodVisitor.enclosingType = typeDeclaration;
                        initializer.traverse((ASTVisitor) c1MethodVisitor, (MethodScope) null);
                    }
                }
            }
        }
    }

    public void recoveryExitFromVariable() {
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement == null || recoveredElement.parent == null) {
            return;
        }
        if (recoveredElement instanceof RecoveredLocalVariable) {
            recoveredElement.updateSourceEndIfNecessary(((RecoveredLocalVariable) recoveredElement).localDeclaration.sourceEnd);
            this.currentElement = this.currentElement.parent;
        } else {
            if (!(recoveredElement instanceof RecoveredField) || (recoveredElement instanceof RecoveredInitializer) || recoveredElement.bracketBalance > 0) {
                return;
            }
            recoveredElement.updateSourceEndIfNecessary(((RecoveredField) recoveredElement).fieldDeclaration.sourceEnd);
            this.currentElement = this.currentElement.parent;
        }
    }

    public void recoveryTokenCheck() {
        RecoveredElement recoveredElement;
        int i10 = this.currentToken;
        if (i10 != 26) {
            if (i10 != 33) {
                if (i10 != 46) {
                    if (i10 == 49) {
                        if (this.ignoreNextOpeningBrace) {
                            recoveredElement = null;
                        } else {
                            RecoveredElement recoveredElement2 = this.currentElement;
                            Scanner scanner = this.scanner;
                            recoveredElement = recoveredElement2.updateOnOpeningBrace(scanner.startPosition - 1, scanner.currentPosition - 1);
                        }
                        this.lastCheckPoint = this.scanner.currentPosition;
                        if (recoveredElement != null) {
                            this.restartRecovery = true;
                            this.currentElement = recoveredElement;
                        }
                    }
                } else if (this.recordStringLiterals && this.checkExternalizeStrings) {
                    int i11 = this.lastPosistion;
                    Scanner scanner2 = this.scanner;
                    if (i11 < scanner2.currentPosition && !this.statementRecoveryActivated) {
                        char[] currentTokenSourceString = scanner2.getCurrentTokenSourceString();
                        Scanner scanner3 = this.scanner;
                        int i12 = scanner3.startPosition;
                        this.compilationUnit.recordStringLiteral(createStringLiteral(currentTokenSourceString, i12, scanner3.currentPosition - 1, Util.getLineNumber(i12, scanner3.lineEnds, 0, scanner3.linePtr)), this.currentElement != null);
                    }
                }
            } else if (this.ignoreNextClosingBrace) {
                this.ignoreNextClosingBrace = false;
            } else {
                Scanner scanner4 = this.scanner;
                this.rBraceStart = scanner4.startPosition - 1;
                int i13 = scanner4.currentPosition - 1;
                this.rBraceEnd = i13;
                this.endPosition = flushCommentsDefinedPriorTo(i13);
                RecoveredElement updateOnClosingBrace = this.currentElement.updateOnClosingBrace(this.scanner.startPosition, this.rBraceEnd);
                this.lastCheckPoint = this.scanner.currentPosition;
                if (updateOnClosingBrace != this.currentElement) {
                    this.currentElement = updateOnClosingBrace;
                }
            }
            this.ignoreNextOpeningBrace = false;
        }
        Scanner scanner5 = this.scanner;
        this.endStatementPosition = scanner5.currentPosition - 1;
        this.endPosition = scanner5.startPosition - 1;
        RecoveredType currentRecoveryType = currentRecoveryType();
        if (currentRecoveryType != null) {
            currentRecoveryType.insideEnumConstantPart = false;
        }
        if (this.rBraceEnd > this.rBraceSuccessorStart) {
            Scanner scanner6 = this.scanner;
            int i14 = scanner6.currentPosition;
            int i15 = scanner6.startPosition;
            if (i14 != i15) {
                this.rBraceSuccessorStart = i15;
            }
        }
        this.ignoreNextOpeningBrace = false;
    }

    public void rejectIllegalLeadingTypeAnnotations(TypeReference typeReference) {
        Annotation[][] annotationArr = typeReference.annotations;
        if (annotationArr == null || annotationArr[0] == null) {
            return;
        }
        ProblemReporter problemReporter = problemReporter();
        Annotation[] annotationArr2 = annotationArr[0];
        problemReporter.misplacedTypeAnnotations(annotationArr2[0], annotationArr2[annotationArr2.length - 1]);
        annotationArr[0] = null;
    }

    public void reportSyntaxErrors(boolean z10, int i10) {
        ReferenceContext referenceContext = this.referenceContext;
        if (!(referenceContext instanceof MethodDeclaration) || (((MethodDeclaration) referenceContext).bits & 32) == 0) {
            this.compilationUnit.compilationResult.lineSeparatorPositions = this.scanner.getLineEnds();
            Scanner scanner = this.scanner;
            scanner.recordLineSeparator = false;
            int i11 = scanner.initialPosition;
            int i12 = scanner.eofPosition;
            if (i12 != Integer.MAX_VALUE) {
                i12--;
            }
            if (!z10) {
                new DiagnoseParser(this, i10, i11, i12, this.options).diagnoseParse(this.options.performStatementsRecovery);
                return;
            }
            TypeDeclaration[] typeDeclarationArr = this.compilationUnit.types;
            int[][] computeDietRange = RangeUtil.computeDietRange(typeDeclarationArr);
            new DiagnoseParser(this, i10, i11, i12, computeDietRange[0], computeDietRange[1], computeDietRange[2], this.options).diagnoseParse(false);
            reportSyntaxErrorsForSkippedMethod(typeDeclarationArr);
            this.scanner.resetTo(i11, i12);
        }
    }

    public void resetModifiers() {
        this.modifiers = 0;
        this.modifiersSourceStart = -1;
        this.scanner.commentPtr = -1;
    }

    public void resetStacks() {
        this.astPtr = -1;
        this.astLengthPtr = -1;
        this.expressionPtr = -1;
        this.expressionLengthPtr = -1;
        this.typeAnnotationLengthPtr = -1;
        this.typeAnnotationPtr = -1;
        this.identifierPtr = -1;
        this.identifierLengthPtr = -1;
        this.intPtr = -1;
        int[] iArr = this.nestedMethod;
        this.nestedType = 0;
        iArr[0] = 0;
        this.variablesCounter[0] = 0;
        this.switchNestingLevel = 0;
        this.dimensions = 0;
        int[] iArr2 = this.realBlockStack;
        this.realBlockPtr = 0;
        iArr2[0] = 0;
        this.recoveredStaticInitializerStart = 0;
        this.listLength = 0;
        this.listTypeParameterLength = 0;
        this.genericsIdentifiersLengthPtr = -1;
        this.genericsLengthPtr = -1;
        this.genericsPtr = -1;
        this.valueLambdaNestDepth = -1;
    }

    public int resumeAfterRecovery() {
        if (this.methodRecoveryActivated || this.statementRecoveryActivated) {
            if (this.statementRecoveryActivated) {
                return 0;
            }
            resetStacks();
            resetModifiers();
            if (!moveRecoveryCheckpoint()) {
                return 0;
            }
            goForHeaders();
            return 1;
        }
        resetStacks();
        resetModifiers();
        if (!moveRecoveryCheckpoint() || !(this.referenceContext instanceof CompilationUnitDeclaration)) {
            return 0;
        }
        goForHeaders();
        this.diet = true;
        this.dietInt = 0;
        return 1;
    }

    public int resumeOnSyntaxError() {
        if (this.haltOnSyntaxError) {
            return 0;
        }
        if (this.currentElement == null) {
            this.javadoc = null;
            if (this.statementRecoveryActivated) {
                return 0;
            }
            this.currentElement = buildInitialRecoveryState();
        }
        if (this.currentElement == null) {
            return 0;
        }
        if (this.restartRecovery) {
            this.restartRecovery = false;
        }
        updateRecoveryState();
        if (getFirstToken() == 21 && (this.referenceContext instanceof CompilationUnitDeclaration)) {
            TypeDeclaration typeDeclaration = new TypeDeclaration(this.referenceContext.compilationResult());
            typeDeclaration.name = Util.EMPTY_STRING.toCharArray();
            this.currentElement = this.currentElement.add(typeDeclaration, 0);
        }
        int i10 = this.lastPosistion;
        Scanner scanner = this.scanner;
        int i11 = scanner.currentPosition;
        if (i10 < i11) {
            this.lastPosistion = i11;
            scanner.lastPosition = i11;
        }
        return resumeAfterRecovery();
    }

    public void setMethodsFullRecovery(boolean z10) {
        this.options.performMethodsFullRecovery = z10;
    }

    public void setStatementsRecovery(boolean z10) {
        if (z10) {
            this.options.performMethodsFullRecovery = true;
        }
        this.options.performStatementsRecovery = z10;
    }

    public String toString() {
        String str = String.valueOf("lastCheckpoint : int = " + String.valueOf(this.lastCheckPoint) + "\n") + "identifierStack : char[" + (this.identifierPtr + 1) + "][] = {";
        for (int i10 = 0; i10 <= this.identifierPtr; i10++) {
            str = String.valueOf(str) + JavadocConstants.ANCHOR_PREFIX_END + String.valueOf(this.identifierStack[i10]) + "\",";
        }
        String str2 = String.valueOf(String.valueOf(str) + "}\n") + "identifierLengthStack : int[" + (this.identifierLengthPtr + 1) + "] = {";
        for (int i11 = 0; i11 <= this.identifierLengthPtr; i11++) {
            str2 = String.valueOf(str2) + this.identifierLengthStack[i11] + DocLint.SEPARATOR;
        }
        String str3 = String.valueOf(String.valueOf(str2) + "}\n") + "astLengthStack : int[" + (this.astLengthPtr + 1) + "] = {";
        for (int i12 = 0; i12 <= this.astLengthPtr; i12++) {
            str3 = String.valueOf(str3) + this.astLengthStack[i12] + DocLint.SEPARATOR;
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(String.valueOf(String.valueOf(str3) + "}\n") + "astPtr : int = " + String.valueOf(this.astPtr) + "\n"));
        sb2.append("intStack : int[");
        sb2.append(this.intPtr + 1);
        sb2.append("] = {");
        String sb3 = sb2.toString();
        for (int i13 = 0; i13 <= this.intPtr; i13++) {
            sb3 = String.valueOf(sb3) + this.intStack[i13] + DocLint.SEPARATOR;
        }
        String str4 = String.valueOf(String.valueOf(sb3) + "}\n") + "expressionLengthStack : int[" + (this.expressionLengthPtr + 1) + "] = {";
        for (int i14 = 0; i14 <= this.expressionLengthPtr; i14++) {
            str4 = String.valueOf(str4) + this.expressionLengthStack[i14] + DocLint.SEPARATOR;
        }
        StringBuilder sb4 = new StringBuilder(String.valueOf(String.valueOf(String.valueOf(str4) + "}\n") + "expressionPtr : int = " + String.valueOf(this.expressionPtr) + "\n"));
        sb4.append("genericsIdentifiersLengthStack : int[");
        sb4.append(this.genericsIdentifiersLengthPtr + 1);
        sb4.append("] = {");
        String sb5 = sb4.toString();
        for (int i15 = 0; i15 <= this.genericsIdentifiersLengthPtr; i15++) {
            sb5 = String.valueOf(sb5) + this.genericsIdentifiersLengthStack[i15] + DocLint.SEPARATOR;
        }
        String str5 = String.valueOf(String.valueOf(sb5) + "}\n") + "genericsLengthStack : int[" + (this.genericsLengthPtr + 1) + "] = {";
        for (int i16 = 0; i16 <= this.genericsLengthPtr; i16++) {
            str5 = String.valueOf(str5) + this.genericsLengthStack[i16] + DocLint.SEPARATOR;
        }
        return String.valueOf(String.valueOf(String.valueOf(str5) + "}\n") + "genericsPtr : int = " + String.valueOf(this.genericsPtr) + "\n") + "\n\n\n----------------Scanner--------------\n" + this.scanner.toString();
    }

    public Argument typeElidedArgument() {
        this.identifierLengthPtr--;
        char[][] cArr = this.identifierStack;
        int i10 = this.identifierPtr;
        char[] cArr2 = cArr[i10];
        long[] jArr = this.identifierPositionStack;
        this.identifierPtr = i10 - 1;
        long j10 = jArr[i10];
        Argument argument = new Argument(cArr2, j10, null, 0, true);
        argument.declarationSourceStart = (int) (j10 >>> 32);
        return argument;
    }

    public void updateRecoveryState() {
        this.currentElement.updateFromParserState();
        recoveryTokenCheck();
    }

    public void updateSourceDeclarationParts(int i10) {
        int i11 = this.astStack[(this.astPtr - i10) + 1].sourceStart - 1;
        for (int i12 = 0; i12 < i10 - 1; i12++) {
            ASTNode[] aSTNodeArr = this.astStack;
            int i13 = this.astPtr;
            FieldDeclaration fieldDeclaration = (FieldDeclaration) aSTNodeArr[(i13 - i12) - 1];
            fieldDeclaration.endPart1Position = i11;
            fieldDeclaration.endPart2Position = aSTNodeArr[i13 - i12].sourceStart - 1;
        }
        FieldDeclaration fieldDeclaration2 = (FieldDeclaration) this.astStack[this.astPtr];
        fieldDeclaration2.endPart1Position = i11;
        fieldDeclaration2.endPart2Position = fieldDeclaration2.declarationSourceEnd;
    }

    public void updateSourcePosition(Expression expression) {
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        int i11 = i10 - 1;
        this.intPtr = i11;
        expression.sourceEnd = iArr[i10];
        this.intPtr = i10 - 2;
        expression.sourceStart = iArr[i11];
    }

    public NameReference getUnspecifiedReference(boolean z10) {
        if (z10) {
            consumeNonTypeUseName();
        }
        int[] iArr = this.identifierLengthStack;
        int i10 = this.identifierLengthPtr;
        this.identifierLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 == 1) {
            char[][] cArr = this.identifierStack;
            int i12 = this.identifierPtr;
            char[] cArr2 = cArr[i12];
            long[] jArr = this.identifierPositionStack;
            this.identifierPtr = i12 - 1;
            return new SingleNameReference(cArr2, jArr[i12]);
        }
        char[][] cArr3 = new char[i11];
        int i13 = this.identifierPtr - i11;
        this.identifierPtr = i13;
        System.arraycopy(this.identifierStack, i13 + 1, cArr3, 0, i11);
        long[] jArr2 = new long[i11];
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, jArr2, 0, i11);
        long[] jArr3 = this.identifierPositionStack;
        int i14 = this.identifierPtr;
        return new QualifiedNameReference(cArr3, jArr2, (int) (jArr3[i14 + 1] >> 32), (int) jArr3[i14 + i11]);
    }

    public void goForPackageDeclaration(boolean z10) {
        this.firstToken = 29;
        this.scanner.recordLineSeparator = z10;
    }

    public void initialize(boolean z10) {
        this.javadoc = null;
        this.astPtr = -1;
        this.astLengthPtr = -1;
        this.expressionPtr = -1;
        this.expressionLengthPtr = -1;
        this.typeAnnotationLengthPtr = -1;
        this.typeAnnotationPtr = -1;
        this.identifierPtr = -1;
        this.identifierLengthPtr = -1;
        this.intPtr = -1;
        int[] iArr = this.nestedMethod;
        this.nestedType = 0;
        iArr[0] = 0;
        this.switchNestingLevel = 0;
        this.variablesCounter[0] = 0;
        this.dimensions = 0;
        this.realBlockPtr = -1;
        this.compilationUnit = null;
        this.referenceContext = null;
        this.endStatementPosition = 0;
        this.valueLambdaNestDepth = -1;
        ASTNode[] aSTNodeArr = this.astStack;
        int length = aSTNodeArr.length;
        if (this.noAstNodes.length < length) {
            this.noAstNodes = new ASTNode[length];
        }
        System.arraycopy(this.noAstNodes, 0, aSTNodeArr, 0, length);
        Expression[] expressionArr = this.expressionStack;
        int length2 = expressionArr.length;
        if (this.noExpressions.length < length2) {
            this.noExpressions = new Expression[length2];
        }
        System.arraycopy(this.noExpressions, 0, expressionArr, 0, length2);
        Scanner scanner = this.scanner;
        scanner.commentPtr = -1;
        scanner.foundTaskCount = 0;
        scanner.eofPosition = Integer.MAX_VALUE;
        this.recordStringLiterals = true;
        boolean z11 = this.options.getSeverity(256) != 256;
        this.checkExternalizeStrings = z11;
        Scanner scanner2 = this.scanner;
        scanner2.checkNonExternalizedStringLiterals = z10 && z11;
        scanner2.checkUninternedIdentityComparison = z10 && this.options.complainOnUninternedIdentityComparison;
        scanner2.lastPosition = -1;
        resetModifiers();
        this.lastCheckPoint = -1;
        this.currentElement = null;
        this.restartRecovery = false;
        this.hasReportedError = false;
        this.recoveredStaticInitializerStart = 0;
        this.lastIgnoredToken = -1;
        this.lastErrorEndPosition = -1;
        this.lastErrorEndPositionBeforeRecovery = -1;
        this.lastJavadocEnd = -1;
        this.listLength = 0;
        this.listTypeParameterLength = 0;
        this.lastPosistion = -1;
        this.rBraceStart = 0;
        this.rBraceEnd = 0;
        this.rBraceSuccessorStart = 0;
        this.rBracketPosition = 0;
        this.genericsIdentifiersLengthPtr = -1;
        this.genericsLengthPtr = -1;
        this.genericsPtr = -1;
    }

    public TypeReference getTypeReference(int i10) {
        TypeReference typeReferenceForGenericType;
        int[] iArr = this.identifierLengthStack;
        int i11 = this.identifierLengthPtr;
        this.identifierLengthPtr = i11 - 1;
        int i12 = iArr[i11];
        if (i12 < 0) {
            typeReferenceForGenericType = TypeReference.baseTypeReference(-i12, i10, i10 > 0 ? getAnnotationsOnDimensions(i10) : null);
            int[] iArr2 = this.intStack;
            int i13 = this.intPtr;
            int i14 = i13 - 1;
            this.intPtr = i14;
            typeReferenceForGenericType.sourceStart = iArr2[i13];
            if (i10 == 0) {
                this.intPtr = i13 - 2;
                typeReferenceForGenericType.sourceEnd = iArr2[i14];
            } else {
                this.intPtr = i13 - 2;
                typeReferenceForGenericType.sourceEnd = this.rBracketPosition;
            }
        } else {
            int[] iArr3 = this.genericsIdentifiersLengthStack;
            int i15 = this.genericsIdentifiersLengthPtr;
            this.genericsIdentifiersLengthPtr = i15 - 1;
            int i16 = iArr3[i15];
            if (i12 == i16) {
                int[] iArr4 = this.genericsLengthStack;
                int i17 = this.genericsLengthPtr;
                if (iArr4[i17] == 0) {
                    if (i12 == 1) {
                        this.genericsLengthPtr = i17 - 1;
                        if (i10 == 0) {
                            char[][] cArr = this.identifierStack;
                            int i18 = this.identifierPtr;
                            char[] cArr2 = cArr[i18];
                            long[] jArr = this.identifierPositionStack;
                            this.identifierPtr = i18 - 1;
                            typeReferenceForGenericType = new SingleTypeReference(cArr2, jArr[i18]);
                        } else {
                            Annotation[][] annotationsOnDimensions = getAnnotationsOnDimensions(i10);
                            char[][] cArr3 = this.identifierStack;
                            int i19 = this.identifierPtr;
                            char[] cArr4 = cArr3[i19];
                            long[] jArr2 = this.identifierPositionStack;
                            this.identifierPtr = i19 - 1;
                            ArrayTypeReference arrayTypeReference = new ArrayTypeReference(cArr4, i10, annotationsOnDimensions, jArr2[i19]);
                            arrayTypeReference.sourceEnd = this.endPosition;
                            if (annotationsOnDimensions != null) {
                                arrayTypeReference.bits |= 1048576;
                            }
                            typeReferenceForGenericType = arrayTypeReference;
                        }
                    } else {
                        this.genericsLengthPtr = i17 - 1;
                        char[][] cArr5 = new char[i12];
                        int i20 = this.identifierPtr - i12;
                        this.identifierPtr = i20;
                        long[] jArr3 = new long[i12];
                        System.arraycopy(this.identifierStack, i20 + 1, cArr5, 0, i12);
                        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, jArr3, 0, i12);
                        if (i10 == 0) {
                            typeReferenceForGenericType = new QualifiedTypeReference(cArr5, jArr3);
                        } else {
                            Annotation[][] annotationsOnDimensions2 = getAnnotationsOnDimensions(i10);
                            ArrayQualifiedTypeReference arrayQualifiedTypeReference = new ArrayQualifiedTypeReference(cArr5, i10, annotationsOnDimensions2, jArr3);
                            arrayQualifiedTypeReference.sourceEnd = this.endPosition;
                            if (annotationsOnDimensions2 != null) {
                                arrayQualifiedTypeReference.bits |= 1048576;
                            }
                            typeReferenceForGenericType = arrayQualifiedTypeReference;
                        }
                    }
                }
            }
            typeReferenceForGenericType = getTypeReferenceForGenericType(i10, i12, i16);
        }
        int annotatableLevels = typeReferenceForGenericType.getAnnotatableLevels();
        for (int i21 = annotatableLevels - 1; i21 >= 0; i21--) {
            int[] iArr5 = this.typeAnnotationLengthStack;
            int i22 = this.typeAnnotationLengthPtr;
            this.typeAnnotationLengthPtr = i22 - 1;
            int i23 = iArr5[i22];
            if (i23 != 0) {
                if (typeReferenceForGenericType.annotations == null) {
                    typeReferenceForGenericType.annotations = new Annotation[annotatableLevels];
                }
                Annotation[] annotationArr = this.typeAnnotationStack;
                int i24 = this.typeAnnotationPtr - i23;
                this.typeAnnotationPtr = i24;
                Annotation[] annotationArr2 = new Annotation[i23];
                typeReferenceForGenericType.annotations[i21] = annotationArr2;
                System.arraycopy(annotationArr, i24 + 1, annotationArr2, 0, i23);
                if (i21 == 0) {
                    typeReferenceForGenericType.sourceStart = typeReferenceForGenericType.annotations[0][0].sourceStart;
                }
                typeReferenceForGenericType.bits |= 1048576;
            }
        }
        return typeReferenceForGenericType;
    }

    public void consumeInvalidConstructorDeclaration(boolean z10) {
        if (z10) {
            this.intPtr--;
        }
        if (z10) {
            this.realBlockPtr--;
        }
        if (z10) {
            int[] iArr = this.astLengthStack;
            int i10 = this.astLengthPtr;
            this.astLengthPtr = i10 - 1;
            int i11 = iArr[i10];
            if (i11 != 0) {
                this.astPtr -= i11;
            }
        }
        ConstructorDeclaration constructorDeclaration = (ConstructorDeclaration) this.astStack[this.astPtr];
        int i12 = this.endStatementPosition;
        constructorDeclaration.bodyEnd = i12;
        constructorDeclaration.declarationSourceEnd = flushCommentsDefinedPriorTo(i12);
        if (z10) {
            return;
        }
        constructorDeclaration.modifiers |= 16777216;
    }

    private static final void buildFileForTable(String str, char[] cArr) {
        FileOutputStream fileOutputStream;
        byte[] bArr = new byte[cArr.length * 2];
        for (int i10 = 0; i10 < cArr.length; i10++) {
            int i11 = i10 * 2;
            char c10 = cArr[i10];
            bArr[i11] = (byte) (c10 >>> '\b');
            bArr[i11 + 1] = (byte) (c10 & '\u00ff');
        }
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(str);
            } catch (IOException unused) {
            }
            try {
                fileOutputStream.write(bArr);
                fileOutputStream.close();
            } catch (IOException unused2) {
                fileOutputStream2 = fileOutputStream;
                if (fileOutputStream2 != null) {
                    fileOutputStream2.close();
                }
                System.out.println(String.valueOf(str) + " creation complete");
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream2 = fileOutputStream;
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th;
            }
        } catch (IOException unused4) {
        } catch (Throwable th3) {
            th = th3;
        }
        System.out.println(String.valueOf(str) + " creation complete");
    }

    public void consumeUnaryExpression(int i10, boolean z10) {
        Expression[] expressionArr = this.expressionStack;
        int i11 = this.expressionPtr;
        Expression expression = expressionArr[i11];
        if (!(expression instanceof Reference)) {
            if (!z10) {
                this.intPtr--;
            }
            if (this.statementRecoveryActivated) {
                return;
            }
            problemReporter().invalidUnaryExpression(expression);
            return;
        }
        if (z10) {
            expressionArr[i11] = new PostfixExpression(expression, IntLiteral.One, i10, this.endStatementPosition);
            return;
        }
        IntLiteral intLiteral = IntLiteral.One;
        int[] iArr = this.intStack;
        int i12 = this.intPtr;
        this.intPtr = i12 - 1;
        expressionArr[i11] = new PrefixExpression(expression, intLiteral, i10, iArr[i12]);
    }

    public void pushIdentifier() {
        char[] currentIdentifierSource = this.scanner.getCurrentIdentifierSource();
        Scanner scanner = this.scanner;
        pushIdentifier(currentIdentifierSource, (scanner.startPosition << 32) + (scanner.currentPosition - 1));
    }

    public void pushIdentifier(int i10) {
        int[] iArr = this.identifierLengthStack;
        int length = iArr.length;
        int i11 = this.identifierLengthPtr + 1;
        this.identifierLengthPtr = i11;
        if (i11 >= length) {
            int[] iArr2 = new int[length + 10];
            this.identifierLengthStack = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, length);
        }
        this.identifierLengthStack[this.identifierLengthPtr] = i10;
    }

    public Parser(ProblemReporter problemReporter, boolean z10) {
        this.astStack = new ASTNode[100];
        this.diet = false;
        this.dietInt = 0;
        this.expressionStack = new Expression[100];
        this.typeAnnotationStack = new Annotation[100];
        this.genericsIdentifiersLengthStack = new int[10];
        this.genericsLengthStack = new int[10];
        this.genericsStack = new ASTNode[10];
        this.lastErrorEndPositionBeforeRecovery = -1;
        this.colonColonStart = -1;
        this.forStartPosition = 0;
        this.noAstNodes = new ASTNode[100];
        this.noExpressions = new Expression[100];
        this.optimizeStringLiterals = true;
        this.reportOnlyOneSyntaxError = false;
        this.reportSyntaxErrorIsRequired = true;
        this.annotationRecoveryActivated = true;
        this.methodRecoveryActivated = false;
        this.statementRecoveryActivated = false;
        this.stack = new int[255];
        this.valueLambdaNestDepth = -1;
        this.stateStackLengthStack = new int[0];
        this.unstackedAct = 16966;
        this.haltOnSyntaxError = false;
        this.tolerateDefaultClassMethods = false;
        this.processingLambdaParameterList = false;
        this.expectTypeAnnotation = false;
        this.reparsingLambdaExpression = false;
        this.caseFlagSet = false;
        this.problemReporter = problemReporter;
        this.options = problemReporter.options;
        this.optimizeStringLiterals = z10;
        initializeScanner();
        long j10 = this.options.sourceLevel;
        this.parsingJava8Plus = j10 >= ClassFileConstants.JDK1_8;
        this.parsingJava9Plus = j10 >= ClassFileConstants.JDK9;
        this.parsingJava12Plus = j10 >= ClassFileConstants.JDK12;
        this.parsingJava11Plus = j10 >= ClassFileConstants.JDK11;
        this.astLengthStack = new int[50];
        this.expressionLengthStack = new int[30];
        this.typeAnnotationLengthStack = new int[30];
        this.intStack = new int[50];
        this.identifierStack = new char[30];
        this.identifierLengthStack = new int[30];
        this.nestedMethod = new int[30];
        this.realBlockStack = new int[30];
        this.identifierPositionStack = new long[30];
        this.variablesCounter = new int[30];
        this.javadocParser = createJavadocParser();
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x005f, code lost:
    
        checkNonNLSAfterBodyEnd(r6.declarationSourceEnd);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0066, code lost:
    
        if (r5.lastAct != 16966) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0068, code lost:
    
        r6.bits |= 524288;
        initialize();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0072, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0073, code lost:
    
        r7 = r5.realBlockStack;
        r0 = r5.realBlockPtr;
        r5.realBlockPtr = r0 - 1;
        r6.explicitDeclarations = r7[r0];
        r7 = r5.astLengthPtr;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0082, code lost:
    
        if (r7 <= (-1)) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0084, code lost:
    
        r0 = r5.astLengthStack;
        r5.astLengthPtr = r7 - 1;
        r7 = r0[r7];
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x008c, code lost:
    
        if (r7 == 0) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x008e, code lost:
    
        r0 = r5.astPtr - r7;
        r5.astPtr = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0097, code lost:
    
        if (r5.options.ignoreMethodBodies != false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0099, code lost:
    
        r1 = r5.astStack;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00a1, code lost:
    
        if ((r1[r0 + 1] instanceof org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall) == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00a3, code lost:
    
        r7 = r7 - 1;
        r3 = new org.eclipse.jdt.internal.compiler.ast.Statement[r7];
        r6.statements = r3;
        java.lang.System.arraycopy(r1, r0 + 2, r3, 0, r7);
        r6.constructorCall = (org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall) r5.astStack[r5.astPtr + 1];
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00b9, code lost:
    
        r2 = new org.eclipse.jdt.internal.compiler.ast.Statement[r7];
        r6.statements = r2;
        java.lang.System.arraycopy(r1, r0 + 1, r2, 0, r7);
        r6.constructorCall = org.eclipse.jdt.internal.compiler.ast.SuperReference.implicitSuperConstructorCall();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00e4, code lost:
    
        r7 = r6.constructorCall;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00e6, code lost:
    
        if (r7 == null) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ea, code lost:
    
        if (r7.sourceEnd != 0) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ec, code lost:
    
        r7.sourceEnd = r6.sourceEnd;
        r7.sourceStart = r6.sourceStart;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00f4, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00cc, code lost:
    
        if (r5.options.ignoreMethodBodies != false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00ce, code lost:
    
        r6.constructorCall = org.eclipse.jdt.internal.compiler.ast.SuperReference.implicitSuperConstructorCall();
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00dc, code lost:
    
        if (containsComment(r6.bodyStart, r6.bodyEnd) != false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00de, code lost:
    
        r6.bits |= 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x005c, code lost:
    
        if (r5.options.performStatementsRecovery == false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void parse(ConstructorDeclaration constructorDeclaration, CompilationUnitDeclaration compilationUnitDeclaration, boolean z10) {
        boolean z11 = this.methodRecoveryActivated;
        if (this.options.performMethodsFullRecovery) {
            this.methodRecoveryActivated = true;
            this.ignoreNextOpeningBrace = true;
        }
        initialize();
        goForBlockStatementsopt();
        if (z10) {
            this.scanner.recordLineSeparator = true;
        }
        int[] iArr = this.nestedMethod;
        int i10 = this.nestedType;
        iArr[i10] = iArr[i10] + 1;
        pushOnRealBlockStack(0);
        this.referenceContext = constructorDeclaration;
        this.compilationUnit = compilationUnitDeclaration;
        this.scanner.resetTo(constructorDeclaration.bodyStart, constructorDeclaration.bodyEnd);
        try {
            try {
                parse();
            } catch (AbortCompilation unused) {
                this.lastAct = 16966;
                int[] iArr2 = this.nestedMethod;
                int i11 = this.nestedType;
                iArr2[i11] = iArr2[i11] - 1;
            }
        } finally {
            int[] iArr3 = this.nestedMethod;
            int i12 = this.nestedType;
            iArr3[i12] = iArr3[i12] - 1;
            if (this.options.performStatementsRecovery) {
                this.methodRecoveryActivated = z11;
            }
        }
    }

    public void parse(FieldDeclaration fieldDeclaration, TypeDeclaration typeDeclaration, CompilationUnitDeclaration compilationUnitDeclaration, char[] cArr) {
        initialize();
        goForExpression(true);
        int[] iArr = this.nestedMethod;
        int i10 = this.nestedType;
        iArr[i10] = iArr[i10] + 1;
        this.referenceContext = typeDeclaration;
        this.compilationUnit = compilationUnitDeclaration;
        this.scanner.setSource(cArr);
        this.scanner.resetTo(0, cArr.length - 1);
        try {
            parse();
        } catch (AbortCompilation unused) {
            this.lastAct = 16966;
        } finally {
            int[] iArr2 = this.nestedMethod;
            int i11 = this.nestedType;
            iArr2[i11] = iArr2[i11] - 1;
        }
        if (this.lastAct == 16966) {
            fieldDeclaration.bits |= 524288;
            return;
        }
        fieldDeclaration.initialization = this.expressionStack[this.expressionPtr];
        if ((typeDeclaration.bits & 2) != 0) {
            fieldDeclaration.bits |= 2;
        }
    }

    public CompilationUnitDeclaration parse(ICompilationUnit iCompilationUnit, CompilationResult compilationResult) {
        return parse(iCompilationUnit, compilationResult, -1, -1);
    }

    public CompilationUnitDeclaration parse(ICompilationUnit iCompilationUnit, CompilationResult compilationResult, int i10, int i11) {
        char[] cArr;
        try {
            initialize(true);
            goForCompilationUnit();
            CompilationUnitDeclaration compilationUnitDeclaration = new CompilationUnitDeclaration(this.problemReporter, compilationResult, 0);
            this.compilationUnit = compilationUnitDeclaration;
            this.referenceContext = compilationUnitDeclaration;
            try {
                ReadManager readManager = this.readManager;
                cArr = readManager != null ? readManager.getContents(iCompilationUnit) : iCompilationUnit.getContents();
            } catch (AbortCompilationUnit e10) {
                problemReporter().cannotReadSource(this.compilationUnit, e10, this.options.verbose);
                cArr = CharOperation.NO_CHAR;
            }
            this.scanner.setSource(cArr);
            CompilationUnitDeclaration compilationUnitDeclaration2 = this.compilationUnit;
            Scanner scanner = this.scanner;
            compilationUnitDeclaration2.sourceEnd = scanner.source.length - 1;
            if (i11 != -1) {
                scanner.resetTo(i10, i11);
            }
            JavadocParser javadocParser = this.javadocParser;
            if (javadocParser != null && javadocParser.checkDocComment) {
                javadocParser.scanner.setSource(cArr);
                if (i11 != -1) {
                    this.javadocParser.scanner.resetTo(i10, i11);
                }
            }
            parse();
            CompilationUnitDeclaration compilationUnitDeclaration3 = this.compilationUnit;
            this.compilationUnit = null;
            if (!this.diet) {
                compilationUnitDeclaration3.bits |= 16;
            }
            return compilationUnitDeclaration3;
        } catch (Throwable th2) {
            CompilationUnitDeclaration compilationUnitDeclaration4 = this.compilationUnit;
            this.compilationUnit = null;
            if (!this.diet) {
                compilationUnitDeclaration4.bits |= 16;
            }
            throw th2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0056, code lost:
    
        checkNonNLSAfterBodyEnd(r7.declarationSourceEnd);
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x005d, code lost:
    
        if (r6.lastAct != 16966) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x005f, code lost:
    
        r7.bits |= 524288;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0066, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0067, code lost:
    
        r9 = r7.block;
        r0 = r6.realBlockStack;
        r3 = r6.realBlockPtr;
        r6.realBlockPtr = r3 - 1;
        r9.explicitDeclarations = r0[r3];
        r0 = r6.astLengthPtr;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0078, code lost:
    
        if (r0 <= (-1)) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x007a, code lost:
    
        r3 = r6.astLengthStack;
        r6.astLengthPtr = r0 - 1;
        r0 = r3[r0];
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0082, code lost:
    
        if (r0 <= 0) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0084, code lost:
    
        r3 = r6.astStack;
        r4 = r6.astPtr - r0;
        r6.astPtr = r4;
        r2 = new org.eclipse.jdt.internal.compiler.ast.Statement[r0];
        r9.statements = r2;
        java.lang.System.arraycopy(r3, r4 + 1, r2, 0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00aa, code lost:
    
        if ((r8.bits & 2) == 0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00ac, code lost:
    
        r7.bits |= 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00b2, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x009c, code lost:
    
        if (containsComment(r9.sourceStart, r9.sourceEnd) != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x009e, code lost:
    
        r7.block.bits |= 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0053, code lost:
    
        if (r6.options.performStatementsRecovery == false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void parse(Initializer initializer, TypeDeclaration typeDeclaration, CompilationUnitDeclaration compilationUnitDeclaration) {
        boolean z10 = this.methodRecoveryActivated;
        if (this.options.performMethodsFullRecovery) {
            this.methodRecoveryActivated = true;
        }
        initialize();
        goForBlockStatementsopt();
        int[] iArr = this.nestedMethod;
        int i10 = this.nestedType;
        iArr[i10] = iArr[i10] + 1;
        pushOnRealBlockStack(0);
        this.referenceContext = typeDeclaration;
        this.compilationUnit = compilationUnitDeclaration;
        this.scanner.resetTo(initializer.bodyStart, initializer.bodyEnd);
        try {
            try {
                parse();
            } catch (AbortCompilation unused) {
                this.lastAct = 16966;
                int[] iArr2 = this.nestedMethod;
                int i11 = this.nestedType;
                iArr2[i11] = iArr2[i11] - 1;
            }
        } finally {
            int[] iArr3 = this.nestedMethod;
            int i12 = this.nestedType;
            iArr3[i12] = iArr3[i12] - 1;
            if (this.options.performStatementsRecovery) {
                this.methodRecoveryActivated = z10;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0072, code lost:
    
        checkNonNLSAfterBodyEnd(r7.declarationSourceEnd);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0079, code lost:
    
        if (r6.lastAct != 16966) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x007b, code lost:
    
        r7.bits |= 524288;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0082, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0083, code lost:
    
        r8 = r6.realBlockStack;
        r0 = r6.realBlockPtr;
        r6.realBlockPtr = r0 - 1;
        r7.explicitDeclarations = r8[r0];
        r8 = r6.astLengthPtr;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0092, code lost:
    
        if (r8 <= (-1)) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0094, code lost:
    
        r0 = r6.astLengthStack;
        r6.astLengthPtr = r8 - 1;
        r8 = r0[r8];
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x009c, code lost:
    
        if (r8 == 0) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a2, code lost:
    
        if (r6.options.ignoreMethodBodies == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a4, code lost:
    
        r6.astPtr -= r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00aa, code lost:
    
        r0 = r6.astStack;
        r3 = r6.astPtr - r8;
        r6.astPtr = r3;
        r2 = new org.eclipse.jdt.internal.compiler.ast.Statement[r8];
        r7.statements = r2;
        java.lang.System.arraycopy(r0, r3 + 1, r2, 0, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00c2, code lost:
    
        if (containsComment(r7.bodyStart, r7.bodyEnd) != false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00c4, code lost:
    
        r7.bits |= 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00ca, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x006f, code lost:
    
        if (r6.options.performStatementsRecovery == false) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void parse(MethodDeclaration methodDeclaration, CompilationUnitDeclaration compilationUnitDeclaration) {
        if (methodDeclaration.isAbstract() || methodDeclaration.isNative() || (methodDeclaration.modifiers & 16777216) != 0) {
            return;
        }
        boolean z10 = this.methodRecoveryActivated;
        if (this.options.performMethodsFullRecovery) {
            this.ignoreNextOpeningBrace = true;
            this.methodRecoveryActivated = true;
            this.rParenPos = methodDeclaration.sourceEnd;
        }
        initialize();
        goForBlockStatementsopt();
        int[] iArr = this.nestedMethod;
        int i10 = this.nestedType;
        iArr[i10] = iArr[i10] + 1;
        pushOnRealBlockStack(0);
        this.referenceContext = methodDeclaration;
        this.compilationUnit = compilationUnitDeclaration;
        this.scanner.resetTo(methodDeclaration.bodyStart, methodDeclaration.bodyEnd);
        try {
            try {
                parse();
            } catch (AbortCompilation unused) {
                this.lastAct = 16966;
                int[] iArr2 = this.nestedMethod;
                int i11 = this.nestedType;
                iArr2[i11] = iArr2[i11] - 1;
            }
        } finally {
            int[] iArr3 = this.nestedMethod;
            int i12 = this.nestedType;
            iArr3[i12] = iArr3[i12] - 1;
            if (this.options.performStatementsRecovery) {
                this.methodRecoveryActivated = z10;
            }
        }
    }
}
