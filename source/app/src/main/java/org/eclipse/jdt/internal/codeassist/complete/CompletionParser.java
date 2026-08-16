package org.eclipse.jdt.internal.codeassist.complete;

import java.util.HashSet;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.codeassist.impl.AssistParser;
import org.eclipse.jdt.internal.codeassist.impl.Keywords;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.AND_AND_Expression;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AbstractVariableDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.ArrayAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.ArrayInitializer;
import org.eclipse.jdt.internal.compiler.ast.ArrayReference;
import org.eclipse.jdt.internal.compiler.ast.AssertStatement;
import org.eclipse.jdt.internal.compiler.ast.Assignment;
import org.eclipse.jdt.internal.compiler.ast.BinaryExpression;
import org.eclipse.jdt.internal.compiler.ast.Block;
import org.eclipse.jdt.internal.compiler.ast.CaseStatement;
import org.eclipse.jdt.internal.compiler.ast.CastExpression;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.CompoundAssignment;
import org.eclipse.jdt.internal.compiler.ast.ConditionalExpression;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.EmptyStatement;
import org.eclipse.jdt.internal.compiler.ast.EqualExpression;
import org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall;
import org.eclipse.jdt.internal.compiler.ast.ExportsStatement;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ForStatement;
import org.eclipse.jdt.internal.compiler.ast.IfStatement;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.InstanceOfExpression;
import org.eclipse.jdt.internal.compiler.ast.IntLiteral;
import org.eclipse.jdt.internal.compiler.ast.Javadoc;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ModuleDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ModuleReference;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.NormalAnnotation;
import org.eclipse.jdt.internal.compiler.ast.OR_OR_Expression;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.PrefixExpression;
import org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.ReferenceExpression;
import org.eclipse.jdt.internal.compiler.ast.ReturnStatement;
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
import org.eclipse.jdt.internal.compiler.ast.WhileStatement;
import org.eclipse.jdt.internal.compiler.ast.Wildcard;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.parser.JavadocParser;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.parser.RecoveredAnnotation;
import org.eclipse.jdt.internal.compiler.parser.RecoveredBlock;
import org.eclipse.jdt.internal.compiler.parser.RecoveredElement;
import org.eclipse.jdt.internal.compiler.parser.RecoveredField;
import org.eclipse.jdt.internal.compiler.parser.RecoveredInitializer;
import org.eclipse.jdt.internal.compiler.parser.RecoveredLocalVariable;
import org.eclipse.jdt.internal.compiler.parser.RecoveredMethod;
import org.eclipse.jdt.internal.compiler.parser.RecoveredModule;
import org.eclipse.jdt.internal.compiler.parser.RecoveredPackageVisibilityStatement;
import org.eclipse.jdt.internal.compiler.parser.RecoveredProvidesStatement;
import org.eclipse.jdt.internal.compiler.parser.RecoveredStatement;
import org.eclipse.jdt.internal.compiler.parser.RecoveredType;
import org.eclipse.jdt.internal.compiler.parser.RecoveredUnit;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObjectToInt;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import w2.C15883c;

public class CompletionParser extends AssistParser {
    static final int ALLOCATION = -4;
    static final int ANNOTATION_NAME_COMPLETION = 4;
    static final int CATCH = 3;
    static final int COLON = 2;
    protected static final int COMPLETION_OR_ASSIST_PARSER = 1536;
    protected static final int COMPLETION_PARSER = 1024;
    static final int DEFAULT = 1;
    static final int DO = 7;
    static final int EXPLICIT_RECEIVER = 0;
    static final int FOR = 6;
    static final int IF = 1;
    static final int INSIDE_NAME = 1;
    protected static final int K_AFTER_NAME_IN_PROVIDES_STATEMENT = 1073;
    protected static final int K_AFTER_PACKAGE_IN_PACKAGE_VISIBILITY_STATEMENT = 1072;
    protected static final int K_AFTER_WITH_IN_PROVIDES_STATEMENT = 1074;
    protected static final int K_ARRAY_CREATION = 1038;
    protected static final int K_ARRAY_INITIALIZER = 1037;
    protected static final int K_ASSISGNMENT_OPERATOR = 1041;
    protected static final int K_BETWEEN_ANNOTATION_NAME_AND_RPAREN = 1057;
    protected static final int K_BETWEEN_CASE_AND_COLON = 1050;
    protected static final int K_BETWEEN_CATCH_AND_RIGHT_PAREN = 1028;
    protected static final int K_BETWEEN_DEFAULT_AND_COLON = 1051;
    protected static final int K_BETWEEN_FOR_AND_RIGHT_PAREN = 1045;
    protected static final int K_BETWEEN_IF_AND_RIGHT_PAREN = 1043;
    protected static final int K_BETWEEN_INSTANCEOF_AND_RPAREN = 1065;
    protected static final int K_BETWEEN_LEFT_AND_RIGHT_BRACKET = 1052;
    protected static final int K_BETWEEN_NEW_AND_LEFT_BRACKET = 1032;
    protected static final int K_BETWEEN_SWITCH_AND_RIGHT_PAREN = 1046;
    protected static final int K_BETWEEN_SYNCHRONIZED_AND_RIGHT_PAREN = 1047;
    protected static final int K_BETWEEN_WHILE_AND_RIGHT_PAREN = 1044;
    protected static final int K_BINARY_OPERATOR = 1040;
    protected static final int K_BLOCK_DELIMITER = 1025;
    protected static final int K_CAST_STATEMENT = 1035;
    protected static final int K_CONDITIONAL_OPERATOR = 1042;
    protected static final int K_CONTROL_STATEMENT_DELIMITER = 1062;
    protected static final int K_EXTENDS_KEYWORD = 1053;
    protected static final int K_INSIDE_ASSERT_EXCEPTION = 1063;
    protected static final int K_INSIDE_ASSERT_STATEMENT = 1048;
    protected static final int K_INSIDE_BREAK_STATEMENT = 1058;
    protected static final int K_INSIDE_CONTINUE_STATEMENT = 1059;
    protected static final int K_INSIDE_EXPORTS_STATEMENT = 1068;
    protected static final int K_INSIDE_FOR_CONDITIONAL = 1064;
    protected static final int K_INSIDE_IMPORT_STATEMENT = 1067;
    protected static final int K_INSIDE_OPENS_STATEMENT = 1075;
    protected static final int K_INSIDE_PROVIDES_STATEMENT = 1071;
    protected static final int K_INSIDE_REQUIRES_STATEMENT = 1069;
    protected static final int K_INSIDE_RETURN_STATEMENT = 1034;
    protected static final int K_INSIDE_THROW_STATEMENT = 1033;
    protected static final int K_INSIDE_USES_STATEMENT = 1070;
    protected static final int K_LABEL = 1060;
    protected static final int K_LOCAL_INITIALIZER_DELIMITER = 1036;
    protected static final int K_MEMBER_VALUE_ARRAY_INITIALIZER = 1061;
    protected static final int K_NEXT_TYPEREF_IS_CLASS = 1029;
    protected static final int K_NEXT_TYPEREF_IS_EXCEPTION = 1031;
    protected static final int K_NEXT_TYPEREF_IS_INTERFACE = 1030;
    protected static final int K_PARAMETERIZED_ALLOCATION = 1055;
    protected static final int K_PARAMETERIZED_CAST = 1056;
    protected static final int K_PARAMETERIZED_METHOD_INVOCATION = 1054;
    protected static final int K_SELECTOR_INVOCATION_TYPE = 1026;
    protected static final int K_SELECTOR_QUALIFIER = 1027;
    protected static final int K_SWITCH_LABEL = 1049;
    protected static final int K_UNARY_OPERATOR = 1039;
    static final int LPAREN_CONSUMED = 2;
    static final int LPAREN_NOT_CONSUMED = 1;
    protected static final int LabelStackIncrement = 10;
    static final int NAME_RECEIVER = -3;
    static final int NEXTTOKEN = 1;
    static final int NO = 0;
    static final int NO_RECEIVER = -1;
    static final int QUALIFIED_ALLOCATION = -5;
    static final int QUESTION = 1;
    static final int SUPER_RECEIVER = -2;
    static final int SWITCH = 5;
    static final int SYNCHRONIZED = 8;
    static final int TRY = 2;
    static final int WHILE = 4;
    static final int YES = 2;
    public ASTNode assistNodeParent;
    int canBeExplicitConstructor;
    private boolean consumedEnhancedFor;
    public int cursorLocation;
    public ASTNode enclosingNode;
    boolean hasUnusedModifiers;
    private boolean inReferenceExpression;
    int invocationType;
    boolean isAlreadyAttached;
    int labelPtr;
    char[][] labelStack;
    private IProgressMonitor monitor;
    CompletionOnAnnotationOfType pendingAnnotation;
    public int[] potentialVariableNameEnds;
    public int[] potentialVariableNameStarts;
    public char[][] potentialVariableNames;
    public int potentialVariableNamesPtr;
    int qualifier;
    public boolean record;
    public int recordFrom;
    public int recordTo;
    private int resumeOnSyntaxError;
    boolean shouldStackAssistNode;
    public boolean skipRecord;
    public HashtableOfObjectToInt sourceEnds;
    private boolean storeSourceEnds;
    public static final char[] FAKE_TYPE_NAME = {C15883c.f126249O};
    public static final char[] FAKE_METHOD_NAME = {C15883c.f126249O};
    public static final char[] FAKE_ARGUMENT_NAME = {C15883c.f126249O};
    public static final char[] VALUE = {'v', 'a', 'l', 'u', 'e'};

    public enum ModuleKeyword {
        FIRST_ALL,
        TO,
        PROVIDES_WITH,
        NOT_A_KEYWORD;

        public static ModuleKeyword[] valuesCustom() {
            ModuleKeyword[] valuesCustom = values();
            int length = valuesCustom.length;
            ModuleKeyword[] moduleKeywordArr = new ModuleKeyword[length];
            System.arraycopy(valuesCustom, 0, moduleKeywordArr, 0, length);
            return moduleKeywordArr;
        }
    }

    public static class SavedState {
        final ASTNode assistNodeParent;
        final int parserCursorLocation;
        final int scannerCursorLocation;

        public SavedState(int i10, int i11, ASTNode aSTNode) {
            this.parserCursorLocation = i10;
            this.scannerCursorLocation = i11;
            this.assistNodeParent = aSTNode;
        }
    }

    public CompletionParser(ProblemReporter problemReporter, boolean z10) {
        super(problemReporter);
        this.canBeExplicitConstructor = 0;
        this.labelStack = new char[10];
        this.labelPtr = -1;
        this.record = false;
        this.skipRecord = false;
        this.resumeOnSyntaxError = 0;
        this.reportSyntaxErrorIsRequired = false;
        this.javadocParser.checkDocComment = true;
        this.annotationRecoveryActivated = false;
        if (z10) {
            this.storeSourceEnds = true;
            this.sourceEnds = new HashtableOfObjectToInt();
        }
    }

    private void addPotentialName(char[] cArr, int i10, int i11) {
        char[][] cArr2 = this.potentialVariableNames;
        int length = cArr2.length;
        if (this.potentialVariableNamesPtr >= length - 1) {
            int i12 = length * 2;
            char[][] cArr3 = new char[i12];
            this.potentialVariableNames = cArr3;
            System.arraycopy(cArr2, 0, cArr3, 0, length);
            int[] iArr = this.potentialVariableNameStarts;
            int[] iArr2 = new int[i12];
            this.potentialVariableNameStarts = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, length);
            int[] iArr3 = this.potentialVariableNameEnds;
            int[] iArr4 = new int[i12];
            this.potentialVariableNameEnds = iArr4;
            System.arraycopy(iArr3, 0, iArr4, 0, length);
        }
        char[][] cArr4 = this.potentialVariableNames;
        int i13 = this.potentialVariableNamesPtr + 1;
        this.potentialVariableNamesPtr = i13;
        cArr4[i13] = cArr;
        this.potentialVariableNameStarts[i13] = i10;
        this.potentialVariableNameEnds[i13] = i11;
    }

    private void buildMoreAnnotationCompletionContext(MemberValuePair memberValuePair) {
        NormalAnnotation normalAnnotation;
        if (this.identifierPtr < 0 || this.identifierLengthPtr < 0) {
            return;
        }
        TypeReference annotationType = getAnnotationType();
        int i10 = this.astPtr;
        int i11 = (i10 <= -1 || this.astStack[i10] != memberValuePair) ? 0 : 1;
        MemberValuePair[] memberValuePairArr = null;
        if (memberValuePair instanceof CompletionOnMemberValueName) {
            int i12 = this.astLengthPtr;
            if (i12 > -1) {
                int[] iArr = this.astLengthStack;
                this.astLengthPtr = i12 - 1;
                int i13 = iArr[i12];
                if (i13 > i11) {
                    ASTNode[] aSTNodeArr = this.astStack;
                    if (aSTNodeArr[i10] instanceof MemberValuePair) {
                        int i14 = i10 - i13;
                        this.astPtr = i14;
                        int i15 = i13 - i11;
                        memberValuePairArr = new MemberValuePair[i15];
                        System.arraycopy(aSTNodeArr, i14 + 1, memberValuePairArr, 0, i15);
                    }
                }
            }
            int[] iArr2 = this.intStack;
            int i16 = this.intPtr;
            this.intPtr = i16 - 1;
            normalAnnotation = new CompletionOnAnnotationMemberValuePair(annotationType, iArr2[i16], memberValuePairArr, memberValuePair);
            this.assistNode = memberValuePair;
            this.assistNodeParent = normalAnnotation;
            int i17 = memberValuePair.sourceEnd;
            if (i17 >= this.lastCheckPoint) {
                this.lastCheckPoint = i17 + 1;
            }
        } else {
            int i18 = this.astLengthPtr;
            if (i18 > -1) {
                int[] iArr3 = this.astLengthStack;
                this.astLengthPtr = i18 - 1;
                int i19 = iArr3[i18];
                if (i19 > i11) {
                    ASTNode[] aSTNodeArr2 = this.astStack;
                    if (aSTNodeArr2[i10] instanceof MemberValuePair) {
                        int i20 = i10 - i19;
                        this.astPtr = i20;
                        int i21 = i19 - i11;
                        MemberValuePair[] memberValuePairArr2 = new MemberValuePair[i21 + 1];
                        System.arraycopy(aSTNodeArr2, i20 + 1, memberValuePairArr2, 0, i21);
                        memberValuePairArr = memberValuePairArr2;
                    }
                    if (memberValuePairArr != null) {
                        memberValuePairArr[i19 - i11] = memberValuePair;
                    } else {
                        memberValuePairArr = new MemberValuePair[]{memberValuePair};
                    }
                    int[] iArr4 = this.intStack;
                    int i22 = this.intPtr;
                    this.intPtr = i22 - 1;
                    normalAnnotation = new NormalAnnotation(annotationType, iArr4[i22]);
                    normalAnnotation.memberValuePairs = memberValuePairArr;
                    this.assistNodeParent = normalAnnotation;
                }
            }
            memberValuePairArr = new MemberValuePair[]{memberValuePair};
            int[] iArr42 = this.intStack;
            int i222 = this.intPtr;
            this.intPtr = i222 - 1;
            normalAnnotation = new NormalAnnotation(annotationType, iArr42[i222]);
            normalAnnotation.memberValuePairs = memberValuePairArr;
            this.assistNodeParent = normalAnnotation;
        }
        CompletionOnAnnotationOfType completionOnAnnotationOfType = new CompletionOnAnnotationOfType(FAKE_TYPE_NAME, this.compilationUnit.compilationResult(), normalAnnotation);
        this.currentElement.add((TypeDeclaration) completionOnAnnotationOfType, 0);
        this.pendingAnnotation = completionOnAnnotationOfType;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:13:0x002b. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:14:0x002e. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:100:0x047e  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x046f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void buildMoreCompletionContext(Expression expression) {
        Expression expression2;
        ASTNode aSTNode;
        Expression[] expressionArr;
        int i10;
        int i11;
        int i12;
        int i13;
        Expression expression3;
        Expression expression4;
        int i14 = topKnownElementKind(1536);
        if (i14 != 0) {
            int i15 = topKnownElementInfo(1536);
            if (i14 == K_SELECTOR_QUALIFIER) {
                int i16 = topKnownElementInfo(1536, 2);
                if (i16 == -1 || i16 == -2) {
                    ExplicitConstructorCall explicitConstructorCall = new ExplicitConstructorCall(i16 == -1 ? 3 : 2);
                    explicitConstructorCall.arguments = new Expression[]{expression};
                    explicitConstructorCall.sourceStart = expression.sourceStart;
                    explicitConstructorCall.sourceEnd = expression.sourceEnd;
                    this.assistNodeParent = explicitConstructorCall;
                } else {
                    int i17 = topKnownElementInfo(1536, 1);
                    int[] iArr = this.expressionLengthStack;
                    int i18 = this.expressionLengthPtr;
                    int i19 = iArr[i18];
                    int i20 = this.expressionPtr;
                    if (i20 > 0 && i18 > 0 && i19 == 1) {
                        int i21 = (int) (this.identifierPositionStack[i16] >>> 32);
                        Expression[] expressionArr2 = this.expressionStack;
                        if (expressionArr2[i20 - 1] != null && expressionArr2[i20 - 1].sourceStart > i21) {
                            i19 += iArr[i18 - 1];
                        }
                    }
                    if (i19 != 0) {
                        expressionArr = new Expression[i19];
                        int i22 = i20 - i19;
                        this.expressionPtr = i22;
                        int i23 = i19 - 1;
                        System.arraycopy(this.expressionStack, i22 + 1, expressionArr, 0, i23);
                        expressionArr[i23] = expression;
                    } else {
                        expressionArr = null;
                    }
                    if (i17 != -4 && i17 != -5) {
                        MessageSend messageSend = new MessageSend();
                        messageSend.selector = this.identifierStack[i16];
                        messageSend.arguments = expressionArr;
                        if (i17 == -3) {
                            while (true) {
                                i10 = this.identifierLengthPtr;
                                if (i10 < 0 || this.identifierLengthStack[i10] >= 0) {
                                    break;
                                } else {
                                    this.identifierLengthPtr = i10 - 1;
                                }
                            }
                            this.identifierPtr--;
                            if (this.genericsPtr <= -1 || (i11 = this.genericsLengthPtr) <= -1 || this.genericsLengthStack[i11] <= 0) {
                                int[] iArr2 = this.identifierLengthStack;
                                iArr2[i10] = iArr2[i10] - 1;
                                int[] iArr3 = this.typeAnnotationLengthStack;
                                int i24 = this.typeAnnotationLengthPtr;
                                this.typeAnnotationLengthPtr = i24 - 1;
                                int i25 = iArr3[i24];
                                if (i25 != 0) {
                                    Annotation[] annotationArr = this.typeAnnotationStack;
                                    int i26 = this.typeAnnotationPtr - i25;
                                    this.typeAnnotationPtr = i26;
                                    Annotation[] annotationArr2 = new Annotation[i25];
                                    System.arraycopy(annotationArr, i26 + 1, annotationArr2, 0, i25);
                                    problemReporter().misplacedTypeAnnotations(annotationArr2[0], annotationArr2[i25 - 1]);
                                }
                            } else {
                                this.identifierLengthPtr = i10 - 1;
                            }
                            int i27 = this.identifierLengthStack[this.identifierLengthPtr];
                            int i28 = this.identifierPtr;
                            if (i28 > -1 && i27 > 0 && i28 + 1 >= i27) {
                                messageSend.receiver = getUnspecifiedReference();
                            }
                            this.assistNodeParent = r8;
                        } else if (i17 == -2) {
                            messageSend.receiver = new SuperReference(0, 0);
                        } else if (i17 == -1) {
                            messageSend.receiver = ThisReference.implicitThis();
                        } else if (i17 != 0) {
                            messageSend.receiver = ThisReference.implicitThis();
                        } else {
                            messageSend.receiver = this.expressionStack[i15];
                        }
                        r8 = messageSend;
                        this.assistNodeParent = r8;
                    } else if (i17 == -4) {
                        AllocationExpression allocationExpression = new AllocationExpression();
                        allocationExpression.arguments = expressionArr;
                        pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[this.identifierLengthPtr]);
                        pushOnGenericsLengthStack(0);
                        allocationExpression.type = getTypeReference(0);
                        this.assistNodeParent = allocationExpression;
                    } else {
                        QualifiedAllocationExpression qualifiedAllocationExpression = new QualifiedAllocationExpression();
                        qualifiedAllocationExpression.enclosingInstance = this.expressionStack[i15];
                        qualifiedAllocationExpression.arguments = expressionArr;
                        pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[this.identifierLengthPtr]);
                        pushOnGenericsLengthStack(0);
                        qualifiedAllocationExpression.type = getTypeReference(0);
                        this.assistNodeParent = qualifiedAllocationExpression;
                    }
                }
            } else if (i14 != K_BETWEEN_CASE_AND_COLON) {
                if (i14 == 1052) {
                    this.assistNodeParent = (this.identifierPtr >= 0 || (i13 = this.expressionPtr) <= 0 || this.expressionStack[i13] != expression) ? new ArrayReference(getUnspecifiedReferenceOptimized(), expression) : new ArrayReference(this.expressionStack[this.expressionPtr - 1], expression);
                } else if (i14 != K_INSIDE_ASSERT_EXCEPTION) {
                    if (i14 != 1064) {
                        switch (i14) {
                            case K_INSIDE_THROW_STATEMENT:
                                if (i15 == this.bracketDepth) {
                                    this.assistNodeParent = new ThrowStatement(expression, expression.sourceStart, expression.sourceEnd);
                                    break;
                                }
                                break;
                            case K_INSIDE_RETURN_STATEMENT:
                                if (i15 == this.bracketDepth) {
                                    this.assistNodeParent = new ReturnStatement(expression, expression.sourceStart, expression.sourceEnd);
                                    break;
                                }
                                break;
                            case K_CAST_STATEMENT:
                                int i29 = this.expressionPtr;
                                if (i29 > 0) {
                                    Expression expression5 = this.expressionStack[i29 - 1];
                                    if (expression5 instanceof TypeReference) {
                                        CastExpression castExpression = new CastExpression(expression, (TypeReference) expression5);
                                        castExpression.sourceStart = expression5.sourceStart;
                                        castExpression.sourceEnd = expression.sourceEnd;
                                        this.assistNodeParent = castExpression;
                                        break;
                                    }
                                }
                                break;
                            default:
                                switch (i14) {
                                    case K_ARRAY_INITIALIZER:
                                        ArrayInitializer arrayInitializer = new ArrayInitializer();
                                        arrayInitializer.expressions = new Expression[]{expression};
                                        int i30 = this.expressionPtr;
                                        int[] iArr4 = this.expressionLengthStack;
                                        int i31 = this.expressionLengthPtr;
                                        int i32 = i31 - 1;
                                        this.expressionLengthPtr = i32;
                                        int i33 = i30 - iArr4[i31];
                                        this.expressionPtr = i33;
                                        if (i32 > -1 && i33 > -1 && (expression3 = this.expressionStack[i33]) != null && expression3.sourceStart > i15) {
                                            this.expressionLengthPtr = i31 - 2;
                                        }
                                        if (topKnownElementKind(1536, 1) != K_ARRAY_CREATION) {
                                            RecoveredElement recoveredElement = this.currentElement;
                                            if ((recoveredElement instanceof RecoveredField) && !(recoveredElement instanceof RecoveredInitializer)) {
                                                expression2 = arrayInitializer;
                                                if (((RecoveredField) recoveredElement).fieldDeclaration.type.dimensions() == 0) {
                                                    Block block = new Block(0);
                                                    block.sourceStart = i15;
                                                    this.currentElement = this.currentElement.add(block, 1);
                                                    break;
                                                }
                                            } else {
                                                expression2 = arrayInitializer;
                                                if (recoveredElement instanceof RecoveredLocalVariable) {
                                                    expression2 = arrayInitializer;
                                                    if (((RecoveredLocalVariable) recoveredElement).localDeclaration.type.dimensions() == 0) {
                                                        Block block2 = new Block(0);
                                                        block2.sourceStart = i15;
                                                        this.currentElement = this.currentElement.add(block2, 1);
                                                        break;
                                                    }
                                                }
                                            }
                                            aSTNode = this.assistNodeParent;
                                            if (aSTNode == null) {
                                                this.currentElement = this.currentElement.add(buildMoreCompletionEnclosingContext((Statement) aSTNode), 0);
                                                return;
                                            }
                                            RecoveredElement recoveredElement2 = this.currentElement;
                                            if ((recoveredElement2 instanceof RecoveredField) && !(recoveredElement2 instanceof RecoveredInitializer) && ((RecoveredField) recoveredElement2).fieldDeclaration.initialization == null) {
                                                if (lastIndexOfElement(519) <= lastIndexOfElement(516)) {
                                                    this.assistNodeParent = ((RecoveredField) this.currentElement).fieldDeclaration;
                                                }
                                                this.currentElement = this.currentElement.add(buildMoreCompletionEnclosingContext(expression2), 0);
                                                return;
                                            } else if (!(recoveredElement2 instanceof RecoveredLocalVariable) || ((RecoveredLocalVariable) recoveredElement2).localDeclaration.initialization != null) {
                                                this.currentElement = recoveredElement2.add(buildMoreCompletionEnclosingContext(expression), 0);
                                                return;
                                            } else {
                                                this.assistNodeParent = ((RecoveredLocalVariable) recoveredElement2).localDeclaration;
                                                this.currentElement = recoveredElement2.add(buildMoreCompletionEnclosingContext(expression2), 0);
                                                return;
                                            }
                                        }
                                        ArrayAllocationExpression arrayAllocationExpression = new ArrayAllocationExpression();
                                        pushOnGenericsLengthStack(0);
                                        pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[this.identifierLengthPtr]);
                                        TypeReference typeReference = getTypeReference(0);
                                        arrayAllocationExpression.type = typeReference;
                                        typeReference.bits |= 1073741824;
                                        arrayAllocationExpression.dimensions = new Expression[this.expressionLengthStack[this.expressionLengthPtr]];
                                        arrayAllocationExpression.initializer = arrayInitializer;
                                        this.assistNodeParent = arrayAllocationExpression;
                                        break;
                                        break;
                                    case K_ARRAY_CREATION:
                                        ArrayAllocationExpression arrayAllocationExpression2 = new ArrayAllocationExpression();
                                        arrayAllocationExpression2.type = getTypeReference(0);
                                        arrayAllocationExpression2.dimensions = new Expression[]{expression};
                                        this.assistNodeParent = arrayAllocationExpression2;
                                        break;
                                    case K_UNARY_OPERATOR:
                                        if (this.expressionPtr > -1) {
                                            this.assistNodeParent = i15 != 32 ? i15 != 33 ? new UnaryExpression(expression, i15) : new PrefixExpression(expression, IntLiteral.One, 13, expression.sourceStart) : new PrefixExpression(expression, IntLiteral.One, 14, expression.sourceStart);
                                            break;
                                        }
                                        break;
                                    case 1040:
                                        int i34 = this.expressionPtr;
                                        if (i34 > -1) {
                                            if (i34 == 0) {
                                                expression4 = this.identifierPtr > -1 ? getUnspecifiedReferenceOptimized() : null;
                                            } else {
                                                expression4 = this.expressionStack[i34 - 1];
                                                int i35 = this.identifierPtr;
                                                if (i35 > -1 && expression4.sourceStart < ((int) (this.identifierPositionStack[i35] >>> 32))) {
                                                    expression4 = getUnspecifiedReferenceOptimized();
                                                }
                                            }
                                            r8 = expression4 != null ? i15 != 0 ? i15 != 1 ? (i15 == 18 || i15 == 29) ? new EqualExpression(expression4, expression, i15) : new BinaryExpression(expression4, expression, i15) : new OR_OR_Expression(expression4, expression, i15) : new AND_AND_Expression(expression4, expression, i15) : null;
                                            if (r8 != null) {
                                                this.assistNodeParent = r8;
                                                break;
                                            }
                                        }
                                        break;
                                    case K_ASSISGNMENT_OPERATOR:
                                        int i36 = this.expressionPtr;
                                        if (i36 > 0 && this.expressionStack[i36 - 1] != null) {
                                            this.assistNodeParent = i15 == 30 ? new Assignment(this.expressionStack[this.expressionPtr - 1], expression, expression.sourceEnd) : new CompoundAssignment(this.expressionStack[this.expressionPtr - 1], expression, i15, expression.sourceEnd);
                                            break;
                                        }
                                        break;
                                    case K_CONDITIONAL_OPERATOR:
                                        if (i15 == 1) {
                                            int i37 = this.expressionPtr;
                                            if (i37 > 0) {
                                                int i38 = i37 - 1;
                                                this.expressionPtr = i38;
                                                this.expressionLengthPtr--;
                                                Expression[] expressionArr3 = this.expressionStack;
                                                expressionArr3[i38] = expressionArr3[i37];
                                                popElement(K_CONDITIONAL_OPERATOR);
                                                buildMoreCompletionContext(expression);
                                                return;
                                            }
                                        } else {
                                            int i39 = this.expressionPtr;
                                            if (i39 > 1) {
                                                int i40 = i39 - 2;
                                                this.expressionPtr = i40;
                                                this.expressionLengthPtr -= 2;
                                                Expression[] expressionArr4 = this.expressionStack;
                                                expressionArr4[i40] = expressionArr4[i39];
                                                popElement(K_CONDITIONAL_OPERATOR);
                                                buildMoreCompletionContext(expression);
                                                return;
                                            }
                                        }
                                        break;
                                    case K_BETWEEN_IF_AND_RIGHT_PAREN:
                                        int i41 = expression.sourceEnd;
                                        this.assistNodeParent = new IfStatement(expression, new EmptyStatement(i41, i41), expression.sourceStart, expression.sourceEnd);
                                        break;
                                    case 1044:
                                        int i42 = expression.sourceEnd;
                                        this.assistNodeParent = new WhileStatement(expression, new EmptyStatement(i42, i42), expression.sourceStart, expression.sourceEnd);
                                        break;
                                    default:
                                        switch (i14) {
                                            case K_BETWEEN_SWITCH_AND_RIGHT_PAREN:
                                                SwitchStatement switchStatement = new SwitchStatement();
                                                switchStatement.expression = expression;
                                                switchStatement.statements = new Statement[0];
                                                this.assistNodeParent = switchStatement;
                                                break;
                                            case K_BETWEEN_SYNCHRONIZED_AND_RIGHT_PAREN:
                                                this.assistNodeParent = new SynchronizedStatement(expression, new Block(0), expression.sourceStart, expression.sourceEnd);
                                                break;
                                            case 1048:
                                                if (i15 == this.bracketDepth) {
                                                    this.assistNodeParent = new AssertStatement(expression, expression.sourceStart);
                                                    break;
                                                }
                                                break;
                                        }
                                }
                        }
                    } else {
                        int i43 = expression.sourceEnd;
                        this.assistNodeParent = new ForStatement(new Statement[0], expression, new Statement[0], new EmptyStatement(i43, i43), false, expression.sourceStart, expression.sourceEnd);
                    }
                } else if (i15 == this.bracketDepth) {
                    int i44 = expression.sourceStart;
                    this.assistNodeParent = new AssertStatement(expression, new TrueLiteral(i44, i44), expression.sourceStart);
                }
            } else if (this.expressionPtr > 0) {
                SwitchStatement switchStatement2 = new SwitchStatement();
                Expression expression6 = this.expressionStack[this.expressionPtr - 1];
                switchStatement2.expression = expression6;
                int i45 = this.astLengthPtr;
                if (i45 > -1 && (i12 = this.astPtr) > -1) {
                    int i46 = this.astLengthStack[i45];
                    ASTNode[] aSTNodeArr = this.astStack;
                    int i47 = (i12 - i46) + 1;
                    ASTNode aSTNode2 = aSTNodeArr[i47];
                    if (i46 != 0 && aSTNode2.sourceStart > expression6.sourceEnd) {
                        Statement[] statementArr = new Statement[i46 + 1];
                        switchStatement2.statements = statementArr;
                        System.arraycopy(aSTNodeArr, i47, statementArr, 0, i46);
                    }
                }
                CaseStatement caseStatement = new CaseStatement(expression, expression.sourceStart, expression.sourceEnd);
                Statement[] statementArr2 = switchStatement2.statements;
                if (statementArr2 == null) {
                    switchStatement2.statements = new Statement[]{caseStatement};
                } else {
                    statementArr2[statementArr2.length - 1] = caseStatement;
                }
                this.assistNodeParent = switchStatement2;
            }
        }
        expression2 = expression;
        aSTNode = this.assistNodeParent;
        if (aSTNode == null) {
        }
    }

    private Statement buildMoreCompletionEnclosingContext(Statement statement) {
        IfStatement ifStatement;
        Object obj;
        int lastIndexOfElement = lastIndexOfElement(1025);
        int lastIndexOfElement2 = lastIndexOfElement(K_CONTROL_STATEMENT_DELIMITER);
        int lastIndexOfElement3 = lastIndexOfElement(K_BETWEEN_INSTANCEOF_AND_RPAREN);
        if (lastIndexOfElement3 != -1 && lastIndexOfElement3 > lastIndexOfElement2) {
            lastIndexOfElement = lastIndexOfElement3;
        } else if (lastIndexOfElement2 != -1 && (lastIndexOfElement == -1 || lastIndexOfElement2 >= lastIndexOfElement)) {
            lastIndexOfElement = lastIndexOfElement2;
        }
        while (true) {
            ifStatement = null;
            if (lastIndexOfElement < 0) {
                break;
            }
            if (lastIndexOfElement == -1 || this.elementInfoStack[lastIndexOfElement] != 1 || (obj = this.elementObjectInfoStack[lastIndexOfElement]) == null) {
                lastIndexOfElement--;
            } else {
                Expression expression = (Expression) obj;
                RecoveredElement recoveredElement = this.currentElement;
                if ((recoveredElement instanceof RecoveredLocalVariable) && (recoveredElement.parent instanceof RecoveredBlock)) {
                    RecoveredLocalVariable recoveredLocalVariable = (RecoveredLocalVariable) recoveredElement;
                    if (recoveredLocalVariable.localDeclaration.initialization == null && (statement instanceof Expression) && ((Expression) statement).isTrulyExpression() && expression.sourceStart < recoveredLocalVariable.localDeclaration.sourceStart) {
                        this.currentElement.add(statement, 0);
                        statement = recoveredLocalVariable.updatedStatement(0, new HashSet());
                        RecoveredBlock recoveredBlock = (RecoveredBlock) recoveredLocalVariable.parent;
                        RecoveredStatement[] recoveredStatementArr = recoveredBlock.statements;
                        int i10 = recoveredBlock.statementCount - 1;
                        recoveredBlock.statementCount = i10;
                        recoveredStatementArr[i10] = null;
                        this.currentElement = recoveredBlock;
                    }
                }
                if (statement instanceof AND_AND_Expression) {
                    ASTNode aSTNode = this.assistNode;
                    if (aSTNode instanceof Statement) {
                        statement = (Statement) aSTNode;
                    }
                }
                ifStatement = new IfStatement(expression, statement, expression.sourceStart, statement.sourceEnd);
                lastIndexOfElement--;
            }
        }
        if (ifStatement == null) {
            return statement;
        }
        while (lastIndexOfElement >= 0) {
            if (this.elementInfoStack[lastIndexOfElement] == 1) {
                Object obj2 = this.elementObjectInfoStack[lastIndexOfElement];
                if (obj2 instanceof InstanceOfExpression) {
                    InstanceOfExpression instanceOfExpression = (InstanceOfExpression) obj2;
                    ifStatement = new IfStatement(instanceOfExpression, ifStatement, instanceOfExpression.sourceStart, ifStatement.sourceEnd);
                }
            }
            lastIndexOfElement--;
        }
        this.enclosingNode = ifStatement;
        return ifStatement;
    }

    private void buildMoreGenericsCompletionContext(ASTNode aSTNode, boolean z10) {
        AllocationExpression allocationExpression;
        int i10 = topKnownElementKind(1536);
        if (i10 != 0) {
            int i11 = topKnownElementInfo(1536);
            if (i10 != 1040) {
                return;
            }
            int i12 = topKnownElementKind(1536, 1);
            if (i12 != K_PARAMETERIZED_METHOD_INVOCATION) {
                if (i12 == K_PARAMETERIZED_ALLOCATION) {
                    int i13 = this.invocationType;
                    if (i13 == -4 || i13 == -5) {
                        this.currentElement = this.currentElement.add((TypeReference) aSTNode, 0);
                        return;
                    }
                    return;
                }
            } else if (topKnownElementInfo(1536, 1) == 0) {
                this.currentElement = this.currentElement.add((TypeReference) aSTNode, 0);
                return;
            }
            if (i11 == 4 && (aSTNode instanceof TypeReference)) {
                int i14 = this.identifierLengthPtr;
                if (i14 <= -1 || this.identifierLengthStack[i14] == 0) {
                    if (this.currentElement.enclosingMethod() == null || !this.currentElement.enclosingMethod().methodDeclaration.isConstructor()) {
                        return;
                    }
                    this.currentElement = this.currentElement.add((TypeReference) aSTNode, 0);
                    return;
                }
                if (z10) {
                    consumeTypeArguments();
                }
                TypeReference typeReference = getTypeReference(0);
                if (i12 == 1056) {
                    typeReference = computeQualifiedGenericsFromRightSide(typeReference, 0, null);
                }
                RecoveredElement recoveredElement = this.currentElement;
                if (recoveredElement instanceof RecoveredType) {
                    this.currentElement = recoveredElement.add((FieldDeclaration) new CompletionOnFieldType(typeReference, false), 0);
                    return;
                }
                if (i12 != 1032) {
                    this.currentElement = recoveredElement.add(typeReference, 0);
                    return;
                }
                int i15 = this.expressionPtr;
                if (i15 > -1 && (this.expressionStack[i15] instanceof AllocationExpression) && this.invocationType == -5) {
                    QualifiedAllocationExpression qualifiedAllocationExpression = new QualifiedAllocationExpression();
                    qualifiedAllocationExpression.type = typeReference;
                    qualifiedAllocationExpression.enclosingInstance = this.expressionStack[this.expressionPtr];
                    allocationExpression = qualifiedAllocationExpression;
                } else {
                    AllocationExpression allocationExpression2 = new AllocationExpression();
                    allocationExpression2.type = typeReference;
                    allocationExpression = allocationExpression2;
                }
                if (isInsideReturn()) {
                    ReturnStatement returnStatement = new ReturnStatement(allocationExpression, allocationExpression.sourceStart, allocationExpression.sourceEnd);
                    this.enclosingNode = returnStatement;
                    this.currentElement = this.currentElement.add(returnStatement, 0);
                    return;
                }
                RecoveredElement recoveredElement2 = this.currentElement;
                if (recoveredElement2 instanceof RecoveredLocalVariable) {
                    if (((RecoveredLocalVariable) recoveredElement2).localDeclaration.initialization == null) {
                        this.enclosingNode = ((RecoveredLocalVariable) recoveredElement2).localDeclaration;
                        this.currentElement = recoveredElement2.add(allocationExpression, 0);
                        return;
                    }
                    return;
                }
                if (!(recoveredElement2 instanceof RecoveredField)) {
                    this.currentElement = recoveredElement2.add(typeReference, 0);
                } else if (((RecoveredField) recoveredElement2).fieldDeclaration.initialization == null) {
                    this.enclosingNode = ((RecoveredField) recoveredElement2).fieldDeclaration;
                    this.currentElement = recoveredElement2.add(allocationExpression, 0);
                }
            }
        }
    }

    private void buildMoreTryStatementCompletionContext(TypeReference typeReference) {
        int i10;
        int i11;
        int i12 = this.astLengthPtr;
        if (i12 > 0 && (i11 = this.astPtr) > 2) {
            ASTNode[] aSTNodeArr = this.astStack;
            if ((aSTNodeArr[i11 - 1] instanceof Block) && (aSTNodeArr[i11 - 2] instanceof Argument)) {
                TryStatement tryStatement = new TryStatement();
                int i13 = this.astPtr - 1;
                int i14 = this.astLengthStack[this.astLengthPtr - 1];
                int i15 = i14 + 1;
                Block[] blockArr = new Block[i15];
                tryStatement.catchBlocks = blockArr;
                Argument[] argumentArr = new Argument[i15];
                tryStatement.catchArguments = argumentArr;
                if (i14 != 0) {
                    int i16 = i14;
                    while (true) {
                        int i17 = i16 - 1;
                        if (i16 <= 0) {
                            break;
                        }
                        ASTNode[] aSTNodeArr2 = this.astStack;
                        int i18 = i13 - 1;
                        Block block = (Block) aSTNodeArr2[i13];
                        blockArr[i17] = block;
                        block.statements = null;
                        i13 -= 2;
                        argumentArr[i17] = (Argument) aSTNodeArr2[i18];
                        i16 = i17;
                    }
                }
                blockArr[i14] = new Block(0);
                ASTNode aSTNode = this.astStack[this.astPtr];
                if (aSTNode instanceof UnionTypeReference) {
                    argumentArr[i14] = new Argument(FAKE_ARGUMENT_NAME, 0L, (UnionTypeReference) aSTNode, 0);
                } else {
                    argumentArr[i14] = new Argument(FAKE_ARGUMENT_NAME, 0L, typeReference, 0);
                }
                tryStatement.tryBlock = (Block) this.astStack[i13];
                this.assistNodeParent = tryStatement;
                this.currentElement.add(tryStatement, 0);
                return;
            }
        }
        if (i12 <= -1 || (i10 = this.astPtr) <= 0 || !(this.astStack[i10 - 1] instanceof Block)) {
            this.currentElement = this.currentElement.add(typeReference, 0);
            return;
        }
        TryStatement tryStatement2 = new TryStatement();
        int i19 = this.astPtr - 1;
        tryStatement2.catchBlocks = r5;
        Argument[] argumentArr2 = new Argument[1];
        tryStatement2.catchArguments = argumentArr2;
        Block[] blockArr2 = {new Block(0)};
        ASTNode aSTNode2 = this.astStack[this.astPtr];
        if (aSTNode2 instanceof UnionTypeReference) {
            argumentArr2[0] = new Argument(FAKE_ARGUMENT_NAME, 0L, (UnionTypeReference) aSTNode2, 0);
        } else {
            argumentArr2[0] = new Argument(FAKE_ARGUMENT_NAME, 0L, typeReference, 0);
        }
        tryStatement2.tryBlock = (Block) this.astStack[i19];
        this.assistNodeParent = tryStatement2;
        this.currentElement.add(tryStatement2, 0);
    }

    private TypeReference checkAndCreateModuleQualifiedAssistTypeReference(char[][] cArr, char[] cArr2, long[] jArr) {
        return isInUsesStatement() ? new CompletionOnUsesQualifiedTypeReference(cArr, cArr2, jArr) : isInProvidesStatement() ? isAfterWithClause() ? new CompletionOnProvidesImplementationsQualifiedTypeReference(cArr, cArr2, jArr) : new CompletionOnProvidesInterfacesQualifiedTypeReference(cArr, cArr2, jArr) : new CompletionOnQualifiedTypeReference(cArr, cArr2, jArr);
    }

    private TypeReference checkAndCreateModuleSingleAssistTypeReference(char[] cArr, long j10) {
        return isInUsesStatement() ? new CompletionOnUsesSingleTypeReference(cArr, j10) : isInProvidesStatement() ? isAfterWithClause() ? new CompletionOnProvidesImplementationsSingleTypeReference(cArr, j10) : new CompletionOnProvidesInterfacesSingleTypeReference(cArr, j10) : new CompletionOnSingleTypeReference(cArr, j10);
    }

    private boolean checkClassInstanceCreation() {
        TypeReference typeReference;
        if (topKnownElementKind(1536) != 1032) {
            return false;
        }
        if (this.identifierLengthStack[this.identifierLengthPtr] == this.genericsIdentifiersLengthStack[this.genericsIdentifiersLengthPtr] && this.genericsLengthStack[this.genericsLengthPtr] == 0) {
            if (this.invocationType == -4) {
                AllocationExpression allocationExpression = new AllocationExpression();
                if (topKnownElementKind(1536, 1) == K_INSIDE_THROW_STATEMENT && topKnownElementInfo(1536, 1) == this.bracketDepth) {
                    pushOnElementStack(K_NEXT_TYPEREF_IS_EXCEPTION);
                    typeReference = getTypeReference(0);
                    popElement(K_NEXT_TYPEREF_IS_EXCEPTION);
                } else {
                    typeReference = getTypeReference(0);
                }
                if (typeReference instanceof CompletionOnSingleTypeReference) {
                    ((CompletionOnSingleTypeReference) typeReference).isConstructorType = true;
                } else if (typeReference instanceof CompletionOnQualifiedTypeReference) {
                    ((CompletionOnQualifiedTypeReference) typeReference).isConstructorType = true;
                }
                allocationExpression.type = typeReference;
                allocationExpression.sourceStart = typeReference.sourceStart;
                allocationExpression.sourceEnd = typeReference.sourceEnd;
                pushOnExpressionStack(allocationExpression);
                this.isOrphanCompletionNode = false;
            } else {
                QualifiedAllocationExpression qualifiedAllocationExpression = new QualifiedAllocationExpression();
                pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[this.identifierLengthPtr]);
                pushOnGenericsLengthStack(0);
                if (topKnownElementKind(1536, 1) == K_INSIDE_THROW_STATEMENT && topKnownElementInfo(1536, 1) == this.bracketDepth) {
                    pushOnElementStack(K_NEXT_TYPEREF_IS_EXCEPTION);
                    typeReference = getTypeReference(0);
                    popElement(K_NEXT_TYPEREF_IS_EXCEPTION);
                } else {
                    typeReference = getTypeReference(0);
                }
                if (typeReference instanceof CompletionOnSingleTypeReference) {
                    ((CompletionOnSingleTypeReference) typeReference).isConstructorType = true;
                }
                qualifiedAllocationExpression.type = typeReference;
                Expression[] expressionArr = this.expressionStack;
                int i10 = this.qualifier;
                qualifiedAllocationExpression.enclosingInstance = expressionArr[i10];
                int[] iArr = this.intStack;
                int i11 = this.intPtr;
                this.intPtr = i11 - 1;
                qualifiedAllocationExpression.sourceStart = iArr[i11];
                qualifiedAllocationExpression.sourceEnd = typeReference.sourceEnd;
                expressionArr[i10] = qualifiedAllocationExpression;
                this.isOrphanCompletionNode = false;
            }
            this.assistNode = typeReference;
            this.lastCheckPoint = typeReference.sourceEnd + 1;
            popElement(1032);
        }
        return true;
    }

    private boolean checkClassLiteralAccess() {
        int i10 = this.identifierLengthPtr;
        int i11 = 0;
        if (i10 >= 1 && this.previousToken == 1) {
            int i12 = this.identifierLengthStack[i10 - 1];
            if (i12 < 0) {
                if (isAfterArrayType()) {
                    int[] iArr = this.intStack;
                    int i13 = this.intPtr;
                    this.intPtr = i13 - 1;
                    i11 = iArr[i13];
                }
                SingleTypeReference singleTypeReference = (SingleTypeReference) TypeReference.baseTypeReference(-i12, i11, i11 == 0 ? null : getAnnotationsOnDimensions(i11));
                int[] iArr2 = this.intStack;
                int i14 = this.intPtr;
                int i15 = i14 - 1;
                this.intPtr = i15;
                singleTypeReference.sourceStart = iArr2[i14];
                if (i11 == 0) {
                    this.intPtr = i14 - 2;
                    singleTypeReference.sourceEnd = iArr2[i15];
                } else {
                    this.intPtr = i14 - 2;
                    singleTypeReference.sourceEnd = this.endPosition;
                }
                char[][] cArr = this.identifierStack;
                int i16 = this.identifierPtr;
                char[] cArr2 = cArr[i16];
                long[] jArr = this.identifierPositionStack;
                this.identifierPtr = i16 - 1;
                long j10 = jArr[i16];
                this.identifierLengthPtr--;
                CompletionOnClassLiteralAccess completionOnClassLiteralAccess = new CompletionOnClassLiteralAccess(j10, singleTypeReference);
                completionOnClassLiteralAccess.completionIdentifier = cArr2;
                this.identifierLengthPtr--;
                this.assistNode = completionOnClassLiteralAccess;
                this.isOrphanCompletionNode = true;
                return true;
            }
            if (isAfterArrayType()) {
                char[][] cArr3 = this.identifierStack;
                int i17 = this.identifierPtr;
                char[] cArr4 = cArr3[i17];
                long[] jArr2 = this.identifierPositionStack;
                this.identifierPtr = i17 - 1;
                long j11 = jArr2[i17];
                int i18 = this.identifierLengthPtr - 1;
                this.identifierLengthPtr = i18;
                pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[i18]);
                pushOnGenericsLengthStack(0);
                int[] iArr3 = this.intStack;
                int i19 = this.intPtr;
                this.intPtr = i19 - 1;
                CompletionOnClassLiteralAccess completionOnClassLiteralAccess2 = new CompletionOnClassLiteralAccess(j11, getTypeReference(iArr3[i19]));
                completionOnClassLiteralAccess2.completionIdentifier = cArr4;
                this.assistNode = completionOnClassLiteralAccess2;
                this.isOrphanCompletionNode = true;
                return true;
            }
        }
        return false;
    }

    private boolean checkInstanceofKeyword() {
        int indexOfAssistIdentifier;
        int i10;
        if (!isInsideMethod() || topKnownElementKind(1536) == 1025 || (indexOfAssistIdentifier = indexOfAssistIdentifier()) <= -1 || (i10 = this.expressionPtr) <= -1 || this.expressionLengthStack[i10] != 1) {
            return false;
        }
        int i11 = (this.identifierPtr - this.identifierLengthStack[this.identifierLengthPtr]) + indexOfAssistIdentifier + 1;
        char[] cArr = this.identifierStack[i11];
        if (cArr.length <= 0) {
            return false;
        }
        char[] cArr2 = Keywords.INSTANCEOF;
        if (!CharOperation.prefixEquals(cArr, cArr2)) {
            return false;
        }
        CompletionOnKeyword3 completionOnKeyword3 = new CompletionOnKeyword3(this.identifierStack[i11], this.identifierPositionStack[i11], cArr2);
        this.assistNode = completionOnKeyword3;
        this.lastCheckPoint = completionOnKeyword3.sourceEnd + 1;
        this.isOrphanCompletionNode = true;
        return true;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r3v16 boolean, still in use, count: 2, list:
          (r3v16 boolean) from 0x0038: IF  (r3v16 boolean) != false  -> B:18:0x003c A[HIDDEN]
          (r3v16 boolean) from 0x003c: PHI (r3v3 boolean) = (r3v2 boolean), (r3v16 boolean) binds: [B:86:0x003b, B:17:0x0038] A[DONT_GENERATE, DONT_INLINE]
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:151)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:116)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:114)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:62)
        	at jadx.core.dex.visitors.regions.TernaryMod.visitRegion(TernaryMod.java:53)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
        */
    private boolean checkInvocation() {
        /*
            Method dump skipped, instructions count: 417
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jdt.internal.codeassist.complete.CompletionParser.checkInvocation():boolean");
    }

    private boolean checkKeyword() {
        int indexOfAssistIdentifier;
        int i10;
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement instanceof RecoveredUnit) {
            RecoveredUnit recoveredUnit = (RecoveredUnit) recoveredElement;
            if (!recoveredUnit.unitDeclaration.isModuleInfo() && (indexOfAssistIdentifier = indexOfAssistIdentifier()) > -1) {
                int i11 = (this.identifierPtr - this.identifierLengthStack[this.identifierLengthPtr]) + indexOfAssistIdentifier + 1;
                char[] cArr = this.identifierStack[i11];
                long j10 = this.identifierPositionStack[i11];
                char[][] cArr2 = new char[50];
                if (recoveredUnit.typeCount != 0 || ((this.compilationUnit.isPackageInfo() && this.compilationUnit.currentPackage == null) || this.lastModifiers != 0)) {
                    i10 = 0;
                } else {
                    cArr2[0] = Keywords.IMPORT;
                    i10 = 1;
                }
                if (recoveredUnit.typeCount == 0 && recoveredUnit.importCount == 0 && this.lastModifiers == 0 && this.compilationUnit.currentPackage == null) {
                    cArr2[i10] = Keywords.PACKAGE;
                    i10++;
                }
                if (!this.compilationUnit.isPackageInfo()) {
                    if ((this.lastModifiers & 1) == 0) {
                        boolean z10 = true;
                        for (int i12 = 0; i12 < recoveredUnit.typeCount; i12++) {
                            if ((recoveredUnit.types[i12].typeDeclaration.modifiers & 1) != 0) {
                                z10 = false;
                            }
                        }
                        if (z10) {
                            cArr2[i10] = Keywords.PUBLIC;
                            i10++;
                        }
                    }
                    int i13 = this.lastModifiers;
                    if ((i13 & 1024) == 0 && (i13 & 16) == 0) {
                        cArr2[i10] = Keywords.ABSTRACT;
                        i10++;
                    }
                    if ((i13 & 1024) == 0 && (i13 & 16) == 0) {
                        cArr2[i10] = Keywords.FINAL;
                        i10++;
                    }
                    int i14 = i10 + 1;
                    cArr2[i10] = Keywords.CLASS;
                    if (this.options.complianceLevel >= ClassFileConstants.JDK1_5) {
                        i10 += 2;
                        cArr2[i14] = Keywords.ENUM;
                    } else {
                        i10 = i14;
                    }
                    if ((i13 & 16) == 0) {
                        cArr2[i10] = Keywords.INTERFACE;
                        i10++;
                    }
                }
                if (i10 != 0) {
                    char[][] cArr3 = new char[i10];
                    System.arraycopy(cArr2, 0, cArr3, 0, i10);
                    CompletionOnKeyword2 completionOnKeyword2 = new CompletionOnKeyword2(cArr, j10, cArr3);
                    this.assistNode = completionOnKeyword2;
                    this.lastCheckPoint = completionOnKeyword2.sourceEnd + 1;
                    this.isOrphanCompletionNode = true;
                    return true;
                }
            }
        }
        return false;
    }

    private boolean checkLabelStatement() {
        if (!isInsideMethod() && !isInsideFieldInitialization()) {
            return false;
        }
        int i10 = topKnownElementKind(1536);
        if ((i10 != K_INSIDE_BREAK_STATEMENT && i10 != K_INSIDE_CONTINUE_STATEMENT) || indexOfAssistIdentifier() != 0) {
            return false;
        }
        char[][] cArr = new char[this.labelPtr + 1];
        int i11 = 0;
        int i12 = i10;
        int i13 = 1;
        while (i12 != 0 && i12 != 515) {
            i12 = topKnownElementKind(1536, i13);
            if (i12 == 1060) {
                cArr[i11] = this.labelStack[topKnownElementInfo(1536, i13)];
                i11++;
            }
            i13++;
        }
        char[][] cArr2 = new char[i11];
        System.arraycopy(cArr, 0, cArr2, 0, i11);
        long j10 = this.identifierPositionStack[this.identifierPtr];
        int i14 = i10 == K_INSIDE_BREAK_STATEMENT ? 1 : 2;
        char[][] cArr3 = this.identifierStack;
        int i15 = this.identifierPtr;
        this.identifierPtr = i15 - 1;
        CompletionOnBranchStatementLabel completionOnBranchStatementLabel = new CompletionOnBranchStatementLabel(i14, cArr3[i15], (int) (j10 >>> 32), (int) j10, cArr2);
        this.assistNode = completionOnBranchStatementLabel;
        this.lastCheckPoint = completionOnBranchStatementLabel.sourceEnd + 1;
        this.isOrphanCompletionNode = true;
        return true;
    }

    private boolean checkMemberAccess() {
        int i10;
        if (this.previousToken != 1 || (i10 = this.qualifier) <= -1 || this.expressionPtr != i10) {
            return false;
        }
        int i11 = this.identifierLengthPtr;
        if (i11 > 1 && this.identifierLengthStack[i11 - 1] < 0) {
            return false;
        }
        pushCompletionOnMemberAccessOnExpressionStack(false);
        return true;
    }

    private boolean checkMemberValueName() {
        int i10;
        int i11;
        if (indexOfAssistIdentifier() < 0 || topKnownElementKind(1536) != K_BETWEEN_ANNOTATION_NAME_AND_RPAREN || (i10 = this.identifierPtr) <= -1 || (i11 = this.identifierLengthPtr) <= -1 || this.identifierLengthStack[i11] != 1) {
            return false;
        }
        char[] cArr = this.identifierStack[i10];
        long[] jArr = this.identifierPositionStack;
        this.identifierPtr = i10 - 1;
        long j10 = jArr[i10];
        this.identifierLengthPtr = i11 - 1;
        CompletionOnMemberValueName completionOnMemberValueName = new CompletionOnMemberValueName(cArr, (int) (j10 >>> 32), (int) j10);
        this.assistNode = completionOnMemberValueName;
        this.lastCheckPoint = completionOnMemberValueName.sourceEnd + 1;
        this.isOrphanCompletionNode = true;
        return true;
    }

    private boolean checkModuleInfoConstructs() {
        int indexOfAssistIdentifier;
        ModuleKeyword moduleKeyword;
        if (!isInsideModuleInfo() || (indexOfAssistIdentifier = indexOfAssistIdentifier()) <= -1) {
            return false;
        }
        RecoveredElement recoveredElement = this.currentElement;
        if (!(recoveredElement instanceof RecoveredModule)) {
            ModuleKeyword moduleKeyword2 = ModuleKeyword.NOT_A_KEYWORD;
            if (isInModuleStatements()) {
                moduleKeyword = foundToken(1072) ? ModuleKeyword.TO : moduleKeyword2;
                if (foundToken(K_AFTER_NAME_IN_PROVIDES_STATEMENT)) {
                    moduleKeyword = ModuleKeyword.PROVIDES_WITH;
                }
            } else {
                moduleKeyword = moduleKeyword2;
            }
            if (moduleKeyword == moduleKeyword2) {
                return false;
            }
            int i10 = (this.identifierPtr - this.identifierLengthStack[this.identifierLengthPtr]) + indexOfAssistIdentifier + 1;
            char[] cArr = this.identifierStack[i10];
            long j10 = this.identifierPositionStack[i10];
            char[][] moduleKeywords = getModuleKeywords(moduleKeyword);
            RecoveredElement recoveredElement2 = this.currentElement;
            if (recoveredElement2 instanceof RecoveredPackageVisibilityStatement) {
                ((RecoveredPackageVisibilityStatement) recoveredElement2).add(new CompletionOnKeywordModule2(cArr, j10, moduleKeywords), 0);
                return true;
            }
            if (recoveredElement2 instanceof RecoveredProvidesStatement) {
                ((RecoveredProvidesStatement) recoveredElement2).add((SingleTypeReference) new CompletionOnKeyword1(cArr, j10, moduleKeywords), 0);
                return true;
            }
        } else if (checkModuleInfoKeyword((RecoveredModule) recoveredElement, indexOfAssistIdentifier)) {
            return true;
        }
        return false;
    }

    private boolean checkModuleInfoKeyword(RecoveredModule recoveredModule, int i10) {
        ModuleKeyword keyword = getKeyword();
        if (keyword == ModuleKeyword.NOT_A_KEYWORD) {
            return false;
        }
        int i11 = (this.identifierPtr - this.identifierLengthStack[this.identifierLengthPtr]) + i10 + 1;
        recoveredModule.add((ExportsStatement) new CompletionOnKeywordModuleInfo(this.identifierStack[i11], this.identifierPositionStack[i11], getModuleKeywords(keyword)), 0);
        return true;
    }

    private boolean checkNameCompletion() {
        NameReference unspecifiedReferenceOptimized = getUnspecifiedReferenceOptimized();
        this.assistNode = unspecifiedReferenceOptimized;
        this.lastCheckPoint = unspecifiedReferenceOptimized.sourceEnd + 1;
        this.isOrphanCompletionNode = true;
        if (this.hasUnusedModifiers && (unspecifiedReferenceOptimized instanceof CompletionOnSingleNameReference)) {
            ((CompletionOnSingleNameReference) unspecifiedReferenceOptimized).isPrecededByModifiers = true;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0108  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean checkParemeterizedMethodName() {
        int i10;
        CompletionOnMessageSendName completionOnMessageSendName;
        if (topKnownElementKind(1536) == K_PARAMETERIZED_METHOD_INVOCATION && topKnownElementInfo(1536) == 1 && (i10 = this.identifierLengthPtr) > -1 && this.genericsLengthPtr > -1 && this.genericsIdentifiersLengthPtr == -1) {
            int i11 = this.invocationType;
            if (i11 != -3) {
                if (i11 != -2) {
                    if ((i11 == -1 || i11 == 0) && this.expressionPtr > -1 && this.expressionLengthStack[this.expressionLengthPtr] == 1) {
                        char[][] cArr = this.identifierStack;
                        int i12 = this.identifierPtr;
                        char[] cArr2 = cArr[i12];
                        long[] jArr = this.identifierPositionStack;
                        this.identifierPtr = i12 - 1;
                        long j10 = jArr[i12];
                        this.identifierLengthPtr = i10 - 1;
                        completionOnMessageSendName = new CompletionOnMessageSendName(cArr2, (int) (j10 >>> 32), (int) j10);
                        int[] iArr = this.genericsLengthStack;
                        int i13 = this.genericsLengthPtr;
                        this.genericsLengthPtr = i13 - 1;
                        int i14 = iArr[i13];
                        int i15 = this.genericsPtr - i14;
                        this.genericsPtr = i15;
                        TypeReference[] typeReferenceArr = new TypeReference[i14];
                        completionOnMessageSendName.typeArguments = typeReferenceArr;
                        System.arraycopy(this.genericsStack, i15 + 1, typeReferenceArr, 0, i14);
                        this.intPtr--;
                        Expression[] expressionArr = this.expressionStack;
                        int i16 = this.expressionPtr;
                        this.expressionPtr = i16 - 1;
                        completionOnMessageSendName.receiver = expressionArr[i16];
                        this.expressionLengthPtr--;
                    }
                    completionOnMessageSendName = null;
                } else {
                    char[][] cArr3 = this.identifierStack;
                    int i17 = this.identifierPtr;
                    char[] cArr4 = cArr3[i17];
                    long[] jArr2 = this.identifierPositionStack;
                    this.identifierPtr = i17 - 1;
                    long j11 = jArr2[i17];
                    this.identifierLengthPtr = i10 - 1;
                    int i18 = (int) j11;
                    int i19 = (int) (j11 >>> 32);
                    completionOnMessageSendName = new CompletionOnMessageSendName(cArr4, i19, i18);
                    int[] iArr2 = this.genericsLengthStack;
                    int i20 = this.genericsLengthPtr;
                    this.genericsLengthPtr = i20 - 1;
                    int i21 = iArr2[i20];
                    int i22 = this.genericsPtr - i21;
                    this.genericsPtr = i22;
                    TypeReference[] typeReferenceArr2 = new TypeReference[i21];
                    completionOnMessageSendName.typeArguments = typeReferenceArr2;
                    System.arraycopy(this.genericsStack, i22 + 1, typeReferenceArr2, 0, i21);
                    this.intPtr--;
                    completionOnMessageSendName.receiver = new SuperReference(i19, i18);
                }
                if (completionOnMessageSendName != null) {
                    pushOnExpressionStack(completionOnMessageSendName);
                    this.assistNode = completionOnMessageSendName;
                    this.lastCheckPoint = completionOnMessageSendName.sourceEnd + 1;
                    this.isOrphanCompletionNode = true;
                    return true;
                }
            } else {
                int i23 = this.identifierPtr;
                if (i23 > 0) {
                    char[] cArr5 = this.identifierStack[i23];
                    long[] jArr3 = this.identifierPositionStack;
                    this.identifierPtr = i23 - 1;
                    long j12 = jArr3[i23];
                    this.identifierLengthPtr = i10 - 1;
                    completionOnMessageSendName = new CompletionOnMessageSendName(cArr5, (int) (j12 >>> 32), (int) j12);
                    int[] iArr3 = this.genericsLengthStack;
                    int i24 = this.genericsLengthPtr;
                    this.genericsLengthPtr = i24 - 1;
                    int i25 = iArr3[i24];
                    int i26 = this.genericsPtr - i25;
                    this.genericsPtr = i26;
                    TypeReference[] typeReferenceArr3 = new TypeReference[i25];
                    completionOnMessageSendName.typeArguments = typeReferenceArr3;
                    System.arraycopy(this.genericsStack, i26 + 1, typeReferenceArr3, 0, i25);
                    this.intPtr--;
                    completionOnMessageSendName.receiver = getUnspecifiedReference();
                    if (completionOnMessageSendName != null) {
                    }
                }
                completionOnMessageSendName = null;
                if (completionOnMessageSendName != null) {
                }
            }
        }
        return false;
    }

    private boolean checkParemeterizedType() {
        int i10;
        int i11;
        int i12 = this.identifierLengthPtr;
        if (i12 > -1 && (i10 = this.genericsLengthPtr) > -1 && (i11 = this.genericsIdentifiersLengthPtr) > -1) {
            int i13 = this.identifierLengthStack[i12];
            int i14 = this.genericsIdentifiersLengthStack[i11];
            if (i13 != i14 || this.genericsLengthStack[i10] != 0) {
                this.genericsIdentifiersLengthPtr = i11 - 1;
                this.identifierLengthPtr = i12 - 1;
                TypeReference assistTypeReferenceForGenericType = getAssistTypeReferenceForGenericType(0, i13, i14);
                this.assistNode = assistTypeReferenceForGenericType;
                this.lastCheckPoint = assistTypeReferenceForGenericType.sourceEnd + 1;
                this.isOrphanCompletionNode = true;
                return true;
            }
            int i15 = this.genericsPtr;
            if (i15 > -1 && (this.genericsStack[i15] instanceof TypeReference)) {
                this.genericsIdentifiersLengthPtr = i11 - 1;
                this.identifierLengthPtr = i12 - 1;
                TypeReference assistTypeReferenceForGenericType2 = getAssistTypeReferenceForGenericType(0, i13, i14 + 1);
                this.assistNode = assistTypeReferenceForGenericType2;
                this.lastCheckPoint = assistTypeReferenceForGenericType2.sourceEnd + 1;
                this.isOrphanCompletionNode = true;
                return true;
            }
        }
        return false;
    }

    private boolean checkRecoveredMethod() {
        if (!(this.currentElement instanceof RecoveredMethod) || indexOfAssistIdentifier() < 0) {
            return false;
        }
        int i10 = this.lastErrorEndPosition;
        if (i10 <= this.cursorLocation) {
            Scanner scanner = this.scanner;
            int lineNumber = Util.getLineNumber(i10, scanner.lineEnds, 0, scanner.linePtr);
            Scanner scanner2 = this.scanner;
            if (lineNumber == Util.getLineNumber(((CompletionScanner) scanner2).completedIdentifierStart, scanner2.lineEnds, 0, scanner2.linePtr)) {
                return false;
            }
        }
        if (((RecoveredMethod) this.currentElement).foundOpeningBrace || this.lastIgnoredToken != -1) {
            return false;
        }
        TypeReference typeReference = getTypeReference(0);
        this.assistNode = typeReference;
        this.lastCheckPoint = typeReference.sourceEnd + 1;
        this.isOrphanCompletionNode = true;
        return true;
    }

    private boolean checkRecoveredType() {
        if (!(this.currentElement instanceof RecoveredType) || indexOfAssistIdentifier() < 0) {
            return false;
        }
        if (this.lastErrorEndPosition <= this.cursorLocation) {
            int lastMemberEnd = ((RecoveredType) this.currentElement).lastMemberEnd();
            int i10 = this.lastErrorEndPosition;
            if (lastMemberEnd < i10) {
                Scanner scanner = this.scanner;
                int lineNumber = Util.getLineNumber(i10, scanner.lineEnds, 0, scanner.linePtr);
                Scanner scanner2 = this.scanner;
                if (lineNumber == Util.getLineNumber(((CompletionScanner) scanner2).completedIdentifierStart, scanner2.lineEnds, 0, scanner2.linePtr)) {
                    return false;
                }
            }
        }
        RecoveredType recoveredType = (RecoveredType) this.currentElement;
        if (!recoveredType.foundOpeningBrace) {
            if (recoveredType.typeDeclaration.superclass == null && topKnownElementKind(1536) == K_EXTENDS_KEYWORD) {
                consumeClassOrInterfaceName();
                pushOnElementStack(1029);
                this.assistNode = getTypeReference(0);
                popElement(1029);
                this.lastCheckPoint = this.assistNode.sourceEnd + 1;
                this.isOrphanCompletionNode = true;
                return true;
            }
            return false;
        }
        int i11 = this.genericsIdentifiersLengthPtr;
        if ((i11 < 0 && this.identifierPtr > -1) || this.genericsIdentifiersLengthStack[i11] <= this.identifierPtr) {
            pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[this.identifierLengthPtr]);
            pushOnGenericsLengthStack(0);
        }
        TypeReference typeReference = getTypeReference(0);
        this.assistNode = typeReference;
        this.lastCheckPoint = typeReference.sourceEnd + 1;
        this.isOrphanCompletionNode = true;
        return true;
    }

    private void classHeaderExtendsOrImplements(boolean z10) {
        int i10;
        int i11;
        if (this.currentElement == null || this.currentToken != 22) {
            return;
        }
        int i12 = this.cursorLocation;
        int i13 = i12 + 1;
        Scanner scanner = this.scanner;
        if (i13 < scanner.startPosition || i12 >= scanner.currentPosition) {
            return;
        }
        pushIdentifier();
        int indexOfAssistIdentifier = indexOfAssistIdentifier();
        if (indexOfAssistIdentifier > -1) {
            int i14 = (this.identifierPtr - this.identifierLengthStack[this.identifierLengthPtr]) + indexOfAssistIdentifier + 1;
            RecoveredType recoveredType = (RecoveredType) this.currentElement;
            if (recoveredType.foundOpeningBrace) {
                return;
            }
            TypeDeclaration typeDeclaration = recoveredType.typeDeclaration;
            if (z10) {
                if (typeDeclaration.superInterfaces == null) {
                    CompletionOnKeyword1 completionOnKeyword1 = new CompletionOnKeyword1(this.identifierStack[i14], this.identifierPositionStack[i14], Keywords.EXTENDS);
                    TypeReference[] typeReferenceArr = {completionOnKeyword1};
                    typeDeclaration.superInterfaces = typeReferenceArr;
                    typeReferenceArr[0].bits |= 16;
                    this.assistNode = completionOnKeyword1;
                    this.lastCheckPoint = completionOnKeyword1.sourceEnd + 1;
                    return;
                }
                return;
            }
            char[][] cArr = new char[50];
            if (typeDeclaration.superInterfaces == null) {
                if (typeDeclaration.superclass == null) {
                    cArr[0] = Keywords.EXTENDS;
                    i11 = 1;
                } else {
                    i11 = 0;
                }
                i10 = i11 + 1;
                cArr[i11] = Keywords.IMPLEMENTS;
            } else {
                i10 = 0;
            }
            char[][] cArr2 = new char[i10];
            System.arraycopy(cArr, 0, cArr2, 0, i10);
            if (i10 > 0) {
                CompletionOnKeyword1 completionOnKeyword12 = new CompletionOnKeyword1(this.identifierStack[i14], this.identifierPositionStack[i14], cArr2);
                typeDeclaration.superclass = completionOnKeyword12;
                completionOnKeyword12.bits |= 16;
                this.assistNode = completionOnKeyword12;
                this.lastCheckPoint = completionOnKeyword12.sourceEnd + 1;
            }
        }
    }

    private boolean foundToken(int i10) {
        for (int i11 = this.elementPtr; i11 > -1; i11--) {
            if (this.elementKindStack[i11] == i10) {
                return true;
            }
        }
        return false;
    }

    private ModuleKeyword getKeyword() {
        return isInModuleStatements() ? foundToken(1072) ? ModuleKeyword.TO : foundToken(K_AFTER_NAME_IN_PROVIDES_STATEMENT) ? ModuleKeyword.PROVIDES_WITH : ModuleKeyword.NOT_A_KEYWORD : ModuleKeyword.FIRST_ALL;
    }

    private char[][] getModuleKeywords(ModuleKeyword moduleKeyword) {
        return moduleKeyword == ModuleKeyword.TO ? new char[][]{Keywords.TO} : moduleKeyword == ModuleKeyword.PROVIDES_WITH ? new char[][]{Keywords.WITH} : new char[][]{Keywords.EXPORTS, Keywords.OPENS, Keywords.REQUIRES, Keywords.PROVIDES, Keywords.USES};
    }

    private void initializeForBlockStatements() {
        this.previousToken = -1;
        this.previousIdentifierPtr = -1;
        this.invocationType = -1;
        this.qualifier = -1;
        popUntilElement(K_SWITCH_LABEL);
        if (topKnownElementKind(1536) != K_SWITCH_LABEL) {
            if (topKnownElementKind(1536) == K_ARRAY_INITIALIZER) {
                popUntilElement(K_ARRAY_INITIALIZER);
            } else {
                popUntilElement(1025);
            }
        }
    }

    private boolean isAfterArrayType() {
        int i10 = this.intPtr;
        return i10 > -1 && this.intStack[i10] < 11;
    }

    private boolean isAlreadyPotentialName(int i10) {
        int i11 = this.potentialVariableNamesPtr;
        return i11 >= 0 && i10 <= this.potentialVariableNameEnds[i11];
    }

    private boolean isEmptyNameCompletion() {
        ASTNode aSTNode = this.assistNode;
        return aSTNode != null && (aSTNode instanceof CompletionOnSingleNameReference) && ((CompletionOnSingleNameReference) aSTNode).token.length == 0;
    }

    private void isInsideEnhancedForLoopWithoutBlock(int i10) {
        if (this.consumedEnhancedFor && i10 != 49) {
            consumeOpenFakeBlock();
        }
        this.consumedEnhancedFor = false;
    }

    private void pushCompletionOnMemberAccessOnExpressionStack(boolean z10) {
        char[][] cArr = this.identifierStack;
        int i10 = this.identifierPtr;
        char[] cArr2 = cArr[i10];
        long[] jArr = this.identifierPositionStack;
        this.identifierPtr = i10 - 1;
        CompletionOnMemberAccess completionOnMemberAccess = new CompletionOnMemberAccess(cArr2, jArr[i10], isInsideAnnotation());
        this.assistNode = completionOnMemberAccess;
        this.lastCheckPoint = completionOnMemberAccess.sourceEnd + 1;
        this.identifierLengthPtr--;
        if (!z10) {
            Expression expression = this.expressionStack[this.expressionPtr];
            completionOnMemberAccess.receiver = expression;
            if (expression.isThis()) {
                completionOnMemberAccess.sourceStart = completionOnMemberAccess.receiver.sourceStart;
            }
            this.expressionStack[this.expressionPtr] = completionOnMemberAccess;
            return;
        }
        int[] iArr = this.intStack;
        int i11 = this.intPtr;
        this.intPtr = i11 - 1;
        completionOnMemberAccess.sourceStart = iArr[i11];
        completionOnMemberAccess.receiver = new SuperReference(completionOnMemberAccess.sourceStart, this.endPosition);
        pushOnExpressionStack(completionOnMemberAccess);
    }

    private void recordReference(NameReference nameReference) {
        if (this.skipRecord) {
            return;
        }
        int i10 = this.recordFrom;
        int i11 = nameReference.sourceStart;
        if (i10 > i11 || nameReference.sourceEnd > this.recordTo || isAlreadyPotentialName(i11)) {
            return;
        }
        char[] cArr = nameReference instanceof SingleNameReference ? ((SingleNameReference) nameReference).token : ((QualifiedNameReference) nameReference).tokens[0];
        if (Character.isUpperCase(cArr[0])) {
            return;
        }
        addPotentialName(cArr, nameReference.sourceStart, nameReference.sourceEnd);
    }

    private boolean stackHasInstanceOfExpression(Object[] objArr, int i10) {
        while (i10 >= 0) {
            if (objArr[i10] instanceof InstanceOfExpression) {
                return true;
            }
            i10--;
        }
        return false;
    }

    @Override
    public int actFromTokenOrSynthetic(int i10) {
        int tAction = Parser.tAction(i10, this.currentToken);
        if (this.hasError && !this.diet && tAction == 16966 && this.currentToken == 61 && requireExtendedRecovery()) {
            int[] iArr = AssistParser.RECOVERY_TOKENS;
            int length = iArr.length;
            int i11 = 0;
            while (i11 < length) {
                int i12 = iArr[i11];
                int tAction2 = Parser.tAction(i10, i12);
                if (tAction2 != 16966) {
                    this.currentToken = i12;
                    return tAction2;
                }
                i11++;
                tAction = tAction2;
            }
        }
        return tAction;
    }

    @Override
    public char[] assistIdentifier() {
        return ((CompletionScanner) this.scanner).completionIdentifier;
    }

    @Override
    public boolean assistNodeNeedsStacking() {
        return this.shouldStackAssistNode;
    }

    @Override
    public ASTNode assistNodeParent() {
        return this.assistNodeParent;
    }

    public void attachOrphanCompletionNode() {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        TypeReference typeReference;
        ASTNode aSTNode = this.assistNode;
        if (aSTNode == null || this.isAlreadyAttached) {
            return;
        }
        this.isAlreadyAttached = true;
        if (this.isOrphanCompletionNode) {
            this.isOrphanCompletionNode = false;
            RecoveredElement recoveredElement = this.currentElement;
            if (recoveredElement instanceof RecoveredUnit) {
                if (aSTNode instanceof ImportReference) {
                    recoveredElement.add((ImportReference) aSTNode, 0);
                } else if (aSTNode instanceof ModuleDeclaration) {
                    recoveredElement.add((ModuleDeclaration) aSTNode, 0);
                }
            } else if ((recoveredElement instanceof RecoveredType) && ((RecoveredType) recoveredElement).foundOpeningBrace && (aSTNode instanceof TypeReference)) {
                if (isInsideModuleInfo()) {
                    return;
                }
                int i15 = topKnownElementKind(1536);
                int i16 = topKnownElementInfo(1536);
                if (i15 == 1040 && i16 == 4 && this.identifierPtr > -1) {
                    if (this.genericsLengthStack[this.genericsLengthPtr] > 0) {
                        consumeTypeArguments();
                    }
                    pushOnGenericsStack(aSTNode);
                    consumeTypeArguments();
                    typeReference = getTypeReference(0);
                    this.assistNodeParent = typeReference;
                } else {
                    typeReference = (TypeReference) aSTNode;
                }
                CompletionOnFieldType completionOnFieldType = new CompletionOnFieldType(typeReference, false);
                int i17 = this.expressionLengthStack[this.expressionLengthPtr];
                if (i17 != 0) {
                    Expression[] expressionArr = this.expressionStack;
                    int i18 = this.expressionPtr;
                    if (expressionArr[i18] instanceof Annotation) {
                        Annotation[] annotationArr = new Annotation[i17];
                        completionOnFieldType.annotations = annotationArr;
                        System.arraycopy(expressionArr, (i18 - i17) + 1, annotationArr, 0, i17);
                    }
                }
                int i19 = this.intPtr;
                if (i19 >= 2) {
                    int[] iArr = this.intStack;
                    if (iArr[i19 - 1] == this.lastModifiersStart && iArr[i19 - 2] == this.lastModifiers) {
                        completionOnFieldType.modifiersSourceStart = iArr[i19 - 1];
                        completionOnFieldType.modifiers = iArr[i19 - 2];
                    }
                }
                this.currentElement = this.currentElement.add((FieldDeclaration) completionOnFieldType, 0);
                return;
            }
            RecoveredElement recoveredElement2 = this.currentElement;
            if ((recoveredElement2 instanceof RecoveredMethod) && !((RecoveredMethod) recoveredElement2).foundOpeningBrace) {
                if (aSTNode instanceof TypeReference) {
                    this.currentElement = recoveredElement2.parent.add((FieldDeclaration) new CompletionOnFieldType((TypeReference) aSTNode, true), 0);
                    return;
                } else if (aSTNode instanceof Annotation) {
                    CompletionOnAnnotationOfType completionOnAnnotationOfType = new CompletionOnAnnotationOfType(FAKE_TYPE_NAME, this.compilationUnit.compilationResult(), (Annotation) aSTNode);
                    completionOnAnnotationOfType.isParameter = true;
                    this.currentElement.parent.add((TypeDeclaration) completionOnAnnotationOfType, 0);
                    this.pendingAnnotation = completionOnAnnotationOfType;
                    return;
                }
            }
            if (aSTNode instanceof MemberValuePair) {
                buildMoreAnnotationCompletionContext((MemberValuePair) aSTNode);
                return;
            }
            if (aSTNode instanceof Annotation) {
                popUntilCompletedAnnotationIfNecessary();
                CompletionOnAnnotationOfType completionOnAnnotationOfType2 = new CompletionOnAnnotationOfType(FAKE_TYPE_NAME, this.compilationUnit.compilationResult(), (Annotation) aSTNode);
                this.currentElement.add((TypeDeclaration) completionOnAnnotationOfType2, 0);
                if (isInsideAnnotation()) {
                    return;
                }
                this.pendingAnnotation = completionOnAnnotationOfType2;
                return;
            }
            if (topKnownElementKind(1536) == 1028) {
                ASTNode aSTNode2 = this.assistNode;
                if ((aSTNode2 instanceof CompletionOnSingleTypeReference) && ((CompletionOnSingleTypeReference) aSTNode2).isException()) {
                    buildMoreTryStatementCompletionContext((TypeReference) this.assistNode);
                    return;
                }
                ASTNode aSTNode3 = this.assistNode;
                if ((aSTNode3 instanceof CompletionOnQualifiedTypeReference) && ((CompletionOnQualifiedTypeReference) aSTNode3).isException()) {
                    buildMoreTryStatementCompletionContext((TypeReference) this.assistNode);
                    return;
                }
                ASTNode aSTNode4 = this.assistNode;
                if ((aSTNode4 instanceof CompletionOnParameterizedQualifiedTypeReference) && ((CompletionOnParameterizedQualifiedTypeReference) aSTNode4).isException()) {
                    buildMoreTryStatementCompletionContext((TypeReference) this.assistNode);
                    return;
                }
            }
            if (aSTNode instanceof Statement) {
                RecoveredMethod enclosingMethod = this.currentElement.enclosingMethod();
                if (enclosingMethod != null) {
                    AbstractMethodDeclaration abstractMethodDeclaration = enclosingMethod.methodDeclaration;
                    if (abstractMethodDeclaration.bodyStart == abstractMethodDeclaration.sourceEnd + 1) {
                        int i20 = aSTNode.sourceStart;
                        Scanner scanner = this.scanner;
                        int lineNumber = Util.getLineNumber(i20, scanner.lineEnds, 0, scanner.linePtr);
                        int i21 = abstractMethodDeclaration.sourceEnd;
                        Scanner scanner2 = this.scanner;
                        if (lineNumber == Util.getLineNumber(i21, scanner2.lineEnds, 0, scanner2.linePtr)) {
                            return;
                        }
                    }
                }
                this.currentElement = this.currentElement.add((Statement) aSTNode, 0);
                return;
            }
        }
        if (isInsideAnnotation()) {
            int i22 = this.expressionPtr;
            if (i22 > -1) {
                Expression expression = this.expressionStack[i22];
                ASTNode aSTNode5 = this.assistNode;
                if (expression == aSTNode5) {
                    if (topKnownElementKind(1536) == K_MEMBER_VALUE_ARRAY_INITIALIZER) {
                        ArrayInitializer arrayInitializer = new ArrayInitializer();
                        arrayInitializer.expressions = new Expression[]{expression};
                        char[] cArr = VALUE;
                        if (topKnownElementKind(1536, 1) == 517 && (i14 = this.identifierLengthPtr) > 0) {
                            char[][] cArr2 = this.identifierStack;
                            int i23 = this.identifierPtr;
                            cArr = cArr2[i23];
                            int[] iArr2 = this.identifierLengthStack;
                            this.identifierLengthPtr = i14 - 1;
                            this.identifierPtr = i23 - iArr2[i14];
                        }
                        MemberValuePair memberValuePair = new MemberValuePair(cArr, expression.sourceStart, expression.sourceEnd, arrayInitializer);
                        int i24 = this.astLengthPtr;
                        if (i24 > -1) {
                            this.astLengthPtr = i24 - 1;
                        }
                        TypeReference annotationType = getAnnotationType();
                        int[] iArr3 = this.intStack;
                        int i25 = this.intPtr;
                        this.intPtr = i25 - 1;
                        NormalAnnotation normalAnnotation = new NormalAnnotation(annotationType, iArr3[i25]);
                        normalAnnotation.memberValuePairs = new MemberValuePair[]{memberValuePair};
                        CompletionOnAnnotationOfType completionOnAnnotationOfType3 = new CompletionOnAnnotationOfType(FAKE_TYPE_NAME, this.compilationUnit.compilationResult(), normalAnnotation);
                        this.currentElement.add((TypeDeclaration) completionOnAnnotationOfType3, 0);
                        this.pendingAnnotation = completionOnAnnotationOfType3;
                        this.assistNodeParent = new AssistNodeParentAnnotationArrayInitializer(annotationType, cArr);
                    } else if (topKnownElementKind(1536) != K_BETWEEN_ANNOTATION_NAME_AND_RPAREN) {
                        int lastIndexOfElement = lastIndexOfElement(517);
                        if (lastIndexOfElement != -1) {
                            int i26 = this.elementInfoStack[lastIndexOfElement];
                            int i27 = this.identifierLengthPtr;
                            int i28 = this.identifierPtr;
                            while (i26 < i28) {
                                i28 -= this.identifierLengthStack[i27];
                                i27--;
                            }
                            if (i26 != i28) {
                                return;
                            }
                            this.identifierPtr = i28;
                            this.identifierLengthPtr = i27 - 1;
                            char[][] cArr3 = this.identifierStack;
                            int i29 = this.identifierPtr;
                            this.identifierPtr = i29 - 1;
                            buildMoreAnnotationCompletionContext(new MemberValuePair(cArr3[i29], expression.sourceStart, expression.sourceEnd, expression));
                            return;
                        }
                    } else if (expression instanceof SingleNameReference) {
                        SingleNameReference singleNameReference = (SingleNameReference) expression;
                        buildMoreAnnotationCompletionContext(new CompletionOnMemberValueName(singleNameReference.token, singleNameReference.sourceStart, singleNameReference.sourceEnd));
                        return;
                    } else if ((expression instanceof QualifiedNameReference) || (expression instanceof StringLiteral)) {
                        buildMoreAnnotationCompletionContext(new MemberValuePair(VALUE, expression.sourceStart, expression.sourceEnd, expression));
                    }
                } else if (new CompletionNodeDetector(aSTNode5, expression).containsCompletionNode()) {
                    buildMoreAnnotationCompletionContext(new MemberValuePair(VALUE, expression.sourceStart, expression.sourceEnd, expression));
                }
            }
            int i30 = this.astPtr;
            if (i30 > -1) {
                ASTNode aSTNode6 = this.astStack[i30];
                if (aSTNode6 instanceof MemberValuePair) {
                    MemberValuePair memberValuePair2 = (MemberValuePair) aSTNode6;
                    CompletionNodeDetector completionNodeDetector = new CompletionNodeDetector(this.assistNode, memberValuePair2);
                    if (completionNodeDetector.containsCompletionNode()) {
                        buildMoreAnnotationCompletionContext(memberValuePair2);
                        this.assistNodeParent = completionNodeDetector.getCompletionNodeParent();
                        return;
                    }
                }
            }
        }
        int i31 = this.genericsPtr;
        if (i31 > -1) {
            ASTNode aSTNode7 = this.genericsStack[i31];
            if ((aSTNode7 instanceof Wildcard) && ((Wildcard) aSTNode7).bound == this.assistNode) {
                if (topKnownElementKind(1536) == 1040 && topKnownElementInfo(1536) == 4) {
                    buildMoreGenericsCompletionContext(aSTNode7, true);
                    return;
                }
                int i32 = this.identifierLengthPtr;
                if (i32 > -1 && this.identifierLengthStack[i32] != 0) {
                    pushOnElementStack(1040, 4);
                    buildMoreGenericsCompletionContext(aSTNode7, false);
                    return;
                }
            }
        }
        RecoveredElement recoveredElement3 = this.currentElement;
        if ((recoveredElement3 instanceof RecoveredType) || (recoveredElement3 instanceof RecoveredMethod)) {
            if ((recoveredElement3 instanceof RecoveredType) && ((RecoveredType) recoveredElement3).foundOpeningBrace && (i10 = this.genericsPtr) > -1) {
                ASTNode aSTNode8 = this.genericsStack[i10];
                if (aSTNode8 instanceof TypeParameter) {
                    TypeParameter typeParameter = (TypeParameter) aSTNode8;
                    if (new CompletionNodeDetector(this.assistNode, typeParameter).containsCompletionNode()) {
                        this.currentElement.add(new CompletionOnMethodTypeParameter(new TypeParameter[]{typeParameter}, this.compilationUnit.compilationResult()), 0);
                        return;
                    }
                    return;
                }
            }
            if (!isInsideMethod() && !isInsideFieldInitialization() && this.genericsPtr > -1 && this.genericsLengthPtr > -1 && this.genericsIdentifiersLengthPtr > -1) {
                int i33 = topKnownElementKind(1536);
                int i34 = topKnownElementInfo(1536);
                if (i33 == 1040 && i34 == 4) {
                    consumeTypeArguments();
                }
                int i35 = this.genericsIdentifiersLengthStack[this.genericsIdentifiersLengthPtr];
                int i36 = this.genericsPtr;
                int i37 = 0;
                while (true) {
                    int i38 = this.identifierLengthPtr;
                    if (i37 > i38 || i35 <= 0) {
                        break;
                    }
                    int i39 = this.identifierLengthStack[i38 - i37];
                    int i40 = this.genericsLengthStack[this.genericsLengthPtr - i37];
                    for (int i41 = 0; i41 < i40; i41++) {
                        ASTNode aSTNode9 = this.genericsStack[i36 - i41];
                        CompletionNodeDetector completionNodeDetector2 = new CompletionNodeDetector(this.assistNode, aSTNode9);
                        if (completionNodeDetector2.containsCompletionNode()) {
                            if (aSTNode9 == this.assistNode) {
                                int i42 = this.identifierLengthPtr;
                                if (i42 > -1 && this.identifierLengthStack[i42] != 0) {
                                    this.assistNodeParent = getTypeReference(0);
                                }
                            } else {
                                this.assistNodeParent = completionNodeDetector2.getCompletionNodeParent();
                            }
                        }
                    }
                    i36 -= i40;
                    i35 -= i39;
                    i37++;
                }
                ASTNode aSTNode10 = this.assistNodeParent;
                if (aSTNode10 != null && (aSTNode10 instanceof TypeReference)) {
                    RecoveredElement recoveredElement4 = this.currentElement;
                    if (recoveredElement4 instanceof RecoveredType) {
                        this.currentElement = recoveredElement4.add((FieldDeclaration) new CompletionOnFieldType((TypeReference) this.assistNodeParent, false), 0);
                    } else {
                        this.currentElement = recoveredElement4.add((TypeReference) aSTNode10, 0);
                    }
                }
            }
        }
        if ((isInsideMethod() || isInsideFieldInitialization() || isInsideAttributeValue()) && !(this.assistNodeParent instanceof AssistNodeParentAnnotationArrayInitializer)) {
            int i43 = this.genericsPtr;
            if (i43 > -1) {
                ASTNode aSTNode11 = this.genericsStack[i43];
                if (new CompletionNodeDetector(this.assistNode, aSTNode11).containsCompletionNode()) {
                    RecoveredMethod enclosingMethod2 = this.currentElement.enclosingMethod();
                    if (enclosingMethod2 != null) {
                        AbstractMethodDeclaration abstractMethodDeclaration2 = enclosingMethod2.methodDeclaration;
                        if (abstractMethodDeclaration2.bodyStart == abstractMethodDeclaration2.sourceEnd + 1) {
                            int i44 = aSTNode11.sourceStart;
                            Scanner scanner3 = this.scanner;
                            int lineNumber2 = Util.getLineNumber(i44, scanner3.lineEnds, 0, scanner3.linePtr);
                            int i45 = abstractMethodDeclaration2.sourceEnd;
                            Scanner scanner4 = this.scanner;
                            if (lineNumber2 == Util.getLineNumber(i45, scanner4.lineEnds, 0, scanner4.linePtr)) {
                                return;
                            }
                        }
                    }
                    if (aSTNode11 == this.assistNode) {
                        buildMoreGenericsCompletionContext(aSTNode11, true);
                    }
                }
            }
            int i46 = this.expressionPtr;
            if (i46 > -1) {
                Expression expression2 = this.expressionStack[i46];
                CompletionNodeDetector completionNodeDetector3 = new CompletionNodeDetector(this.assistNode, expression2);
                if (completionNodeDetector3.containsCompletionNode()) {
                    RecoveredMethod enclosingMethod3 = this.currentElement.enclosingMethod();
                    if (enclosingMethod3 != null) {
                        AbstractMethodDeclaration abstractMethodDeclaration3 = enclosingMethod3.methodDeclaration;
                        if (abstractMethodDeclaration3.bodyStart == abstractMethodDeclaration3.sourceEnd + 1) {
                            int i47 = expression2.sourceStart;
                            Scanner scanner5 = this.scanner;
                            int lineNumber3 = Util.getLineNumber(i47, scanner5.lineEnds, 0, scanner5.linePtr);
                            int i48 = abstractMethodDeclaration3.sourceEnd;
                            Scanner scanner6 = this.scanner;
                            if (lineNumber3 == Util.getLineNumber(i48, scanner6.lineEnds, 0, scanner6.linePtr)) {
                                return;
                            }
                        }
                    }
                    ASTNode aSTNode12 = this.assistNode;
                    if (expression2 == aSTNode12 || (((expression2 instanceof Assignment) && ((Assignment) expression2).expression == aSTNode12 && (((i12 = this.expressionPtr) > 0 && stackHasInstanceOfExpression(this.expressionStack, i12 - 1)) || ((i13 = this.elementPtr) >= 0 && stackHasInstanceOfExpression(this.elementObjectInfoStack, i13)))) || (((expression2 instanceof AllocationExpression) && ((AllocationExpression) expression2).type == this.assistNode) || (((expression2 instanceof AND_AND_Expression) && (i11 = this.elementPtr) >= 0 && (this.elementObjectInfoStack[i11] instanceof InstanceOfExpression)) || ((expression2 instanceof ConditionalExpression) && ((ConditionalExpression) expression2).valueIfFalse == this.assistNode))))) {
                        buildMoreCompletionContext(expression2);
                        if (this.assistNodeParent == null && (expression2 instanceof Assignment)) {
                            this.assistNodeParent = completionNodeDetector3.getCompletionNodeParent();
                            return;
                        }
                        return;
                    }
                    ASTNode completionNodeParent = completionNodeDetector3.getCompletionNodeParent();
                    this.assistNodeParent = completionNodeParent;
                    if (completionNodeParent != null) {
                        this.currentElement = this.currentElement.add((Statement) completionNodeParent, 0);
                        return;
                    } else {
                        this.currentElement = this.currentElement.add(expression2, 0);
                        return;
                    }
                }
            }
            int i49 = this.astPtr;
            if (i49 > -1) {
                ASTNode aSTNode13 = this.astStack[i49];
                if (aSTNode13 instanceof LocalDeclaration) {
                    LocalDeclaration localDeclaration = (LocalDeclaration) aSTNode13;
                    if (localDeclaration.initialization == this.assistNode) {
                        Statement buildMoreCompletionEnclosingContext = buildMoreCompletionEnclosingContext(localDeclaration);
                        if (buildMoreCompletionEnclosingContext instanceof IfStatement) {
                            RecoveredElement recoveredElement5 = this.currentElement;
                            if (recoveredElement5 instanceof RecoveredBlock) {
                                RecoveredBlock recoveredBlock = (RecoveredBlock) recoveredElement5;
                                RecoveredStatement[] recoveredStatementArr = recoveredBlock.statements;
                                int i50 = recoveredBlock.statementCount - 1;
                                recoveredBlock.statementCount = i50;
                                recoveredStatementArr[i50] = null;
                                this.currentElement = recoveredElement5.add(buildMoreCompletionEnclosingContext, 0);
                            }
                        }
                    }
                }
            }
        }
    }

    @Override
    public TypeReference augmentTypeWithAdditionalDimensions(TypeReference typeReference, int i10, Annotation[][] annotationArr, boolean z10) {
        if (this.assistNode == typeReference) {
            return typeReference;
        }
        TypeReference augmentTypeWithAdditionalDimensions = super.augmentTypeWithAdditionalDimensions(typeReference, i10, annotationArr, z10);
        if (this.assistNodeParent == typeReference) {
            this.assistNodeParent = augmentTypeWithAdditionalDimensions;
        }
        return augmentTypeWithAdditionalDimensions;
    }

    @Override
    public Object becomeSimpleParser() {
        CompletionScanner completionScanner = (CompletionScanner) this.scanner;
        SavedState savedState = new SavedState(this.cursorLocation, completionScanner.cursorLocation, this.assistNodeParent);
        this.cursorLocation = Integer.MAX_VALUE;
        completionScanner.cursorLocation = Integer.MAX_VALUE;
        return savedState;
    }

    @Override
    public int bodyEnd(AbstractMethodDeclaration abstractMethodDeclaration) {
        return this.cursorLocation;
    }

    @Override
    public void checkAndSetModifiers(int i10) {
        super.checkAndSetModifiers(i10);
        if (isInsideMethod()) {
            this.hasUnusedModifiers = true;
        }
    }

    public void completionIdentifierCheck() {
        if (checkMemberValueName() || checkKeyword() || checkModuleInfoConstructs() || checkRecoveredType() || checkRecoveredMethod()) {
            return;
        }
        if ((isInsideMethod() && !this.diet) || isIndirectlyInsideFieldInitialization() || isIndirectlyInsideEnumConstantnitialization() || isInsideAttributeValue() || isInsideModuleInfo()) {
            if (assistIdentifier() == null && this.currentToken == 22) {
                int i10 = this.cursorLocation;
                Scanner scanner = this.scanner;
                int i11 = scanner.startPosition;
                if (i10 < i11 && scanner.currentPosition == i11) {
                    pushIdentifier();
                } else if (i10 + 1 >= i11 && i10 < scanner.currentPosition) {
                    pushIdentifier();
                }
            }
            if ((this.assistNode != null && (!isEmptyNameCompletion() || checkInvocation())) || indexOfAssistIdentifier() < 0 || checkModuleInfoConstructs() || checkClassInstanceCreation() || checkMemberAccess() || checkClassLiteralAccess() || checkInstanceofKeyword() || checkInvocation() || checkParemeterizedType() || checkParemeterizedMethodName() || checkLabelStatement()) {
                return;
            }
            checkNameCompletion();
        }
    }

    @Override
    public void consumeAdditionalBound() {
        super.consumeAdditionalBound();
        ASTNode aSTNode = this.genericsStack[this.genericsPtr];
        if (aSTNode instanceof CompletionOnSingleTypeReference) {
            ((CompletionOnSingleTypeReference) aSTNode).setKind(2);
        } else if (aSTNode instanceof CompletionOnQualifiedTypeReference) {
            ((CompletionOnQualifiedTypeReference) aSTNode).setKind(2);
        }
    }

    @Override
    public void consumeAdditionalBound1() {
        super.consumeAdditionalBound1();
        ASTNode aSTNode = this.genericsStack[this.genericsPtr];
        if (aSTNode instanceof CompletionOnSingleTypeReference) {
            ((CompletionOnSingleTypeReference) aSTNode).setKind(2);
        } else if (aSTNode instanceof CompletionOnQualifiedTypeReference) {
            ((CompletionOnQualifiedTypeReference) aSTNode).setKind(2);
        }
    }

    @Override
    public void consumeAnnotationAsModifier() {
        super.consumeAnnotationAsModifier();
        if (isInsideMethod()) {
            this.hasUnusedModifiers = true;
        }
    }

    @Override
    public void consumeAnnotationName() {
        int indexOfAssistIdentifier = indexOfAssistIdentifier();
        if (indexOfAssistIdentifier < 0) {
            super.consumeAnnotationName();
            pushOnElementStack(K_BETWEEN_ANNOTATION_NAME_AND_RPAREN, 1);
            return;
        }
        if (isInImportStatement()) {
            return;
        }
        int i10 = this.identifierLengthStack[this.identifierLengthPtr];
        char[][] identifierSubSet = identifierSubSet(indexOfAssistIdentifier);
        this.identifierLengthPtr--;
        int i11 = this.identifierPtr - i10;
        this.identifierPtr = i11;
        long[] jArr = new long[i10];
        System.arraycopy(this.identifierPositionStack, i11 + 1, jArr, 0, i10);
        TypeReference createSingleAssistTypeReference = indexOfAssistIdentifier == 0 ? createSingleAssistTypeReference(assistIdentifier(), jArr[0]) : createQualifiedAssistTypeReference(identifierSubSet, assistIdentifier(), jArr);
        CompletionOnMarkerAnnotationName completionOnMarkerAnnotationName = new CompletionOnMarkerAnnotationName(createSingleAssistTypeReference, createSingleAssistTypeReference.sourceStart);
        this.intPtr--;
        completionOnMarkerAnnotationName.declarationSourceEnd = completionOnMarkerAnnotationName.sourceEnd;
        pushOnExpressionStack(completionOnMarkerAnnotationName);
        this.assistNode = completionOnMarkerAnnotationName;
        this.isOrphanCompletionNode = true;
        this.lastCheckPoint = completionOnMarkerAnnotationName.sourceEnd + 1;
        pushOnElementStack(K_BETWEEN_ANNOTATION_NAME_AND_RPAREN, 5);
    }

    @Override
    public void consumeAnnotationTypeDeclarationHeaderName() {
        super.consumeAnnotationTypeDeclarationHeaderName();
        this.hasUnusedModifiers = false;
        CompletionOnAnnotationOfType completionOnAnnotationOfType = this.pendingAnnotation;
        if (completionOnAnnotationOfType != null) {
            completionOnAnnotationOfType.potentialAnnotatedNode = this.astStack[this.astPtr];
            this.pendingAnnotation = null;
        }
    }

    @Override
    public void consumeAnnotationTypeDeclarationHeaderNameWithTypeParameters() {
        super.consumeAnnotationTypeDeclarationHeaderNameWithTypeParameters();
        this.hasUnusedModifiers = false;
        CompletionOnAnnotationOfType completionOnAnnotationOfType = this.pendingAnnotation;
        if (completionOnAnnotationOfType != null) {
            completionOnAnnotationOfType.potentialAnnotatedNode = this.astStack[this.astPtr];
            this.pendingAnnotation = null;
        }
    }

    @Override
    public void consumeArrayCreationExpressionWithInitializer() {
        super.consumeArrayCreationExpressionWithInitializer();
        popElement(K_ARRAY_CREATION);
    }

    @Override
    public void consumeArrayCreationExpressionWithoutInitializer() {
        super.consumeArrayCreationExpressionWithoutInitializer();
        popElement(K_ARRAY_CREATION);
    }

    @Override
    public void consumeArrayCreationHeader() {
    }

    @Override
    public void consumeAssignment() {
        popElement(K_ASSISGNMENT_OPERATOR);
        super.consumeAssignment();
    }

    @Override
    public void consumeAssignmentOperator(int i10) {
        super.consumeAssignmentOperator(i10);
        pushOnElementStack(K_ASSISGNMENT_OPERATOR, i10);
    }

    @Override
    public void consumeBinaryExpression(int i10) {
        super.consumeBinaryExpression(i10);
        popElement(1040);
        Expression expression = this.expressionStack[this.expressionPtr];
        if (expression instanceof BinaryExpression) {
            BinaryExpression binaryExpression = (BinaryExpression) expression;
            ASTNode aSTNode = this.assistNode;
            if (aSTNode == null || binaryExpression.right != aSTNode) {
                return;
            }
            this.assistNodeParent = binaryExpression;
        }
    }

    @Override
    public void consumeBinaryExpressionWithName(int i10) {
        super.consumeBinaryExpressionWithName(i10);
        popElement(1040);
        Expression expression = this.expressionStack[this.expressionPtr];
        if (expression instanceof BinaryExpression) {
            BinaryExpression binaryExpression = (BinaryExpression) expression;
            ASTNode aSTNode = this.assistNode;
            if (aSTNode == null || binaryExpression.right != aSTNode) {
                return;
            }
            this.assistNodeParent = binaryExpression;
        }
    }

    @Override
    public void consumeBlockStatement() {
        ASTNode aSTNode;
        super.consumeBlockStatement();
        if (!this.shouldStackAssistNode || (aSTNode = this.assistNode) == null) {
            return;
        }
        Statement statement = (Statement) this.astStack[this.astPtr];
        if (statement.sourceStart > aSTNode.sourceStart || statement.sourceEnd < aSTNode.sourceEnd) {
            return;
        }
        this.shouldStackAssistNode = false;
    }

    @Override
    public void consumeCaseLabel() {
        super.consumeCaseLabel();
        if (topKnownElementKind(1536) != K_SWITCH_LABEL) {
            pushOnElementStack(K_SWITCH_LABEL);
        }
    }

    @Override
    public void consumeCastExpressionLL1() {
        popElement(K_CAST_STATEMENT);
        super.consumeCastExpressionLL1();
    }

    @Override
    public void consumeCastExpressionWithGenericsArray() {
        popElement(K_CAST_STATEMENT);
        int i10 = this.expressionPtr - 1;
        this.expressionPtr = i10;
        this.expressionLengthPtr--;
        Expression[] expressionArr = this.expressionStack;
        Expression[] expressionArr2 = this.expressionStack;
        int i11 = this.expressionPtr;
        Expression expression = expressionArr2[i11 + 1];
        CastExpression castExpression = new CastExpression(expression, (TypeReference) expressionArr2[i11]);
        expressionArr[i10] = castExpression;
        castExpression.sourceStart = r3.sourceStart - 1;
        castExpression.sourceEnd = expression.sourceEnd;
    }

    @Override
    public void consumeCastExpressionWithNameArray() {
        popElement(K_CAST_STATEMENT);
        int i10 = this.expressionPtr - 1;
        this.expressionPtr = i10;
        this.expressionLengthPtr--;
        Expression[] expressionArr = this.expressionStack;
        Expression[] expressionArr2 = this.expressionStack;
        int i11 = this.expressionPtr;
        Expression expression = expressionArr2[i11 + 1];
        CastExpression castExpression = new CastExpression(expression, (TypeReference) expressionArr2[i11]);
        expressionArr[i10] = castExpression;
        castExpression.sourceStart = r3.sourceStart - 1;
        castExpression.sourceEnd = expression.sourceEnd;
    }

    @Override
    public void consumeCastExpressionWithPrimitiveType() {
        popElement(K_CAST_STATEMENT);
        int i10 = this.expressionPtr - 1;
        this.expressionPtr = i10;
        this.expressionLengthPtr--;
        Expression[] expressionArr = this.expressionStack;
        Expression[] expressionArr2 = this.expressionStack;
        int i11 = this.expressionPtr;
        Expression expression = expressionArr2[i11 + 1];
        CastExpression castExpression = new CastExpression(expression, (TypeReference) expressionArr2[i11]);
        expressionArr[i10] = castExpression;
        castExpression.sourceStart = r3.sourceStart - 1;
        castExpression.sourceEnd = expression.sourceEnd;
    }

    @Override
    public void consumeCastExpressionWithQualifiedGenericsArray() {
        popElement(K_CAST_STATEMENT);
        int i10 = this.expressionPtr - 1;
        this.expressionPtr = i10;
        this.expressionLengthPtr--;
        Expression[] expressionArr = this.expressionStack;
        Expression[] expressionArr2 = this.expressionStack;
        int i11 = this.expressionPtr;
        Expression expression = expressionArr2[i11 + 1];
        CastExpression castExpression = new CastExpression(expression, (TypeReference) expressionArr2[i11]);
        expressionArr[i10] = castExpression;
        castExpression.sourceStart = r3.sourceStart - 1;
        castExpression.sourceEnd = expression.sourceEnd;
    }

    @Override
    public void consumeCatchFormalParameter() {
        if (indexOfAssistIdentifier() < 0) {
            super.consumeCatchFormalParameter();
            CompletionOnAnnotationOfType completionOnAnnotationOfType = this.pendingAnnotation;
            if (completionOnAnnotationOfType != null) {
                completionOnAnnotationOfType.potentialAnnotatedNode = this.astStack[this.astPtr];
                this.pendingAnnotation = null;
                return;
            }
            return;
        }
        this.identifierLengthPtr--;
        char[][] cArr = this.identifierStack;
        int i10 = this.identifierPtr;
        char[] cArr2 = cArr[i10];
        long[] jArr = this.identifierPositionStack;
        this.identifierPtr = i10 - 1;
        long j10 = jArr[i10];
        int i11 = this.intPtr;
        this.intPtr = i11 - 1;
        ASTNode[] aSTNodeArr = this.astStack;
        int i12 = this.astPtr;
        this.astPtr = i12 - 1;
        TypeReference typeReference = (TypeReference) aSTNodeArr[i12];
        this.intPtr = i11 - 3;
        CompletionOnArgumentName completionOnArgumentName = new CompletionOnArgumentName(cArr2, j10, typeReference, this.intStack[this.intPtr + 1] & (-1048577));
        completionOnArgumentName.bits &= -5;
        int[] iArr = this.expressionLengthStack;
        int i13 = this.expressionLengthPtr;
        this.expressionLengthPtr = i13 - 1;
        int i14 = iArr[i13];
        if (i14 != 0) {
            Expression[] expressionArr = this.expressionStack;
            int i15 = this.expressionPtr - i14;
            this.expressionPtr = i15;
            Annotation[] annotationArr = new Annotation[i14];
            completionOnArgumentName.annotations = annotationArr;
            System.arraycopy(expressionArr, i15 + 1, annotationArr, 0, i14);
        }
        completionOnArgumentName.isCatchArgument = topKnownElementKind(1536) == 1028;
        pushOnAstStack(completionOnArgumentName);
        this.assistNode = completionOnArgumentName;
        this.lastCheckPoint = (int) j10;
        this.isOrphanCompletionNode = true;
        this.listLength++;
    }

    @Override
    public void consumeClassBodyDeclaration() {
        popElement(1025);
        super.consumeClassBodyDeclaration();
        this.pendingAnnotation = null;
    }

    @Override
    public void consumeClassBodyopt() {
        popElement(K_SELECTOR_QUALIFIER);
        popElement(K_SELECTOR_INVOCATION_TYPE);
        super.consumeClassBodyopt();
    }

    @Override
    public void consumeClassDeclaration() {
        int i10;
        int i11 = this.astPtr;
        if (i11 >= 0) {
            TypeDeclaration typeDeclaration = (TypeDeclaration) this.astStack[i11 - this.astLengthStack[this.astLengthPtr]];
            this.javadoc = null;
            CompletionJavadocParser completionJavadocParser = (CompletionJavadocParser) this.javadocParser;
            completionJavadocParser.allPossibleTags = true;
            checkComment();
            Javadoc javadoc = this.javadoc;
            if (javadoc != null && (i10 = this.cursorLocation) > javadoc.sourceStart && i10 < javadoc.sourceEnd) {
                typeDeclaration.javadoc = javadoc;
            }
            completionJavadocParser.allPossibleTags = false;
        }
        super.consumeClassDeclaration();
    }

    @Override
    public void consumeClassHeaderExtends() {
        TypeDeclaration typeDeclaration;
        pushOnElementStack(1029);
        super.consumeClassHeaderExtends();
        ASTNode aSTNode = this.assistNode;
        if (aSTNode != null && this.assistNodeParent == null && (typeDeclaration = (TypeDeclaration) this.astStack[this.astPtr]) != null && typeDeclaration.superclass == aSTNode) {
            this.assistNodeParent = typeDeclaration;
        }
        popElement(1029);
        popElement(K_EXTENDS_KEYWORD);
        if (this.currentElement == null || this.currentToken != 22) {
            return;
        }
        int i10 = this.cursorLocation;
        int i11 = i10 + 1;
        Scanner scanner = this.scanner;
        if (i11 < scanner.startPosition || i10 >= scanner.currentPosition) {
            return;
        }
        pushIdentifier();
        int indexOfAssistIdentifier = indexOfAssistIdentifier();
        if (indexOfAssistIdentifier > -1) {
            int i12 = (this.identifierPtr - this.identifierLengthStack[this.identifierLengthPtr]) + indexOfAssistIdentifier + 1;
            RecoveredType recoveredType = (RecoveredType) this.currentElement;
            if (recoveredType.foundOpeningBrace) {
                return;
            }
            TypeDeclaration typeDeclaration2 = recoveredType.typeDeclaration;
            if (typeDeclaration2.superInterfaces == null) {
                CompletionOnKeyword1 completionOnKeyword1 = new CompletionOnKeyword1(this.identifierStack[i12], this.identifierPositionStack[i12], Keywords.IMPLEMENTS);
                typeDeclaration2.superclass = completionOnKeyword1;
                completionOnKeyword1.bits |= 16;
                this.assistNode = completionOnKeyword1;
                this.lastCheckPoint = completionOnKeyword1.sourceEnd + 1;
            }
        }
    }

    @Override
    public void consumeClassHeaderImplements() {
        TypeDeclaration typeDeclaration;
        super.consumeClassHeaderImplements();
        if (this.assistNode == null || this.assistNodeParent != null || (typeDeclaration = (TypeDeclaration) this.astStack[this.astPtr]) == null) {
            return;
        }
        TypeReference[] typeReferenceArr = typeDeclaration.superInterfaces;
        int length = typeReferenceArr == null ? 0 : typeReferenceArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (typeReferenceArr[i10] == this.assistNode) {
                this.assistNodeParent = typeDeclaration;
            }
        }
    }

    @Override
    public void consumeClassHeaderName1() {
        super.consumeClassHeaderName1();
        this.hasUnusedModifiers = false;
        CompletionOnAnnotationOfType completionOnAnnotationOfType = this.pendingAnnotation;
        if (completionOnAnnotationOfType != null) {
            completionOnAnnotationOfType.potentialAnnotatedNode = this.astStack[this.astPtr];
            this.pendingAnnotation = null;
        }
        classHeaderExtendsOrImplements(false);
    }

    @Override
    public void consumeClassInstanceCreationExpressionName() {
        super.consumeClassInstanceCreationExpressionName();
        this.invocationType = -5;
        this.qualifier = this.expressionPtr;
    }

    @Override
    public void consumeClassTypeElt() {
        pushOnElementStack(K_NEXT_TYPEREF_IS_EXCEPTION);
        super.consumeClassTypeElt();
        popElement(K_NEXT_TYPEREF_IS_EXCEPTION);
    }

    @Override
    public void consumeCompilationUnit() {
        int i10;
        this.javadoc = null;
        checkComment();
        Javadoc javadoc = this.javadoc;
        if (javadoc != null && (i10 = this.cursorLocation) > javadoc.sourceStart && i10 < javadoc.sourceEnd) {
            CompilationUnitDeclaration compilationUnitDeclaration = this.compilationUnit;
            compilationUnitDeclaration.javadoc = javadoc;
            if (compilationUnitDeclaration.types == null) {
                compilationUnitDeclaration.types = new TypeDeclaration[1];
                TypeDeclaration typeDeclaration = new TypeDeclaration(this.compilationUnit.compilationResult);
                typeDeclaration.name = FAKE_TYPE_NAME;
                typeDeclaration.modifiers = 512;
                this.compilationUnit.types[0] = typeDeclaration;
            }
        }
        super.consumeCompilationUnit();
    }

    @Override
    public void consumeConditionalExpression(int i10) {
        popElement(K_CONDITIONAL_OPERATOR);
        super.consumeConditionalExpression(i10);
    }

    @Override
    public void consumeConditionalExpressionWithName(int i10) {
        popElement(K_CONDITIONAL_OPERATOR);
        super.consumeConditionalExpressionWithName(i10);
    }

    @Override
    public void consumeConstructorBody() {
        popElement(1025);
        super.consumeConstructorBody();
    }

    @Override
    public void consumeConstructorHeader() {
        super.consumeConstructorHeader();
        pushOnElementStack(1025);
    }

    @Override
    public void consumeConstructorHeaderName() {
        int i10;
        if (indexOfAssistIdentifier() >= 0) {
            if (this.currentElement == null) {
                this.hasReportedError = true;
            }
            pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[this.identifierLengthPtr]);
            pushOnGenericsLengthStack(0);
            this.restartRecovery = true;
            return;
        }
        int i11 = (int) this.identifierPositionStack[this.identifierPtr];
        int i12 = this.astPtr;
        if (this.currentElement == null || this.lastIgnoredToken != 36) {
            super.consumeConstructorHeaderName();
            CompletionOnAnnotationOfType completionOnAnnotationOfType = this.pendingAnnotation;
            if (completionOnAnnotationOfType != null) {
                completionOnAnnotationOfType.potentialAnnotatedNode = this.astStack[this.astPtr];
                this.pendingAnnotation = null;
            }
        } else {
            super.consumeConstructorHeaderName();
        }
        HashtableOfObjectToInt hashtableOfObjectToInt = this.sourceEnds;
        if (hashtableOfObjectToInt == null || (i10 = this.astPtr) <= i12) {
            return;
        }
        hashtableOfObjectToInt.put(this.astStack[i10], i11);
    }

    @Override
    public void consumeConstructorHeaderNameWithTypeParameters() {
        int i10;
        int i11 = (int) this.identifierPositionStack[this.identifierPtr];
        int i12 = this.astPtr;
        if (this.currentElement == null || this.lastIgnoredToken != 36) {
            super.consumeConstructorHeaderNameWithTypeParameters();
            CompletionOnAnnotationOfType completionOnAnnotationOfType = this.pendingAnnotation;
            if (completionOnAnnotationOfType != null) {
                completionOnAnnotationOfType.potentialAnnotatedNode = this.astStack[this.astPtr];
                this.pendingAnnotation = null;
            }
        } else {
            super.consumeConstructorHeaderNameWithTypeParameters();
        }
        HashtableOfObjectToInt hashtableOfObjectToInt = this.sourceEnds;
        if (hashtableOfObjectToInt == null || (i10 = this.astPtr) <= i12) {
            return;
        }
        hashtableOfObjectToInt.put(this.astStack[i10], i11);
    }

    @Override
    public void consumeDefaultLabel() {
        super.consumeDefaultLabel();
        if (topKnownElementKind(1536) == K_SWITCH_LABEL) {
            popElement(K_SWITCH_LABEL);
        }
        pushOnElementStack(K_SWITCH_LABEL, 1);
    }

    @Override
    public void consumeDimWithOrWithOutExpr() {
        pushOnExpressionStack(null);
    }

    @Override
    public void consumeEmptyStatement() {
        ASTNode aSTNode;
        super.consumeEmptyStatement();
        if (this.shouldStackAssistNode && (aSTNode = this.assistNode) != null) {
            ASTNode[] aSTNodeArr = this.astStack;
            int i10 = this.astPtr;
            ASTNode aSTNode2 = this.assistNodeParent;
            if (aSTNode2 instanceof MessageSend) {
                aSTNode = aSTNode2;
            }
            aSTNodeArr[i10] = aSTNode;
        }
        this.shouldStackAssistNode = false;
    }

    @Override
    public void consumeEnhancedForStatement() {
        super.consumeEnhancedForStatement();
        if (topKnownElementKind(1536) == K_CONTROL_STATEMENT_DELIMITER) {
            popElement(K_CONTROL_STATEMENT_DELIMITER);
        }
    }

    @Override
    public void consumeEnhancedForStatementHeader() {
        this.consumedEnhancedFor = true;
        super.consumeEnhancedForStatementHeader();
    }

    @Override
    public void consumeEnhancedForStatementHeaderInit(boolean z10) {
        super.consumeEnhancedForStatementHeaderInit(z10);
        this.hasUnusedModifiers = false;
        CompletionOnAnnotationOfType completionOnAnnotationOfType = this.pendingAnnotation;
        if (completionOnAnnotationOfType != null) {
            completionOnAnnotationOfType.potentialAnnotatedNode = this.astStack[this.astPtr];
            this.pendingAnnotation = null;
        }
    }

    @Override
    public void consumeEnterAnonymousClassBody(boolean z10) {
        popElement(K_SELECTOR_QUALIFIER);
        popElement(K_SELECTOR_INVOCATION_TYPE);
        super.consumeEnterAnonymousClassBody(z10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0080, code lost:
    
        if (r4 != org.eclipse.jdt.internal.compiler.util.Util.getLineNumber(r0, r5.lineEnds, 0, r5.linePtr)) goto L26;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void consumeEnterVariable() {
        RecoveredElement recoveredElement;
        this.identifierPtr--;
        this.identifierLengthPtr--;
        int[] iArr = this.nestedMethod;
        int i10 = this.nestedType;
        boolean z10 = iArr[i10] != 0;
        int i11 = this.variablesCounter[i10];
        this.hasUnusedModifiers = false;
        if (z10 || indexOfAssistIdentifier() < 0 || i11 != 0) {
            this.identifierPtr++;
            this.identifierLengthPtr++;
            if (this.pendingAnnotation != null && this.assistNode != null && (recoveredElement = this.currentElement) != null && (recoveredElement instanceof RecoveredMethod) && !recoveredElement.foundOpeningBrace && ((RecoveredMethod) recoveredElement).methodDeclaration.declarationSourceEnd == 0) {
                super.consumeEnterVariable();
                CompletionOnAnnotationOfType completionOnAnnotationOfType = this.pendingAnnotation;
                completionOnAnnotationOfType.potentialAnnotatedNode = this.astStack[this.astPtr];
                completionOnAnnotationOfType.isParameter = true;
                this.pendingAnnotation = null;
                return;
            }
            super.consumeEnterVariable();
            CompletionOnAnnotationOfType completionOnAnnotationOfType2 = this.pendingAnnotation;
            if (completionOnAnnotationOfType2 != null) {
                completionOnAnnotationOfType2.potentialAnnotatedNode = this.astStack[this.astPtr];
                this.pendingAnnotation = null;
                return;
            }
            return;
        }
        this.restartRecovery = true;
        if (this.currentElement == null || checkKeyword()) {
            return;
        }
        RecoveredElement recoveredElement2 = this.currentElement;
        if ((recoveredElement2 instanceof RecoveredUnit) && ((RecoveredUnit) recoveredElement2).typeCount == 0) {
            return;
        }
        int i12 = (int) (this.identifierPositionStack[this.identifierPtr] >>> 32);
        int i13 = this.intPtr;
        int[] iArr2 = this.intStack;
        this.intPtr = i13 - 2;
        TypeReference typeReference = getTypeReference(iArr2[i13 - 1]);
        this.intPtr--;
        if (!(this.currentElement instanceof RecoveredType)) {
            if (this.currentToken != 1) {
                int i14 = typeReference.sourceStart;
                Scanner scanner = this.scanner;
                int lineNumber = Util.getLineNumber(i14, scanner.lineEnds, 0, scanner.linePtr);
                Scanner scanner2 = this.scanner;
            }
            this.lastCheckPoint = i12;
            this.restartRecovery = true;
            return;
        }
        CompletionOnFieldType completionOnFieldType = new CompletionOnFieldType(typeReference, false);
        int[] iArr3 = this.expressionLengthStack;
        int i15 = this.expressionLengthPtr;
        this.expressionLengthPtr = i15 - 1;
        int i16 = iArr3[i15];
        if (i16 != 0) {
            Expression[] expressionArr = this.expressionStack;
            int i17 = this.expressionPtr - i16;
            this.expressionPtr = i17;
            Annotation[] annotationArr = new Annotation[i16];
            completionOnFieldType.annotations = annotationArr;
            System.arraycopy(expressionArr, i17 + 1, annotationArr, 0, i16);
        }
        int[] iArr4 = this.intStack;
        int i18 = this.intPtr;
        this.intPtr = i18 - 1;
        completionOnFieldType.modifiers = iArr4[i18];
        this.assistNode = completionOnFieldType;
        this.lastCheckPoint = typeReference.sourceEnd + 1;
        this.currentElement = this.currentElement.add((FieldDeclaration) completionOnFieldType, 0);
        this.lastIgnoredToken = -1;
    }

    @Override
    public void consumeEnumConstantHeaderName() {
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null && ((!(recoveredElement instanceof RecoveredType) && (!(recoveredElement instanceof RecoveredField) || ((RecoveredField) recoveredElement).fieldDeclaration.type != null)) || this.lastIgnoredToken == 1)) {
            super.consumeEnumConstantHeaderName();
            return;
        }
        super.consumeEnumConstantHeaderName();
        CompletionOnAnnotationOfType completionOnAnnotationOfType = this.pendingAnnotation;
        if (completionOnAnnotationOfType != null) {
            completionOnAnnotationOfType.potentialAnnotatedNode = this.astStack[this.astPtr];
            this.pendingAnnotation = null;
        }
    }

    @Override
    public void consumeEnumConstantNoClassBody() {
        HashtableOfObjectToInt hashtableOfObjectToInt;
        super.consumeEnumConstantNoClassBody();
        int i10 = this.currentToken;
        if (i10 == 32 || i10 == 26) {
            ASTNode aSTNode = this.astStack[this.astPtr];
            if (!(aSTNode instanceof FieldDeclaration) || (hashtableOfObjectToInt = this.sourceEnds) == null) {
                return;
            }
            hashtableOfObjectToInt.put(aSTNode, this.scanner.currentPosition - 1);
        }
    }

    @Override
    public void consumeEnumConstantWithClassBody() {
        HashtableOfObjectToInt hashtableOfObjectToInt;
        super.consumeEnumConstantWithClassBody();
        int i10 = this.currentToken;
        if (i10 == 32 || i10 == 26) {
            ASTNode aSTNode = this.astStack[this.astPtr];
            if (!(aSTNode instanceof FieldDeclaration) || (hashtableOfObjectToInt = this.sourceEnds) == null) {
                return;
            }
            hashtableOfObjectToInt.put(aSTNode, this.scanner.currentPosition - 1);
        }
    }

    @Override
    public void consumeEnumHeaderName() {
        super.consumeEnumHeaderName();
        this.hasUnusedModifiers = false;
        CompletionOnAnnotationOfType completionOnAnnotationOfType = this.pendingAnnotation;
        if (completionOnAnnotationOfType != null) {
            completionOnAnnotationOfType.potentialAnnotatedNode = this.astStack[this.astPtr];
            this.pendingAnnotation = null;
        }
    }

    @Override
    public void consumeEnumHeaderNameWithTypeParameters() {
        super.consumeEnumHeaderNameWithTypeParameters();
        CompletionOnAnnotationOfType completionOnAnnotationOfType = this.pendingAnnotation;
        if (completionOnAnnotationOfType != null) {
            completionOnAnnotationOfType.potentialAnnotatedNode = this.astStack[this.astPtr];
            this.pendingAnnotation = null;
        }
    }

    @Override
    public void consumeEqualityExpression(int i10) {
        super.consumeEqualityExpression(i10);
        popElement(1040);
        BinaryExpression binaryExpression = (BinaryExpression) this.expressionStack[this.expressionPtr];
        ASTNode aSTNode = this.assistNode;
        if (aSTNode == null || binaryExpression.right != aSTNode) {
            return;
        }
        this.assistNodeParent = binaryExpression;
    }

    @Override
    public void consumeEqualityExpressionWithName(int i10) {
        super.consumeEqualityExpressionWithName(i10);
        popElement(1040);
        BinaryExpression binaryExpression = (BinaryExpression) this.expressionStack[this.expressionPtr];
        ASTNode aSTNode = this.assistNode;
        if (aSTNode == null || binaryExpression.right != aSTNode) {
            return;
        }
        this.assistNodeParent = binaryExpression;
    }

    @Override
    public void consumeExitVariableWithInitialization() {
        HashtableOfObjectToInt hashtableOfObjectToInt;
        super.consumeExitVariableWithInitialization();
        int i10 = this.currentToken;
        if (i10 == 32 || i10 == 26) {
            ASTNode aSTNode = this.astStack[this.astPtr];
            if ((aSTNode instanceof FieldDeclaration) && (hashtableOfObjectToInt = this.sourceEnds) != null) {
                hashtableOfObjectToInt.put(aSTNode, this.scanner.currentPosition - 1);
            }
        }
        AbstractVariableDeclaration abstractVariableDeclaration = (AbstractVariableDeclaration) this.astStack[this.astPtr];
        int i11 = this.cursorLocation;
        int i12 = i11 + 1;
        Expression expression = abstractVariableDeclaration.initialization;
        if (i12 >= expression.sourceStart && i11 <= expression.sourceEnd) {
            ASTNode aSTNode2 = this.assistNode;
            if (aSTNode2 != null && aSTNode2 == expression) {
                this.assistNodeParent = abstractVariableDeclaration;
            }
        } else if (!abstractVariableDeclaration.type.isTypeNameVar(null) && (!(abstractVariableDeclaration instanceof LocalDeclaration) || !((LocalDeclaration) abstractVariableDeclaration).isTypeNameVar(this.compilationUnit.scope))) {
            abstractVariableDeclaration.initialization = null;
        }
        if (!triggerRecoveryUponLambdaClosure(abstractVariableDeclaration, false) || this.currentElement == null) {
            return;
        }
        this.restartRecovery = true;
    }

    @Override
    public void consumeExitVariableWithoutInitialization() {
        HashtableOfObjectToInt hashtableOfObjectToInt;
        super.consumeExitVariableWithoutInitialization();
        int i10 = this.currentToken;
        if (i10 == 32 || i10 == 26) {
            ASTNode aSTNode = this.astStack[this.astPtr];
            if (!(aSTNode instanceof FieldDeclaration) || (hashtableOfObjectToInt = this.sourceEnds) == null) {
                return;
            }
            hashtableOfObjectToInt.put(aSTNode, this.scanner.currentPosition - 1);
        }
    }

    @Override
    public void consumeExplicitConstructorInvocation(int i10, int i11) {
        popElement(K_SELECTOR_QUALIFIER);
        popElement(K_SELECTOR_INVOCATION_TYPE);
        super.consumeExplicitConstructorInvocation(i10, i11);
    }

    @Override
    public void consumeExportsStatement() {
        super.consumeExportsStatement();
        popElement(1072);
        popElement(1068);
    }

    @Override
    public void consumeFieldAccess(boolean z10) {
        this.invocationType = -1;
        this.qualifier = -1;
        if (indexOfAssistIdentifier() < 0) {
            super.consumeFieldAccess(z10);
        } else {
            pushCompletionOnMemberAccessOnExpressionStack(z10);
        }
    }

    @Override
    public void consumeForceNoDiet() {
        super.consumeForceNoDiet();
        if (isInsideMethod()) {
            pushOnElementStack(K_LOCAL_INITIALIZER_DELIMITER);
        }
    }

    @Override
    public void consumeFormalParameter(boolean z10) {
        Annotation[] annotationArr;
        int i10;
        this.invocationType = -1;
        this.qualifier = -1;
        if (indexOfAssistIdentifier() < 0) {
            super.consumeFormalParameter(z10);
            CompletionOnAnnotationOfType completionOnAnnotationOfType = this.pendingAnnotation;
            if (completionOnAnnotationOfType != null) {
                completionOnAnnotationOfType.potentialAnnotatedNode = this.astStack[this.astPtr];
                this.pendingAnnotation = null;
                return;
            }
            return;
        }
        int[] iArr = this.intStack;
        int i11 = this.intPtr;
        int i12 = i11 - 1;
        this.intPtr = i12;
        if (iArr[i11] == 0) {
            this.expressionPtr--;
            this.expressionLengthPtr--;
        }
        this.identifierLengthPtr--;
        char[][] cArr = this.identifierStack;
        int i13 = this.identifierPtr;
        char[] cArr2 = cArr[i13];
        long[] jArr = this.identifierPositionStack;
        this.identifierPtr = i13 - 1;
        long j10 = jArr[i13];
        this.intPtr = i11 - 2;
        int i14 = iArr[i12];
        Annotation[][] annotationsOnDimensions = i14 == 0 ? null : getAnnotationsOnDimensions(i14);
        if (z10) {
            int[] iArr2 = this.intStack;
            int i15 = this.intPtr;
            this.intPtr = i15 - 1;
            i10 = iArr2[i15];
            int[] iArr3 = this.typeAnnotationLengthStack;
            int i16 = this.typeAnnotationLengthPtr;
            this.typeAnnotationLengthPtr = i16 - 1;
            int i17 = iArr3[i16];
            if (i17 != 0) {
                Annotation[] annotationArr2 = this.typeAnnotationStack;
                int i18 = this.typeAnnotationPtr - i17;
                this.typeAnnotationPtr = i18;
                annotationArr = new Annotation[i17];
                System.arraycopy(annotationArr2, i18 + 1, annotationArr, 0, i17);
            } else {
                annotationArr = null;
            }
        } else {
            annotationArr = null;
            i10 = 0;
        }
        int[] iArr4 = this.intStack;
        int i19 = this.intPtr;
        this.intPtr = i19 - 1;
        TypeReference typeReference = getTypeReference(iArr4[i19]);
        if (z10 || i14 != 0) {
            if (z10) {
                typeReference = augmentTypeWithAdditionalDimensions(typeReference, 1, annotationArr != null ? new Annotation[][]{annotationArr} : null, true);
            }
            if (i14 != 0) {
                typeReference = augmentTypeWithAdditionalDimensions(typeReference, i14, annotationsOnDimensions, false);
            }
            typeReference.sourceEnd = typeReference.isParameterizedTypeReference() ? this.endStatementPosition : this.endPosition;
        }
        TypeReference typeReference2 = typeReference;
        if (z10) {
            if (i14 == 0) {
                typeReference2.sourceEnd = i10;
            }
            typeReference2.bits |= 16384;
        }
        this.intPtr -= 2;
        CompletionOnArgumentName completionOnArgumentName = new CompletionOnArgumentName(cArr2, j10, typeReference2, this.intStack[this.intPtr + 1] & (-1048577));
        int[] iArr5 = this.expressionLengthStack;
        int i20 = this.expressionLengthPtr;
        this.expressionLengthPtr = i20 - 1;
        int i21 = iArr5[i20];
        if (i21 != 0) {
            Expression[] expressionArr = this.expressionStack;
            int i22 = this.expressionPtr - i21;
            this.expressionPtr = i22;
            Annotation[] annotationArr3 = new Annotation[i21];
            completionOnArgumentName.annotations = annotationArr3;
            System.arraycopy(expressionArr, i22 + 1, annotationArr3, 0, i21);
            RecoveredType currentRecoveryType = currentRecoveryType();
            if (currentRecoveryType != null) {
                currentRecoveryType.annotationsConsumed(completionOnArgumentName.annotations);
            }
        }
        completionOnArgumentName.isCatchArgument = topKnownElementKind(1536) == 1028;
        pushOnAstStack(completionOnArgumentName);
        this.assistNode = completionOnArgumentName;
        this.lastCheckPoint = (int) j10;
        this.isOrphanCompletionNode = true;
        this.listLength++;
    }

    @Override
    public void consumeGenericTypeWithDiamond() {
        super.consumeGenericTypeWithDiamond();
        popElement(1040);
        popElement(1040);
    }

    @Override
    public void consumeImportDeclaration() {
        super.consumeImportDeclaration();
        popElement(K_INSIDE_IMPORT_STATEMENT);
    }

    @Override
    public void consumeInsideCastExpression() {
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
        this.intPtr = i13 - 1;
        int i14 = iArr2[i13];
        boolean z10 = topKnownElementKind(1536) == 1056;
        if (z10) {
            popElement(1056);
            int i15 = this.identifierLengthStack[this.identifierLengthPtr];
            if (i15 > 0) {
                pushOnGenericsIdentifiersLengthStack(i15);
            }
        } else {
            int i16 = this.identifierLengthStack[this.identifierLengthPtr];
            if (i16 > 0) {
                pushOnGenericsIdentifiersLengthStack(i16);
                pushOnGenericsLengthStack(0);
            }
        }
        int[] iArr3 = this.intStack;
        int i17 = this.intPtr;
        this.intPtr = i17 - 1;
        TypeReference typeReference = getTypeReference(iArr3[i17]);
        if (i11 > 0) {
            typeReferenceArr[0] = typeReference;
            typeReference = createIntersectionCastTypeReference(typeReferenceArr);
        }
        if (z10) {
            this.intPtr--;
        }
        typeReference.sourceEnd = i14 - 1;
        int[] iArr4 = this.intStack;
        int i18 = this.intPtr;
        this.intPtr = i18 - 1;
        typeReference.sourceStart = iArr4[i18] + 1;
        pushOnExpressionStack(typeReference);
        pushOnElementStack(K_CAST_STATEMENT);
    }

    @Override
    public void consumeInsideCastExpressionLL1() {
        if (topKnownElementKind(1536) == 1056) {
            popElement(1056);
        }
        if (this.record) {
            boolean z10 = this.skipRecord;
            try {
                this.skipRecord = true;
                super.consumeInsideCastExpressionLL1();
                if (this.record) {
                    Expression expression = this.expressionStack[this.expressionPtr];
                    if (!isAlreadyPotentialName(expression.sourceStart)) {
                        addPotentialName(null, expression.sourceStart, expression.sourceEnd);
                    }
                }
            } finally {
                this.skipRecord = z10;
            }
        } else {
            super.consumeInsideCastExpressionLL1();
        }
        pushOnElementStack(K_CAST_STATEMENT);
    }

    @Override
    public void consumeInsideCastExpressionLL1WithBounds() {
        if (topKnownElementKind(1536) == 1056) {
            popElement(1056);
        }
        if (this.record) {
            boolean z10 = this.skipRecord;
            try {
                this.skipRecord = true;
                super.consumeInsideCastExpressionLL1WithBounds();
                if (this.record) {
                    int i10 = this.expressionLengthStack[this.expressionLengthPtr];
                    for (int i11 = 0; i11 < i10; i11++) {
                        Expression expression = this.expressionStack[(this.expressionPtr - i10) + i11 + 1];
                        if (!isAlreadyPotentialName(expression.sourceStart)) {
                            addPotentialName(null, expression.sourceStart, expression.sourceEnd);
                        }
                    }
                }
            } finally {
                this.skipRecord = z10;
            }
        } else {
            super.consumeInsideCastExpressionLL1WithBounds();
        }
        pushOnElementStack(K_CAST_STATEMENT);
    }

    @Override
    public void consumeInsideCastExpressionWithQualifiedGenerics() {
        popElement(1056);
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        int i11 = i10 - 1;
        this.intPtr = i11;
        int i12 = iArr[i10];
        this.intPtr = i10 - 2;
        int i13 = iArr[i11];
        TypeReference[] typeReferenceArr = null;
        Annotation[][] annotationsOnDimensions = i13 == 0 ? null : getAnnotationsOnDimensions(i13);
        int[] iArr2 = this.genericsLengthStack;
        int i14 = this.genericsLengthPtr;
        this.genericsLengthPtr = i14 - 1;
        int i15 = iArr2[i14];
        if (i15 > 0) {
            typeReferenceArr = new TypeReference[i15 + 1];
            int i16 = this.genericsPtr - i15;
            this.genericsPtr = i16;
            System.arraycopy(this.genericsStack, i16 + 1, typeReferenceArr, 1, i15);
        }
        Expression computeQualifiedGenericsFromRightSide = computeQualifiedGenericsFromRightSide(getTypeReference(0), i13, annotationsOnDimensions);
        if (i15 > 0) {
            typeReferenceArr[0] = computeQualifiedGenericsFromRightSide;
            computeQualifiedGenericsFromRightSide = createIntersectionCastTypeReference(typeReferenceArr);
        }
        int i17 = this.intPtr;
        int i18 = i17 - 1;
        this.intPtr = i18;
        computeQualifiedGenericsFromRightSide.sourceEnd = i12 - 1;
        int[] iArr3 = this.intStack;
        this.intPtr = i17 - 2;
        computeQualifiedGenericsFromRightSide.sourceStart = iArr3[i18] + 1;
        pushOnExpressionStack(computeQualifiedGenericsFromRightSide);
        pushOnElementStack(K_CAST_STATEMENT);
    }

    @Override
    public void consumeInstanceOfExpression() {
        super.consumeInstanceOfExpression();
        popElement(1040);
        if (topKnownElementKind(1536) == K_BETWEEN_IF_AND_RIGHT_PAREN) {
            pushOnElementStack(K_BETWEEN_INSTANCEOF_AND_RPAREN, 1, this.expressionStack[this.expressionPtr]);
        }
        InstanceOfExpression instanceOfExpression = (InstanceOfExpression) this.expressionStack[this.expressionPtr];
        ASTNode aSTNode = this.assistNode;
        if (aSTNode == null || instanceOfExpression.type != aSTNode) {
            return;
        }
        this.assistNodeParent = instanceOfExpression;
    }

    @Override
    public void consumeInstanceOfExpressionWithName() {
        super.consumeInstanceOfExpressionWithName();
        popElement(1040);
        InstanceOfExpression instanceOfExpression = (InstanceOfExpression) this.expressionStack[this.expressionPtr];
        ASTNode aSTNode = this.assistNode;
        if (aSTNode == null || instanceOfExpression.type != aSTNode) {
            return;
        }
        this.assistNodeParent = instanceOfExpression;
    }

    @Override
    public void consumeInterfaceHeaderExtends() {
        super.consumeInterfaceHeaderExtends();
        popElement(K_EXTENDS_KEYWORD);
    }

    @Override
    public void consumeInterfaceHeaderName1() {
        super.consumeInterfaceHeaderName1();
        this.hasUnusedModifiers = false;
        CompletionOnAnnotationOfType completionOnAnnotationOfType = this.pendingAnnotation;
        if (completionOnAnnotationOfType != null) {
            completionOnAnnotationOfType.potentialAnnotatedNode = this.astStack[this.astPtr];
            this.pendingAnnotation = null;
        }
        classHeaderExtendsOrImplements(true);
    }

    @Override
    public void consumeInterfaceType() {
        pushOnElementStack(K_NEXT_TYPEREF_IS_INTERFACE);
        super.consumeInterfaceType();
        popElement(K_NEXT_TYPEREF_IS_INTERFACE);
    }

    @Override
    public void consumeInvocationExpression() {
        super.consumeInvocationExpression();
        triggerRecoveryUponLambdaClosure(this.expressionStack[this.expressionPtr], false);
    }

    @Override
    public void consumeLabel() {
        super.consumeLabel();
        pushOnLabelStack(this.identifierStack[this.identifierPtr]);
        pushOnElementStack(1060, this.labelPtr);
    }

    @Override
    public void consumeLambdaExpression() {
        super.consumeLambdaExpression();
        Expression expression = this.expressionStack[this.expressionPtr];
        ASTNode aSTNode = this.assistNode;
        if (aSTNode == null || aSTNode.sourceStart < expression.sourceStart || aSTNode.sourceEnd > expression.sourceEnd) {
            popElement(519);
        }
    }

    @Override
    public void consumeMarkerAnnotation(boolean z10) {
        if (topKnownElementKind(1536) != K_BETWEEN_ANNOTATION_NAME_AND_RPAREN || (topKnownElementInfo(1536) & 4) == 0) {
            popElement(K_BETWEEN_ANNOTATION_NAME_AND_RPAREN);
            super.consumeMarkerAnnotation(z10);
        } else {
            popElement(K_BETWEEN_ANNOTATION_NAME_AND_RPAREN);
            this.restartRecovery = true;
        }
    }

    @Override
    public void consumeMemberValueAsName() {
        if (indexOfAssistIdentifier() < 0) {
            super.consumeMemberValueAsName();
            return;
        }
        super.consumeMemberValueAsName();
        int i10 = topKnownElementKind(1536);
        if (i10 == K_BETWEEN_ANNOTATION_NAME_AND_RPAREN || i10 == K_MEMBER_VALUE_ARRAY_INITIALIZER) {
            this.restartRecovery = true;
        }
    }

    @Override
    public void consumeMemberValuePair() {
        if (indexOfAssistIdentifier() < 0) {
            super.consumeMemberValuePair();
            MemberValuePair memberValuePair = (MemberValuePair) this.astStack[this.astPtr];
            ASTNode aSTNode = this.assistNode;
            if (aSTNode == null || memberValuePair.value != aSTNode) {
                return;
            }
            this.assistNodeParent = memberValuePair;
            return;
        }
        char[][] cArr = this.identifierStack;
        int i10 = this.identifierPtr;
        char[] cArr2 = cArr[i10];
        long[] jArr = this.identifierPositionStack;
        this.identifierPtr = i10 - 1;
        long j10 = jArr[i10];
        this.identifierLengthPtr--;
        this.expressionPtr--;
        this.expressionLengthPtr--;
        CompletionOnMemberValueName completionOnMemberValueName = new CompletionOnMemberValueName(cArr2, (int) (j10 >>> 32), (int) j10);
        pushOnAstStack(completionOnMemberValueName);
        this.assistNode = completionOnMemberValueName;
        this.lastCheckPoint = completionOnMemberValueName.sourceEnd + 1;
        this.isOrphanCompletionNode = true;
        this.restartRecovery = true;
    }

    @Override
    public void consumeMethodBody() {
        popElement(1025);
        super.consumeMethodBody();
    }

    @Override
    public void consumeMethodDeclaration(boolean z10, boolean z11) {
        if (!z10) {
            popElement(1025);
        }
        super.consumeMethodDeclaration(z10, z11);
    }

    @Override
    public void consumeMethodHeader() {
        super.consumeMethodHeader();
        pushOnElementStack(1025);
    }

    @Override
    public void consumeMethodHeaderExtendedDims() {
        super.consumeMethodHeaderExtendedDims();
        if (this.currentElement == null || this.currentToken != 22) {
            return;
        }
        int i10 = this.cursorLocation;
        int i11 = i10 + 1;
        Scanner scanner = this.scanner;
        if (i11 < scanner.startPosition || i10 >= scanner.currentPosition) {
            return;
        }
        pushIdentifier();
        int indexOfAssistIdentifier = indexOfAssistIdentifier();
        if (indexOfAssistIdentifier > -1) {
            int i12 = (this.identifierPtr - this.identifierLengthStack[this.identifierLengthPtr]) + indexOfAssistIdentifier + 1;
            RecoveredMethod recoveredMethod = (RecoveredMethod) this.currentElement;
            if (recoveredMethod.foundOpeningBrace) {
                return;
            }
            AbstractMethodDeclaration abstractMethodDeclaration = recoveredMethod.methodDeclaration;
            if (abstractMethodDeclaration.thrownExceptions == null) {
                CompletionOnKeyword1 completionOnKeyword1 = new CompletionOnKeyword1(this.identifierStack[i12], this.identifierPositionStack[i12], Keywords.THROWS);
                abstractMethodDeclaration.thrownExceptions = new TypeReference[]{completionOnKeyword1};
                recoveredMethod.foundOpeningBrace = true;
                this.assistNode = completionOnKeyword1;
                this.lastCheckPoint = completionOnKeyword1.sourceEnd + 1;
            }
        }
    }

    @Override
    public void consumeMethodHeaderName(boolean z10) {
        int i10;
        if (indexOfAssistIdentifier() >= 0) {
            CompletionOnMethodName completionOnMethodName = new CompletionOnMethodName(this.compilationUnit.compilationResult);
            char[][] cArr = this.identifierStack;
            int i11 = this.identifierPtr;
            completionOnMethodName.selector = cArr[i11];
            long[] jArr = this.identifierPositionStack;
            this.identifierPtr = i11 - 1;
            long j10 = jArr[i11];
            this.identifierLengthPtr--;
            int[] iArr = this.intStack;
            int i12 = this.intPtr;
            this.intPtr = i12 - 1;
            TypeReference typeReference = getTypeReference(iArr[i12]);
            completionOnMethodName.returnType = typeReference;
            completionOnMethodName.bits = (typeReference.bits & 1048576) | completionOnMethodName.bits;
            int[] iArr2 = this.intStack;
            int i13 = this.intPtr;
            int i14 = i13 - 1;
            this.intPtr = i14;
            completionOnMethodName.declarationSourceStart = iArr2[i13];
            this.intPtr = i13 - 2;
            completionOnMethodName.modifiers = iArr2[i14];
            int[] iArr3 = this.expressionLengthStack;
            int i15 = this.expressionLengthPtr;
            this.expressionLengthPtr = i15 - 1;
            int i16 = iArr3[i15];
            if (i16 != 0) {
                Expression[] expressionArr = this.expressionStack;
                int i17 = this.expressionPtr - i16;
                this.expressionPtr = i17;
                Annotation[] annotationArr = new Annotation[i16];
                completionOnMethodName.annotations = annotationArr;
                System.arraycopy(expressionArr, i17 + 1, annotationArr, 0, i16);
            }
            completionOnMethodName.javadoc = this.javadoc;
            this.javadoc = null;
            completionOnMethodName.sourceStart = (int) (j10 >>> 32);
            completionOnMethodName.selectorEnd = (int) j10;
            pushOnAstStack(completionOnMethodName);
            int i18 = this.lParenPos;
            completionOnMethodName.sourceEnd = i18;
            completionOnMethodName.bodyStart = i18 + 1;
            this.listLength = 0;
            this.assistNode = completionOnMethodName;
            this.lastCheckPoint = i18;
            RecoveredElement recoveredElement = this.currentElement;
            if (recoveredElement != null) {
                if (!(recoveredElement instanceof RecoveredType)) {
                    int i19 = completionOnMethodName.returnType.sourceStart;
                    Scanner scanner = this.scanner;
                    int lineNumber = Util.getLineNumber(i19, scanner.lineEnds, 0, scanner.linePtr);
                    int i20 = completionOnMethodName.sourceStart;
                    Scanner scanner2 = this.scanner;
                    if (lineNumber != Util.getLineNumber(i20, scanner2.lineEnds, 0, scanner2.linePtr)) {
                        this.lastCheckPoint = completionOnMethodName.sourceStart;
                        this.restartRecovery = true;
                        return;
                    }
                }
                this.lastCheckPoint = completionOnMethodName.bodyStart;
                this.currentElement = this.currentElement.add(completionOnMethodName, 0);
                this.lastIgnoredToken = -1;
                return;
            }
            return;
        }
        this.identifierPtr--;
        this.identifierLengthPtr--;
        if (indexOfAssistIdentifier() != 0 || this.identifierLengthStack[this.identifierLengthPtr] != this.genericsIdentifiersLengthStack[this.genericsIdentifiersLengthPtr]) {
            int i21 = this.identifierPtr + 1;
            this.identifierPtr = i21;
            this.identifierLengthPtr++;
            int i22 = (int) this.identifierPositionStack[i21];
            int i23 = this.astPtr;
            super.consumeMethodHeaderName(z10);
            HashtableOfObjectToInt hashtableOfObjectToInt = this.sourceEnds;
            if (hashtableOfObjectToInt != null && (i10 = this.astPtr) > i23) {
                hashtableOfObjectToInt.put(this.astStack[i10], i22);
            }
            CompletionOnAnnotationOfType completionOnAnnotationOfType = this.pendingAnnotation;
            if (completionOnAnnotationOfType != null) {
                completionOnAnnotationOfType.potentialAnnotatedNode = this.astStack[this.astPtr];
                this.pendingAnnotation = null;
                return;
            }
            return;
        }
        this.restartRecovery = true;
        if (this.currentElement != null) {
            char[][] cArr2 = this.identifierStack;
            int i24 = this.identifierPtr;
            char[] cArr3 = cArr2[i24 + 1];
            long j11 = this.identifierPositionStack[i24 + 1];
            int[] iArr4 = this.intStack;
            int i25 = this.intPtr;
            this.intPtr = i25 - 1;
            TypeReference typeReference2 = getTypeReference(iArr4[i25]);
            ((CompletionOnSingleTypeReference) typeReference2).isCompletionNode = false;
            int[] iArr5 = this.intStack;
            int i26 = this.intPtr;
            int i27 = i26 - 1;
            this.intPtr = i27;
            int i28 = iArr5[i26];
            this.intPtr = i26 - 2;
            int i29 = iArr5[i27];
            int i30 = typeReference2.sourceStart;
            Scanner scanner3 = this.scanner;
            int lineNumber2 = Util.getLineNumber(i30, scanner3.lineEnds, 0, scanner3.linePtr);
            int i31 = (int) (j11 >>> 32);
            Scanner scanner4 = this.scanner;
            if (lineNumber2 != Util.getLineNumber(i31, scanner4.lineEnds, 0, scanner4.linePtr)) {
                CompletionOnFieldType completionOnFieldType = new CompletionOnFieldType(typeReference2, false);
                int[] iArr6 = this.expressionLengthStack;
                int i32 = this.expressionLengthPtr;
                this.expressionLengthPtr = i32 - 1;
                int i33 = iArr6[i32];
                if (i33 != 0) {
                    Expression[] expressionArr2 = this.expressionStack;
                    int i34 = this.expressionPtr - i33;
                    this.expressionPtr = i34;
                    Annotation[] annotationArr2 = new Annotation[i33];
                    completionOnFieldType.annotations = annotationArr2;
                    System.arraycopy(expressionArr2, i34 + 1, annotationArr2, 0, i33);
                }
                completionOnFieldType.modifiers = i29;
                this.assistNode = completionOnFieldType;
                this.lastCheckPoint = typeReference2.sourceEnd + 1;
                this.currentElement = this.currentElement.add((FieldDeclaration) completionOnFieldType, 0);
                this.lastIgnoredToken = -1;
                return;
            }
            CompletionOnMethodReturnType completionOnMethodReturnType = new CompletionOnMethodReturnType(typeReference2, this.compilationUnit.compilationResult);
            int[] iArr7 = this.expressionLengthStack;
            int i35 = this.expressionLengthPtr;
            this.expressionLengthPtr = i35 - 1;
            int i36 = iArr7[i35];
            if (i36 != 0) {
                Expression[] expressionArr3 = this.expressionStack;
                int i37 = this.expressionPtr - i36;
                this.expressionPtr = i37;
                Annotation[] annotationArr3 = new Annotation[i36];
                completionOnMethodReturnType.annotations = annotationArr3;
                System.arraycopy(expressionArr3, i37 + 1, annotationArr3, 0, i36);
            }
            completionOnMethodReturnType.selector = cArr3;
            completionOnMethodReturnType.declarationSourceStart = i28;
            completionOnMethodReturnType.modifiers = i29;
            int i38 = this.lParenPos + 1;
            completionOnMethodReturnType.bodyStart = i38;
            this.listLength = 0;
            this.assistNode = completionOnMethodReturnType;
            this.lastCheckPoint = i38;
            this.currentElement = this.currentElement.add(completionOnMethodReturnType, 0);
            this.lastIgnoredToken = -1;
            completionOnMethodReturnType.javadoc = this.javadoc;
            this.javadoc = null;
        }
    }

    @Override
    public void consumeMethodHeaderNameWithTypeParameters(boolean z10) {
        int i10;
        int i11 = (int) this.identifierPositionStack[this.identifierPtr];
        int i12 = this.astPtr;
        super.consumeMethodHeaderNameWithTypeParameters(z10);
        HashtableOfObjectToInt hashtableOfObjectToInt = this.sourceEnds;
        if (hashtableOfObjectToInt != null && (i10 = this.astPtr) > i12) {
            hashtableOfObjectToInt.put(this.astStack[i10], i11);
        }
        CompletionOnAnnotationOfType completionOnAnnotationOfType = this.pendingAnnotation;
        if (completionOnAnnotationOfType != null) {
            completionOnAnnotationOfType.potentialAnnotatedNode = this.astStack[this.astPtr];
            this.pendingAnnotation = null;
        }
    }

    @Override
    public void consumeMethodHeaderRightParen() {
        super.consumeMethodHeaderRightParen();
        if (this.currentElement == null || this.currentToken != 22) {
            return;
        }
        int i10 = this.cursorLocation;
        int i11 = i10 + 1;
        Scanner scanner = this.scanner;
        if (i11 < scanner.startPosition || i10 >= scanner.currentPosition) {
            return;
        }
        pushIdentifier();
        int indexOfAssistIdentifier = indexOfAssistIdentifier();
        if (indexOfAssistIdentifier > -1) {
            int i12 = (this.identifierPtr - this.identifierLengthStack[this.identifierLengthPtr]) + indexOfAssistIdentifier + 1;
            RecoveredElement recoveredElement = this.currentElement;
            if (recoveredElement instanceof RecoveredMethod) {
                RecoveredMethod recoveredMethod = (RecoveredMethod) recoveredElement;
                if (recoveredMethod.foundOpeningBrace) {
                    return;
                }
                AbstractMethodDeclaration abstractMethodDeclaration = recoveredMethod.methodDeclaration;
                if (abstractMethodDeclaration.thrownExceptions == null) {
                    CompletionOnKeyword1 completionOnKeyword1 = new CompletionOnKeyword1(this.identifierStack[i12], this.identifierPositionStack[i12], Keywords.THROWS);
                    abstractMethodDeclaration.thrownExceptions = new TypeReference[]{completionOnKeyword1};
                    recoveredMethod.foundOpeningBrace = true;
                    this.assistNode = completionOnKeyword1;
                    this.lastCheckPoint = completionOnKeyword1.sourceEnd + 1;
                }
            }
        }
    }

    @Override
    public void consumeMethodInvocationName() {
        popElement(K_SELECTOR_QUALIFIER);
        popElement(K_SELECTOR_INVOCATION_TYPE);
        super.consumeMethodInvocationName();
    }

    @Override
    public void consumeMethodInvocationNameWithTypeArguments() {
        popElement(K_SELECTOR_QUALIFIER);
        popElement(K_SELECTOR_INVOCATION_TYPE);
        super.consumeMethodInvocationNameWithTypeArguments();
    }

    @Override
    public void consumeMethodInvocationPrimary() {
        popElement(K_SELECTOR_QUALIFIER);
        popElement(K_SELECTOR_INVOCATION_TYPE);
        super.consumeMethodInvocationPrimary();
    }

    @Override
    public void consumeMethodInvocationPrimaryWithTypeArguments() {
        popElement(K_SELECTOR_QUALIFIER);
        popElement(K_SELECTOR_INVOCATION_TYPE);
        super.consumeMethodInvocationPrimaryWithTypeArguments();
    }

    @Override
    public void consumeMethodInvocationSuper() {
        popElement(K_SELECTOR_QUALIFIER);
        popElement(K_SELECTOR_INVOCATION_TYPE);
        super.consumeMethodInvocationSuper();
    }

    @Override
    public void consumeMethodInvocationSuperWithTypeArguments() {
        popElement(K_SELECTOR_QUALIFIER);
        popElement(K_SELECTOR_INVOCATION_TYPE);
        super.consumeMethodInvocationSuperWithTypeArguments();
    }

    @Override
    public void consumeModifiers() {
        super.consumeModifiers();
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.lastModifiersStart = iArr[i10];
        this.lastModifiers = iArr[i10 - 1];
    }

    @Override
    public void consumeModuleHeader() {
        super.consumeModuleHeader();
    }

    @Override
    public void consumeNestedMethod() {
        super.consumeNestedMethod();
        if (topKnownElementKind(1536) != 1025) {
            pushOnElementStack(1025);
        }
    }

    @Override
    public void consumeNormalAnnotation(boolean z10) {
        if (topKnownElementKind(1536) == K_BETWEEN_ANNOTATION_NAME_AND_RPAREN && (topKnownElementInfo(1536) & 4) != 0) {
            popElement(K_BETWEEN_ANNOTATION_NAME_AND_RPAREN);
            this.restartRecovery = true;
            return;
        }
        popElement(K_BETWEEN_ANNOTATION_NAME_AND_RPAREN);
        int i10 = this.expressionPtr;
        if (i10 >= 0) {
            Expression expression = this.expressionStack[i10];
            if (expression instanceof CompletionOnMarkerAnnotationName) {
                Annotation annotation = (Annotation) expression;
                if (this.currentElement != null) {
                    annotationRecoveryCheckPoint(annotation.sourceStart, annotation.declarationSourceEnd);
                    RecoveredElement recoveredElement = this.currentElement;
                    if (recoveredElement instanceof RecoveredAnnotation) {
                        this.currentElement = ((RecoveredAnnotation) recoveredElement).addAnnotation(annotation, this.identifierPtr);
                    }
                }
                if (!this.statementRecoveryActivated && this.options.sourceLevel < ClassFileConstants.JDK1_5 && this.lastErrorEndPositionBeforeRecovery < this.scanner.currentPosition) {
                    problemReporter().invalidUsageOfAnnotation(annotation);
                }
                this.recordStringLiterals = true;
                return;
            }
        }
        super.consumeNormalAnnotation(z10);
    }

    @Override
    public void consumeOnlySynchronized() {
        super.consumeOnlySynchronized();
        this.hasUnusedModifiers = false;
    }

    @Override
    public void consumeOnlyTypeArguments() {
        super.consumeOnlyTypeArguments();
        popElement(1040);
        if (topKnownElementKind(1536) != K_PARAMETERIZED_METHOD_INVOCATION) {
            popElement(K_PARAMETERIZED_ALLOCATION);
        } else {
            popElement(K_PARAMETERIZED_METHOD_INVOCATION);
            pushOnElementStack(K_PARAMETERIZED_METHOD_INVOCATION, 1);
        }
    }

    @Override
    public void consumeOnlyTypeArgumentsForCastExpression() {
        super.consumeOnlyTypeArgumentsForCastExpression();
        pushOnElementStack(1056);
    }

    @Override
    public void consumeOpenFakeBlock() {
        super.consumeOpenFakeBlock();
        pushOnElementStack(1025);
    }

    @Override
    public void consumeOpensStatement() {
        super.consumeOpensStatement();
        popElement(1072);
        popElement(K_INSIDE_OPENS_STATEMENT);
    }

    @Override
    public void consumePackageDeclarationName() {
        super.consumePackageDeclarationName();
        CompletionOnAnnotationOfType completionOnAnnotationOfType = this.pendingAnnotation;
        if (completionOnAnnotationOfType != null) {
            completionOnAnnotationOfType.potentialAnnotatedNode = this.compilationUnit.currentPackage;
            this.pendingAnnotation = null;
        }
    }

    @Override
    public void consumePackageDeclarationNameWithModifiers() {
        super.consumePackageDeclarationNameWithModifiers();
        CompletionOnAnnotationOfType completionOnAnnotationOfType = this.pendingAnnotation;
        if (completionOnAnnotationOfType != null) {
            completionOnAnnotationOfType.potentialAnnotatedNode = this.compilationUnit.currentPackage;
            this.pendingAnnotation = null;
        }
    }

    @Override
    public void consumePostfixExpression() {
        if (topKnownElementKind(1536) != K_INSIDE_BREAK_STATEMENT) {
            super.consumePostfixExpression();
        }
    }

    @Override
    public void consumePrimaryNoNewArrayName() {
        this.invocationType = -1;
        this.qualifier = -1;
        super.consumePrimaryNoNewArrayName();
    }

    @Override
    public void consumePrimaryNoNewArrayNameThis() {
        this.invocationType = -1;
        this.qualifier = -1;
        super.consumePrimaryNoNewArrayNameThis();
    }

    @Override
    public void consumeProvidesInterface() {
        super.consumeProvidesInterface();
        pushOnElementStack(K_AFTER_NAME_IN_PROVIDES_STATEMENT);
    }

    @Override
    public void consumeProvidesStatement() {
        super.consumeProvidesStatement();
        popElement(K_INSIDE_PROVIDES_STATEMENT);
    }

    @Override
    public void consumePushCombineModifiers() {
        super.consumePushCombineModifiers();
        if (isInsideMethod()) {
            this.hasUnusedModifiers = true;
        }
    }

    @Override
    public void consumePushPosition() {
        super.consumePushPosition();
        if (topKnownElementKind(1536) == 1040) {
            int i10 = topKnownElementInfo(1536);
            popElement(1040);
            pushOnElementStack(K_UNARY_OPERATOR, i10);
        }
    }

    @Override
    public void consumeQualifiedSuperReceiver() {
        this.invocationType = -1;
        this.qualifier = -1;
        super.consumeQualifiedSuperReceiver();
    }

    @Override
    public void consumeReferenceExpression(ReferenceExpression referenceExpression) {
        this.inReferenceExpression = false;
        super.consumeReferenceExpression(referenceExpression);
    }

    @Override
    public void consumeReferenceType() {
        if (this.identifierLengthStack[this.identifierLengthPtr] > 1) {
            this.invocationType = -1;
            this.qualifier = -1;
        }
        super.consumeReferenceType();
    }

    @Override
    public void consumeReferenceType1() {
        super.consumeReferenceType1();
        popElement(1040);
    }

    @Override
    public void consumeReferenceType2() {
        super.consumeReferenceType2();
        popElement(1040);
    }

    @Override
    public void consumeReferenceType3() {
        super.consumeReferenceType3();
        popElement(1040);
    }

    @Override
    public void consumeRequiresStatement() {
        super.consumeRequiresStatement();
        popElement(K_INSIDE_REQUIRES_STATEMENT);
    }

    @Override
    public void consumeRestoreDiet() {
        super.consumeRestoreDiet();
        if (isInsideMethod()) {
            popElement(K_LOCAL_INITIALIZER_DELIMITER);
        }
    }

    @Override
    public void consumeRightParen() {
        super.consumeRightParen();
    }

    @Override
    public void consumeSingleMemberAnnotation(boolean z10) {
        if (topKnownElementKind(1536) != K_BETWEEN_ANNOTATION_NAME_AND_RPAREN || (topKnownElementInfo(1536) & 4) == 0) {
            popElement(K_BETWEEN_ANNOTATION_NAME_AND_RPAREN);
            super.consumeSingleMemberAnnotation(z10);
        } else {
            popElement(K_BETWEEN_ANNOTATION_NAME_AND_RPAREN);
            this.restartRecovery = true;
        }
    }

    @Override
    public void consumeSinglePkgName() {
        super.consumeSinglePkgName();
        pushOnElementStack(1072);
    }

    @Override
    public void consumeSingleStaticImportDeclarationName() {
        super.consumeSingleStaticImportDeclarationName();
        this.pendingAnnotation = null;
    }

    @Override
    public void consumeSingleTypeImportDeclarationName() {
        super.consumeSingleTypeImportDeclarationName();
        this.pendingAnnotation = null;
    }

    @Override
    public void consumeStatementBreakWithLabel() {
        super.consumeStatementBreakWithLabel();
        if (this.record) {
            ASTNode aSTNode = this.astStack[this.astPtr];
            if (isAlreadyPotentialName(aSTNode.sourceStart)) {
                return;
            }
            addPotentialName(null, aSTNode.sourceStart, aSTNode.sourceEnd);
        }
    }

    @Override
    public void consumeStatementFor() {
        super.consumeStatementFor();
        if (topKnownElementKind(1536) == K_CONTROL_STATEMENT_DELIMITER) {
            popElement(K_CONTROL_STATEMENT_DELIMITER);
        }
    }

    @Override
    public void consumeStatementIfNoElse() {
        super.consumeStatementIfNoElse();
        if (topKnownElementKind(1536) == K_CONTROL_STATEMENT_DELIMITER) {
            popElement(K_CONTROL_STATEMENT_DELIMITER);
        }
    }

    @Override
    public void consumeStatementIfWithElse() {
        super.consumeStatementIfWithElse();
        if (topKnownElementKind(1536) == K_CONTROL_STATEMENT_DELIMITER) {
            popElement(K_CONTROL_STATEMENT_DELIMITER);
        }
    }

    @Override
    public void consumeStatementLabel() {
        popElement(1060);
        super.consumeStatementLabel();
    }

    @Override
    public void consumeStatementSwitch() {
        super.consumeStatementSwitch();
        if (topKnownElementKind(1536) == K_SWITCH_LABEL) {
            popElement(K_SWITCH_LABEL);
            popElement(1025);
        }
    }

    @Override
    public void consumeStatementWhile() {
        super.consumeStatementWhile();
        if (topKnownElementKind(1536) == K_CONTROL_STATEMENT_DELIMITER) {
            popElement(K_CONTROL_STATEMENT_DELIMITER);
        }
    }

    @Override
    public void consumeStaticImportOnDemandDeclarationName() {
        super.consumeStaticImportOnDemandDeclarationName();
        this.pendingAnnotation = null;
    }

    @Override
    public void consumeStaticInitializer() {
        super.consumeStaticInitializer();
        this.pendingAnnotation = null;
    }

    @Override
    public void consumeSwitchExpression() {
        super.consumeSwitchExpression();
        if (this.assistNode != null) {
            ((SwitchExpression) this.expressionStack[this.expressionPtr]).resolveAll = true;
        }
    }

    @Override
    public void consumeToken(int i10) {
        int i11;
        int i12;
        int i13;
        if (this.isFirst) {
            super.consumeToken(i10);
            return;
        }
        if (this.canBeExplicitConstructor == 1) {
            this.canBeExplicitConstructor = 2;
        } else {
            this.canBeExplicitConstructor = 0;
        }
        int i14 = this.previousToken;
        int i15 = this.previousIdentifierPtr;
        isInsideEnhancedForLoopWithoutBlock(i10);
        if (isInsideMethod() || isInsideFieldInitialization() || isInsideAnnotation() || isInsideEnumConstantnitialization()) {
            if (i10 != 6) {
                if (i10 != 23) {
                    if (i10 == 33) {
                        int i16 = topKnownElementKind(1536);
                        if (i16 != 519) {
                            if (i16 == 1025) {
                                popElement(1025);
                            } else if (i16 != K_MEMBER_VALUE_ARRAY_INITIALIZER) {
                                popElement(K_ARRAY_INITIALIZER);
                            } else {
                                popElement(K_MEMBER_VALUE_ARRAY_INITIALIZER);
                            }
                        }
                    } else if (i10 == 49) {
                        popElement(1032);
                    } else if (i10 == 66 && topKnownElementKind(1536) == 1052) {
                        popElement(1052);
                    }
                } else if (i14 == 22 && topKnownElementKind(1536) == K_PARAMETERIZED_METHOD_INVOCATION) {
                    popElement(K_PARAMETERIZED_METHOD_INVOCATION);
                } else {
                    popElement(1032);
                }
            } else if (topKnownElementKind(1536) == 1032) {
                popElement(1032);
                pushOnElementStack(K_ARRAY_CREATION);
            }
        }
        super.consumeToken(i10);
        if (i10 == 22 && this.identifierStack[this.identifierPtr] == assistIdentifier() && this.currentElement == null && ((!isIndirectlyInsideLambdaExpression() || isIndirectlyInsideLambdaBlock()) && (isIndirectlyInsideFieldInitialization() || isIndirectlyInsideEnumConstantnitialization()))) {
            Scanner scanner = this.scanner;
            int i17 = this.cursorLocation;
            if (i17 < Integer.MAX_VALUE) {
                i17++;
            }
            scanner.eofPosition = i17;
        }
        if (i10 == 106) {
            pushOnElementStack(K_INSIDE_IMPORT_STATEMENT);
        } else if (i10 == 116) {
            pushOnElementStack(1068);
        } else if (i10 == 117) {
            pushOnElementStack(K_INSIDE_OPENS_STATEMENT);
        } else if (i10 == 124) {
            popElement(1072);
        } else if (i10 == 115) {
            pushOnElementStack(K_INSIDE_REQUIRES_STATEMENT);
        } else if (i10 == 119) {
            pushOnElementStack(K_INSIDE_PROVIDES_STATEMENT);
        } else if (i10 == 118) {
            pushOnElementStack(K_INSIDE_USES_STATEMENT);
        } else if (i10 == 125) {
            popElement(K_AFTER_NAME_IN_PROVIDES_STATEMENT);
            pushOnElementStack(K_AFTER_WITH_IN_PROVIDES_STATEMENT);
        }
        if (!isInsideMethod() && !isInsideFieldInitialization() && !isInsideAttributeValue() && !isInsideEnumConstantnitialization()) {
            if (isInsideAnnotation()) {
                if (i10 != 49) {
                    return;
                }
                this.bracketDepth++;
                if (topKnownElementKind(1536) == K_BETWEEN_ANNOTATION_NAME_AND_RPAREN) {
                    pushOnElementStack(K_MEMBER_VALUE_ARRAY_INITIALIZER, this.endPosition);
                    return;
                }
                return;
            }
            if (i10 == 11) {
                pushOnElementStack(1040, 4);
                return;
            }
            if (i10 == 86) {
                pushOnElementStack(K_EXTENDS_KEYWORD);
                return;
            }
            switch (i10) {
                case 14:
                    pushOnElementStack(1040, 17);
                    return;
                case 15:
                    pushOnElementStack(1040, 6);
                    return;
                case 16:
                    pushOnElementStack(1040, 19);
                    return;
                default:
                    return;
            }
        }
        if (i10 == 86) {
            pushOnElementStack(K_EXTENDS_KEYWORD);
            return;
        }
        if (i10 == 98) {
            int i18 = topKnownElementKind(1536);
            if (i18 == K_BETWEEN_CASE_AND_COLON) {
                popElement(K_BETWEEN_CASE_AND_COLON);
                return;
            } else {
                if (i18 != K_BETWEEN_DEFAULT_AND_COLON) {
                    return;
                }
                popElement(K_BETWEEN_DEFAULT_AND_COLON);
                return;
            }
        }
        if (i10 == 112) {
            if (topKnownElementKind(1536) == K_CONTROL_STATEMENT_DELIMITER) {
                popElement(K_CONTROL_STATEMENT_DELIMITER);
            }
            pushOnElementStack(K_CONTROL_STATEMENT_DELIMITER);
            return;
        }
        if (i10 == 101) {
            pushOnElementStack(K_BETWEEN_CASE_AND_COLON);
            return;
        }
        if (i10 == 102) {
            pushOnElementStack(1028);
            return;
        }
        switch (i10) {
            case 1:
                if (i14 != 22) {
                    if (i14 == 34) {
                        this.invocationType = -2;
                        return;
                    } else {
                        if (i14 != 35) {
                            return;
                        }
                        this.invocationType = 0;
                        return;
                    }
                }
                if (topKnownElementKind(1536) != 1032) {
                    if (this.identifierPtr != i15) {
                        this.invocationType = 0;
                        return;
                    } else {
                        this.invocationType = -3;
                        return;
                    }
                }
                return;
            case 2:
                pushOnElementStack(K_UNARY_OPERATOR, 32);
                return;
            case 3:
                pushOnElementStack(K_UNARY_OPERATOR, 33);
                return;
            case 4:
                pushOnElementStack(1040, 14);
                return;
            case 5:
                pushOnElementStack(1040, 13);
                return;
            case 6:
                if (topKnownElementKind(1536) != K_ARRAY_CREATION) {
                    pushOnElementStack(1052);
                    return;
                }
                if (i14 != 22 && i14 != 99 && i14 != 100) {
                    switch (i14) {
                        case 14:
                        case 15:
                        case 16:
                            break;
                        default:
                            switch (i14) {
                                case 103:
                                case 104:
                                case 105:
                                    break;
                                default:
                                    switch (i14) {
                                        case 107:
                                        case 108:
                                        case 109:
                                            break;
                                        default:
                                            return;
                                    }
                            }
                    }
                }
                this.invocationType = -1;
                this.qualifier = -1;
                return;
            case 7:
                this.inReferenceExpression = true;
                return;
            case 8:
                pushOnElementStack(1040, 15);
                return;
            case 9:
                pushOnElementStack(1040, 16);
                return;
            case 10:
                pushOnElementStack(1040, 9);
                return;
            case 11:
                if (i14 == 1) {
                    pushOnElementStack(K_PARAMETERIZED_METHOD_INVOCATION);
                } else if (i14 == 36) {
                    pushOnElementStack(K_PARAMETERIZED_ALLOCATION);
                }
                pushOnElementStack(1040, 4);
                return;
            case 12:
                pushOnElementStack(1040, 5);
                return;
            case 13:
                pushOnElementStack(1040, 7);
                return;
            case 14:
                pushOnElementStack(1040, 17);
                return;
            case 15:
                pushOnElementStack(1040, 6);
                return;
            case 16:
                pushOnElementStack(1040, 19);
                return;
            case 17:
                pushOnElementStack(1040, 31);
                return;
            case 18:
                pushOnElementStack(1040, 10);
                return;
            case 19:
                pushOnElementStack(1040, 18);
                return;
            case 20:
                pushOnElementStack(1040, 29);
                return;
            case 21:
                pushOnElementStack(1040, 2);
                return;
            case 22:
                if (this.inReferenceExpression) {
                    return;
                }
                if (i14 == 1 && (i12 = this.invocationType) != -2 && i12 != -3 && i12 != -4 && i12 != -5) {
                    this.invocationType = 0;
                    this.qualifier = this.expressionPtr;
                }
                if (i14 != 15 || (i11 = this.invocationType) == -2 || i11 == -3 || i11 == -4 || i11 == -5 || topKnownElementKind(1536) != K_PARAMETERIZED_METHOD_INVOCATION) {
                    return;
                }
                this.invocationType = 0;
                this.qualifier = this.expressionPtr;
                return;
            case 23:
                int i19 = this.invocationType;
                if (i19 == -1 || i19 == -3 || i19 == -2) {
                    this.qualifier = this.expressionPtr;
                }
                if (i14 == 22) {
                    if (topKnownElementKind(1536) == 513) {
                        if (topKnownElementKind(1536, 1) != K_BETWEEN_ANNOTATION_NAME_AND_RPAREN || (topKnownElementInfo(1536, 1) & 1) == 0) {
                            pushOnElementStack(K_SELECTOR_INVOCATION_TYPE, this.invocationType);
                            pushOnElementStack(K_SELECTOR_QUALIFIER, this.qualifier);
                        } else {
                            popElement(513);
                            popElement(K_BETWEEN_ANNOTATION_NAME_AND_RPAREN);
                            pushOnElementStack(K_BETWEEN_ANNOTATION_NAME_AND_RPAREN, 2);
                        }
                    }
                    this.qualifier = -1;
                    this.invocationType = -1;
                    return;
                }
                if (i14 == 34) {
                    if (topKnownElementKind(1536) == 513) {
                        pushOnElementStack(K_SELECTOR_INVOCATION_TYPE, this.invocationType != -5 ? -4 : -5);
                        pushOnElementStack(K_SELECTOR_QUALIFIER, this.qualifier);
                    }
                    this.qualifier = -1;
                    this.invocationType = -1;
                    return;
                }
                if (i14 == 35) {
                    if (topKnownElementKind(1536) == 513) {
                        pushOnElementStack(K_SELECTOR_INVOCATION_TYPE, this.invocationType != -5 ? -4 : -5);
                        pushOnElementStack(K_SELECTOR_QUALIFIER, this.qualifier);
                    }
                    this.qualifier = -1;
                    this.invocationType = -1;
                    return;
                }
                switch (i14) {
                    case 14:
                    case 15:
                    case 16:
                        if (topKnownElementKind(1536) == 513) {
                            if (topKnownElementKind(1536, 1) == 1040 && ((i13 = topKnownElementInfo(1536, 1)) == 6 || i13 == 17 || i13 == 19)) {
                                popElement(513);
                            } else {
                                pushOnElementStack(K_SELECTOR_INVOCATION_TYPE, this.invocationType != -5 ? -4 : -5);
                                pushOnElementStack(K_SELECTOR_QUALIFIER, this.qualifier);
                            }
                        }
                        this.qualifier = -1;
                        this.invocationType = -1;
                        return;
                    default:
                        return;
                }
            case 24:
                pushOnElementStack(1040, 8);
                return;
            case 25:
                int i20 = topKnownElementKind(1536);
                if (i20 == 1028) {
                    popElement(1028);
                    return;
                }
                if (i20 != K_BETWEEN_INSTANCEOF_AND_RPAREN) {
                    switch (i20) {
                        case K_BETWEEN_IF_AND_RIGHT_PAREN:
                            break;
                        case 1044:
                            if (topKnownElementInfo(1536) == this.bracketDepth) {
                                popElement(1044);
                                pushOnElementStack(K_CONTROL_STATEMENT_DELIMITER, 4);
                                return;
                            }
                            return;
                        case K_BETWEEN_FOR_AND_RIGHT_PAREN:
                            if (topKnownElementInfo(1536) == this.bracketDepth) {
                                popElement(K_BETWEEN_FOR_AND_RIGHT_PAREN);
                                pushOnElementStack(K_CONTROL_STATEMENT_DELIMITER, 6);
                                return;
                            }
                            return;
                        case K_BETWEEN_SWITCH_AND_RIGHT_PAREN:
                            if (topKnownElementInfo(1536) == this.bracketDepth) {
                                popElement(K_BETWEEN_SWITCH_AND_RIGHT_PAREN);
                                return;
                            }
                            return;
                        case K_BETWEEN_SYNCHRONIZED_AND_RIGHT_PAREN:
                            if (topKnownElementInfo(1536) == this.bracketDepth) {
                                popElement(K_BETWEEN_SYNCHRONIZED_AND_RIGHT_PAREN);
                                return;
                            }
                            return;
                        default:
                            return;
                    }
                } else {
                    popElement(K_BETWEEN_INSTANCEOF_AND_RPAREN);
                }
                if (topKnownElementInfo(1536) == this.bracketDepth) {
                    popElement(K_BETWEEN_IF_AND_RIGHT_PAREN);
                    pushOnElementStack(K_CONTROL_STATEMENT_DELIMITER, 1, this.expressionStack[this.expressionPtr]);
                    return;
                }
                return;
            case 26:
                int i21 = topKnownElementKind(1536);
                if (i21 == K_INSIDE_THROW_STATEMENT) {
                    if (topKnownElementInfo(1536) == this.bracketDepth) {
                        popElement(K_INSIDE_THROW_STATEMENT);
                        return;
                    }
                    return;
                }
                if (i21 == K_INSIDE_RETURN_STATEMENT) {
                    if (topKnownElementInfo(1536) == this.bracketDepth) {
                        popElement(K_INSIDE_RETURN_STATEMENT);
                        return;
                    }
                    return;
                }
                if (i21 == K_BETWEEN_FOR_AND_RIGHT_PAREN) {
                    if (topKnownElementInfo(1536) == this.bracketDepth - 1) {
                        popElement(K_BETWEEN_FOR_AND_RIGHT_PAREN);
                        pushOnElementStack(1064, this.bracketDepth - 1);
                        return;
                    }
                    return;
                }
                if (i21 == 1048) {
                    if (topKnownElementInfo(1536) == this.bracketDepth) {
                        popElement(1048);
                        return;
                    }
                    return;
                }
                if (i21 == K_INSIDE_BREAK_STATEMENT) {
                    if (topKnownElementInfo(1536) == this.bracketDepth) {
                        popElement(K_INSIDE_BREAK_STATEMENT);
                        return;
                    }
                    return;
                }
                if (i21 == K_INSIDE_CONTINUE_STATEMENT) {
                    if (topKnownElementInfo(1536) == this.bracketDepth) {
                        popElement(K_INSIDE_CONTINUE_STATEMENT);
                        return;
                    }
                    return;
                } else {
                    if (i21 == K_INSIDE_ASSERT_EXCEPTION) {
                        if (topKnownElementInfo(1536) == this.bracketDepth) {
                            popElement(K_INSIDE_ASSERT_EXCEPTION);
                            popElement(1048);
                            return;
                        }
                        return;
                    }
                    if (i21 == 1064 && topKnownElementInfo(1536) == this.bracketDepth - 1) {
                        popElement(1064);
                        pushOnElementStack(K_BETWEEN_FOR_AND_RIGHT_PAREN, this.bracketDepth - 1);
                        return;
                    }
                    return;
                }
            default:
                switch (i10) {
                    case 28:
                        if (topKnownElementKind(1024) != 1028) {
                            pushOnElementStack(1040, 3);
                            return;
                        }
                        return;
                    case 29:
                        if (i14 == 11 || i14 == 32) {
                            return;
                        }
                        pushOnElementStack(K_CONDITIONAL_OPERATOR, 1);
                        return;
                    case 30:
                        pushOnElementStack(1040, 0);
                        return;
                    case 31:
                        pushOnElementStack(1040, 1);
                        return;
                    case 32:
                        if (topKnownElementKind(1536) != K_BETWEEN_CASE_AND_COLON) {
                            return;
                        }
                        this.expressionPtr--;
                        int[] iArr = this.expressionLengthStack;
                        int i22 = this.expressionLengthPtr;
                        iArr[i22] = iArr[i22] - 1;
                        return;
                    default:
                        switch (i10) {
                            case 34:
                                if (i14 == 1) {
                                    this.invocationType = -5;
                                    this.qualifier = this.expressionPtr;
                                    return;
                                }
                                return;
                            case 35:
                                if (i14 == 1) {
                                    this.invocationType = -5;
                                    this.qualifier = this.expressionPtr;
                                    return;
                                }
                                return;
                            case 36:
                                if (this.inReferenceExpression) {
                                    return;
                                }
                                pushOnElementStack(1032);
                                this.qualifier = this.expressionPtr;
                                if (i14 == 1) {
                                    this.invocationType = -5;
                                    return;
                                } else {
                                    this.invocationType = -4;
                                    return;
                                }
                            default:
                                switch (i10) {
                                    case 49:
                                        int i23 = topKnownElementKind(1536);
                                        if (i23 == 516 || i23 == K_LOCAL_INITIALIZER_DELIMITER || i23 == K_ARRAY_CREATION) {
                                            pushOnElementStack(K_ARRAY_INITIALIZER, this.endPosition);
                                            return;
                                        }
                                        if (i23 == K_BETWEEN_ANNOTATION_NAME_AND_RPAREN || i23 == 517) {
                                            pushOnElementStack(K_MEMBER_VALUE_ARRAY_INITIALIZER, this.endPosition);
                                            return;
                                        }
                                        if (i23 == K_CONTROL_STATEMENT_DELIMITER) {
                                            int i24 = topKnownElementInfo(1536);
                                            popElement(K_CONTROL_STATEMENT_DELIMITER);
                                            if (i24 == 1) {
                                                pushOnElementStack(1025, 1, this.expressionStack[this.expressionPtr]);
                                                return;
                                            } else {
                                                pushOnElementStack(1025, i24);
                                                return;
                                            }
                                        }
                                        if (i14 != 25) {
                                            if (i14 == 79) {
                                                pushOnElementStack(1025, 7);
                                                return;
                                            } else if (i14 == 83) {
                                                pushOnElementStack(1025, 2);
                                                return;
                                            } else {
                                                if (i14 != 98) {
                                                    pushOnElementStack(1025);
                                                    return;
                                                }
                                                return;
                                            }
                                        }
                                        int i25 = this.previousKind;
                                        if (i25 == 1028) {
                                            pushOnElementStack(1025, 3);
                                            return;
                                        }
                                        if (i25 == K_BETWEEN_SWITCH_AND_RIGHT_PAREN) {
                                            pushOnElementStack(1025, 5);
                                            return;
                                        } else if (i25 != K_BETWEEN_SYNCHRONIZED_AND_RIGHT_PAREN) {
                                            pushOnElementStack(1025);
                                            return;
                                        } else {
                                            pushOnElementStack(1025, 8);
                                            return;
                                        }
                                    case 50:
                                        pushOnElementStack(K_BETWEEN_SYNCHRONIZED_AND_RIGHT_PAREN, this.bracketDepth);
                                        return;
                                    case 51:
                                        pushOnElementStack(K_BETWEEN_SWITCH_AND_RIGHT_PAREN, this.bracketDepth);
                                        return;
                                    default:
                                        switch (i10) {
                                            case 62:
                                                int i26 = topKnownElementKind(1536);
                                                if (i26 == K_CONDITIONAL_OPERATOR) {
                                                    if (topKnownElementInfo(1536) == 1) {
                                                        popElement(K_CONDITIONAL_OPERATOR);
                                                        pushOnElementStack(K_CONDITIONAL_OPERATOR, 2);
                                                        return;
                                                    }
                                                    return;
                                                }
                                                if (i26 == 1048) {
                                                    pushOnElementStack(K_INSIDE_ASSERT_EXCEPTION, this.bracketDepth);
                                                    return;
                                                } else if (i26 == K_BETWEEN_CASE_AND_COLON) {
                                                    popElement(K_BETWEEN_CASE_AND_COLON);
                                                    return;
                                                } else {
                                                    if (i26 != K_BETWEEN_DEFAULT_AND_COLON) {
                                                        return;
                                                    }
                                                    popElement(K_BETWEEN_DEFAULT_AND_COLON);
                                                    return;
                                                }
                                            case 63:
                                                pushOnElementStack(K_UNARY_OPERATOR, 11);
                                                return;
                                            case 64:
                                                pushOnElementStack(K_UNARY_OPERATOR, 12);
                                                return;
                                            default:
                                                switch (i10) {
                                                    case 73:
                                                        pushOnElementStack(K_BETWEEN_DEFAULT_AND_COLON);
                                                        return;
                                                    case 74:
                                                        pushOnElementStack(K_INSIDE_THROW_STATEMENT, this.bracketDepth);
                                                        return;
                                                    case 75:
                                                        pushOnElementStack(1044, this.bracketDepth);
                                                        return;
                                                    case 76:
                                                        pushOnElementStack(1048, this.bracketDepth);
                                                        return;
                                                    case 77:
                                                        pushOnElementStack(K_INSIDE_BREAK_STATEMENT, this.bracketDepth);
                                                        return;
                                                    case 78:
                                                        pushOnElementStack(K_INSIDE_CONTINUE_STATEMENT, this.bracketDepth);
                                                        return;
                                                    default:
                                                        switch (i10) {
                                                            case 80:
                                                                pushOnElementStack(K_BETWEEN_FOR_AND_RIGHT_PAREN, this.bracketDepth);
                                                                return;
                                                            case 81:
                                                                pushOnElementStack(K_BETWEEN_IF_AND_RIGHT_PAREN, this.bracketDepth);
                                                                return;
                                                            case 82:
                                                                pushOnElementStack(K_INSIDE_RETURN_STATEMENT, this.bracketDepth);
                                                                return;
                                                            default:
                                                                return;
                                                        }
                                                }
                                        }
                                }
                        }
                }
        }
    }

    @Override
    public void consumeTypeArgumentReferenceType1() {
        super.consumeTypeArgumentReferenceType1();
        popElement(1040);
    }

    @Override
    public void consumeTypeArgumentReferenceType2() {
        super.consumeTypeArgumentReferenceType2();
        popElement(1040);
    }

    @Override
    public void consumeTypeArguments() {
        super.consumeTypeArguments();
        popElement(1040);
    }

    @Override
    public void consumeTypeHeaderNameWithTypeParameters() {
        super.consumeTypeHeaderNameWithTypeParameters();
        classHeaderExtendsOrImplements((((TypeDeclaration) this.astStack[this.astPtr]).modifiers & 512) != 0);
    }

    @Override
    public void consumeTypeImportOnDemandDeclarationName() {
        super.consumeTypeImportOnDemandDeclarationName();
        this.pendingAnnotation = null;
    }

    @Override
    public void consumeTypeParameter1() {
        super.consumeTypeParameter1();
        popElement(1040);
    }

    @Override
    public void consumeTypeParameter1WithExtends() {
        TypeParameter typeParameter;
        super.consumeTypeParameter1WithExtends();
        ASTNode aSTNode = this.assistNode;
        if (aSTNode != null && this.assistNodeParent == null && (typeParameter = (TypeParameter) this.genericsStack[this.genericsPtr]) != null && typeParameter.type == aSTNode) {
            this.assistNodeParent = typeParameter;
        }
        popElement(K_EXTENDS_KEYWORD);
    }

    @Override
    public void consumeTypeParameter1WithExtendsAndBounds() {
        TypeParameter typeParameter;
        super.consumeTypeParameter1WithExtendsAndBounds();
        ASTNode aSTNode = this.assistNode;
        if (aSTNode != null && this.assistNodeParent == null && (typeParameter = (TypeParameter) this.genericsStack[this.genericsPtr]) != null && typeParameter.type == aSTNode) {
            this.assistNodeParent = typeParameter;
        }
        popElement(K_EXTENDS_KEYWORD);
    }

    @Override
    public void consumeTypeParameterHeader() {
        super.consumeTypeParameterHeader();
        TypeParameter typeParameter = (TypeParameter) this.genericsStack[this.genericsPtr];
        if (typeParameter.type == null) {
            TypeReference[] typeReferenceArr = typeParameter.bounds;
            if ((typeReferenceArr == null || typeReferenceArr.length <= 0) && assistIdentifier() == null && this.currentToken == 22) {
                int i10 = this.cursorLocation;
                Scanner scanner = this.scanner;
                int i11 = scanner.startPosition;
                if (i10 < i11 && scanner.currentPosition == i11) {
                    pushIdentifier();
                } else if (i10 + 1 < i11 || i10 >= scanner.currentPosition) {
                    return;
                } else {
                    pushIdentifier();
                }
                char[][] cArr = this.identifierStack;
                int i12 = this.identifierPtr;
                CompletionOnKeyword1 completionOnKeyword1 = new CompletionOnKeyword1(cArr[i12], this.identifierPositionStack[i12], Keywords.EXTENDS);
                typeParameter.type = completionOnKeyword1;
                this.identifierPtr--;
                this.identifierLengthPtr--;
                this.assistNode = completionOnKeyword1;
                this.lastCheckPoint = completionOnKeyword1.sourceEnd + 1;
            }
        }
    }

    @Override
    public void consumeTypeParameterWithExtends() {
        TypeParameter typeParameter;
        super.consumeTypeParameterWithExtends();
        ASTNode aSTNode = this.assistNode;
        if (aSTNode != null && this.assistNodeParent == null && (typeParameter = (TypeParameter) this.genericsStack[this.genericsPtr]) != null && typeParameter.type == aSTNode) {
            this.assistNodeParent = typeParameter;
        }
        popElement(K_EXTENDS_KEYWORD);
    }

    @Override
    public void consumeTypeParameterWithExtendsAndBounds() {
        TypeParameter typeParameter;
        super.consumeTypeParameterWithExtendsAndBounds();
        ASTNode aSTNode = this.assistNode;
        if (aSTNode != null && this.assistNodeParent == null && (typeParameter = (TypeParameter) this.genericsStack[this.genericsPtr]) != null && typeParameter.type == aSTNode) {
            this.assistNodeParent = typeParameter;
        }
        popElement(K_EXTENDS_KEYWORD);
    }

    @Override
    public void consumeTypeParameters() {
        super.consumeTypeParameters();
        popElement(1040);
    }

    @Override
    public void consumeUnaryExpression(int i10) {
        super.consumeUnaryExpression(i10);
        popElement(K_UNARY_OPERATOR);
        Expression expression = this.expressionStack[this.expressionPtr];
        if (expression instanceof UnaryExpression) {
            UnaryExpression unaryExpression = (UnaryExpression) expression;
            ASTNode aSTNode = this.assistNode;
            if (aSTNode == null || unaryExpression.expression != aSTNode) {
                return;
            }
            this.assistNodeParent = unaryExpression;
        }
    }

    @Override
    public void consumeUnionType() {
        pushOnElementStack(K_NEXT_TYPEREF_IS_EXCEPTION);
        super.consumeUnionType();
        popElement(K_NEXT_TYPEREF_IS_EXCEPTION);
    }

    @Override
    public void consumeUnionTypeAsClassType() {
        pushOnElementStack(K_NEXT_TYPEREF_IS_EXCEPTION);
        super.consumeUnionTypeAsClassType();
        popElement(K_NEXT_TYPEREF_IS_EXCEPTION);
    }

    @Override
    public void consumeUsesStatement() {
        super.consumeUsesStatement();
        popElement(K_INSIDE_USES_STATEMENT);
    }

    @Override
    public void consumeWildcard() {
        super.consumeWildcard();
        if (assistIdentifier() == null && this.currentToken == 22) {
            int i10 = this.cursorLocation;
            Scanner scanner = this.scanner;
            int i11 = scanner.startPosition;
            if (i10 < i11 && scanner.currentPosition == i11) {
                pushIdentifier();
            } else if (i10 + 1 < i11 || i10 >= scanner.currentPosition) {
                return;
            } else {
                pushIdentifier();
            }
            Wildcard wildcard = (Wildcard) this.genericsStack[this.genericsPtr];
            char[][] cArr = this.identifierStack;
            int i12 = this.identifierPtr;
            CompletionOnKeyword1 completionOnKeyword1 = new CompletionOnKeyword1(cArr[i12], this.identifierPositionStack[i12], new char[][]{Keywords.EXTENDS, Keywords.SUPER});
            wildcard.kind = 1;
            wildcard.bound = completionOnKeyword1;
            this.identifierPtr--;
            this.identifierLengthPtr--;
            this.assistNode = completionOnKeyword1;
            this.lastCheckPoint = completionOnKeyword1.sourceEnd + 1;
        }
    }

    @Override
    public void consumeWildcard1() {
        super.consumeWildcard1();
        popElement(1040);
    }

    @Override
    public void consumeWildcard2() {
        super.consumeWildcard2();
        popElement(1040);
    }

    @Override
    public void consumeWildcard3() {
        super.consumeWildcard3();
        popElement(1040);
    }

    @Override
    public void consumeWildcardBounds1Extends() {
        Wildcard wildcard;
        super.consumeWildcardBounds1Extends();
        ASTNode aSTNode = this.assistNode;
        if (aSTNode != null && this.assistNodeParent == null && (wildcard = (Wildcard) this.genericsStack[this.genericsPtr]) != null && wildcard.bound == aSTNode) {
            this.assistNodeParent = wildcard;
        }
        popElement(K_EXTENDS_KEYWORD);
    }

    @Override
    public void consumeWildcardBounds2Extends() {
        Wildcard wildcard;
        super.consumeWildcardBounds2Extends();
        ASTNode aSTNode = this.assistNode;
        if (aSTNode != null && this.assistNodeParent == null && (wildcard = (Wildcard) this.genericsStack[this.genericsPtr]) != null && wildcard.bound == aSTNode) {
            this.assistNodeParent = wildcard;
        }
        popElement(K_EXTENDS_KEYWORD);
    }

    @Override
    public void consumeWildcardBounds3Extends() {
        Wildcard wildcard;
        super.consumeWildcardBounds3Extends();
        ASTNode aSTNode = this.assistNode;
        if (aSTNode != null && this.assistNodeParent == null && (wildcard = (Wildcard) this.genericsStack[this.genericsPtr]) != null && wildcard.bound == aSTNode) {
            this.assistNodeParent = wildcard;
        }
        popElement(K_EXTENDS_KEYWORD);
    }

    @Override
    public void consumeWildcardBoundsExtends() {
        Wildcard wildcard;
        super.consumeWildcardBoundsExtends();
        ASTNode aSTNode = this.assistNode;
        if (aSTNode != null && this.assistNodeParent == null && (wildcard = (Wildcard) this.genericsStack[this.genericsPtr]) != null && wildcard.bound == aSTNode) {
            this.assistNodeParent = wildcard;
        }
        popElement(K_EXTENDS_KEYWORD);
    }

    @Override
    public void consumeWithClause() {
        super.consumeWithClause();
        popElement(K_AFTER_WITH_IN_PROVIDES_STATEMENT);
    }

    @Override
    public MethodDeclaration convertToMethodDeclaration(ConstructorDeclaration constructorDeclaration, CompilationResult compilationResult) {
        int removeKey;
        MethodDeclaration convertToMethodDeclaration = super.convertToMethodDeclaration(constructorDeclaration, compilationResult);
        HashtableOfObjectToInt hashtableOfObjectToInt = this.sourceEnds;
        if (hashtableOfObjectToInt != null && (removeKey = hashtableOfObjectToInt.removeKey(constructorDeclaration)) != -1) {
            this.sourceEnds.put(convertToMethodDeclaration, removeKey);
        }
        return convertToMethodDeclaration;
    }

    @Override
    public void copyState(Parser parser) {
        super.copyState(parser);
        CompletionParser completionParser = (CompletionParser) parser;
        this.invocationType = completionParser.invocationType;
        this.qualifier = completionParser.qualifier;
        this.inReferenceExpression = completionParser.inReferenceExpression;
        this.hasUnusedModifiers = completionParser.hasUnusedModifiers;
        this.canBeExplicitConstructor = completionParser.canBeExplicitConstructor;
    }

    @Override
    public ImportReference createAssistImportReference(char[][] cArr, long[] jArr, int i10) {
        return new CompletionOnImportReference(cArr, jArr, i10);
    }

    @Override
    public ModuleDeclaration createAssistModuleDeclaration(CompilationResult compilationResult, char[][] cArr, long[] jArr) {
        return new CompletionOnModuleDeclaration(compilationResult, cArr, jArr);
    }

    @Override
    public ModuleReference createAssistModuleReference(int i10) {
        int i11 = this.identifierLengthStack[this.identifierLengthPtr];
        char[][] identifierSubSet = identifierSubSet(i10 + 1);
        this.identifierLengthPtr--;
        int i12 = this.identifierPtr - i11;
        this.identifierPtr = i12;
        long[] jArr = new long[i11];
        System.arraycopy(this.identifierPositionStack, i12 + 1, jArr, 0, i11);
        return new CompletionOnModuleReference(identifierSubSet, jArr);
    }

    @Override
    public ImportReference createAssistPackageReference(char[][] cArr, long[] jArr) {
        return new CompletionOnPackageReference(cArr, jArr);
    }

    @Override
    public ImportReference createAssistPackageVisibilityReference(char[][] cArr, long[] jArr) {
        return new CompletionOnPackageVisibilityReference(cArr, jArr);
    }

    @Override
    public FieldDeclaration createFieldDeclaration(char[] cArr, int i10, int i11) {
        if (indexOfAssistIdentifier() >= 0) {
            RecoveredElement recoveredElement = this.currentElement;
            if (!(recoveredElement instanceof RecoveredUnit) || ((RecoveredUnit) recoveredElement).typeCount != 0) {
                CompletionOnFieldName completionOnFieldName = new CompletionOnFieldName(cArr, i10, i11);
                this.assistNode = completionOnFieldName;
                this.lastCheckPoint = i11 + 1;
                return completionOnFieldName;
            }
        }
        return super.createFieldDeclaration(cArr, i10, i11);
    }

    @Override
    public JavadocParser createJavadocParser() {
        return new CompletionJavadocParser(this);
    }

    @Override
    public LocalDeclaration createLocalDeclaration(char[] cArr, int i10, int i11) {
        if (indexOfAssistIdentifier() < 0) {
            return super.createLocalDeclaration(cArr, i10, i11);
        }
        CompletionOnLocalName completionOnLocalName = new CompletionOnLocalName(cArr, i10, i11);
        this.assistNode = completionOnLocalName;
        this.lastCheckPoint = i11 + 1;
        return completionOnLocalName;
    }

    @Override
    public TypeReference createParameterizedQualifiedAssistTypeReference(char[][] cArr, TypeReference[][] typeReferenceArr, char[] cArr2, TypeReference[] typeReferenceArr2, long[] jArr) {
        boolean z10 = false;
        for (TypeReference[] typeReferenceArr3 : typeReferenceArr) {
            if (typeReferenceArr3 != null) {
                z10 = true;
            }
        }
        if (!z10) {
            return createQualifiedAssistTypeReference(cArr, cArr2, jArr);
        }
        switch (topKnownElementKind(1536)) {
            case 1029:
                return new CompletionOnParameterizedQualifiedTypeReference(cArr, typeReferenceArr, cArr2, jArr, 1);
            case K_NEXT_TYPEREF_IS_INTERFACE:
                return new CompletionOnParameterizedQualifiedTypeReference(cArr, typeReferenceArr, cArr2, jArr, 2);
            case K_NEXT_TYPEREF_IS_EXCEPTION:
                if (topKnownElementKind(1536, 1) == 1028) {
                    this.isOrphanCompletionNode = true;
                }
                return new CompletionOnParameterizedQualifiedTypeReference(cArr, typeReferenceArr, cArr2, jArr, 3);
            default:
                return new CompletionOnParameterizedQualifiedTypeReference(cArr, typeReferenceArr, cArr2, jArr);
        }
    }

    @Override
    public TypeReference createParameterizedSingleAssistTypeReference(TypeReference[] typeReferenceArr, char[] cArr, long j10) {
        return createSingleAssistTypeReference(cArr, j10);
    }

    @Override
    public NameReference createQualifiedAssistNameReference(char[][] cArr, char[] cArr2, long[] jArr) {
        return new CompletionOnQualifiedNameReference(cArr, cArr2, jArr, isInsideAttributeValue());
    }

    @Override
    public TypeReference createQualifiedAssistTypeReference(char[][] cArr, char[] cArr2, long[] jArr) {
        switch (topKnownElementKind(1536)) {
            case 1029:
                return new CompletionOnQualifiedTypeReference(cArr, cArr2, jArr, 1);
            case K_NEXT_TYPEREF_IS_INTERFACE:
                return new CompletionOnQualifiedTypeReference(cArr, cArr2, jArr, 2);
            case K_NEXT_TYPEREF_IS_EXCEPTION:
                if (topKnownElementKind(1536, 1) == 1028) {
                    this.isOrphanCompletionNode = true;
                }
                return new CompletionOnQualifiedTypeReference(cArr, cArr2, jArr, 3);
            default:
                return checkAndCreateModuleQualifiedAssistTypeReference(cArr, cArr2, jArr);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:83:0x023d  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x024c  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0245  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public NameReference createSingleAssistNameReference(char[] cArr, long j10) {
        int i10;
        int i11;
        boolean z10;
        int i12 = topKnownElementKind(1536);
        if (!isInsideMethod()) {
            return isInsideFieldInitialization() ? new CompletionOnSingleNameReference(cArr, j10, new char[][]{Keywords.FALSE, Keywords.TRUE}, false, isInsideAttributeValue()) : new CompletionOnSingleNameReference(cArr, j10, isInsideAttributeValue());
        }
        if ((i12 == 1025 || i12 == 519) && this.previousKind == 1025 && this.previousInfo == 7) {
            return new CompletionOnKeyword3(cArr, j10, Keywords.WHILE);
        }
        if ((i12 == 1025 || i12 == 519) && this.previousKind == 1025 && this.previousInfo == 2) {
            return new CompletionOnKeyword3(cArr, j10, new char[][]{Keywords.CATCH, Keywords.FINALLY}, true);
        }
        if (i12 == 1025 && topKnownElementInfo(1536) == 5) {
            return new CompletionOnKeyword3(cArr, j10, new char[][]{Keywords.CASE, Keywords.DEFAULT}, false);
        }
        char[][] cArr2 = new char[50];
        if ((this.lastModifiers & 8) == 0) {
            cArr2[0] = Keywords.SUPER;
            cArr2[1] = Keywords.THIS;
            i10 = 2;
        } else {
            i10 = 0;
        }
        int i13 = i10 + 1;
        cArr2[i10] = Keywords.NEW;
        if (i12 == 1025 || i12 == K_CONTROL_STATEMENT_DELIMITER || i12 == 519) {
            boolean z11 = this.canBeExplicitConstructor == 2;
            long j11 = this.options.complianceLevel;
            if (j11 >= ClassFileConstants.JDK1_4) {
                cArr2[i13] = Keywords.ASSERT;
                i13 = i10 + 2;
            }
            cArr2[i13] = Keywords.DO;
            cArr2[i13 + 1] = Keywords.FOR;
            cArr2[i13 + 2] = Keywords.IF;
            cArr2[i13 + 3] = Keywords.RETURN;
            cArr2[i13 + 4] = Keywords.SWITCH;
            cArr2[i13 + 5] = Keywords.SYNCHRONIZED;
            cArr2[i13 + 6] = Keywords.THROW;
            cArr2[i13 + 7] = Keywords.TRY;
            cArr2[i13 + 8] = Keywords.WHILE;
            cArr2[i13 + 9] = Keywords.FINAL;
            int i14 = i13 + 11;
            cArr2[i13 + 10] = Keywords.CLASS;
            if (j11 >= ClassFileConstants.JDK10) {
                cArr2[i14] = Keywords.VAR;
                i14 = i13 + 12;
            }
            int i15 = this.previousKind;
            if (i15 == 1025) {
                int i16 = this.previousInfo;
                if (i16 != 1) {
                    if (i16 == 3) {
                        int i17 = i14 + 1;
                        cArr2[i14] = Keywords.CATCH;
                        i14 += 2;
                        cArr2[i17] = Keywords.FINALLY;
                    }
                    if (isInsideLoop()) {
                        cArr2[i14] = Keywords.CONTINUE;
                        i13 = i14 + 1;
                    } else {
                        i13 = i14;
                    }
                    if (isInsideBreakable()) {
                        cArr2[i13] = Keywords.BREAK;
                        z10 = z11;
                        i13++;
                    } else {
                        z10 = z11;
                    }
                } else {
                    i11 = i14 + 1;
                    cArr2[i14] = Keywords.ELSE;
                    i14 = i11;
                    if (isInsideLoop()) {
                    }
                    if (isInsideBreakable()) {
                    }
                }
            } else {
                if (i15 == K_CONTROL_STATEMENT_DELIMITER && this.previousInfo == 1) {
                    i11 = i14 + 1;
                    cArr2[i14] = Keywords.ELSE;
                    i14 = i11;
                }
                if (isInsideLoop()) {
                }
                if (isInsideBreakable()) {
                }
            }
        } else {
            if (i12 == K_BETWEEN_FOR_AND_RIGHT_PAREN) {
                if (this.options.complianceLevel >= ClassFileConstants.JDK10) {
                    cArr2[i13] = Keywords.VAR;
                    i13 = i10 + 2;
                }
            } else if (i12 != K_BETWEEN_CASE_AND_COLON && i12 != K_BETWEEN_DEFAULT_AND_COLON) {
                if (i12 == K_LOCAL_INITIALIZER_DELIMITER && this.options.complianceLevel >= ClassFileConstants.JDK11) {
                    cArr2[i13] = Keywords.VAR;
                    i13 = i10 + 2;
                }
                if (i12 == K_SELECTOR_QUALIFIER && this.options.complianceLevel >= ClassFileConstants.JDK12) {
                    cArr2[i13] = Keywords.SWITCH;
                    i13++;
                }
                cArr2[i13] = Keywords.TRUE;
                cArr2[i13 + 1] = Keywords.FALSE;
                int i18 = i13 + 3;
                cArr2[i13 + 2] = Keywords.NULL;
                if (i12 == K_SWITCH_LABEL) {
                    if (topKnownElementInfo(1536) != 1) {
                        cArr2[i18] = Keywords.DEFAULT;
                        i18 = i13 + 4;
                    }
                    cArr2[i18] = Keywords.BREAK;
                    int i19 = i18 + 2;
                    cArr2[i18 + 1] = Keywords.CASE;
                    long j12 = this.options.complianceLevel;
                    if (j12 >= ClassFileConstants.JDK1_4) {
                        cArr2[i19] = Keywords.ASSERT;
                        i19 = i18 + 3;
                    }
                    cArr2[i19] = Keywords.DO;
                    cArr2[i19 + 1] = Keywords.FOR;
                    cArr2[i19 + 2] = Keywords.IF;
                    cArr2[i19 + 3] = Keywords.RETURN;
                    cArr2[i19 + 4] = Keywords.SWITCH;
                    cArr2[i19 + 5] = Keywords.SYNCHRONIZED;
                    cArr2[i19 + 6] = Keywords.THROW;
                    cArr2[i19 + 7] = Keywords.TRY;
                    cArr2[i19 + 8] = Keywords.WHILE;
                    cArr2[i19 + 9] = Keywords.FINAL;
                    int i20 = i19 + 11;
                    cArr2[i19 + 10] = Keywords.CLASS;
                    if (j12 >= ClassFileConstants.JDK10) {
                        cArr2[i20] = Keywords.VAR;
                        i13 = i19 + 12;
                    } else {
                        i13 = i20;
                    }
                    if (isInsideLoop()) {
                        cArr2[i13] = Keywords.CONTINUE;
                        i13++;
                    }
                } else {
                    i13 = i18;
                }
            }
            z10 = false;
        }
        char[][] cArr3 = new char[i13];
        System.arraycopy(cArr2, 0, cArr3, 0, i13);
        return new CompletionOnSingleNameReference(cArr, j10, cArr3, z10, isInsideAttributeValue());
    }

    @Override
    public TypeReference createSingleAssistTypeReference(char[] cArr, long j10) {
        switch (topKnownElementKind(1536)) {
            case 1029:
                return new CompletionOnSingleTypeReference(cArr, j10, 1);
            case K_NEXT_TYPEREF_IS_INTERFACE:
                return new CompletionOnSingleTypeReference(cArr, j10, 2);
            case K_NEXT_TYPEREF_IS_EXCEPTION:
                if (topKnownElementKind(1536, 1) == 1028) {
                    this.isOrphanCompletionNode = true;
                }
                return new CompletionOnSingleTypeReference(cArr, j10, 3);
            default:
                return checkAndCreateModuleSingleAssistTypeReference(cArr, j10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004d  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public StringLiteral createStringLiteral(char[] cArr, int i10, int i11, int i12) {
        int i13;
        char c10;
        int i14;
        char c11;
        int i15;
        int i16;
        int i17 = this.cursorLocation;
        if (i10 <= i17 && i17 <= i11) {
            char[] cArr2 = this.scanner.source;
            char c12 = cArr2[i10];
            if (c12 == '\"') {
                i14 = i10 + 1;
            } else {
                if (c12 == '\\' && cArr2[i10 + 1] == 'u') {
                    int i18 = i10 + 2;
                    while (true) {
                        c10 = cArr2[i18];
                        if (c10 != 'u') {
                            break;
                        }
                        i18++;
                    }
                    if (c10 == 0 && cArr2[i18 + 1] == 0 && cArr2[i18 + 2] == 2 && cArr2[i18 + 3] == 2) {
                        i14 = i18 + 4;
                    }
                }
                i13 = i10;
                c11 = cArr2[i11];
                if (c11 != '\"') {
                    i15 = i11 - 1;
                } else {
                    if (cArr2.length > 5 && cArr2[i11 - 4] == 'u' && cArr2[i11 - 3] == 0 && cArr2[i11 - 2] == 0 && cArr2[i11 - 1] == 2 && c11 == 2) {
                        int i19 = i11 - 5;
                        while (i19 > -1 && cArr2[i19] == 'u') {
                            i19--;
                        }
                        if (i19 > -1 && cArr2[i19] == '\\') {
                            i15 = i19 - 1;
                        }
                    }
                    i15 = i11;
                }
                i16 = i15 >= i10 ? i11 : i15;
                if (this.cursorLocation == i11 || i11 == i16) {
                    CompletionOnStringLiteral completionOnStringLiteral = new CompletionOnStringLiteral(cArr, i10, i11, i13, i16, i12);
                    this.assistNode = completionOnStringLiteral;
                    this.restartRecovery = true;
                    this.lastCheckPoint = i11;
                    return completionOnStringLiteral;
                }
            }
            i13 = i14;
            c11 = cArr2[i11];
            if (c11 != '\"') {
            }
            if (i15 >= i10) {
            }
            if (this.cursorLocation == i11) {
            }
            CompletionOnStringLiteral completionOnStringLiteral2 = new CompletionOnStringLiteral(cArr, i10, i11, i13, i16, i12);
            this.assistNode = completionOnStringLiteral2;
            this.restartRecovery = true;
            this.lastCheckPoint = i11;
            return completionOnStringLiteral2;
        }
        return super.createStringLiteral(cArr, i10, i11, i12);
    }

    public CompilationUnitDeclaration dietParse(ICompilationUnit iCompilationUnit, CompilationResult compilationResult, int i10) {
        this.cursorLocation = i10;
        CompletionScanner completionScanner = (CompletionScanner) this.scanner;
        completionScanner.completionIdentifier = null;
        completionScanner.cursorLocation = i10;
        return dietParse(iCompilationUnit, compilationResult);
    }

    @Override
    public ASTNode enclosingNode() {
        return this.enclosingNode;
    }

    @Override
    public void flushAssistState() {
        super.flushAssistState();
        this.isOrphanCompletionNode = false;
        this.isAlreadyAttached = false;
        this.assistNodeParent = null;
        CompletionScanner completionScanner = (CompletionScanner) this.scanner;
        completionScanner.completedIdentifierStart = 0;
        completionScanner.completedIdentifierEnd = -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0047, code lost:
    
        continue;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TypeReference getTypeReferenceForGenericType(int i10, int i11, int i12) {
        TypeReference typeReferenceForGenericType = super.getTypeReferenceForGenericType(i10, i11, i12);
        checkForDiamond(typeReferenceForGenericType);
        if (this.assistNode != null) {
            if (i11 == 1 && i12 == 1) {
                for (TypeReference typeReference : ((ParameterizedSingleTypeReference) typeReferenceForGenericType).typeArguments) {
                    if (typeReference == this.assistNode) {
                        this.assistNodeParent = typeReferenceForGenericType;
                        return typeReferenceForGenericType;
                    }
                }
            } else {
                TypeReference[][] typeReferenceArr = ((ParameterizedQualifiedTypeReference) typeReferenceForGenericType).typeArguments;
                for (int i13 = 0; i13 < typeReferenceArr.length; i13++) {
                    if (typeReferenceArr[i13] != null) {
                        int i14 = 0;
                        while (true) {
                            TypeReference[] typeReferenceArr2 = typeReferenceArr[i13];
                            if (i14 >= typeReferenceArr2.length) {
                                break;
                            }
                            if (typeReferenceArr2[i14] == this.assistNode) {
                                this.assistNodeParent = typeReferenceForGenericType;
                                return typeReferenceForGenericType;
                            }
                            i14++;
                        }
                    }
                }
            }
        }
        return typeReferenceForGenericType;
    }

    @Override
    public NameReference getUnspecifiedReference(boolean z10) {
        NameReference unspecifiedReference = super.getUnspecifiedReference(z10);
        if (this.record) {
            recordReference(unspecifiedReference);
        }
        return unspecifiedReference;
    }

    @Override
    public NameReference getUnspecifiedReferenceOptimized() {
        if (this.identifierLengthStack[this.identifierLengthPtr] > 1) {
            this.invocationType = -1;
            this.qualifier = -1;
        }
        NameReference unspecifiedReferenceOptimized = super.getUnspecifiedReferenceOptimized();
        if (this.record) {
            recordReference(unspecifiedReferenceOptimized);
        }
        return unspecifiedReferenceOptimized;
    }

    @Override
    public int indexOfAssistIdentifier(boolean z10) {
        if (this.record) {
            return -1;
        }
        return super.indexOfAssistIdentifier(z10);
    }

    @Override
    public void initialize() {
        super.initialize();
        this.labelPtr = -1;
        initializeForBlockStatements();
    }

    @Override
    public void initializeScanner() {
        this.scanner = new CompletionScanner(this.options.sourceLevel);
    }

    public boolean isAfterWithClause() {
        return foundToken(K_AFTER_WITH_IN_PROVIDES_STATEMENT);
    }

    public boolean isInExportsStatement() {
        return foundToken(1068);
    }

    public boolean isInImportStatement() {
        return foundToken(K_INSIDE_IMPORT_STATEMENT);
    }

    public boolean isInModuleStatements() {
        return isInExportsStatement() || isInOpensStatement() || isInRequiresStatement() || isInProvidesStatement() || isInUsesStatement();
    }

    public boolean isInOpensStatement() {
        return foundToken(K_INSIDE_OPENS_STATEMENT);
    }

    public boolean isInProvidesStatement() {
        return foundToken(K_INSIDE_PROVIDES_STATEMENT);
    }

    public boolean isInRequiresStatement() {
        return foundToken(K_INSIDE_REQUIRES_STATEMENT);
    }

    public boolean isInUsesStatement() {
        return foundToken(K_INSIDE_USES_STATEMENT);
    }

    public boolean isIndirectlyInsideBlock() {
        for (int i10 = this.elementPtr; i10 > -1; i10--) {
            if (this.elementKindStack[i10] == 1025) {
                return true;
            }
        }
        return false;
    }

    public boolean isInsideAnnotation() {
        for (int i10 = this.elementPtr; i10 > -1; i10--) {
            if (this.elementKindStack[i10] == K_BETWEEN_ANNOTATION_NAME_AND_RPAREN) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean isInsideArrayInitializer() {
        int i10 = this.elementPtr;
        return i10 > -1 && this.elementKindStack[i10] == K_ARRAY_INITIALIZER;
    }

    public boolean isInsideBlock() {
        for (int i10 = this.elementPtr; i10 > -1; i10--) {
            int i11 = this.elementKindStack[i10];
            if (i11 == 1025) {
                return true;
            }
            switch (i11) {
                case 514:
                case 515:
                case 516:
                    return false;
                default:
            }
        }
        return false;
    }

    public boolean isInsideBreakable() {
        for (int i10 = this.elementPtr; i10 > -1; i10--) {
            int i11 = this.elementKindStack[i10];
            if (i11 != 1025) {
                if (i11 == K_SWITCH_LABEL) {
                    return true;
                }
                if (i11 != K_CONTROL_STATEMENT_DELIMITER) {
                    switch (i11) {
                        case 514:
                        case 515:
                        case 516:
                            return false;
                    }
                }
            }
            int i12 = this.elementInfoStack[i10];
            if (i12 == 4 || i12 == 6 || i12 == 7) {
                return true;
            }
        }
        return false;
    }

    public boolean isInsideLoop() {
        for (int i10 = this.elementPtr; i10 > -1; i10--) {
            int i11 = this.elementKindStack[i10];
            if (i11 != 1025 && i11 != K_CONTROL_STATEMENT_DELIMITER) {
                switch (i11) {
                    case 514:
                    case 515:
                    case 516:
                        return false;
                }
            }
            int i12 = this.elementInfoStack[i10];
            if (i12 == 4 || i12 == 6 || i12 == 7) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0017. Please report as an issue. */
    public boolean isInsideReturn() {
        int i10;
        for (int i11 = this.elementPtr; i11 > -1 && (i10 = this.elementKindStack[i11]) != 1025; i11--) {
            if (i10 == K_INSIDE_RETURN_STATEMENT) {
                return true;
            }
            if (i10 != K_CONTROL_STATEMENT_DELIMITER) {
                switch (i10) {
                    case 514:
                    case 515:
                    case 516:
                        break;
                    default:
                }
            }
            return false;
        }
        return false;
    }

    @Override
    public ReferenceExpression newReferenceExpression() {
        if (this.identifierStack[this.identifierPtr] != assistIdentifier()) {
            return super.newReferenceExpression();
        }
        CompletionOnReferenceExpressionName completionOnReferenceExpressionName = new CompletionOnReferenceExpressionName(this.scanner);
        this.assistNode = completionOnReferenceExpressionName;
        return completionOnReferenceExpressionName;
    }

    public CompilationUnitDeclaration parse(ICompilationUnit iCompilationUnit, CompilationResult compilationResult, int i10) {
        this.cursorLocation = i10;
        CompletionScanner completionScanner = (CompletionScanner) this.scanner;
        completionScanner.completionIdentifier = null;
        completionScanner.cursorLocation = i10;
        return parse(iCompilationUnit, compilationResult);
    }

    @Override
    public void parseBlockStatements(ConstructorDeclaration constructorDeclaration, CompilationUnitDeclaration compilationUnitDeclaration) {
        this.canBeExplicitConstructor = 1;
        super.parseBlockStatements(constructorDeclaration, compilationUnitDeclaration);
    }

    public MethodDeclaration parseSomeStatements(int i10, int i11, int i12, CompilationUnitDeclaration compilationUnitDeclaration) {
        int i13;
        this.methodRecoveryActivated = true;
        initialize();
        goForBlockStatementsopt();
        MethodDeclaration methodDeclaration = new MethodDeclaration(compilationUnitDeclaration.compilationResult());
        methodDeclaration.selector = FAKE_METHOD_NAME;
        methodDeclaration.bodyStart = i10;
        methodDeclaration.bodyEnd = i11;
        methodDeclaration.declarationSourceStart = i10;
        methodDeclaration.declarationSourceEnd = i11;
        methodDeclaration.sourceStart = i10;
        methodDeclaration.sourceEnd = i10;
        this.referenceContext = methodDeclaration;
        this.compilationUnit = compilationUnitDeclaration;
        this.diet = false;
        this.restartRecovery = true;
        this.scanner.resetTo(i10, i11);
        consumeNestedMethod();
        for (int i14 = 0; i14 < i12; i14++) {
            try {
                consumeOpenFakeBlock();
            } catch (AbortCompilation unused) {
                this.lastAct = 16966;
            } finally {
                int[] iArr = this.nestedMethod;
                int i15 = this.nestedType;
                iArr[i15] = iArr[i15] - 1;
            }
        }
        parse();
        if (!this.hasError && (i13 = this.astLengthPtr) > -1) {
            int[] iArr2 = this.astLengthStack;
            this.astLengthPtr = i13 - 1;
            int i16 = iArr2[i13];
            if (i16 != 0) {
                ASTNode[] aSTNodeArr = this.astStack;
                int i17 = this.astPtr - i16;
                this.astPtr = i17;
                Statement[] statementArr = new Statement[i16];
                methodDeclaration.statements = statementArr;
                System.arraycopy(aSTNodeArr, i17 + 1, statementArr, 0, i16);
            }
        }
        return methodDeclaration;
    }

    public void popUntilCompletedAnnotationIfNecessary() {
        int i10 = this.elementPtr;
        if (i10 < 0) {
            return;
        }
        while (i10 > -1 && (this.elementKindStack[i10] != K_BETWEEN_ANNOTATION_NAME_AND_RPAREN || (this.elementInfoStack[i10] & 4) == 0)) {
            i10--;
        }
        if (i10 >= 0) {
            this.previousKind = this.elementKindStack[i10];
            this.previousInfo = this.elementInfoStack[i10];
            this.previousObjectInfo = this.elementObjectInfoStack[i10];
            for (int i11 = i10; i11 <= this.elementPtr; i11++) {
                this.elementObjectInfoStack[i11] = null;
            }
            this.elementPtr = i10 - 1;
        }
    }

    @Override
    public void prepareForBlockStatements() {
        int[] iArr = this.nestedMethod;
        this.nestedType = 0;
        iArr[0] = 1;
        this.variablesCounter[0] = 0;
        int[] iArr2 = this.realBlockStack;
        this.realBlockPtr = 1;
        iArr2[1] = 0;
        initializeForBlockStatements();
    }

    public void pushOnLabelStack(char[] cArr) {
        int i10 = this.labelPtr;
        if (i10 < -1) {
            return;
        }
        char[][] cArr2 = this.labelStack;
        int length = cArr2.length;
        int i11 = i10 + 1;
        this.labelPtr = i11;
        if (i11 >= length) {
            char[][] cArr3 = new char[length + 10];
            this.labelStack = cArr3;
            System.arraycopy(cArr2, 0, cArr3, 0, length);
        }
        this.labelStack[this.labelPtr] = cArr;
    }

    @Override
    public void recoveryExitFromVariable() {
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null && (recoveredElement instanceof RecoveredLocalVariable)) {
            super.recoveryExitFromVariable();
            if (recoveredElement != this.currentElement) {
                popElement(K_LOCAL_INITIALIZER_DELIMITER);
                return;
            }
            return;
        }
        if (recoveredElement == null || !(recoveredElement instanceof RecoveredField)) {
            super.recoveryExitFromVariable();
            return;
        }
        super.recoveryExitFromVariable();
        if (recoveredElement == this.currentElement || topKnownElementKind(1536) != K_ARRAY_INITIALIZER) {
            return;
        }
        popElement(K_ARRAY_INITIALIZER);
        popElement(516);
    }

    @Override
    public void recoveryTokenCheck() {
        RecoveredElement recoveredElement = this.currentElement;
        int i10 = this.currentToken;
        if (i10 == 33) {
            super.recoveryTokenCheck();
            if (this.currentElement == recoveredElement || !(recoveredElement instanceof RecoveredBlock)) {
                return;
            }
            if (topKnownElementKind(1536) == K_ARRAY_INITIALIZER) {
                popElement(K_ARRAY_INITIALIZER);
                return;
            } else {
                popElement(1025);
                return;
            }
        }
        if (i10 == 49) {
            if (!this.ignoreNextOpeningBrace) {
                this.pendingAnnotation = null;
            }
            super.recoveryTokenCheck();
            return;
        }
        if (i10 != 73) {
            if (i10 != 101) {
                super.recoveryTokenCheck();
                return;
            }
            super.recoveryTokenCheck();
            if (topKnownElementKind(1536) == 1025 && topKnownElementInfo(1536) == 5) {
                pushOnElementStack(K_SWITCH_LABEL);
                return;
            }
            return;
        }
        super.recoveryTokenCheck();
        if (topKnownElementKind(1536) == 1025 && topKnownElementInfo(1536) == 5) {
            pushOnElementStack(K_SWITCH_LABEL, 1);
        } else if (topKnownElementKind(1536) == K_SWITCH_LABEL) {
            popElement(K_SWITCH_LABEL);
            pushOnElementStack(K_SWITCH_LABEL, 1);
        }
    }

    @Override
    public void reset() {
        super.reset();
        this.cursorLocation = 0;
        if (this.storeSourceEnds) {
            this.sourceEnds = new HashtableOfObjectToInt();
        }
    }

    public void resetAfterCompletion() {
        this.cursorLocation = 0;
        flushAssistState();
    }

    @Override
    public void restoreAssistParser(Object obj) {
        SavedState savedState = (SavedState) obj;
        CompletionScanner completionScanner = (CompletionScanner) this.scanner;
        this.cursorLocation = savedState.parserCursorLocation;
        completionScanner.cursorLocation = savedState.scannerCursorLocation;
        this.assistNodeParent = savedState.assistNodeParent;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0038, code lost:
    
        if ((r1 instanceof org.eclipse.jdt.internal.compiler.ast.Initializer) == false) goto L22;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int resumeAfterRecovery() {
        this.hasUnusedModifiers = false;
        if (this.assistNode != null) {
            if (requireExtendedRecovery()) {
                if (this.unstackedAct != 16966) {
                    return 2;
                }
                return super.resumeAfterRecovery();
            }
            if (this.scanner.eofPosition >= this.cursorLocation + 1) {
                if ((this.referenceContext instanceof CompilationUnitDeclaration) && !isIndirectlyInsideFieldInitialization()) {
                    ASTNode aSTNode = this.assistNodeParent;
                    if (aSTNode instanceof FieldDeclaration) {
                    }
                }
                RecoveredElement recoveredElement = this.currentElement;
                if (!(recoveredElement instanceof RecoveredType) && recoveredElement.enclosingType() == null) {
                    resetStacks();
                    return 0;
                }
                this.pendingAnnotation = null;
                int i10 = this.lastCheckPoint;
                int i11 = this.assistNode.sourceEnd;
                if (i10 <= i11) {
                    this.lastCheckPoint = i11 + 1;
                }
                int sourceEnd = this.currentElement.topElement().sourceEnd();
                Scanner scanner = this.scanner;
                if (sourceEnd < Integer.MAX_VALUE) {
                    sourceEnd++;
                }
                scanner.eofPosition = sourceEnd;
            }
        }
        return super.resumeAfterRecovery();
    }

    @Override
    public int resumeOnSyntaxError() {
        IProgressMonitor iProgressMonitor = this.monitor;
        if (iProgressMonitor != null) {
            int i10 = this.resumeOnSyntaxError + 1;
            this.resumeOnSyntaxError = i10;
            if (i10 > 100) {
                this.resumeOnSyntaxError = 0;
                if (iProgressMonitor.isCanceled()) {
                    return 0;
                }
            }
        }
        return super.resumeOnSyntaxError();
    }

    @Override
    public void setAssistIdentifier(char[] cArr) {
        ((CompletionScanner) this.scanner).completionIdentifier = cArr;
    }

    @Override
    public void shouldStackAssistNode() {
        this.shouldStackAssistNode = true;
    }

    public void startRecordingIdentifiers(int i10, int i11) {
        this.record = true;
        this.skipRecord = false;
        this.recordFrom = i10;
        this.recordTo = i11;
        this.potentialVariableNamesPtr = -1;
        this.potentialVariableNames = new char[10];
        this.potentialVariableNameStarts = new int[10];
        this.potentialVariableNameEnds = new int[10];
    }

    public void stopRecordingIdentifiers() {
        this.record = true;
        this.skipRecord = false;
    }

    @Override
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("elementKindStack : int[] = {");
        for (int i10 = 0; i10 <= this.elementPtr; i10++) {
            stringBuffer.append(String.valueOf(this.elementKindStack[i10]));
            stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
        }
        stringBuffer.append("}\n");
        stringBuffer.append("elementInfoStack : int[] = {");
        for (int i11 = 0; i11 <= this.elementPtr; i11++) {
            stringBuffer.append(String.valueOf(this.elementInfoStack[i11]));
            stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
        }
        stringBuffer.append("}\n");
        stringBuffer.append(super.toString());
        return String.valueOf(stringBuffer);
    }

    @Override
    public void updateRecoveryState() {
        CompletionParser completionParser;
        RecoveredElement recoveredElement;
        this.currentElement.updateFromParserState();
        if (lastIndexOfElement(519) >= 0) {
            completionParser = createSnapShotParser();
            completionParser.copyState(this);
        } else {
            completionParser = null;
        }
        completionIdentifierCheck();
        attachOrphanCompletionNode();
        if (completionParser != null) {
            copyState(completionParser);
        }
        if (this.assistNode != null && (recoveredElement = this.currentElement) != null) {
            recoveredElement.preserveEnclosingBlocks();
        }
        recoveryTokenCheck();
        recoveryExitFromVariable();
    }

    @Override
    public int bodyEnd(Initializer initializer) {
        return this.cursorLocation;
    }

    @Override
    public CompletionParser createSnapShotParser() {
        return new CompletionParser(this.problemReporter, this.storeSourceEnds);
    }

    @Override
    public void initialize(boolean z10) {
        super.initialize(z10);
        this.labelPtr = -1;
        initializeForBlockStatements();
    }

    @Override
    public void consumeUnaryExpression(int i10, boolean z10) {
        super.consumeUnaryExpression(i10, z10);
        popElement(K_UNARY_OPERATOR);
        Expression expression = this.expressionStack[this.expressionPtr];
        if (expression instanceof UnaryExpression) {
            UnaryExpression unaryExpression = (UnaryExpression) expression;
            ASTNode aSTNode = this.assistNode;
            if (aSTNode == null || unaryExpression.expression != aSTNode) {
                return;
            }
            this.assistNodeParent = unaryExpression;
        }
    }

    public CompletionParser(ProblemReporter problemReporter, boolean z10, IProgressMonitor iProgressMonitor) {
        this(problemReporter, z10);
        this.monitor = iProgressMonitor;
    }
}
