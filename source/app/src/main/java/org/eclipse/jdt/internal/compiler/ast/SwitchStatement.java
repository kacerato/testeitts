package org.eclipse.jdt.internal.compiler.ast;

import java.util.Arrays;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.codegen.CaseLabel;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.SwitchFlowContext;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BaseTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SyntheticMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.core.JavaElement;

public class SwitchStatement extends Expression {
    public static final int BREAKING = 3;
    public static final int CASE = 0;
    public static final int ESCAPING = 2;
    public static final int FALLTHROUGH = 1;
    private static final char[] SecretStringVariableName = " switchDispatchString".toCharArray();
    public int blockStart;
    public BranchLabel breakLabel;
    public int caseCount;
    public CaseStatement[] cases;
    int[] constMapping;
    int[] constants;
    public CaseStatement defaultCase;
    public int explicitDeclarations;
    public Expression expression;
    public int nConstants;
    public BlockScope scope;
    public Statement[] statements;
    String[] stringConstants;
    public SyntheticMethodBinding synthetic;
    public boolean switchLabeledRules = false;
    int preSwitchInitStateIndex = -1;
    int mergedInitStateIndex = -1;
    CaseStatement[] duplicateCaseStatements = null;
    int duplicateCaseStatementsCounter = 0;
    private LocalVariableBinding dispatchStringCopy = null;

    public class C1StringSwitchCase implements Comparable {
        int hashCode;
        BranchLabel label;
        String string;

        public C1StringSwitchCase(int i10, String str, BranchLabel branchLabel) {
            this.hashCode = i10;
            this.string = str;
            this.label = branchLabel;
        }

        @Override
        public int compareTo(Object obj) {
            int i10 = this.hashCode;
            int i11 = ((C1StringSwitchCase) obj).hashCode;
            if (i10 == i11) {
                return 0;
            }
            return i10 > i11 ? 1 : -1;
        }

        public String toString() {
            return "StringSwitchCase :\ncase " + this.hashCode + ":(" + this.string + ")\n";
        }
    }

    private int getNConstants() {
        int length = this.statements.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            Statement statement = this.statements[i11];
            if (statement instanceof CaseStatement) {
                CaseStatement caseStatement = (CaseStatement) statement;
                Expression[] expressionArr = caseStatement.constantExpressions;
                i10 += expressionArr != null ? expressionArr.length : caseStatement.constantExpression != null ? 1 : 0;
            }
        }
        return i10;
    }

    private void reportDuplicateCase(CaseStatement caseStatement, CaseStatement caseStatement2, int i10) {
        if (this.duplicateCaseStatements != null) {
            for (int i11 = 2; i11 < this.duplicateCaseStatementsCounter; i11++) {
                if (this.duplicateCaseStatements[i11] == caseStatement) {
                    return;
                }
            }
            this.scope.problemReporter().duplicateCase(caseStatement);
            CaseStatement[] caseStatementArr = this.duplicateCaseStatements;
            int i12 = this.duplicateCaseStatementsCounter;
            this.duplicateCaseStatementsCounter = i12 + 1;
            caseStatementArr[i12] = caseStatement;
            return;
        }
        this.scope.problemReporter().duplicateCase(caseStatement2);
        if (caseStatement != caseStatement2) {
            this.scope.problemReporter().duplicateCase(caseStatement);
        }
        CaseStatement[] caseStatementArr2 = new CaseStatement[i10];
        this.duplicateCaseStatements = caseStatementArr2;
        int i13 = this.duplicateCaseStatementsCounter;
        int i14 = i13 + 1;
        this.duplicateCaseStatementsCounter = i14;
        caseStatementArr2[i13] = caseStatement2;
        if (caseStatement != caseStatement2) {
            this.duplicateCaseStatementsCounter = i13 + 2;
            caseStatementArr2[i14] = caseStatement;
        }
    }

    private void reportMixingCaseTypes() {
        int i10 = this.caseCount;
        if (i10 == 0) {
            CaseStatement caseStatement = this.defaultCase;
            this.switchLabeledRules = caseStatement != null ? caseStatement.isExpr : this.switchLabeledRules;
            return;
        }
        boolean z10 = this.cases[0].isExpr;
        this.switchLabeledRules = z10;
        for (int i11 = 1; i11 < i10; i11++) {
            if (this.cases[i11].isExpr != z10) {
                this.scope.problemReporter().switchExpressionMixedCase(this.cases[i11]);
                return;
            }
        }
        CaseStatement caseStatement2 = this.defaultCase;
        if (caseStatement2 == null || caseStatement2.isExpr == z10) {
            return;
        }
        this.scope.problemReporter().switchExpressionMixedCase(this.defaultCase);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0054 A[Catch: all -> 0x0029, TryCatch #0 {all -> 0x0029, blocks: (B:3:0x0007, B:5:0x0018, B:7:0x001c, B:9:0x0022, B:12:0x0031, B:14:0x0054, B:17:0x005f, B:49:0x0068, B:19:0x006d, B:21:0x0077, B:23:0x007d, B:25:0x0085, B:27:0x008b, B:28:0x0096, B:30:0x00c9, B:32:0x00d2, B:35:0x00dd, B:37:0x00e0, B:39:0x00a1, B:41:0x00a5, B:43:0x00ab, B:45:0x00b1, B:46:0x00bc, B:47:0x00c5, B:51:0x00e3, B:53:0x00ed, B:54:0x00fb, B:56:0x00ff, B:58:0x0105, B:64:0x011f, B:69:0x002c), top: B:2:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00d2 A[Catch: all -> 0x0029, TryCatch #0 {all -> 0x0029, blocks: (B:3:0x0007, B:5:0x0018, B:7:0x001c, B:9:0x0022, B:12:0x0031, B:14:0x0054, B:17:0x005f, B:49:0x0068, B:19:0x006d, B:21:0x0077, B:23:0x007d, B:25:0x0085, B:27:0x008b, B:28:0x0096, B:30:0x00c9, B:32:0x00d2, B:35:0x00dd, B:37:0x00e0, B:39:0x00a1, B:41:0x00a5, B:43:0x00ab, B:45:0x00b1, B:46:0x00bc, B:47:0x00c5, B:51:0x00e3, B:53:0x00ed, B:54:0x00fb, B:56:0x00ff, B:58:0x0105, B:64:0x011f, B:69:0x002c), top: B:2:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00e0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00ed A[Catch: all -> 0x0029, TryCatch #0 {all -> 0x0029, blocks: (B:3:0x0007, B:5:0x0018, B:7:0x001c, B:9:0x0022, B:12:0x0031, B:14:0x0054, B:17:0x005f, B:49:0x0068, B:19:0x006d, B:21:0x0077, B:23:0x007d, B:25:0x0085, B:27:0x008b, B:28:0x0096, B:30:0x00c9, B:32:0x00d2, B:35:0x00dd, B:37:0x00e0, B:39:0x00a1, B:41:0x00a5, B:43:0x00ab, B:45:0x00b1, B:46:0x00bc, B:47:0x00c5, B:51:0x00e3, B:53:0x00ed, B:54:0x00fb, B:56:0x00ff, B:58:0x0105, B:64:0x011f, B:69:0x002c), top: B:2:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0133  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        SwitchFlowContext switchFlowContext;
        FlowInfo flowInfo2;
        TypeBinding typeBinding;
        BlockScope blockScope2;
        CaseStatement caseStatement;
        try {
            FlowInfo analyseCode = this.expression.analyseCode(blockScope, flowContext, flowInfo);
            Expression expression = this.expression;
            if ((expression.implicitConversion & 1024) == 0) {
                TypeBinding typeBinding2 = expression.resolvedType;
                if (typeBinding2 != null) {
                    if (typeBinding2.f102482id != 11) {
                        if (typeBinding2.isEnum()) {
                        }
                    }
                }
                BranchLabel branchLabel = new BranchLabel();
                this.breakLabel = branchLabel;
                switchFlowContext = new SwitchFlowContext(flowContext, this, branchLabel, true, true);
                flowInfo2 = FlowInfo.DEAD_END;
                this.preSwitchInitStateIndex = blockScope.methodScope().recordInitializationStates(analyseCode);
                if (this.statements != null) {
                    int i10 = (analyseCode.reachMode() & 3) != 0 ? 1 : 0;
                    int length = this.statements.length;
                    int i11 = i10;
                    int i12 = 0;
                    int i13 = 0;
                    for (int i14 = 0; i14 < length; i14++) {
                        Statement statement = this.statements[i14];
                        if (i12 >= this.caseCount || statement != (caseStatement = this.cases[i12])) {
                            CaseStatement caseStatement2 = this.defaultCase;
                            if (statement == caseStatement2) {
                                BlockScope blockScope3 = this.scope;
                                blockScope3.enclosingCase = caseStatement2;
                                if (i13 == 1 && (statement.bits & 536870912) == 0) {
                                    blockScope3.problemReporter().possibleFallThroughCase(this.scope.enclosingCase);
                                }
                                flowInfo2 = flowInfo2.mergedWith(analyseCode.unconditionalInits());
                            } else {
                                i13 = getFallThroughState(statement, blockScope);
                                i11 = statement.complainIfUnreachable(flowInfo2, this.scope, i11, true);
                                if (i11 < 2) {
                                    flowInfo2 = statement.analyseCode(this.scope, switchFlowContext, flowInfo2);
                                    if (flowInfo2 == FlowInfo.DEAD_END) {
                                        i13 = 2;
                                    }
                                    switchFlowContext.expireNullCheckedFieldInfo();
                                }
                            }
                        } else {
                            BlockScope blockScope4 = this.scope;
                            blockScope4.enclosingCase = caseStatement;
                            i12++;
                            if (i13 == 1 && (statement.bits & 536870912) == 0) {
                                blockScope4.problemReporter().possibleFallThroughCase(this.scope.enclosingCase);
                            }
                            flowInfo2 = flowInfo2.mergedWith(analyseCode.unconditionalInits());
                        }
                        i11 = i10;
                        i13 = 0;
                        i11 = statement.complainIfUnreachable(flowInfo2, this.scope, i11, true);
                        if (i11 < 2) {
                        }
                    }
                    completeNormallyCheck(blockScope);
                }
                typeBinding = this.expression.resolvedType;
                if (typeBinding.isEnum()) {
                    this.synthetic = blockScope.classScope().referenceContext.binding.addSyntheticMethodForSwitchEnum(typeBinding, this);
                }
                if (this.defaultCase == null || !needToCheckFlowInAbsenceOfDefaultBranch()) {
                    UnconditionalFlowInfo mergedWith = flowInfo2.mergedWith(switchFlowContext.initsOnBreak);
                    this.mergedInitStateIndex = blockScope.methodScope().recordInitializationStates(mergedWith);
                    blockScope2 = this.scope;
                    if (blockScope2 != null) {
                        blockScope2.enclosingCase = null;
                    }
                    return mergedWith;
                }
                analyseCode.addPotentialInitializationsFrom(flowInfo2.mergedWith(switchFlowContext.initsOnBreak));
                this.mergedInitStateIndex = blockScope.methodScope().recordInitializationStates(analyseCode);
                BlockScope blockScope5 = this.scope;
                if (blockScope5 != null) {
                    blockScope5.enclosingCase = null;
                }
                return analyseCode;
            }
            this.expression.checkNPE(blockScope, flowContext, analyseCode, 1);
            BranchLabel branchLabel2 = new BranchLabel();
            this.breakLabel = branchLabel2;
            switchFlowContext = new SwitchFlowContext(flowContext, this, branchLabel2, true, true);
            flowInfo2 = FlowInfo.DEAD_END;
            this.preSwitchInitStateIndex = blockScope.methodScope().recordInitializationStates(analyseCode);
            if (this.statements != null) {
            }
            typeBinding = this.expression.resolvedType;
            if (typeBinding.isEnum()) {
            }
            if (this.defaultCase == null) {
            }
            UnconditionalFlowInfo mergedWith2 = flowInfo2.mergedWith(switchFlowContext.initsOnBreak);
            this.mergedInitStateIndex = blockScope.methodScope().recordInitializationStates(mergedWith2);
            blockScope2 = this.scope;
            if (blockScope2 != null) {
            }
            return mergedWith2;
        } catch (Throwable th2) {
            BlockScope blockScope6 = this.scope;
            if (blockScope6 != null) {
                blockScope6.enclosingCase = null;
            }
            throw th2;
        }
    }

    @Override
    public void branchChainTo(BranchLabel branchLabel) {
        if (this.breakLabel.forwardReferenceCount() > 0) {
            branchLabel.becomeDelegateFor(this.breakLabel);
        }
    }

    public void completeNormallyCheck(BlockScope blockScope) {
    }

    @Override
    public boolean completesByContinue() {
        Statement[] statementArr = this.statements;
        if (statementArr == null || statementArr.length == 0) {
            return false;
        }
        int length = statementArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (this.statements[i10].completesByContinue()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean doesNotCompleteNormally() {
        Statement[] statementArr = this.statements;
        if (statementArr == null || statementArr.length == 0) {
            return false;
        }
        int length = statementArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (this.statements[i10].breaksOut(null)) {
                return false;
            }
        }
        return this.statements[r0.length - 1].doesNotCompleteNormally();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream) {
        CaseLabel[] caseLabelArr;
        int i10;
        TypeBinding typeBinding;
        int i11;
        int i12;
        boolean z10;
        CaseStatement caseStatement;
        if (this.expression.resolvedType.f102482id == 11) {
            generateCodeForStringSwitch(blockScope, codeStream);
            return;
        }
        TypeBinding typeBinding2 = null;
        try {
            if ((this.bits & Integer.MIN_VALUE) == 0) {
                BlockScope blockScope2 = this.scope;
                if (blockScope2 != null) {
                    blockScope2.enclosingCase = null;
                    return;
                }
                return;
            }
            int i13 = codeStream.position;
            this.breakLabel.initialize(codeStream);
            int[] iArr = this.constants;
            int i14 = 0;
            int length = iArr == null ? 0 : iArr.length;
            if (blockScope.compilerOptions().complianceLevel >= ClassFileConstants.JDK12) {
                int i15 = this.caseCount;
                int i16 = 0;
                for (int i17 = 0; i17 < i15; i17++) {
                    CaseStatement caseStatement2 = this.cases[i17];
                    int length2 = caseStatement2.constantExpressions.length;
                    i16 += length2;
                    caseStatement2.targetLabels = new BranchLabel[length2];
                }
                CaseLabel[] caseLabelArr2 = new CaseLabel[i16];
                int i18 = this.caseCount;
                int i19 = 0;
                for (int i20 = 0; i20 < i18; i20++) {
                    CaseStatement caseStatement3 = this.cases[i20];
                    int length3 = caseStatement3.constantExpressions.length;
                    int i21 = 0;
                    while (i21 < length3) {
                        BranchLabel[] branchLabelArr = caseStatement3.targetLabels;
                        CaseLabel caseLabel = new CaseLabel(codeStream);
                        caseLabelArr2[i19] = caseLabel;
                        branchLabelArr[i21] = caseLabel;
                        int i22 = i19 + 1;
                        caseLabelArr2[i19].tagBits |= 2;
                        i21++;
                        i19 = i22;
                    }
                }
                caseLabelArr = caseLabelArr2;
            } else {
                int i23 = this.caseCount;
                CaseLabel[] caseLabelArr3 = new CaseLabel[i23];
                int i24 = 0;
                while (i24 < i23) {
                    int i25 = i13;
                    int i26 = length;
                    CaseStatement caseStatement4 = this.cases[i24];
                    CaseLabel caseLabel2 = new CaseLabel(codeStream);
                    caseLabelArr3[i24] = caseLabel2;
                    caseStatement4.targetLabel = caseLabel2;
                    caseLabel2.tagBits |= 2;
                    i24++;
                    i13 = i25;
                    length = i26;
                    typeBinding2 = null;
                    i14 = 0;
                }
                caseLabelArr = caseLabelArr3;
            }
            CaseLabel caseLabel3 = new CaseLabel(codeStream);
            boolean z11 = true;
            int i27 = this.caseCount != 0 ? 1 : i14;
            if (i27 != 0) {
                caseLabel3.tagBits |= 2;
            }
            CaseStatement caseStatement5 = this.defaultCase;
            if (caseStatement5 != null) {
                caseStatement5.targetLabel = caseLabel3;
            }
            TypeBinding typeBinding3 = this.expression.resolvedType;
            if (typeBinding3.isEnum()) {
                codeStream.invoke(Opcodes.OPC_invokestatic, this.synthetic, typeBinding2);
                this.expression.generateCode(blockScope, codeStream, true);
                codeStream.invokeEnumOrdinal(typeBinding3.constantPoolName());
                codeStream.iaload();
                if (i27 == 0) {
                    codeStream.pop();
                }
                i10 = i27;
            } else {
                Expression expression = this.expression;
                boolean z12 = (expression.constant == Constant.NotAConstant || i27 != 0) ? 1 : i14;
                expression.generateCode(blockScope, codeStream, z12);
                i10 = z12;
            }
            if (i27 != 0) {
                int[] iArr2 = new int[length];
                int i28 = i14;
                while (i28 < length) {
                    int[] iArr3 = iArr2;
                    iArr3[i28] = i28;
                    i28++;
                    typeBinding3 = typeBinding3;
                    iArr2 = iArr3;
                    z11 = z11;
                    i13 = i13;
                    length = length;
                    i14 = 0;
                }
                int[] iArr4 = new int[length];
                System.arraycopy(this.constants, i14, iArr4, i14, length);
                int i29 = length - 1;
                CodeStream.sort(iArr4, i14, i29, iArr2);
                int i30 = iArr4[i29];
                int i31 = iArr4[i14];
                i11 = i13;
                i12 = length;
                if (((long) (length * 2.5d)) <= i30 - i31) {
                    typeBinding = typeBinding3;
                    z10 = z11;
                    codeStream.lookupswitch(caseLabel3, this.constants, iArr2, caseLabelArr);
                } else if (i30 > 2147418112 && blockScope.compilerOptions().complianceLevel < ClassFileConstants.JDK1_4) {
                    codeStream.lookupswitch(caseLabel3, this.constants, iArr2, caseLabelArr);
                    typeBinding = typeBinding3;
                    z10 = z11;
                } else {
                    typeBinding = typeBinding3;
                    z10 = z11;
                    codeStream.tableswitch(caseLabel3, i31, i30, this.constants, iArr2, this.constMapping, caseLabelArr);
                }
                codeStream.recordPositionsFrom(codeStream.position, this.expression.sourceEnd);
            } else {
                typeBinding = typeBinding3;
                i11 = i13;
                i12 = length;
                z10 = true;
                if (i10 != 0) {
                    codeStream.pop();
                }
            }
            Statement[] statementArr = this.statements;
            if (statementArr != null) {
                int length4 = statementArr.length;
                int i32 = 0;
                int i33 = 0;
                while (i32 < length4) {
                    Statement statement = this.statements[i32];
                    int i34 = i12;
                    if (i33 < i34 && statement == (caseStatement = this.cases[i33])) {
                        this.scope.enclosingCase = caseStatement;
                        int i35 = this.preSwitchInitStateIndex;
                        if (i35 != -1) {
                            codeStream.removeNotDefinitelyAssignedVariables(blockScope, i35);
                        }
                        i33++;
                    } else {
                        CaseStatement caseStatement6 = this.defaultCase;
                        if (statement == caseStatement6) {
                            this.scope.enclosingCase = caseStatement6;
                            int i36 = this.preSwitchInitStateIndex;
                            if (i36 != -1) {
                                codeStream.removeNotDefinitelyAssignedVariables(blockScope, i36);
                            }
                        }
                    }
                    statementGenerateCode(blockScope, codeStream, statement);
                    i32++;
                    i12 = i34;
                }
            }
            boolean z13 = (typeBinding.isEnum() && (this instanceof SwitchExpression)) ? z10 : false;
            boolean z14 = (this.defaultCase == null && z13) ? z10 : false;
            if (z14) {
                int i37 = this.preSwitchInitStateIndex;
                if (i37 != -1) {
                    codeStream.removeNotDefinitelyAssignedVariables(blockScope, i37);
                }
                caseLabel3.place();
                codeStream.newJavaLangIncompatibleClassChangeError();
                codeStream.dup();
                codeStream.invokeJavaLangIncompatibleClassChangeErrorDefaultConstructor();
                codeStream.athrow();
            }
            int i38 = this.mergedInitStateIndex;
            if (i38 != -1) {
                codeStream.removeNotDefinitelyAssignedVariables(blockScope, i38);
                codeStream.addDefinitelyAssignedVariables(blockScope, this.mergedInitStateIndex);
            }
            BlockScope blockScope3 = this.scope;
            if (blockScope3 != blockScope) {
                codeStream.exitUserScope(blockScope3);
            }
            this.breakLabel.place();
            if (this.defaultCase == null && !z13) {
                codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd, z10);
                caseLabel3.place();
            }
            if (this instanceof SwitchExpression) {
                TypeBinding typeBinding4 = this.resolvedType;
                if (expectedType() != null) {
                    typeBinding4 = expectedType().erasure();
                }
                int i39 = codeStream.lastAbruptCompletion == -1 ? z10 : 0;
                codeStream.recordExpressionType(typeBinding4, i39 ^ 1, (i39 != 0 || z14) ? z10 : false);
            }
            codeStream.recordPositionsFrom(i11, this.sourceStart);
            BlockScope blockScope4 = this.scope;
            if (blockScope4 != null) {
                blockScope4.enclosingCase = null;
            }
        } catch (Throwable th2) {
            BlockScope blockScope5 = this.scope;
            if (blockScope5 != null) {
                blockScope5.enclosingCase = null;
            }
            throw th2;
        }
    }

    public void generateCodeForStringSwitch(BlockScope blockScope, CodeStream codeStream) {
        BranchLabel[] branchLabelArr;
        CaseStatement caseStatement;
        try {
            if ((this.bits & Integer.MIN_VALUE) == 0) {
                BlockScope blockScope2 = this.scope;
                if (blockScope2 != null) {
                    blockScope2.enclosingCase = null;
                    return;
                }
                return;
            }
            int i10 = codeStream.position;
            boolean z10 = this.caseCount != 0;
            int length = z10 ? this.stringConstants.length : 0;
            if (blockScope.compilerOptions().complianceLevel >= ClassFileConstants.JDK12) {
                int i11 = this.caseCount;
                for (int i12 = 0; i12 < i11; i12++) {
                    CaseStatement caseStatement2 = this.cases[i12];
                    caseStatement2.targetLabels = new BranchLabel[caseStatement2.constantExpressions.length];
                }
                branchLabelArr = new BranchLabel[this.nConstants];
                int i13 = this.caseCount;
                int i14 = 0;
                for (int i15 = 0; i15 < i13; i15++) {
                    CaseStatement caseStatement3 = this.cases[i15];
                    int length2 = caseStatement3.constantExpressions.length;
                    int i16 = 0;
                    while (i16 < length2) {
                        BranchLabel[] branchLabelArr2 = caseStatement3.targetLabels;
                        BranchLabel branchLabel = new BranchLabel(codeStream);
                        branchLabelArr[i14] = branchLabel;
                        branchLabelArr2[i16] = branchLabel;
                        branchLabelArr[i14].tagBits |= 2;
                        i16++;
                        i14++;
                    }
                }
            } else {
                int i17 = this.caseCount;
                branchLabelArr = new BranchLabel[i17];
                for (int i18 = 0; i18 < i17; i18++) {
                    CaseStatement caseStatement4 = this.cases[i18];
                    BranchLabel branchLabel2 = new BranchLabel(codeStream);
                    branchLabelArr[i18] = branchLabel2;
                    caseStatement4.targetLabel = branchLabel2;
                    branchLabel2.tagBits |= 2;
                }
            }
            C1StringSwitchCase[] c1StringSwitchCaseArr = new C1StringSwitchCase[length];
            CaseLabel[] caseLabelArr = new CaseLabel[length];
            this.constants = new int[length];
            for (int i19 = 0; i19 < length; i19++) {
                c1StringSwitchCaseArr[i19] = new C1StringSwitchCase(this.stringConstants[i19].hashCode(), this.stringConstants[i19], branchLabelArr[this.constMapping[i19]]);
                CaseLabel caseLabel = new CaseLabel(codeStream);
                caseLabelArr[i19] = caseLabel;
                caseLabel.tagBits |= 2;
            }
            Arrays.sort(c1StringSwitchCaseArr);
            int i20 = 0;
            int i21 = 0;
            for (int i22 = 0; i22 < length; i22++) {
                int i23 = c1StringSwitchCaseArr[i22].hashCode;
                if (i22 == 0 || i23 != i21) {
                    this.constants[i20] = i23;
                    i21 = i23;
                    i20++;
                }
            }
            if (i20 != length) {
                int[] iArr = this.constants;
                int[] iArr2 = new int[i20];
                this.constants = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, i20);
                CaseLabel[] caseLabelArr2 = new CaseLabel[i20];
                System.arraycopy(caseLabelArr, 0, caseLabelArr2, 0, i20);
                caseLabelArr = caseLabelArr2;
            }
            int[] iArr3 = new int[i20];
            for (int i24 = 0; i24 < i20; i24++) {
                iArr3[i24] = i24;
            }
            CaseLabel caseLabel2 = new CaseLabel(codeStream);
            caseLabel2.tagBits |= 2;
            this.breakLabel.initialize(codeStream);
            BranchLabel branchLabel3 = new BranchLabel(codeStream);
            if (z10) {
                branchLabel3.tagBits |= 2;
            }
            CaseStatement caseStatement5 = this.defaultCase;
            if (caseStatement5 != null) {
                caseStatement5.targetLabel = branchLabel3;
            }
            this.expression.generateCode(blockScope, codeStream, true);
            codeStream.store(this.dispatchStringCopy, true);
            codeStream.addVariable(this.dispatchStringCopy);
            codeStream.invokeStringHashCode();
            if (z10) {
                codeStream.lookupswitch(caseLabel2, this.constants, iArr3, caseLabelArr);
                int i25 = 0;
                for (int i26 = 0; i26 < length; i26++) {
                    int i27 = c1StringSwitchCaseArr[i26].hashCode;
                    if (i26 == 0 || i27 != i21) {
                        if (i26 != 0) {
                            codeStream.goto_(branchLabel3);
                        }
                        caseLabelArr[i25].place();
                        i25++;
                        i21 = i27;
                    }
                    codeStream.load(this.dispatchStringCopy);
                    codeStream.ldc(c1StringSwitchCaseArr[i26].string);
                    codeStream.invokeStringEquals();
                    codeStream.ifne(c1StringSwitchCaseArr[i26].label);
                }
                codeStream.goto_(branchLabel3);
            } else {
                codeStream.pop();
            }
            Statement[] statementArr = this.statements;
            if (statementArr != null) {
                int length3 = statementArr.length;
                int i28 = 0;
                for (int i29 = 0; i29 < length3; i29++) {
                    Statement statement = this.statements[i29];
                    if (i28 < this.caseCount && statement == (caseStatement = this.cases[i28])) {
                        this.scope.enclosingCase = caseStatement;
                        int i30 = this.preSwitchInitStateIndex;
                        if (i30 != -1) {
                            codeStream.removeNotDefinitelyAssignedVariables(blockScope, i30);
                        }
                        i28++;
                    } else if (statement == this.defaultCase) {
                        caseLabel2.place();
                        this.scope.enclosingCase = this.defaultCase;
                        int i31 = this.preSwitchInitStateIndex;
                        if (i31 != -1) {
                            codeStream.removeNotDefinitelyAssignedVariables(blockScope, i31);
                        }
                    }
                    statementGenerateCode(blockScope, codeStream, statement);
                }
            }
            int i32 = this.mergedInitStateIndex;
            if (i32 != -1) {
                codeStream.removeNotDefinitelyAssignedVariables(blockScope, i32);
                codeStream.addDefinitelyAssignedVariables(blockScope, this.mergedInitStateIndex);
            }
            codeStream.removeVariable(this.dispatchStringCopy);
            BlockScope blockScope3 = this.scope;
            if (blockScope3 != blockScope) {
                codeStream.exitUserScope(blockScope3);
            }
            this.breakLabel.place();
            if (this.defaultCase == null) {
                codeStream.recordPositionsFrom(codeStream.position, this.sourceEnd, true);
                caseLabel2.place();
                branchLabel3.place();
            }
            if (expectedType() != null) {
                TypeBinding erasure = expectedType().erasure();
                boolean z11 = codeStream.lastAbruptCompletion == -1;
                codeStream.recordExpressionType(erasure, !z11, z11);
            }
            codeStream.recordPositionsFrom(i10, this.sourceStart);
            BlockScope blockScope4 = this.scope;
            if (blockScope4 != null) {
                blockScope4.enclosingCase = null;
            }
        } catch (Throwable th2) {
            BlockScope blockScope5 = this.scope;
            if (blockScope5 != null) {
                blockScope5.enclosingCase = null;
            }
            throw th2;
        }
    }

    public int getFallThroughState(Statement statement, BlockScope blockScope) {
        if (this.switchLabeledRules) {
            if (((statement instanceof Expression) && ((Expression) statement).isTrulyExpression()) || (statement instanceof ThrowStatement)) {
                return 3;
            }
            if (statement instanceof Block) {
                Block block = (Block) statement;
                if (block.doesNotCompleteNormally()) {
                    return 3;
                }
                int i10 = block.sourceEnd;
                BreakStatement breakStatement = new BreakStatement(null, i10 - 1, i10);
                breakStatement.isImplicit = true;
                Statement[] statementArr = block.statements;
                int length = statementArr == null ? 0 : statementArr.length;
                if (length == 0) {
                    block.statements = new Statement[]{breakStatement};
                    block.scope = this.scope;
                } else {
                    Statement[] statementArr2 = new Statement[1 + length];
                    System.arraycopy(statementArr, 0, statementArr2, 0, length);
                    statementArr2[length] = breakStatement;
                    block.statements = statementArr2;
                }
                return 3;
            }
        }
        return 1;
    }

    public boolean ignoreMissingDefaultCase(CompilerOptions compilerOptions, boolean z10) {
        return compilerOptions.getSeverity(CompilerOptions.MissingDefaultCase) == 256;
    }

    @Override
    public boolean isTrulyExpression() {
        return false;
    }

    public boolean needToCheckFlowInAbsenceOfDefaultBranch() {
        return true;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        return printStatement(i10, stringBuffer);
    }

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer).append("switch (");
        this.expression.printExpression(0, stringBuffer).append(") {");
        if (this.statements != null) {
            for (int i11 = 0; i11 < this.statements.length; i11++) {
                stringBuffer.append('\n');
                Statement statement = this.statements[i11];
                if (statement instanceof CaseStatement) {
                    statement.printStatement(i10, stringBuffer);
                } else {
                    statement.printStatement(i10 + 2, stringBuffer);
                }
            }
        }
        stringBuffer.append("\n");
        StringBuffer printIndent = ASTNode.printIndent(i10, stringBuffer);
        printIndent.append(JavaElement.JEM_ANNOTATION);
        return printIndent;
    }

    public void reportMissingEnumConstantCase(BlockScope blockScope, FieldBinding fieldBinding) {
        blockScope.problemReporter().missingEnumConstantCase(this, fieldBinding);
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x01e1 A[Catch: all -> 0x003d, TryCatch #0 {all -> 0x003d, blocks: (B:3:0x0004, B:5:0x0015, B:9:0x0086, B:10:0x00a1, B:12:0x00a5, B:14:0x00bb, B:63:0x00d5, B:64:0x00e8, B:65:0x00df, B:66:0x01aa, B:68:0x01b1, B:71:0x01b9, B:72:0x01c1, B:74:0x01ca, B:76:0x01d3, B:78:0x01d7, B:80:0x01db, B:83:0x01e2, B:85:0x01e6, B:87:0x01ef, B:89:0x01fe, B:101:0x020b, B:103:0x020f, B:106:0x0217, B:96:0x021b, B:110:0x01e1, B:17:0x00f3, B:19:0x00ff, B:21:0x0190, B:22:0x0106, B:24:0x0110, B:26:0x0116, B:30:0x0166, B:32:0x0123, B:42:0x012a, B:43:0x015e, B:34:0x0131, B:36:0x0139, B:38:0x014a, B:45:0x0151, B:55:0x015a, B:47:0x016e, B:49:0x0178, B:51:0x0189, B:58:0x018e, B:117:0x00c4, B:118:0x0199, B:120:0x019f, B:121:0x0025, B:123:0x002b, B:126:0x0036, B:129:0x0078, B:130:0x0040, B:132:0x0046, B:134:0x004c, B:136:0x0058, B:138:0x0060, B:139:0x0066, B:141:0x006f), top: B:2:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x022f A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:116:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0199 A[Catch: all -> 0x003d, TryCatch #0 {all -> 0x003d, blocks: (B:3:0x0004, B:5:0x0015, B:9:0x0086, B:10:0x00a1, B:12:0x00a5, B:14:0x00bb, B:63:0x00d5, B:64:0x00e8, B:65:0x00df, B:66:0x01aa, B:68:0x01b1, B:71:0x01b9, B:72:0x01c1, B:74:0x01ca, B:76:0x01d3, B:78:0x01d7, B:80:0x01db, B:83:0x01e2, B:85:0x01e6, B:87:0x01ef, B:89:0x01fe, B:101:0x020b, B:103:0x020f, B:106:0x0217, B:96:0x021b, B:110:0x01e1, B:17:0x00f3, B:19:0x00ff, B:21:0x0190, B:22:0x0106, B:24:0x0110, B:26:0x0116, B:30:0x0166, B:32:0x0123, B:42:0x012a, B:43:0x015e, B:34:0x0131, B:36:0x0139, B:38:0x014a, B:45:0x0151, B:55:0x015a, B:47:0x016e, B:49:0x0178, B:51:0x0189, B:58:0x018e, B:117:0x00c4, B:118:0x0199, B:120:0x019f, B:121:0x0025, B:123:0x002b, B:126:0x0036, B:129:0x0078, B:130:0x0040, B:132:0x0046, B:134:0x004c, B:136:0x0058, B:138:0x0060, B:139:0x0066, B:141:0x006f), top: B:2:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00a5 A[Catch: all -> 0x003d, TryCatch #0 {all -> 0x003d, blocks: (B:3:0x0004, B:5:0x0015, B:9:0x0086, B:10:0x00a1, B:12:0x00a5, B:14:0x00bb, B:63:0x00d5, B:64:0x00e8, B:65:0x00df, B:66:0x01aa, B:68:0x01b1, B:71:0x01b9, B:72:0x01c1, B:74:0x01ca, B:76:0x01d3, B:78:0x01d7, B:80:0x01db, B:83:0x01e2, B:85:0x01e6, B:87:0x01ef, B:89:0x01fe, B:101:0x020b, B:103:0x020f, B:106:0x0217, B:96:0x021b, B:110:0x01e1, B:17:0x00f3, B:19:0x00ff, B:21:0x0190, B:22:0x0106, B:24:0x0110, B:26:0x0116, B:30:0x0166, B:32:0x0123, B:42:0x012a, B:43:0x015e, B:34:0x0131, B:36:0x0139, B:38:0x014a, B:45:0x0151, B:55:0x015a, B:47:0x016e, B:49:0x0178, B:51:0x0189, B:58:0x018e, B:117:0x00c4, B:118:0x0199, B:120:0x019f, B:121:0x0025, B:123:0x002b, B:126:0x0036, B:129:0x0078, B:130:0x0040, B:132:0x0046, B:134:0x004c, B:136:0x0058, B:138:0x0060, B:139:0x0066, B:141:0x006f), top: B:2:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0237 A[FINALLY_INSNS] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01b1 A[Catch: all -> 0x003d, TryCatch #0 {all -> 0x003d, blocks: (B:3:0x0004, B:5:0x0015, B:9:0x0086, B:10:0x00a1, B:12:0x00a5, B:14:0x00bb, B:63:0x00d5, B:64:0x00e8, B:65:0x00df, B:66:0x01aa, B:68:0x01b1, B:71:0x01b9, B:72:0x01c1, B:74:0x01ca, B:76:0x01d3, B:78:0x01d7, B:80:0x01db, B:83:0x01e2, B:85:0x01e6, B:87:0x01ef, B:89:0x01fe, B:101:0x020b, B:103:0x020f, B:106:0x0217, B:96:0x021b, B:110:0x01e1, B:17:0x00f3, B:19:0x00ff, B:21:0x0190, B:22:0x0106, B:24:0x0110, B:26:0x0116, B:30:0x0166, B:32:0x0123, B:42:0x012a, B:43:0x015e, B:34:0x0131, B:36:0x0139, B:38:0x014a, B:45:0x0151, B:55:0x015a, B:47:0x016e, B:49:0x0178, B:51:0x0189, B:58:0x018e, B:117:0x00c4, B:118:0x0199, B:120:0x019f, B:121:0x0025, B:123:0x002b, B:126:0x0036, B:129:0x0078, B:130:0x0040, B:132:0x0046, B:134:0x004c, B:136:0x0058, B:138:0x0060, B:139:0x0066, B:141:0x006f), top: B:2:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01ca A[Catch: all -> 0x003d, TryCatch #0 {all -> 0x003d, blocks: (B:3:0x0004, B:5:0x0015, B:9:0x0086, B:10:0x00a1, B:12:0x00a5, B:14:0x00bb, B:63:0x00d5, B:64:0x00e8, B:65:0x00df, B:66:0x01aa, B:68:0x01b1, B:71:0x01b9, B:72:0x01c1, B:74:0x01ca, B:76:0x01d3, B:78:0x01d7, B:80:0x01db, B:83:0x01e2, B:85:0x01e6, B:87:0x01ef, B:89:0x01fe, B:101:0x020b, B:103:0x020f, B:106:0x0217, B:96:0x021b, B:110:0x01e1, B:17:0x00f3, B:19:0x00ff, B:21:0x0190, B:22:0x0106, B:24:0x0110, B:26:0x0116, B:30:0x0166, B:32:0x0123, B:42:0x012a, B:43:0x015e, B:34:0x0131, B:36:0x0139, B:38:0x014a, B:45:0x0151, B:55:0x015a, B:47:0x016e, B:49:0x0178, B:51:0x0189, B:58:0x018e, B:117:0x00c4, B:118:0x0199, B:120:0x019f, B:121:0x0025, B:123:0x002b, B:126:0x0036, B:129:0x0078, B:130:0x0040, B:132:0x0046, B:134:0x004c, B:136:0x0058, B:138:0x0060, B:139:0x0066, B:141:0x006f), top: B:2:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01fe A[Catch: all -> 0x003d, TryCatch #0 {all -> 0x003d, blocks: (B:3:0x0004, B:5:0x0015, B:9:0x0086, B:10:0x00a1, B:12:0x00a5, B:14:0x00bb, B:63:0x00d5, B:64:0x00e8, B:65:0x00df, B:66:0x01aa, B:68:0x01b1, B:71:0x01b9, B:72:0x01c1, B:74:0x01ca, B:76:0x01d3, B:78:0x01d7, B:80:0x01db, B:83:0x01e2, B:85:0x01e6, B:87:0x01ef, B:89:0x01fe, B:101:0x020b, B:103:0x020f, B:106:0x0217, B:96:0x021b, B:110:0x01e1, B:17:0x00f3, B:19:0x00ff, B:21:0x0190, B:22:0x0106, B:24:0x0110, B:26:0x0116, B:30:0x0166, B:32:0x0123, B:42:0x012a, B:43:0x015e, B:34:0x0131, B:36:0x0139, B:38:0x014a, B:45:0x0151, B:55:0x015a, B:47:0x016e, B:49:0x0178, B:51:0x0189, B:58:0x018e, B:117:0x00c4, B:118:0x0199, B:120:0x019f, B:121:0x0025, B:123:0x002b, B:126:0x0036, B:129:0x0078, B:130:0x0040, B:132:0x0046, B:134:0x004c, B:136:0x0058, B:138:0x0060, B:139:0x0066, B:141:0x006f), top: B:2:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0086 A[Catch: all -> 0x003d, TryCatch #0 {all -> 0x003d, blocks: (B:3:0x0004, B:5:0x0015, B:9:0x0086, B:10:0x00a1, B:12:0x00a5, B:14:0x00bb, B:63:0x00d5, B:64:0x00e8, B:65:0x00df, B:66:0x01aa, B:68:0x01b1, B:71:0x01b9, B:72:0x01c1, B:74:0x01ca, B:76:0x01d3, B:78:0x01d7, B:80:0x01db, B:83:0x01e2, B:85:0x01e6, B:87:0x01ef, B:89:0x01fe, B:101:0x020b, B:103:0x020f, B:106:0x0217, B:96:0x021b, B:110:0x01e1, B:17:0x00f3, B:19:0x00ff, B:21:0x0190, B:22:0x0106, B:24:0x0110, B:26:0x0116, B:30:0x0166, B:32:0x0123, B:42:0x012a, B:43:0x015e, B:34:0x0131, B:36:0x0139, B:38:0x014a, B:45:0x0151, B:55:0x015a, B:47:0x016e, B:49:0x0178, B:51:0x0189, B:58:0x018e, B:117:0x00c4, B:118:0x0199, B:120:0x019f, B:121:0x0025, B:123:0x002b, B:126:0x0036, B:129:0x0078, B:130:0x0040, B:132:0x0046, B:134:0x004c, B:136:0x0058, B:138:0x0060, B:139:0x0066, B:141:0x006f), top: B:2:0x0004 }] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void resolve(BlockScope blockScope) {
        BlockScope blockScope2;
        TypeBinding resolveType;
        CompilerOptions compilerOptions;
        int i10;
        boolean z10;
        boolean z11;
        int length;
        int i11;
        String str;
        int i12;
        try {
            resolveType = this.expression.resolveType(blockScope);
            compilerOptions = blockScope.compilerOptions();
            i10 = 0;
        } finally {
            blockScope2 = this.scope;
            if (blockScope2 != null) {
            }
        }
        if (resolveType != null) {
            this.expression.computeConversion(blockScope, resolveType, resolveType);
            if (resolveType.isValidBinding()) {
                if (!resolveType.isBaseType()) {
                    if (resolveType.isEnum()) {
                        if (compilerOptions.complianceLevel < ClassFileConstants.JDK1_5) {
                            blockScope.problemReporter().incorrectSwitchType(this.expression, resolveType);
                        }
                        z11 = true;
                        z10 = false;
                    } else {
                        BaseTypeBinding baseTypeBinding = TypeBinding.INT;
                        if (blockScope.isBoxingCompatibleWith(resolveType, baseTypeBinding)) {
                            this.expression.computeConversion(blockScope, baseTypeBinding, resolveType);
                        } else {
                            if (compilerOptions.complianceLevel >= ClassFileConstants.JDK1_7 && resolveType.f102482id == 11) {
                                z10 = true;
                                z11 = false;
                            }
                            blockScope.problemReporter().incorrectSwitchType(this.expression, resolveType);
                        }
                    }
                    if (z10) {
                        LocalVariableBinding localVariableBinding = new LocalVariableBinding(SecretStringVariableName, (TypeBinding) blockScope.getJavaLangString(), 0, false);
                        this.dispatchStringCopy = localVariableBinding;
                        blockScope.addLocalVariable(localVariableBinding);
                        this.dispatchStringCopy.setConstant(Constant.NotAConstant);
                        this.dispatchStringCopy.useFlag = 1;
                    }
                    if (this.statements != null) {
                        this.scope = new BlockScope(blockScope);
                        int length2 = this.statements.length;
                        this.cases = new CaseStatement[length2];
                        int nConstants = getNConstants();
                        this.nConstants = nConstants;
                        if (z10) {
                            this.stringConstants = new String[nConstants];
                            this.constMapping = new int[nConstants];
                        } else {
                            this.constants = new int[nConstants];
                            this.constMapping = new int[nConstants];
                        }
                        int i13 = 0;
                        int i14 = 0;
                        int i15 = 0;
                        while (i13 < length2) {
                            int[] iArr = new int[this.nConstants];
                            Statement statement = this.statements[i13];
                            if (statement instanceof CaseStatement) {
                                Constant[] resolveCase = statement.resolveCase(this.scope, resolveType, this);
                                if (resolveCase != Constant.NotAConstantList) {
                                    int length3 = resolveCase.length;
                                    int i16 = 0;
                                    while (i16 < length3) {
                                        Constant constant = resolveCase[i16];
                                        Constant[] constantArr = resolveCase;
                                        if (constant == Constant.NotAConstant) {
                                            i11 = length3;
                                        } else {
                                            if (z10) {
                                                i11 = length3;
                                                String stringValue = constant.stringValue();
                                                int i17 = 0;
                                                while (i17 < i14) {
                                                    if (this.stringConstants[i17].equals(stringValue)) {
                                                        str = stringValue;
                                                        reportDuplicateCase((CaseStatement) statement, this.cases[iArr[i17]], length2);
                                                    } else {
                                                        str = stringValue;
                                                    }
                                                    i17++;
                                                    stringValue = str;
                                                }
                                                this.stringConstants[i14] = stringValue;
                                            } else {
                                                int intValue = constant.intValue();
                                                int i18 = 0;
                                                while (i18 < i14) {
                                                    int i19 = length3;
                                                    if (this.constants[i18] == intValue) {
                                                        i12 = intValue;
                                                        reportDuplicateCase((CaseStatement) statement, this.cases[iArr[i18]], length2);
                                                    } else {
                                                        i12 = intValue;
                                                    }
                                                    i18++;
                                                    length3 = i19;
                                                    intValue = i12;
                                                }
                                                this.constants[i14] = intValue;
                                                i11 = length3;
                                            }
                                            this.constMapping[i14] = i14;
                                            iArr[i14] = i15;
                                            i14++;
                                        }
                                        i16++;
                                        resolveCase = constantArr;
                                        length3 = i11;
                                    }
                                }
                                i15++;
                            } else {
                                statement.resolve(this.scope);
                            }
                            i13++;
                            i10 = 0;
                        }
                        if (length2 != i14) {
                            if (z10) {
                                String[] strArr = this.stringConstants;
                                String[] strArr2 = new String[i14];
                                this.stringConstants = strArr2;
                                System.arraycopy(strArr, i10, strArr2, i10, i14);
                            } else {
                                int[] iArr2 = this.constants;
                                int[] iArr3 = new int[i14];
                                this.constants = iArr3;
                                System.arraycopy(iArr2, i10, iArr3, i10, i14);
                            }
                            int[] iArr4 = this.constMapping;
                            int[] iArr5 = new int[i14];
                            this.constMapping = iArr5;
                            System.arraycopy(iArr4, i10, iArr5, i10, i14);
                        }
                    } else if ((this.bits & 8) != 0) {
                        blockScope.problemReporter().undocumentedEmptyBlock(this.blockStart, this.sourceEnd);
                    }
                    reportMixingCaseTypes();
                    if (this.defaultCase == null) {
                        if (!ignoreMissingDefaultCase(compilerOptions, z11)) {
                            blockScope.problemReporter().missingDefaultCase(this, z11, resolveType);
                        } else if (z11) {
                            blockScope.methodScope().hasMissingSwitchDefault = true;
                        }
                    }
                    if (z11 && compilerOptions.complianceLevel >= ClassFileConstants.JDK1_5 && (this.defaultCase == null || compilerOptions.reportMissingEnumCaseDespiteDefault)) {
                        int[] iArr6 = this.constants;
                        length = iArr6 != null ? 0 : iArr6.length;
                        if (length >= this.caseCount && length != ((ReferenceBinding) resolveType).enumConstantCount()) {
                            for (FieldBinding fieldBinding : ((ReferenceBinding) resolveType.erasure()).fields()) {
                                if ((fieldBinding.modifiers & 16384) != 0) {
                                    for (int i20 = 0; i20 < length; i20++) {
                                        if (fieldBinding.f102483id + 1 == this.constants[i20]) {
                                            break;
                                        }
                                    }
                                    CaseStatement caseStatement = this.defaultCase;
                                    if (caseStatement == null || (caseStatement.bits & 1073741824) == 0) {
                                        reportMissingEnumConstantCase(blockScope, fieldBinding);
                                    }
                                }
                            }
                        }
                    }
                    if (blockScope2 != null) {
                        return;
                    } else {
                        return;
                    }
                }
                Expression expression = this.expression;
                BaseTypeBinding baseTypeBinding2 = TypeBinding.INT;
                if (!expression.isConstantValueOfTypeAssignableToType(resolveType, baseTypeBinding2)) {
                    if (resolveType.isCompatibleWith(baseTypeBinding2)) {
                    }
                    blockScope.problemReporter().incorrectSwitchType(this.expression, resolveType);
                }
                blockScope2 = this.scope;
                if (blockScope2 != null) {
                    blockScope2.enclosingCase = null;
                }
            }
            z10 = false;
            z11 = false;
            resolveType = null;
            if (z10) {
            }
            if (this.statements != null) {
            }
            reportMixingCaseTypes();
            if (this.defaultCase == null) {
            }
            if (z11) {
                int[] iArr62 = this.constants;
                if (iArr62 != null) {
                }
                if (length >= this.caseCount) {
                    while (r5 < r4) {
                    }
                }
            }
        }
        z10 = false;
        z11 = false;
        if (z10) {
        }
        if (this.statements != null) {
        }
        reportMixingCaseTypes();
        if (this.defaultCase == null) {
        }
        if (z11) {
        }
    }

    public void statementGenerateCode(BlockScope blockScope, CodeStream codeStream, Statement statement) {
        statement.generateCode(this.scope, codeStream);
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            this.expression.traverse(aSTVisitor, blockScope);
            Statement[] statementArr = this.statements;
            if (statementArr != null) {
                int length = statementArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    this.statements[i10].traverse(aSTVisitor, this.scope);
                }
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        generateCode(blockScope, codeStream);
    }
}
