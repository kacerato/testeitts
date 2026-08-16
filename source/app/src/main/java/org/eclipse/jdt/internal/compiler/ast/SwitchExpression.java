package org.eclipse.jdt.internal.compiler.ast;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BaseTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.PolyTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class SwitchExpression extends SwitchStatement implements IPolyExpression {
    private static Map<TypeBinding, TypeBinding[]> type_map;
    TypeBinding expectedType;
    private TypeBinding[] finalValueResultExpressionTypes;
    private TypeBinding[] originalValueResultExpressionTypes;
    public boolean resolveAll;
    List<Integer> resultExpressionNullStatus;
    public List<Expression> resultExpressions;
    private ExpressionContext expressionContext = ExpressionContext.VANILLA_CONTEXT;
    private boolean isPolyExpression = false;
    private int nullStatus = 1;

    static {
        HashMap hashMap = new HashMap();
        type_map = hashMap;
        BaseTypeBinding baseTypeBinding = TypeBinding.CHAR;
        BaseTypeBinding baseTypeBinding2 = TypeBinding.BYTE;
        BaseTypeBinding baseTypeBinding3 = TypeBinding.INT;
        hashMap.put(baseTypeBinding, new TypeBinding[]{baseTypeBinding, baseTypeBinding2, baseTypeBinding3});
        Map<TypeBinding, TypeBinding[]> map = type_map;
        BaseTypeBinding baseTypeBinding4 = TypeBinding.SHORT;
        map.put(baseTypeBinding4, new TypeBinding[]{baseTypeBinding4, baseTypeBinding2, baseTypeBinding3});
        type_map.put(baseTypeBinding2, new TypeBinding[]{baseTypeBinding2, baseTypeBinding3});
    }

    private boolean areAllIntegerResultExpressionsConvertibleToTargetType(TypeBinding typeBinding) {
        int size = this.resultExpressions.size();
        for (int i10 = 0; i10 < size; i10++) {
            Expression expression = this.resultExpressions.get(i10);
            TypeBinding typeBinding2 = this.originalValueResultExpressionTypes[i10];
            if (TypeBinding.equalsEquals(typeBinding2, TypeBinding.INT) && !expression.isConstantValueOfTypeAssignableToType(typeBinding2, typeBinding)) {
                return false;
            }
        }
        return true;
    }

    private TypeBinding check_csb(Set<TypeBinding> set, TypeBinding typeBinding) {
        if (set.contains(typeBinding) && ((Set) Arrays.stream(type_map.get(typeBinding)).collect(Collectors.toSet())).containsAll(set) && areAllIntegerResultExpressionsConvertibleToTargetType(typeBinding)) {
            return typeBinding;
        }
        return null;
    }

    private TypeBinding check_nonconstant_int() {
        int size = this.resultExpressions.size();
        for (int i10 = 0; i10 < size; i10++) {
            Expression expression = this.resultExpressions.get(i10);
            TypeBinding typeBinding = this.originalValueResultExpressionTypes[i10];
            if (typeBinding != null && typeBinding.f102482id == 10 && expression.constant == Constant.NotAConstant) {
                return TypeBinding.INT;
            }
        }
        return null;
    }

    private boolean computeConversionsResultExpressions(BlockScope blockScope, TypeBinding typeBinding, TypeBinding typeBinding2, Expression expression) {
        if (typeBinding2 == null || !typeBinding2.isValidBinding()) {
            return true;
        }
        if (expression.isConstantValueOfTypeAssignableToType(typeBinding2, typeBinding) || typeBinding2.isCompatibleWith(typeBinding)) {
            expression.computeConversion(blockScope, typeBinding, typeBinding2);
            if (typeBinding2.needsUncheckedConversion(typeBinding)) {
                blockScope.problemReporter().unsafeTypeConversion(expression, typeBinding2, typeBinding);
            }
            if (!(expression instanceof CastExpression) || (expression.bits & 16416) != 0) {
                return true;
            }
            CastExpression.checkNeedForAssignedCast(blockScope, typeBinding, (CastExpression) expression);
            return true;
        }
        if (!isBoxingCompatible(typeBinding2, typeBinding, expression, blockScope)) {
            blockScope.problemReporter().typeMismatchError(typeBinding2, typeBinding, expression, (ASTNode) null);
            return false;
        }
        expression.computeConversion(blockScope, typeBinding, typeBinding2);
        if (!(expression instanceof CastExpression) || (expression.bits & 16416) != 0) {
            return true;
        }
        CastExpression.checkNeedForAssignedCast(blockScope, typeBinding, (CastExpression) expression);
        return true;
    }

    private void computeNullStatus(FlowInfo flowInfo, FlowContext flowContext) {
        boolean z10 = this.resultExpressionNullStatus.size() > 0;
        if (!z10) {
            this.resultExpressionNullStatus.add(Integer.valueOf(this.resultExpressions.get(0).nullStatus(flowInfo, flowContext)));
        }
        int nullStatus = this.resultExpressions.get(0).nullStatus(flowInfo, flowContext);
        int size = this.resultExpressions.size();
        boolean z11 = true;
        int i10 = nullStatus;
        for (int i11 = 1; i11 < size; i11++) {
            if (!z10) {
                this.resultExpressionNullStatus.add(Integer.valueOf(this.resultExpressions.get(i11).nullStatus(flowInfo, flowContext)));
            }
            int nullStatus2 = this.resultExpressions.get(i11).nullStatus(flowInfo, flowContext);
            z11 &= nullStatus == nullStatus2;
            i10 |= nullStatus2;
        }
        if (z11) {
            this.nullStatus = nullStatus;
            return;
        }
        int computeNullStatus = Expression.computeNullStatus(0, i10);
        if (computeNullStatus > 0) {
            this.nullStatus = computeNullStatus;
        }
    }

    private TypeBinding getResultNumeric(Set<TypeBinding> set, TypeBinding[] typeBindingArr) {
        TypeBinding[] typeBindingArr2 = {TypeBinding.CHAR, TypeBinding.SHORT, TypeBinding.BYTE};
        for (int i10 = 0; i10 < 3; i10++) {
            TypeBinding check_csb = check_csb(set, typeBindingArr2[i10]);
            if (check_csb != null) {
                return check_csb;
            }
        }
        return TypeBinding.INT;
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        FlowInfo analyseCode = super.analyseCode(blockScope, flowContext, flowInfo);
        this.resultExpressionNullStatus = new ArrayList(0);
        if (blockScope.compilerOptions().enableSyntacticNullAnalysisForFields) {
            Iterator<Expression> it = this.resultExpressions.iterator();
            while (it.hasNext()) {
                this.resultExpressionNullStatus.add(Integer.valueOf(it.next().nullStatus(analyseCode, flowContext)));
                flowContext.expireNullCheckedFieldInfo();
            }
        }
        computeNullStatus(analyseCode, flowContext);
        return analyseCode;
    }

    @Override
    public boolean checkNPE(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo, int i10) {
        int i11 = this.nullStatus;
        if ((i11 & 2) != 0) {
            blockScope.problemReporter().expressionNullReference(this);
            return true;
        }
        if ((i11 & 16) == 0) {
            return true;
        }
        blockScope.problemReporter().expressionPotentialNullReference(this);
        return true;
    }

    @Override
    public void completeNormallyCheck(BlockScope blockScope) {
        if (this.switchLabeledRules) {
            return;
        }
        Statement[] statementArr = this.statements;
        int length = statementArr != null ? statementArr.length : 0;
        if (length == 0) {
            return;
        }
        int i10 = length - 1;
        Statement statement = null;
        int i11 = i10;
        Statement statement2 = null;
        while (true) {
            if (i11 >= 0) {
                Statement statement3 = this.statements[i10];
                if (!(statement3 instanceof CaseStatement)) {
                    statement = statement3;
                    break;
                } else {
                    i11--;
                    statement2 = statement3;
                }
            } else {
                break;
            }
        }
        if (statement != null) {
            if (!statement.doesNotCompleteNormally()) {
                blockScope.problemReporter().switchExpressionLastStatementCompletesNormally(statement);
            } else if ((statement instanceof ContinueStatement) || (statement instanceof ReturnStatement)) {
                blockScope.problemReporter().switchExpressionIllegalLastStatement(statement);
            }
        }
        if (statement2 != null) {
            blockScope.problemReporter().switchExpressionTrailingSwitchLabels(statement2);
        }
    }

    public boolean computeConversions(BlockScope blockScope, TypeBinding typeBinding) {
        int size = this.resultExpressions.size();
        boolean z10 = true;
        for (int i10 = 0; i10 < size; i10++) {
            z10 &= computeConversionsResultExpressions(blockScope, typeBinding, this.originalValueResultExpressionTypes[i10], this.resultExpressions.get(i10));
        }
        return z10;
    }

    @Override
    public TypeBinding expectedType() {
        return this.expectedType;
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        int i10;
        super.generateCode(blockScope, codeStream);
        if (z10 || (i10 = postConversionType(blockScope).f102482id) == 6) {
            return;
        }
        if (i10 == 7 || i10 == 8) {
            codeStream.pop2();
        } else {
            codeStream.pop();
        }
    }

    @Override
    public ExpressionContext getExpressionContext() {
        return this.expressionContext;
    }

    @Override
    public int getFallThroughState(Statement statement, BlockScope blockScope) {
        if (((statement instanceof Expression) && ((Expression) statement).isTrulyExpression()) || (statement instanceof ThrowStatement)) {
            return 3;
        }
        if (!this.switchLabeledRules || !(statement instanceof Block)) {
            return 1;
        }
        Block block = (Block) statement;
        if (block.doesNotCompleteNormally()) {
            return 3;
        }
        blockScope.problemReporter().switchExpressionSwitchLabeledBlockCompletesNormally(block);
        return 1;
    }

    @Override
    public Expression[] getPolyExpressions() {
        ArrayList arrayList = new ArrayList();
        Iterator<Expression> it = this.resultExpressions.iterator();
        while (it.hasNext()) {
            Expression[] polyExpressions = it.next().getPolyExpressions();
            if (polyExpressions != null && polyExpressions.length != 0) {
                arrayList.addAll(Arrays.asList(polyExpressions));
            }
        }
        return (Expression[]) arrayList.toArray(new Expression[0]);
    }

    @Override
    public boolean ignoreMissingDefaultCase(CompilerOptions compilerOptions, boolean z10) {
        return z10;
    }

    @Override
    public boolean isBoxingCompatibleWith(TypeBinding typeBinding, Scope scope) {
        if (!isPolyExpression()) {
            return super.isBoxingCompatibleWith(typeBinding, scope);
        }
        for (Expression expression : this.resultExpressions) {
            if (!expression.isCompatibleWith(typeBinding, scope) && !expression.isBoxingCompatibleWith(typeBinding, scope)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean isCompatibleWith(TypeBinding typeBinding, Scope scope) {
        if (!isPolyExpression()) {
            return super.isCompatibleWith(typeBinding, scope);
        }
        Iterator<Expression> it = this.resultExpressions.iterator();
        while (it.hasNext()) {
            if (!it.next().isCompatibleWith(typeBinding, scope)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean isFunctionalType() {
        Iterator<Expression> it = this.resultExpressions.iterator();
        while (it.hasNext()) {
            if (it.next().isFunctionalType()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean isPertinentToApplicability(TypeBinding typeBinding, MethodBinding methodBinding) {
        Iterator<Expression> it = this.resultExpressions.iterator();
        while (it.hasNext()) {
            if (!it.next().isPertinentToApplicability(typeBinding, methodBinding)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean isPolyExpression() {
        boolean z10 = true;
        if (this.isPolyExpression) {
            return true;
        }
        ExpressionContext expressionContext = this.expressionContext;
        if (expressionContext != ExpressionContext.ASSIGNMENT_CONTEXT && expressionContext != ExpressionContext.INVOCATION_CONTEXT) {
            z10 = false;
        }
        this.isPolyExpression = z10;
        return z10;
    }

    @Override
    public boolean isPotentiallyCompatibleWith(TypeBinding typeBinding, Scope scope) {
        Iterator<Expression> it = this.resultExpressions.iterator();
        while (it.hasNext()) {
            if (!it.next().isPotentiallyCompatibleWith(typeBinding, scope)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean isTrulyExpression() {
        return true;
    }

    @Override
    public boolean needToCheckFlowInAbsenceOfDefaultBranch() {
        return !this.switchLabeledRules;
    }

    @Override
    public int nullStatus(FlowInfo flowInfo, FlowContext flowContext) {
        if ((this.implicitConversion & 512) != 0) {
            return 4;
        }
        return this.nullStatus;
    }

    @Override
    public void reportMissingEnumConstantCase(BlockScope blockScope, FieldBinding fieldBinding) {
        blockScope.problemReporter().missingEnumConstantCase(this, fieldBinding);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0036 A[Catch: all -> 0x0017, TryCatch #0 {all -> 0x0017, blocks: (B:3:0x0004, B:5:0x000a, B:7:0x0012, B:10:0x0026, B:12:0x002d, B:15:0x0032, B:17:0x0036, B:19:0x003e, B:25:0x004c, B:27:0x0050, B:29:0x005c, B:32:0x0070, B:34:0x0076, B:36:0x007a, B:39:0x0081, B:41:0x008b, B:42:0x008f, B:48:0x0098, B:54:0x00e3, B:59:0x00f0, B:176:0x00f8, B:185:0x00ff, B:178:0x0108, B:180:0x010e, B:182:0x0112, B:61:0x0114, B:63:0x011a, B:66:0x0120, B:82:0x0128, B:93:0x0132, B:85:0x013d, B:89:0x0163, B:90:0x0146, B:98:0x0165, B:149:0x016d, B:163:0x019b, B:161:0x01a4, B:168:0x0193, B:169:0x018c, B:151:0x0181, B:153:0x01bb, B:100:0x01bd, B:104:0x024d, B:105:0x01c5, B:108:0x01d0, B:125:0x01d9, B:127:0x01e3, B:137:0x01eb, B:129:0x01fe, B:133:0x021a, B:134:0x0205, B:142:0x021c, B:115:0x022c, B:117:0x0232, B:119:0x0238, B:121:0x0240, B:110:0x0242, B:147:0x01cc, B:69:0x0250, B:71:0x0254, B:76:0x025f, B:78:0x0260, B:173:0x0263, B:191:0x00a4, B:196:0x001a, B:197:0x0020, B:199:0x00b2, B:201:0x00c4, B:203:0x00c8, B:230:0x00d1, B:232:0x00db, B:233:0x00df, B:206:0x0266, B:208:0x0272, B:210:0x0289, B:214:0x0299, B:215:0x028e, B:217:0x0292, B:221:0x029c, B:228:0x027b), top: B:2:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:190:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003e A[Catch: all -> 0x0017, TRY_LEAVE, TryCatch #0 {all -> 0x0017, blocks: (B:3:0x0004, B:5:0x000a, B:7:0x0012, B:10:0x0026, B:12:0x002d, B:15:0x0032, B:17:0x0036, B:19:0x003e, B:25:0x004c, B:27:0x0050, B:29:0x005c, B:32:0x0070, B:34:0x0076, B:36:0x007a, B:39:0x0081, B:41:0x008b, B:42:0x008f, B:48:0x0098, B:54:0x00e3, B:59:0x00f0, B:176:0x00f8, B:185:0x00ff, B:178:0x0108, B:180:0x010e, B:182:0x0112, B:61:0x0114, B:63:0x011a, B:66:0x0120, B:82:0x0128, B:93:0x0132, B:85:0x013d, B:89:0x0163, B:90:0x0146, B:98:0x0165, B:149:0x016d, B:163:0x019b, B:161:0x01a4, B:168:0x0193, B:169:0x018c, B:151:0x0181, B:153:0x01bb, B:100:0x01bd, B:104:0x024d, B:105:0x01c5, B:108:0x01d0, B:125:0x01d9, B:127:0x01e3, B:137:0x01eb, B:129:0x01fe, B:133:0x021a, B:134:0x0205, B:142:0x021c, B:115:0x022c, B:117:0x0232, B:119:0x0238, B:121:0x0240, B:110:0x0242, B:147:0x01cc, B:69:0x0250, B:71:0x0254, B:76:0x025f, B:78:0x0260, B:173:0x0263, B:191:0x00a4, B:196:0x001a, B:197:0x0020, B:199:0x00b2, B:201:0x00c4, B:203:0x00c8, B:230:0x00d1, B:232:0x00db, B:233:0x00df, B:206:0x0266, B:208:0x0272, B:210:0x0289, B:214:0x0299, B:215:0x028e, B:217:0x0292, B:221:0x029c, B:228:0x027b), top: B:2:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004c A[Catch: all -> 0x0017, TRY_ENTER, TryCatch #0 {all -> 0x0017, blocks: (B:3:0x0004, B:5:0x000a, B:7:0x0012, B:10:0x0026, B:12:0x002d, B:15:0x0032, B:17:0x0036, B:19:0x003e, B:25:0x004c, B:27:0x0050, B:29:0x005c, B:32:0x0070, B:34:0x0076, B:36:0x007a, B:39:0x0081, B:41:0x008b, B:42:0x008f, B:48:0x0098, B:54:0x00e3, B:59:0x00f0, B:176:0x00f8, B:185:0x00ff, B:178:0x0108, B:180:0x010e, B:182:0x0112, B:61:0x0114, B:63:0x011a, B:66:0x0120, B:82:0x0128, B:93:0x0132, B:85:0x013d, B:89:0x0163, B:90:0x0146, B:98:0x0165, B:149:0x016d, B:163:0x019b, B:161:0x01a4, B:168:0x0193, B:169:0x018c, B:151:0x0181, B:153:0x01bb, B:100:0x01bd, B:104:0x024d, B:105:0x01c5, B:108:0x01d0, B:125:0x01d9, B:127:0x01e3, B:137:0x01eb, B:129:0x01fe, B:133:0x021a, B:134:0x0205, B:142:0x021c, B:115:0x022c, B:117:0x0232, B:119:0x0238, B:121:0x0240, B:110:0x0242, B:147:0x01cc, B:69:0x0250, B:71:0x0254, B:76:0x025f, B:78:0x0260, B:173:0x0263, B:191:0x00a4, B:196:0x001a, B:197:0x0020, B:199:0x00b2, B:201:0x00c4, B:203:0x00c8, B:230:0x00d1, B:232:0x00db, B:233:0x00df, B:206:0x0266, B:208:0x0272, B:210:0x0289, B:214:0x0299, B:215:0x028e, B:217:0x0292, B:221:0x029c, B:228:0x027b), top: B:2:0x0004 }] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TypeBinding resolveType(BlockScope blockScope) {
        int size;
        TypeBinding typeBinding;
        Statement[] statementArr;
        BlockScope blockScope2;
        int i10 = 0;
        try {
            Constant constant = this.constant;
            Constant constant2 = Constant.NotAConstant;
            if (constant != constant2) {
                this.constant = constant2;
                ExpressionContext expressionContext = this.expressionContext;
                if (expressionContext != ExpressionContext.ASSIGNMENT_CONTEXT) {
                    if (expressionContext == ExpressionContext.INVOCATION_CONTEXT) {
                    }
                    resolve(blockScope);
                    statementArr = this.statements;
                    if (statementArr != null && statementArr.length != 0) {
                        List<Expression> list = this.resultExpressions;
                        size = list == null ? list.size() : 0;
                        if (size != 0) {
                            blockScope.problemReporter().switchExpressionNoResultExpressions(this);
                            BlockScope blockScope3 = this.scope;
                            if (blockScope3 != null) {
                                blockScope3.enclosingCase = null;
                            }
                            return null;
                        }
                        if (this.originalValueResultExpressionTypes == null) {
                            this.originalValueResultExpressionTypes = new TypeBinding[size];
                            this.finalValueResultExpressionTypes = new TypeBinding[size];
                            for (int i11 = 0; i11 < size; i11++) {
                                TypeBinding[] typeBindingArr = this.finalValueResultExpressionTypes;
                                TypeBinding[] typeBindingArr2 = this.originalValueResultExpressionTypes;
                                TypeBinding typeBinding2 = this.resultExpressions.get(i11).resolvedType;
                                typeBindingArr2[i11] = typeBinding2;
                                typeBindingArr[i11] = typeBinding2;
                            }
                        }
                        if (isPolyExpression()) {
                            TypeBinding typeBinding3 = this.expectedType;
                            if (typeBinding3 != null && typeBinding3.isProperType(true)) {
                                TypeBinding typeBinding4 = computeConversions(this.scope, this.expectedType) ? this.expectedType : null;
                                this.resolvedType = typeBinding4;
                                BlockScope blockScope4 = this.scope;
                                if (blockScope4 != null) {
                                    blockScope4.enclosingCase = null;
                                }
                                return typeBinding4;
                            }
                            PolyTypeBinding polyTypeBinding = new PolyTypeBinding(this);
                            BlockScope blockScope5 = this.scope;
                            if (blockScope5 != null) {
                                blockScope5.enclosingCase = null;
                            }
                            return polyTypeBinding;
                        }
                    }
                    blockScope.problemReporter().switchExpressionEmptySwitchBlock(this);
                    blockScope2 = this.scope;
                    if (blockScope2 != null) {
                        blockScope2.enclosingCase = null;
                    }
                    return null;
                }
                for (Expression expression : this.resultExpressions) {
                    expression.setExpressionContext(this.expressionContext);
                    expression.setExpectedType(this.expectedType);
                }
                resolve(blockScope);
                statementArr = this.statements;
                if (statementArr != null) {
                    List<Expression> list2 = this.resultExpressions;
                    if (list2 == null) {
                    }
                    if (size != 0) {
                    }
                }
                blockScope.problemReporter().switchExpressionEmptySwitchBlock(this);
                blockScope2 = this.scope;
                if (blockScope2 != null) {
                }
                return null;
            }
            List<Expression> list3 = this.resultExpressions;
            size = list3 != null ? list3.size() : 0;
            for (int i12 = 0; i12 < size; i12++) {
                Expression expression2 = this.resultExpressions.get(i12);
                TypeBinding typeBinding5 = expression2.resolvedType;
                if (typeBinding5 == null || typeBinding5.kind() == 65540) {
                    TypeBinding[] typeBindingArr3 = this.finalValueResultExpressionTypes;
                    TypeBinding[] typeBindingArr4 = this.originalValueResultExpressionTypes;
                    TypeBinding resolveTypeExpecting = expression2.resolveTypeExpecting(blockScope, this.expectedType);
                    typeBindingArr4[i12] = resolveTypeExpecting;
                    typeBindingArr3[i12] = resolveTypeExpecting;
                }
                if (!this.resolveAll) {
                    TypeBinding typeBinding6 = expression2.resolvedType;
                    if (typeBinding6 != null && typeBinding6.isValidBinding()) {
                    }
                    this.resolvedType = null;
                    BlockScope blockScope6 = this.scope;
                    if (blockScope6 != null) {
                        blockScope6.enclosingCase = null;
                    }
                    return null;
                }
            }
            this.resolvedType = computeConversions(this.scope, this.expectedType) ? this.expectedType : null;
            if (size == 1) {
                TypeBinding typeBinding7 = this.originalValueResultExpressionTypes[0];
                this.resolvedType = typeBinding7;
                BlockScope blockScope7 = this.scope;
                if (blockScope7 != null) {
                    blockScope7.enclosingCase = null;
                }
                return typeBinding7;
            }
            TypeBinding[] typeBindingArr5 = this.originalValueResultExpressionTypes;
            TypeBinding typeBinding8 = typeBindingArr5[0];
            int length = typeBindingArr5.length;
            for (int i13 = 1; i13 < length; i13++) {
                TypeBinding typeBinding9 = this.originalValueResultExpressionTypes[i13];
                if (typeBinding9 != null && TypeBinding.notEquals(typeBinding8, typeBinding9)) {
                    boolean z10 = true;
                    for (TypeBinding typeBinding10 : this.originalValueResultExpressionTypes) {
                        if (typeBinding10 != null) {
                            int i14 = typeBinding10.f102482id;
                            z10 &= i14 == 5 || i14 == 33;
                        }
                    }
                    LookupEnvironment environment = this.scope.environment();
                    if (z10) {
                        while (i10 < size) {
                            TypeBinding typeBinding11 = this.originalValueResultExpressionTypes[i10];
                            if (typeBinding11.f102482id != 5) {
                                this.finalValueResultExpressionTypes[i10] = environment.computeBoxingType(typeBinding11);
                                this.resultExpressions.get(i10).computeConversion(this.scope, this.finalValueResultExpressionTypes[i10], this.originalValueResultExpressionTypes[i10]);
                            }
                            i10++;
                        }
                        BaseTypeBinding baseTypeBinding = TypeBinding.BOOLEAN;
                        this.resolvedType = baseTypeBinding;
                        BlockScope blockScope8 = this.scope;
                        if (blockScope8 != null) {
                            blockScope8.enclosingCase = null;
                        }
                        return baseTypeBinding;
                    }
                    HashSet hashSet = new HashSet();
                    for (int i15 = 0; i15 < size; i15++) {
                        TypeBinding typeBinding12 = this.originalValueResultExpressionTypes[i15];
                        if (typeBinding12 != null) {
                            if (!typeBinding12.isNumericType()) {
                                typeBinding12 = environment.computeBoxingType(typeBinding12);
                            }
                            if (!typeBinding12.isNumericType()) {
                                for (int i16 = 0; i16 < size; i16++) {
                                    TypeBinding typeBinding13 = this.finalValueResultExpressionTypes[i16];
                                    if (typeBinding13 != null && typeBinding13.isBaseType()) {
                                        this.finalValueResultExpressionTypes[i16] = environment.computeBoxingType(typeBinding13);
                                    }
                                }
                                TypeBinding lowerUpperBound = this.scope.lowerUpperBound(this.finalValueResultExpressionTypes);
                                if (lowerUpperBound == null) {
                                    this.scope.problemReporter().switchExpressionIncompatibleResultExpressions(this);
                                    BlockScope blockScope9 = this.scope;
                                    if (blockScope9 != null) {
                                        blockScope9.enclosingCase = null;
                                    }
                                    return null;
                                }
                                int size2 = this.resultExpressions.size();
                                while (i10 < size2) {
                                    if (this.originalValueResultExpressionTypes[i10] != null) {
                                        this.resultExpressions.get(i10).computeConversion(this.scope, lowerUpperBound, this.originalValueResultExpressionTypes[i10]);
                                        this.finalValueResultExpressionTypes[i10] = lowerUpperBound;
                                    }
                                    i10++;
                                }
                                TypeBinding capture = lowerUpperBound.capture(this.scope, this.sourceStart, this.sourceEnd);
                                this.resolvedType = capture;
                                BlockScope blockScope10 = this.scope;
                                if (blockScope10 != null) {
                                    blockScope10.enclosingCase = null;
                                }
                                return capture;
                            }
                            hashSet.add(TypeBinding.wellKnownType(this.scope, typeBinding12.f102482id));
                        }
                    }
                    TypeBinding[] typeBindingArr6 = {TypeBinding.DOUBLE, TypeBinding.FLOAT, TypeBinding.LONG};
                    int i17 = 0;
                    while (true) {
                        if (i17 >= 3) {
                            typeBinding = null;
                            break;
                        }
                        typeBinding = typeBindingArr6[i17];
                        if (hashSet.contains(typeBinding)) {
                            break;
                        }
                        i17++;
                    }
                    if (typeBinding == null) {
                        typeBinding = check_nonconstant_int();
                    }
                    if (typeBinding == null) {
                        typeBinding = getResultNumeric(hashSet, this.originalValueResultExpressionTypes);
                    }
                    while (i10 < size) {
                        this.resultExpressions.get(i10).computeConversion(this.scope, typeBinding, this.originalValueResultExpressionTypes[i10]);
                        this.finalValueResultExpressionTypes[i10] = typeBinding;
                        i10++;
                    }
                    this.resolvedType = typeBinding;
                    BlockScope blockScope11 = this.scope;
                    if (blockScope11 != null) {
                        blockScope11.enclosingCase = null;
                    }
                    return typeBinding;
                }
            }
            TypeBinding typeBinding14 = this.originalValueResultExpressionTypes[0];
            for (int i18 = 1; i18 < size; i18++) {
                TypeBinding typeBinding15 = this.originalValueResultExpressionTypes[i18];
                if (typeBinding15 != null) {
                    typeBinding14 = NullAnnotationMatching.moreDangerousType(typeBinding14, typeBinding15);
                }
            }
            this.resolvedType = typeBinding14;
            BlockScope blockScope12 = this.scope;
            if (blockScope12 != null) {
                blockScope12.enclosingCase = null;
            }
            return typeBinding14;
        } catch (Throwable th2) {
            BlockScope blockScope13 = this.scope;
            if (blockScope13 != null) {
                blockScope13.enclosingCase = null;
            }
            throw th2;
        }
    }

    @Override
    public boolean sIsMoreSpecific(TypeBinding typeBinding, TypeBinding typeBinding2, Scope scope) {
        if (super.sIsMoreSpecific(typeBinding, typeBinding2, scope)) {
            return true;
        }
        if (!isPolyExpression()) {
            return false;
        }
        Iterator<Expression> it = this.resultExpressions.iterator();
        while (it.hasNext()) {
            if (!it.next().sIsMoreSpecific(typeBinding, typeBinding2, scope)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public void setExpectedType(TypeBinding typeBinding) {
        this.expectedType = typeBinding;
    }

    @Override
    public void setExpressionContext(ExpressionContext expressionContext) {
        this.expressionContext = expressionContext;
    }

    @Override
    public void statementGenerateCode(BlockScope blockScope, CodeStream codeStream, Statement statement) {
        if (statement instanceof Expression) {
            Expression expression = (Expression) statement;
            if (expression.isTrulyExpression() && !(statement instanceof Assignment) && !(statement instanceof MessageSend) && (!(statement instanceof SwitchStatement) || (statement instanceof SwitchExpression))) {
                expression.generateCode(blockScope, codeStream, true);
                return;
            }
        }
        super.statementGenerateCode(blockScope, codeStream, statement);
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
}
