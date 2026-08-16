package org.eclipse.jdt.internal.formatter.linewrap;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;
import java.util.function.ToIntFunction;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.AnnotationTypeDeclaration;
import org.eclipse.jdt.core.dom.AnonymousClassDeclaration;
import org.eclipse.jdt.core.dom.ArrayInitializer;
import org.eclipse.jdt.core.dom.Assignment;
import org.eclipse.jdt.core.dom.Block;
import org.eclipse.jdt.core.dom.CatchClause;
import org.eclipse.jdt.core.dom.ClassInstanceCreation;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.ConditionalExpression;
import org.eclipse.jdt.core.dom.ConstructorInvocation;
import org.eclipse.jdt.core.dom.CreationReference;
import org.eclipse.jdt.core.dom.DoStatement;
import org.eclipse.jdt.core.dom.EnhancedForStatement;
import org.eclipse.jdt.core.dom.EnumConstantDeclaration;
import org.eclipse.jdt.core.dom.EnumDeclaration;
import org.eclipse.jdt.core.dom.ExportsDirective;
import org.eclipse.jdt.core.dom.Expression;
import org.eclipse.jdt.core.dom.ExpressionMethodReference;
import org.eclipse.jdt.core.dom.FieldAccess;
import org.eclipse.jdt.core.dom.FieldDeclaration;
import org.eclipse.jdt.core.dom.ForStatement;
import org.eclipse.jdt.core.dom.IfStatement;
import org.eclipse.jdt.core.dom.InfixExpression;
import org.eclipse.jdt.core.dom.LambdaExpression;
import org.eclipse.jdt.core.dom.MethodDeclaration;
import org.eclipse.jdt.core.dom.MethodInvocation;
import org.eclipse.jdt.core.dom.Name;
import org.eclipse.jdt.core.dom.NormalAnnotation;
import org.eclipse.jdt.core.dom.OpensDirective;
import org.eclipse.jdt.core.dom.ParameterizedType;
import org.eclipse.jdt.core.dom.ProvidesDirective;
import org.eclipse.jdt.core.dom.QualifiedName;
import org.eclipse.jdt.core.dom.SingleMemberAnnotation;
import org.eclipse.jdt.core.dom.Statement;
import org.eclipse.jdt.core.dom.SuperConstructorInvocation;
import org.eclipse.jdt.core.dom.SuperFieldAccess;
import org.eclipse.jdt.core.dom.SuperMethodInvocation;
import org.eclipse.jdt.core.dom.SuperMethodReference;
import org.eclipse.jdt.core.dom.SwitchExpression;
import org.eclipse.jdt.core.dom.SwitchStatement;
import org.eclipse.jdt.core.dom.ThisExpression;
import org.eclipse.jdt.core.dom.TryStatement;
import org.eclipse.jdt.core.dom.Type;
import org.eclipse.jdt.core.dom.TypeDeclaration;
import org.eclipse.jdt.core.dom.TypeMethodReference;
import org.eclipse.jdt.core.dom.UnionType;
import org.eclipse.jdt.core.dom.VariableDeclarationFragment;
import org.eclipse.jdt.core.dom.VariableDeclarationStatement;
import org.eclipse.jdt.core.dom.WhileStatement;
import org.eclipse.jdt.core.formatter.DefaultCodeFormatterConstants;
import org.eclipse.jdt.internal.formatter.DefaultCodeFormatterOptions;
import org.eclipse.jdt.internal.formatter.Token;
import org.eclipse.jdt.internal.formatter.TokenManager;
import org.eclipse.jdt.internal.formatter.TokenTraverser;
import org.eclipse.jface.text.IRegion;

public class WrapPreparator extends ASTVisitor {
    static final boolean $assertionsDisabled = false;
    private static final Map<InfixExpression.Operator, Integer> OPERATOR_PRECEDENCE;
    private static final Map<InfixExpression.Operator, ToIntFunction<DefaultCodeFormatterOptions>> OPERATOR_WRAPPING_OPTION;
    private static final Map<InfixExpression.Operator, Predicate<DefaultCodeFormatterOptions>> OPERATOR_WRAP_BEFORE_OPTION;
    private static final float PREFERRED = 0.875f;
    final Aligner aligner;
    final int kind;
    final DefaultCodeFormatterOptions options;

    final TokenManager f102640tm;
    int importsStart = -1;
    int importsEnd = -1;
    private List<Integer> wrapIndexes = new ArrayList();
    private List<Integer> secondaryWrapIndexes = new ArrayList();
    private List<Float> wrapPenalties = new ArrayList();
    private int wrapParentIndex = -1;
    private int wrapGroupEnd = -1;
    private int currentDepth = 0;

    public static class FieldAccessAdapter {
        final Expression accessExpression;

        public FieldAccessAdapter(Expression expression) {
            this.accessExpression = expression;
        }

        public static boolean isFieldAccess(ASTNode aSTNode) {
            return (aSTNode instanceof FieldAccess) || (aSTNode instanceof QualifiedName) || (aSTNode instanceof ThisExpression) || (aSTNode instanceof SuperFieldAccess);
        }

        public Expression getExpression() {
            Expression expression = this.accessExpression;
            if (expression instanceof FieldAccess) {
                return ((FieldAccess) expression).getExpression();
            }
            if (expression instanceof QualifiedName) {
                return ((QualifiedName) expression).getQualifier();
            }
            if (expression instanceof ThisExpression) {
                return ((ThisExpression) expression).getQualifier();
            }
            if (expression instanceof SuperFieldAccess) {
                return ((SuperFieldAccess) expression).getQualifier();
            }
            throw new AssertionError();
        }

        public int getIdentifierIndex(TokenManager tokenManager) {
            Expression expression = this.accessExpression;
            if (expression instanceof FieldAccess) {
                return tokenManager.firstIndexIn(((FieldAccess) expression).getName(), 22);
            }
            if (expression instanceof QualifiedName) {
                return tokenManager.firstIndexIn(((QualifiedName) expression).getName(), 22);
            }
            if (expression instanceof ThisExpression) {
                return tokenManager.lastIndexIn(expression, 35);
            }
            if (expression instanceof SuperFieldAccess) {
                return tokenManager.lastIndexIn(expression, 34);
            }
            throw new AssertionError();
        }
    }

    static {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        for (InfixExpression.Operator operator : Arrays.asList(InfixExpression.Operator.TIMES, InfixExpression.Operator.DIVIDE, InfixExpression.Operator.REMAINDER)) {
            hashMap.put(operator, 1);
            hashMap2.put(operator, new ToIntFunction() {
                @Override
                public final int applyAsInt(Object obj) {
                    int i10;
                    i10 = ((DefaultCodeFormatterOptions) obj).alignment_for_multiplicative_operator;
                    return i10;
                }
            });
            hashMap3.put(operator, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean z10;
                    z10 = ((DefaultCodeFormatterOptions) obj).wrap_before_multiplicative_operator;
                    return z10;
                }
            });
        }
        for (InfixExpression.Operator operator2 : Arrays.asList(InfixExpression.Operator.PLUS, InfixExpression.Operator.MINUS)) {
            hashMap.put(operator2, 2);
            hashMap2.put(operator2, new ToIntFunction() {
                @Override
                public final int applyAsInt(Object obj) {
                    int i10;
                    i10 = ((DefaultCodeFormatterOptions) obj).alignment_for_additive_operator;
                    return i10;
                }
            });
            hashMap3.put(operator2, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean z10;
                    z10 = ((DefaultCodeFormatterOptions) obj).wrap_before_additive_operator;
                    return z10;
                }
            });
        }
        for (InfixExpression.Operator operator3 : Arrays.asList(InfixExpression.Operator.LEFT_SHIFT, InfixExpression.Operator.RIGHT_SHIFT_SIGNED, InfixExpression.Operator.RIGHT_SHIFT_UNSIGNED)) {
            hashMap.put(operator3, 3);
            hashMap2.put(operator3, new ToIntFunction() {
                @Override
                public final int applyAsInt(Object obj) {
                    int i10;
                    i10 = ((DefaultCodeFormatterOptions) obj).alignment_for_shift_operator;
                    return i10;
                }
            });
            hashMap3.put(operator3, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean z10;
                    z10 = ((DefaultCodeFormatterOptions) obj).wrap_before_shift_operator;
                    return z10;
                }
            });
        }
        for (InfixExpression.Operator operator4 : Arrays.asList(InfixExpression.Operator.LESS, InfixExpression.Operator.GREATER, InfixExpression.Operator.LESS_EQUALS, InfixExpression.Operator.GREATER_EQUALS)) {
            hashMap.put(operator4, 4);
            hashMap2.put(operator4, new ToIntFunction() {
                @Override
                public final int applyAsInt(Object obj) {
                    int i10;
                    i10 = ((DefaultCodeFormatterOptions) obj).alignment_for_relational_operator;
                    return i10;
                }
            });
            hashMap3.put(operator4, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean z10;
                    z10 = ((DefaultCodeFormatterOptions) obj).wrap_before_relational_operator;
                    return z10;
                }
            });
        }
        for (InfixExpression.Operator operator5 : Arrays.asList(InfixExpression.Operator.EQUALS, InfixExpression.Operator.NOT_EQUALS)) {
            hashMap.put(operator5, 5);
            hashMap2.put(operator5, new ToIntFunction() {
                @Override
                public final int applyAsInt(Object obj) {
                    int i10;
                    i10 = ((DefaultCodeFormatterOptions) obj).alignment_for_relational_operator;
                    return i10;
                }
            });
            hashMap3.put(operator5, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean z10;
                    z10 = ((DefaultCodeFormatterOptions) obj).wrap_before_relational_operator;
                    return z10;
                }
            });
        }
        InfixExpression.Operator operator6 = InfixExpression.Operator.AND;
        hashMap.put(operator6, 6);
        InfixExpression.Operator operator7 = InfixExpression.Operator.XOR;
        hashMap.put(operator7, 7);
        InfixExpression.Operator operator8 = InfixExpression.Operator.OR;
        hashMap.put(operator8, 8);
        for (InfixExpression.Operator operator9 : Arrays.asList(operator6, operator7, operator8)) {
            hashMap2.put(operator9, new ToIntFunction() {
                @Override
                public final int applyAsInt(Object obj) {
                    int i10;
                    i10 = ((DefaultCodeFormatterOptions) obj).alignment_for_bitwise_operator;
                    return i10;
                }
            });
            hashMap3.put(operator9, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean z10;
                    z10 = ((DefaultCodeFormatterOptions) obj).wrap_before_bitwise_operator;
                    return z10;
                }
            });
        }
        InfixExpression.Operator operator10 = InfixExpression.Operator.CONDITIONAL_AND;
        hashMap.put(operator10, 9);
        InfixExpression.Operator operator11 = InfixExpression.Operator.CONDITIONAL_OR;
        hashMap.put(operator11, 10);
        for (InfixExpression.Operator operator12 : Arrays.asList(operator10, operator11)) {
            hashMap2.put(operator12, new ToIntFunction() {
                @Override
                public final int applyAsInt(Object obj) {
                    int i10;
                    i10 = ((DefaultCodeFormatterOptions) obj).alignment_for_logical_operator;
                    return i10;
                }
            });
            hashMap3.put(operator12, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean z10;
                    z10 = ((DefaultCodeFormatterOptions) obj).wrap_before_logical_operator;
                    return z10;
                }
            });
        }
        OPERATOR_PRECEDENCE = Collections.unmodifiableMap(hashMap);
        OPERATOR_WRAPPING_OPTION = Collections.unmodifiableMap(hashMap2);
        OPERATOR_WRAP_BEFORE_OPTION = Collections.unmodifiableMap(hashMap3);
    }

    public WrapPreparator(TokenManager tokenManager, DefaultCodeFormatterOptions defaultCodeFormatterOptions, int i10) {
        this.f102640tm = tokenManager;
        this.options = defaultCodeFormatterOptions;
        this.kind = i10;
        this.aligner = new Aligner(tokenManager, defaultCodeFormatterOptions);
    }

    private void applyBreaksOutsideRegions(List<IRegion> list) {
        String source = this.f102640tm.getSource();
        int i10 = 0;
        for (IRegion iRegion : list) {
            int findIndex = this.f102640tm.findIndex(i10, -1, true);
            Token token = this.f102640tm.get(findIndex);
            if (this.f102640tm.countLineBreaksBetween(source, i10, Math.min(token.originalStart, iRegion.getOffset())) > 0) {
                token.breakBefore();
            }
            int i11 = findIndex + 1;
            while (true) {
                if (i11 >= this.f102640tm.size()) {
                    break;
                }
                Token token2 = this.f102640tm.get(i11);
                if (token2.originalStart <= iRegion.getOffset()) {
                    if (this.f102640tm.countLineBreaksBetween(token, token2) > 0) {
                        token2.breakBefore();
                    }
                    i11++;
                    token = token2;
                } else if (this.f102640tm.countLineBreaksBetween(source, token.originalEnd, iRegion.getOffset()) > 0) {
                    token2.breakBefore();
                }
            }
            i10 = (iRegion.getOffset() + iRegion.getLength()) - 1;
        }
    }

    private void doHandleWrap(int i10, boolean z10, ASTNode aSTNode) {
        int i11;
        if (this.wrapIndexes.isEmpty()) {
            return;
        }
        while (this.f102640tm.get(this.wrapParentIndex).isComment() && (i11 = this.wrapParentIndex) > 0) {
            this.wrapParentIndex = i11 - 1;
        }
        Token.WrapPolicy wrapPolicy = getWrapPolicy(i10, this.wrapPenalties.isEmpty() ? 1.0f : this.wrapPenalties.get(0).floatValue(), true, aSTNode);
        Token.WrapPolicy wrapPolicy2 = this.f102640tm.get(this.wrapIndexes.get(0).intValue()).getWrapPolicy();
        if (wrapPolicy2 != null) {
            Token.WrapMode wrapMode = wrapPolicy2.wrapMode;
            Token.WrapMode wrapMode2 = Token.WrapMode.TOP_PRIORITY;
            if (wrapMode == wrapMode2) {
                this.wrapGroupEnd = wrapPolicy2.groupEndIndex;
                wrapPolicy = new Token.WrapPolicy(wrapMode2, wrapPolicy.wrapParentIndex, this.wrapGroupEnd, wrapPolicy.extraIndent, wrapPolicy.structureDepth, wrapPolicy.penaltyMultiplier, true, wrapPolicy.indentOnColumn);
            }
        }
        setTokenWrapPolicy(0, wrapPolicy, true);
        int i12 = 1;
        while (i12 < this.wrapIndexes.size()) {
            float floatValue = this.wrapPenalties.size() > i12 ? this.wrapPenalties.get(i12).floatValue() : 1.0f;
            if (floatValue != wrapPolicy.penaltyMultiplier || i12 == 1) {
                wrapPolicy = getWrapPolicy(i10, floatValue, false, aSTNode);
            }
            setTokenWrapPolicy(i12, wrapPolicy, z10);
            i12++;
        }
        if (this.secondaryWrapIndexes.isEmpty()) {
            return;
        }
        Token.WrapPolicy wrapPolicy3 = getWrapPolicy(i10 & (-113), 1.0f, false, aSTNode);
        Iterator<Integer> it = this.secondaryWrapIndexes.iterator();
        while (it.hasNext()) {
            Token token = this.f102640tm.get(it.next().intValue());
            if (token.getWrapPolicy() == null) {
                token.setWrapPolicy(wrapPolicy3);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void findTokensToWrap(InfixExpression infixExpression, boolean z10, int i10) {
        List extendedOperands;
        int i11;
        Expression leftOperand = infixExpression.getLeftOperand();
        if (leftOperand instanceof InfixExpression) {
            InfixExpression infixExpression2 = (InfixExpression) leftOperand;
            if (samePrecedence(infixExpression, infixExpression2)) {
                findTokensToWrap(infixExpression2, z10, i10 + 1);
                Expression rightOperand = infixExpression.getRightOperand();
                extendedOperands = infixExpression.extendedOperands();
                i11 = -1;
                while (i11 < extendedOperands.size()) {
                    Expression expression = i11 == -1 ? rightOperand : (Expression) extendedOperands.get(i11);
                    if (expression instanceof InfixExpression) {
                        InfixExpression infixExpression3 = (InfixExpression) expression;
                        if (samePrecedence(infixExpression, infixExpression3)) {
                            findTokensToWrap(infixExpression3, z10, i10 + 1);
                        }
                    }
                    int firstIndexBefore = this.f102640tm.firstIndexBefore(expression, -1);
                    while (this.f102640tm.get(firstIndexBefore).isComment()) {
                        firstIndexBefore--;
                    }
                    int firstIndexIn = this.f102640tm.firstIndexIn(expression, -1);
                    this.wrapIndexes.add(Integer.valueOf(z10 ? firstIndexBefore : firstIndexIn));
                    this.secondaryWrapIndexes.add(Integer.valueOf(z10 ? firstIndexIn : firstIndexBefore));
                    if (!this.options.join_wrapped_lines) {
                        if (z10) {
                            TokenManager tokenManager = this.f102640tm;
                            if (tokenManager.countLineBreaksBetween(tokenManager.get(firstIndexIn - 1), this.f102640tm.get(firstIndexIn)) > 0) {
                                this.wrapIndexes.add(Integer.valueOf(firstIndexIn));
                            }
                        } else {
                            TokenManager tokenManager2 = this.f102640tm;
                            if (tokenManager2.countLineBreaksBetween(tokenManager2.get(firstIndexBefore), this.f102640tm.get(firstIndexBefore - 1)) > 0) {
                                this.wrapIndexes.add(Integer.valueOf(firstIndexBefore));
                            }
                        }
                    }
                    i11++;
                }
            }
        }
        if (this.wrapIndexes.isEmpty() || !z10) {
            this.wrapIndexes.add(Integer.valueOf(this.f102640tm.firstIndexIn(leftOperand, -1)));
        }
        Expression rightOperand2 = infixExpression.getRightOperand();
        extendedOperands = infixExpression.extendedOperands();
        i11 = -1;
        while (i11 < extendedOperands.size()) {
        }
    }

    private void fixEnumConstantIndents(ASTNode aSTNode) {
        if (this.options.use_tabs_only_for_leading_indentations) {
            aSTNode.accept(new ASTVisitor() {
                @Override
                public boolean visit(EnumConstantDeclaration enumConstantDeclaration) {
                    WrapPreparator.this.f102640tm.firstTokenIn(enumConstantDeclaration, -1).setWrapPolicy(null);
                    return true;
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Token.WrapPolicy getWrapPolicy(int i10, float f10, boolean z10, ASTNode aSTNode) {
        boolean z11;
        int i11;
        Token.WrapMode wrapMode;
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        int i12 = defaultCodeFormatterOptions.continuation_indentation;
        boolean z12 = false;
        boolean z13 = true;
        boolean z14 = (i10 & 2) != 0;
        boolean z15 = (i10 & 1) != 0;
        if (!z14) {
            if (aSTNode instanceof EnumDeclaration) {
                int i13 = (i10 & 4) != 0 ? 2 : 1;
                if (!defaultCodeFormatterOptions.indent_body_declarations_compare_to_enum_declaration_header) {
                    i13--;
                }
                i12 = i13;
                z11 = z10;
            } else {
                if ((aSTNode instanceof IfStatement) || (aSTNode instanceof ForStatement) || (aSTNode instanceof EnhancedForStatement) || (aSTNode instanceof WhileStatement)) {
                    this.wrapParentIndex = this.f102640tm.firstIndexIn(aSTNode, -1);
                } else if (aSTNode instanceof DoStatement) {
                    this.wrapParentIndex = this.f102640tm.firstIndexIn(aSTNode, -1);
                } else if (!(aSTNode instanceof LambdaExpression) && (i10 & 4) == 0) {
                    if (aSTNode instanceof ArrayInitializer) {
                        i12 = defaultCodeFormatterOptions.continuation_indentation_for_array_initializer;
                        if (z10 && defaultCodeFormatterOptions.insert_new_line_after_opening_brace_in_array_initializer) {
                            z11 = true;
                        }
                    }
                    z11 = false;
                }
                z11 = false;
                i12 = 1;
            }
            Token.WrapMode wrapMode2 = Token.WrapMode.WHERE_NECESSARY;
            i11 = i10 & 112;
            if (i11 != 0) {
                wrapMode2 = Token.WrapMode.DISABLED;
                z13 = false;
            } else if (i11 != 32) {
                if (i11 != 48) {
                    if (i11 != 64) {
                        if (i11 == 80) {
                            z12 = !z10;
                            z15 &= !z10;
                        }
                        z13 = z12;
                    } else if (!z10) {
                        i12++;
                    }
                }
                z12 = z15;
            } else {
                z12 = z15 & z10;
                z13 = z10;
            }
            if (!z12) {
                wrapMode = Token.WrapMode.FORCE;
            } else {
                if (!z11) {
                    if (z13) {
                        wrapMode = Token.WrapMode.TOP_PRIORITY;
                    }
                    return new Token.WrapPolicy(wrapMode2, this.wrapParentIndex, this.wrapGroupEnd, i12 * this.options.indentation_size, this.currentDepth, f10, z10, z14);
                }
                wrapMode = Token.WrapMode.DISABLED;
            }
            wrapMode2 = wrapMode;
            return new Token.WrapPolicy(wrapMode2, this.wrapParentIndex, this.wrapGroupEnd, i12 * this.options.indentation_size, this.currentDepth, f10, z10, z14);
        }
        z11 = false;
        i12 = 0;
        Token.WrapMode wrapMode22 = Token.WrapMode.WHERE_NECESSARY;
        i11 = i10 & 112;
        if (i11 != 0) {
        }
        if (!z12) {
        }
        wrapMode22 = wrapMode;
        return new Token.WrapPolicy(wrapMode22, this.wrapParentIndex, this.wrapGroupEnd, i12 * this.options.indentation_size, this.currentDepth, f10, z10, z14);
    }

    private void handleArguments(List<? extends ASTNode> list, int i10) {
        this.wrapPenalties.add(Float.valueOf(1.1428572f));
        prepareElementsList(list, 32, 23);
        handleWrap(i10);
    }

    private void handleFieldAccess(Expression expression) {
        if (FieldAccessAdapter.isFieldAccess(expression.getParent())) {
            return;
        }
        FieldAccessAdapter fieldAccessAdapter = null;
        Expression expression2 = expression;
        while (FieldAccessAdapter.isFieldAccess(expression2)) {
            fieldAccessAdapter = new FieldAccessAdapter(expression2);
            int identifierIndex = fieldAccessAdapter.getIdentifierIndex(this.f102640tm);
            for (int i10 = identifierIndex - 1; i10 > this.f102640tm.firstIndexIn(expression, -1); i10--) {
                Token token = this.f102640tm.get(i10);
                if (token.tokenType == 1) {
                    this.wrapIndexes.add(Integer.valueOf(i10));
                    this.secondaryWrapIndexes.add(Integer.valueOf(identifierIndex));
                }
                if (token.isComment() || token.tokenType == 34) {
                }
            }
            expression2 = fieldAccessAdapter.getExpression();
        }
        Collections.reverse(this.wrapIndexes);
        TokenManager tokenManager = this.f102640tm;
        if (expression2 == null) {
            expression2 = fieldAccessAdapter.accessExpression;
        }
        this.wrapParentIndex = tokenManager.lastIndexIn(expression2, -1);
        this.wrapGroupEnd = ((expression.getParent() instanceof MethodInvocation) && expression.getLocationInParent() == MethodInvocation.EXPRESSION_PROPERTY) ? this.f102640tm.lastIndexIn(expression.getParent(), -1) : new FieldAccessAdapter(expression).getIdentifierIndex(this.f102640tm);
        handleWrap(0);
    }

    private void handleModuleStatement(List<Name> list, int i10) {
        if (list.isEmpty()) {
            return;
        }
        int firstIndexBefore = this.f102640tm.firstIndexBefore(list.get(0), i10);
        this.wrapParentIndex = this.f102640tm.firstIndexBefore(list.get(0), 22);
        this.wrapIndexes.add(Integer.valueOf(firstIndexBefore));
        prepareElementsList(list, 32, -1);
        handleWrap(this.options.alignment_for_module_statements, PREFERRED);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0089, code lost:
    
        if (r3.countLineBreaksBetween(r3.get(r12), r0) > 0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0068, code lost:
    
        if (r14.equals(org.eclipse.jdt.core.formatter.DefaultCodeFormatterConstants.PRESERVE_POSITIONS) != false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0071, code lost:
    
        if (r14.equals(org.eclipse.jdt.core.formatter.DefaultCodeFormatterConstants.SEPARATE_LINES) != false) goto L26;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x000f. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void handleParenthesesPositions(int i10, int i11, String str) {
        int i12 = i10 + 1;
        boolean z10 = i12 == i11;
        switch (str.hashCode()) {
            case -395112733:
                break;
            case -242432457:
                break;
            case 406180891:
                if (str.equals(DefaultCodeFormatterConstants.SEPARATE_LINES_IF_NOT_EMPTY)) {
                    if (z10) {
                        return;
                    }
                    boolean equals = str.equals(DefaultCodeFormatterConstants.PRESERVE_POSITIONS);
                    Token token = this.f102640tm.get(i12);
                    if (equals) {
                        TokenManager tokenManager = this.f102640tm;
                        break;
                    }
                    token.setWrapPolicy(new Token.WrapPolicy(Token.WrapMode.WHERE_NECESSARY, i10, this.options.indentation_size));
                    token.breakBefore();
                    Token token2 = this.f102640tm.get(i11);
                    if (equals) {
                        TokenManager tokenManager2 = this.f102640tm;
                        if (tokenManager2.countLineBreaksBetween(tokenManager2.get(i11 - 1), token2) <= 0) {
                            return;
                        }
                    }
                    token2.setWrapPolicy(new Token.WrapPolicy(Token.WrapMode.WHERE_NECESSARY, i10, 0));
                    token2.breakBefore();
                    return;
                }
                throw new IllegalArgumentException("Unrecognized parentheses positions setting: " + str);
            case 454328235:
                if (str.equals(DefaultCodeFormatterConstants.COMMON_LINES)) {
                    return;
                }
                throw new IllegalArgumentException("Unrecognized parentheses positions setting: " + str);
            case 1562965567:
                if (str.equals(DefaultCodeFormatterConstants.SEPARATE_LINES_IF_WRAPPED)) {
                    if (z10) {
                        return;
                    }
                    Token token3 = this.f102640tm.get(i12);
                    Token.WrapMode wrapMode = Token.WrapMode.TOP_PRIORITY;
                    token3.setWrapPolicy(new Token.WrapPolicy(wrapMode, i10, i11, this.options.indentation_size, 1, 1.0f, true, false));
                    this.f102640tm.get(i11).setWrapPolicy(new Token.WrapPolicy(wrapMode, i10, i11, 0, 1, 1.0f, false, false));
                    return;
                }
                throw new IllegalArgumentException("Unrecognized parentheses positions setting: " + str);
            default:
                throw new IllegalArgumentException("Unrecognized parentheses positions setting: " + str);
        }
    }

    private void handleSimpleLoop(Statement statement, int i10) {
        if (statement instanceof Block) {
            return;
        }
        this.wrapIndexes.add(Integer.valueOf(this.f102640tm.firstIndexIn(statement, -1)));
        this.wrapParentIndex = this.f102640tm.firstIndexBefore(statement, 25);
        this.wrapGroupEnd = this.f102640tm.lastIndexIn(statement, -1);
        handleWrap(i10, statement.getParent());
        statement.accept(new ASTVisitor() {
            @Override
            public boolean visit(Block block) {
                WrapPreparator wrapPreparator = WrapPreparator.this;
                wrapPreparator.forceContinuousWrapping(block, wrapPreparator.f102640tm.firstIndexIn(block, -1));
                return false;
            }
        });
    }

    private void handleTypeArguments(List<Type> list) {
        if (list.isEmpty()) {
            return;
        }
        prepareElementsList(list, 32, 11);
        handleWrap(this.options.alignment_for_type_arguments);
    }

    private void handleVariableDeclarations(List<VariableDeclarationFragment> list) {
        if (list.size() > 1) {
            this.wrapParentIndex = this.f102640tm.firstIndexIn(list.get(0), -1);
            prepareElementsList(list, 32, -1);
            this.wrapIndexes.remove(0);
            handleWrap(this.options.alignment_for_multiple_fields);
        }
    }

    private void handleWrap(int i10) {
        handleWrap(i10, (ASTNode) null);
    }

    public boolean lambda$14(Statement statement) {
        return this.f102640tm.firstTokenIn(statement, -1).getLineBreaksBefore() == 0;
    }

    private void prepareElementsList(List<? extends ASTNode> list, int i10, int i11) {
        for (int i12 = 0; i12 < list.size(); i12++) {
            ASTNode aSTNode = list.get(i12);
            this.wrapIndexes.add(Integer.valueOf(this.f102640tm.firstIndexIn(aSTNode, -1)));
            if (i12 > 0) {
                this.secondaryWrapIndexes.add(Integer.valueOf(this.f102640tm.firstIndexBefore(aSTNode, i10)));
            }
        }
        if (this.wrapIndexes.isEmpty()) {
            return;
        }
        Token token = this.f102640tm.get(this.wrapIndexes.get(0).intValue());
        if (this.wrapParentIndex < 0) {
            this.wrapParentIndex = this.f102640tm.findIndex(token.originalStart - 1, i11, false);
        }
        if (list.isEmpty() || this.wrapGroupEnd >= 0) {
            return;
        }
        this.wrapGroupEnd = this.f102640tm.lastIndexIn(list.get(list.size() - 1), -1);
    }

    private void preserveExistingLineBreaks() {
        Token token = this.f102640tm.get(0);
        int lineBreaksBefore = token.getLineBreaksBefore();
        token.clearLineBreaksBefore();
        token.putLineBreaksBefore(lineBreaksBefore - 1);
        this.f102640tm.traverse(0, new TokenTraverser() {
            boolean join_wrapped_lines;

            {
                this.join_wrapped_lines = WrapPreparator.this.options.join_wrapped_lines;
            }

            @Override
            public boolean token(Token token2, int i10) {
                WrapPreparator wrapPreparator = WrapPreparator.this;
                int lineBreaksToPreserve = wrapPreparator.getLineBreaksToPreserve(getPrevious(), token2, i10 > wrapPreparator.importsStart && i10 < wrapPreparator.importsEnd);
                if (lineBreaksToPreserve > 1 || ((!this.join_wrapped_lines && token2.isWrappable()) || i10 == 0)) {
                    token2.putLineBreaksBefore(lineBreaksToPreserve);
                }
                return true;
            }
        });
        Token token2 = this.f102640tm.get(r0.size() - 1);
        token2.clearLineBreaksAfter();
        int lineBreaksToPreserve = getLineBreaksToPreserve(token2, null, false);
        if (lineBreaksToPreserve > 0) {
            token2.putLineBreaksAfter(lineBreaksToPreserve);
        } else {
            if ((this.kind & 136) == 0 || !this.options.insert_new_line_at_end_of_file_if_missing) {
                return;
            }
            token2.breakAfter();
        }
    }

    private boolean samePrecedence(InfixExpression infixExpression, InfixExpression infixExpression2) {
        Map<InfixExpression.Operator, Integer> map = OPERATOR_PRECEDENCE;
        Integer num = map.get(infixExpression.getOperator());
        Integer num2 = map.get(infixExpression2.getOperator());
        if (num == null || num2 == null) {
            return false;
        }
        return num.equals(num2);
    }

    private void setTokenWrapPolicy(int i10, Token.WrapPolicy wrapPolicy, boolean z10) {
        int intValue = this.wrapIndexes.get(i10).intValue();
        if (z10) {
            for (int i11 = intValue - 1; i11 >= 0; i11--) {
                Token token = this.f102640tm.get(i11);
                if (!token.isComment() || token.getWrapPolicy() == Token.WrapPolicy.FORCE_FIRST_COLUMN) {
                    break;
                }
                if (token.getLineBreaksAfter() == 0 && i11 == intValue - 1) {
                    intValue = i11;
                }
                if (token.getLineBreaksBefore() > 0) {
                    token.setWrapPolicy(wrapPolicy);
                }
            }
            this.wrapIndexes.set(i10, Integer.valueOf(intValue));
        }
        Token token2 = this.f102640tm.get(intValue);
        if (token2.getWrapPolicy() == Token.WrapPolicy.DISABLE_WRAP) {
            return;
        }
        token2.setWrapPolicy(wrapPolicy);
        if (wrapPolicy.wrapMode == Token.WrapMode.FORCE) {
            token2.breakBefore();
        } else if (this.options.join_wrapped_lines && token2.tokenType == 1002) {
            token2.clearLineBreaksBefore();
        }
    }

    private void wrapComments() {
        CommentWrapExecutor commentWrapExecutor = new CommentWrapExecutor(this.f102640tm, this.options);
        boolean z10 = false;
        for (int i10 = 0; i10 < this.f102640tm.size(); i10++) {
            Token token = this.f102640tm.get(i10);
            if (token.getLineBreaksBefore() > 0 || token.getLineBreaksAfter() > 0) {
                z10 = false;
            }
            if (token.hasNLSTag()) {
                z10 = true;
            }
            List<Token> internalStructure = token.getInternalStructure();
            if (internalStructure != null && !internalStructure.isEmpty() && !z10) {
                int positionInLine = this.f102640tm.getPositionInLine(i10);
                if (token.tokenType == 1001) {
                    commentWrapExecutor.wrapLineComment(token, positionInLine);
                } else {
                    commentWrapExecutor.wrapMultiLineComment(token, positionInLine, false, false);
                }
            }
        }
    }

    @Override
    public void endVisit(DoStatement doStatement) {
        if (!this.options.keep_simple_do_while_body_on_same_line || (doStatement.getBody() instanceof Block)) {
            return;
        }
        int firstIndexAfter = this.f102640tm.firstIndexAfter(doStatement.getBody(), 75);
        this.wrapIndexes.add(Integer.valueOf(firstIndexAfter));
        this.wrapParentIndex = this.f102640tm.lastIndexIn(doStatement.getBody(), -1);
        this.wrapGroupEnd = this.f102640tm.lastIndexIn(doStatement, -1);
        int i10 = this.options.alignment_for_compact_loop;
        int firstIndexIn = this.f102640tm.firstIndexIn(doStatement, -1);
        while (true) {
            firstIndexIn++;
            if (firstIndexIn >= firstIndexAfter) {
                handleWrap(i10, doStatement);
                return;
            }
            Token token = this.f102640tm.get(firstIndexIn);
            if (token.getLineBreaksBefore() > 0 || token.getLineBreaksAfter() > 0) {
                i10 |= 1;
            }
        }
    }

    public void finishUp(ASTNode aSTNode, List<IRegion> list) {
        preserveExistingLineBreaks();
        applyBreaksOutsideRegions(list);
        new WrapExecutor(this.f102640tm, this.options).executeWraps();
        this.aligner.alignComments();
        wrapComments();
        fixEnumConstantIndents(aSTNode);
    }

    public void forceContinuousWrapping(ASTNode aSTNode, int i10) {
        int indent = this.f102640tm.get(i10).getIndent();
        int i11 = -indent;
        int findFirstTokenInLine = this.f102640tm.findFirstTokenInLine(i10);
        int i12 = i10;
        while (true) {
            if (i12 < findFirstTokenInLine) {
                break;
            }
            int align = this.f102640tm.get(i12).getAlign();
            if (align > 0) {
                i11 = (indent * (-2)) + align;
                break;
            }
            i12--;
        }
        int i13 = i11;
        int firstIndexIn = this.f102640tm.firstIndexIn(aSTNode, -1);
        int lastIndexIn = this.f102640tm.lastIndexIn(aSTNode, -1);
        Token token = null;
        while (firstIndexIn <= lastIndexIn) {
            Token token2 = this.f102640tm.get(firstIndexIn);
            if ((token2.getLineBreaksBefore() > 0 || (token != null && token.getLineBreaksAfter() > 0)) && (token2.getWrapPolicy() == null || token2.getWrapPolicy().wrapMode == Token.WrapMode.BLOCK_INDENT)) {
                int indent2 = token2.getIndent() + i13;
                token2.setWrapPolicy(new Token.WrapPolicy(Token.WrapMode.BLOCK_INDENT, i10, indent2));
                token2.setIndent(indent2 + indent);
            }
            firstIndexIn++;
            token = token2;
        }
    }

    public int getLineBreaksToPreserve(Token token, Token token2, boolean z10) {
        List<Token> internalStructure;
        List<Token> internalStructure2;
        if (token != null && (internalStructure2 = token.getInternalStructure()) != null && !internalStructure2.isEmpty()) {
            token = internalStructure2.get(internalStructure2.size() - 1);
        }
        if (token2 != null && (internalStructure = token2.getInternalStructure()) != null && !internalStructure.isEmpty()) {
            token2 = internalStructure.get(0);
        }
        int countLineBreaksBetween = this.f102640tm.countLineBreaksBetween(token, token2);
        if (z10) {
            if (countLineBreaksBetween > 1) {
                return this.options.blank_lines_between_import_groups + 1;
            }
            return 0;
        }
        int i10 = this.options.number_of_empty_lines_to_preserve;
        if (token != null && token2 != null) {
            i10++;
        }
        return Math.min(countLineBreaksBetween, i10);
    }

    @Override
    public void postVisit(ASTNode aSTNode) {
        this.currentDepth--;
    }

    @Override
    public boolean preVisit2(ASTNode aSTNode) {
        this.currentDepth++;
        boolean z10 = (aSTNode.getFlags() & 1) != 0;
        if (z10) {
            TokenManager tokenManager = this.f102640tm;
            tokenManager.addDisableFormatTokenPair(tokenManager.firstTokenIn(aSTNode, -1), this.f102640tm.lastTokenIn(aSTNode, -1));
        }
        return !z10;
    }

    @Override
    public boolean visit(CompilationUnit compilationUnit) {
        List imports = compilationUnit.imports();
        if (!imports.isEmpty()) {
            this.importsStart = this.f102640tm.firstIndexIn((ASTNode) imports.get(0), -1);
            this.importsEnd = this.f102640tm.lastIndexIn((ASTNode) imports.get(imports.size() - 1), -1);
        }
        return true;
    }

    private void handleWrap(int i10, float f10) {
        this.wrapPenalties.add(Float.valueOf(f10));
        handleWrap(i10, (ASTNode) null);
    }

    private void handleWrap(int i10, ASTNode aSTNode) {
        handleWrap(i10, true, aSTNode);
    }

    private void handleWrap(int i10, boolean z10, ASTNode aSTNode) {
        doHandleWrap(i10, z10, aSTNode);
        this.wrapIndexes.clear();
        this.secondaryWrapIndexes.clear();
        this.wrapPenalties.clear();
        this.wrapGroupEnd = -1;
        this.wrapParentIndex = -1;
    }

    @Override
    public boolean visit(NormalAnnotation normalAnnotation) {
        handleParenthesesPositions(this.f102640tm.firstIndexAfter(normalAnnotation.getTypeName(), 23), this.f102640tm.lastIndexIn(normalAnnotation, 25), this.options.parenthesis_positions_in_annotation);
        handleArguments(normalAnnotation.values(), this.options.alignment_for_arguments_in_annotation);
        return true;
    }

    @Override
    public boolean visit(SingleMemberAnnotation singleMemberAnnotation) {
        handleParenthesesPositions(this.f102640tm.firstIndexAfter(singleMemberAnnotation.getTypeName(), 23), this.f102640tm.lastIndexIn(singleMemberAnnotation, 25), this.options.parenthesis_positions_in_annotation);
        return true;
    }

    @Override
    public boolean visit(TypeDeclaration typeDeclaration) {
        Type superclassType = typeDeclaration.getSuperclassType();
        if (superclassType != null) {
            this.wrapParentIndex = this.f102640tm.lastIndexIn(typeDeclaration.getName(), -1);
            this.wrapGroupEnd = this.f102640tm.lastIndexIn(superclassType, -1);
            this.wrapIndexes.add(Integer.valueOf(this.f102640tm.firstIndexBefore(superclassType, 86)));
            this.wrapIndexes.add(Integer.valueOf(this.f102640tm.firstIndexIn(superclassType, -1)));
            handleWrap(this.options.alignment_for_superclass_in_type_declaration, PREFERRED);
        }
        List superInterfaceTypes = typeDeclaration.superInterfaceTypes();
        if (!superInterfaceTypes.isEmpty()) {
            int i10 = typeDeclaration.isInterface() ? 86 : 123;
            this.wrapParentIndex = this.f102640tm.lastIndexIn(typeDeclaration.getName(), -1);
            this.wrapIndexes.add(Integer.valueOf(this.f102640tm.firstIndexBefore((ASTNode) superInterfaceTypes.get(0), i10)));
            prepareElementsList(superInterfaceTypes, 32, -1);
            handleWrap(this.options.alignment_for_superinterfaces_in_type_declaration, PREFERRED);
        }
        prepareElementsList(typeDeclaration.typeParameters(), 32, 11);
        handleWrap(this.options.alignment_for_type_parameters);
        this.aligner.handleAlign(typeDeclaration.bodyDeclarations());
        return true;
    }

    @Override
    public boolean visit(AnnotationTypeDeclaration annotationTypeDeclaration) {
        this.aligner.handleAlign(annotationTypeDeclaration.bodyDeclarations());
        return true;
    }

    @Override
    public boolean visit(AnonymousClassDeclaration anonymousClassDeclaration) {
        this.aligner.handleAlign(anonymousClassDeclaration.bodyDeclarations());
        return true;
    }

    @Override
    public boolean visit(MethodDeclaration methodDeclaration) {
        int firstIndexIn;
        int i10;
        int firstIndexAfter = this.f102640tm.firstIndexAfter(methodDeclaration.getName(), 23);
        handleParenthesesPositions(firstIndexAfter, methodDeclaration.getBody() == null ? this.f102640tm.lastIndexIn(methodDeclaration, 25) : this.f102640tm.firstIndexBefore(methodDeclaration.getBody(), 25), this.options.parenthesis_positions_in_method_declaration);
        List parameters = methodDeclaration.parameters();
        ASTNode receiverType = methodDeclaration.getReceiverType();
        if (!parameters.isEmpty() || receiverType != null) {
            if (receiverType != null) {
                this.wrapIndexes.add(Integer.valueOf(this.f102640tm.firstIndexIn(receiverType, -1)));
            }
            int i11 = methodDeclaration.isConstructor() ? this.options.alignment_for_parameters_in_constructor_declaration : this.options.alignment_for_parameters_in_method_declaration;
            TokenManager tokenManager = this.f102640tm;
            if (!parameters.isEmpty()) {
                receiverType = (ASTNode) parameters.get(parameters.size() - 1);
            }
            this.wrapGroupEnd = tokenManager.lastIndexIn(receiverType, -1);
            handleArguments(parameters, i11);
        }
        List thrownExceptionTypes = methodDeclaration.thrownExceptionTypes();
        if (!thrownExceptionTypes.isEmpty()) {
            if (methodDeclaration.isConstructor()) {
                i10 = this.options.alignment_for_throws_clause_in_constructor_declaration;
            } else {
                i10 = this.options.alignment_for_throws_clause_in_method_declaration;
            }
            if ((i10 & 2) == 0) {
                this.wrapParentIndex = firstIndexAfter;
            }
            prepareElementsList(thrownExceptionTypes, 32, 25);
            this.wrapIndexes.set(0, Integer.valueOf(this.f102640tm.firstIndexBefore((ASTNode) thrownExceptionTypes.get(0), 120)));
            handleWrap(i10, 0.5f);
        }
        if (!methodDeclaration.isConstructor()) {
            TokenManager tokenManager2 = this.f102640tm;
            this.wrapParentIndex = tokenManager2.findFirstTokenInLine(tokenManager2.firstIndexIn(methodDeclaration.getName(), -1));
            while (this.f102640tm.get(this.wrapParentIndex).isComment()) {
                this.wrapParentIndex++;
            }
            List typeParameters = methodDeclaration.typeParameters();
            if (!typeParameters.isEmpty()) {
                this.wrapIndexes.add(Integer.valueOf(this.f102640tm.firstIndexIn((ASTNode) typeParameters.get(0), -1)));
            }
            if (methodDeclaration.getReturnType2() != null && (firstIndexIn = this.f102640tm.firstIndexIn(methodDeclaration.getReturnType2(), -1)) != this.wrapParentIndex) {
                this.wrapIndexes.add(Integer.valueOf(firstIndexIn));
            }
            this.wrapIndexes.add(Integer.valueOf(this.f102640tm.firstIndexIn(methodDeclaration.getName(), -1)));
            this.wrapGroupEnd = this.f102640tm.lastIndexIn(methodDeclaration.getName(), -1);
            handleWrap(this.options.alignment_for_method_declaration);
        }
        prepareElementsList(methodDeclaration.typeParameters(), 32, 11);
        handleWrap(this.options.alignment_for_type_parameters);
        return true;
    }

    @Override
    public boolean visit(EnumDeclaration enumDeclaration) {
        int i10;
        int firstIndexIn;
        List enumConstants = enumDeclaration.enumConstants();
        if (enumConstants.isEmpty()) {
            i10 = -1;
        } else {
            Iterator it = enumConstants.iterator();
            while (it.hasNext()) {
                this.wrapIndexes.add(Integer.valueOf(this.f102640tm.firstIndexIn((EnumConstantDeclaration) it.next(), -1)));
            }
            if ((this.options.alignment_for_enum_constants & 2) > 0) {
                firstIndexIn = this.f102640tm.firstIndexBefore((ASTNode) enumConstants.get(0), 49);
            } else {
                firstIndexIn = this.f102640tm.firstIndexIn(enumDeclaration, 71);
            }
            this.wrapParentIndex = firstIndexIn;
            i10 = this.f102640tm.lastIndexIn((ASTNode) enumConstants.get(enumConstants.size() - 1), -1);
            this.wrapGroupEnd = i10;
            handleWrap(this.options.alignment_for_enum_constants, enumDeclaration);
        }
        if (!this.options.join_wrapped_lines) {
            if (i10 <= 0) {
                i10 = this.f102640tm.firstIndexAfter(enumDeclaration.getName(), 49);
            }
            int i11 = -1;
            while (true) {
                i10++;
                if (i10 >= this.f102640tm.size()) {
                    break;
                }
                Token token = this.f102640tm.get(i10);
                if (!token.isComment()) {
                    int i12 = token.tokenType;
                    if (i12 == 32) {
                        i11 = i10;
                    } else if (i12 == 26 && i11 >= 0) {
                        TokenManager tokenManager = this.f102640tm;
                        if (tokenManager.countLineBreaksBetween(tokenManager.get(i11), token) == 1) {
                            token.setWrapPolicy(new Token.WrapPolicy(Token.WrapMode.WHERE_NECESSARY, i11, 0));
                        }
                    }
                }
            }
        }
        List superInterfaceTypes = enumDeclaration.superInterfaceTypes();
        if (!superInterfaceTypes.isEmpty()) {
            this.wrapParentIndex = this.f102640tm.lastIndexIn(enumDeclaration.getName(), -1);
            this.wrapIndexes.add(Integer.valueOf(this.f102640tm.firstIndexBefore((ASTNode) superInterfaceTypes.get(0), 123)));
            prepareElementsList(superInterfaceTypes, 32, -1);
            handleWrap(this.options.alignment_for_superinterfaces_in_enum_declaration, PREFERRED);
        }
        this.aligner.handleAlign(enumDeclaration.bodyDeclarations());
        return true;
    }

    @Override
    public boolean visit(EnumConstantDeclaration enumConstantDeclaration) {
        int firstIndexAfter = this.f102640tm.firstIndexAfter(enumConstantDeclaration.getName(), -1);
        while (this.f102640tm.get(firstIndexAfter).isComment()) {
            firstIndexAfter++;
        }
        if (this.f102640tm.get(firstIndexAfter).tokenType == 23) {
            handleParenthesesPositions(firstIndexAfter, enumConstantDeclaration.getAnonymousClassDeclaration() == null ? this.f102640tm.lastIndexIn(enumConstantDeclaration, 25) : this.f102640tm.firstIndexBefore(enumConstantDeclaration.getAnonymousClassDeclaration(), 25), this.options.parenthesis_positions_in_enum_constant_declaration);
        }
        handleArguments(enumConstantDeclaration.arguments(), this.options.alignment_for_arguments_in_enum_constant);
        AnonymousClassDeclaration anonymousClassDeclaration = enumConstantDeclaration.getAnonymousClassDeclaration();
        if (anonymousClassDeclaration == null) {
            return true;
        }
        forceContinuousWrapping(anonymousClassDeclaration, this.f102640tm.firstIndexIn(enumConstantDeclaration.getName(), -1));
        return true;
    }

    @Override
    public boolean visit(Block block) {
        this.aligner.handleAlign(block);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [org.eclipse.jdt.internal.formatter.TokenManager] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [org.eclipse.jdt.core.dom.ASTNode] */
    /* JADX WARN: Type inference failed for: r2v8, types: [org.eclipse.jdt.core.dom.MethodInvocation] */
    @Override
    public boolean visit(MethodInvocation methodInvocation) {
        int lastIndexIn;
        handleParenthesesPositions(this.f102640tm.firstIndexAfter(methodInvocation.getName(), 23), this.f102640tm.lastIndexIn(methodInvocation, 25), this.options.parenthesis_positions_in_method_invocation);
        handleArguments(methodInvocation.arguments(), this.options.alignment_for_arguments_in_method_invocation);
        handleTypeArguments(methodInvocation.typeArguments());
        if (!(methodInvocation.getParent() instanceof MethodInvocation) || methodInvocation.getLocationInParent() != MethodInvocation.EXPRESSION_PROPERTY) {
            Expression expression = methodInvocation;
            ?? r22 = expression;
            while (expression instanceof MethodInvocation) {
                r22 = (MethodInvocation) expression;
                expression = r22.getExpression();
                if (expression != null) {
                    this.wrapIndexes.add(Integer.valueOf(this.f102640tm.firstIndexBefore(r22.getName(), 1)));
                    this.secondaryWrapIndexes.add(Integer.valueOf(this.f102640tm.firstIndexIn(r22.getName(), 22)));
                }
            }
            Collections.reverse(this.wrapIndexes);
            if (expression != null) {
                lastIndexIn = this.f102640tm.lastIndexIn(expression, -1);
            } else {
                lastIndexIn = this.f102640tm.lastIndexIn(r22, -1);
            }
            this.wrapParentIndex = lastIndexIn;
            this.wrapGroupEnd = this.f102640tm.lastIndexIn(methodInvocation, -1);
            handleWrap(this.options.alignment_for_selector_in_method_invocation);
        }
        return true;
    }

    @Override
    public boolean visit(SuperMethodInvocation superMethodInvocation) {
        handleParenthesesPositions(this.f102640tm.firstIndexAfter(superMethodInvocation.getName(), 23), this.f102640tm.lastIndexIn(superMethodInvocation, 25), this.options.parenthesis_positions_in_method_invocation);
        handleArguments(superMethodInvocation.arguments(), this.options.alignment_for_arguments_in_method_invocation);
        handleTypeArguments(superMethodInvocation.typeArguments());
        return true;
    }

    @Override
    public boolean visit(ClassInstanceCreation classInstanceCreation) {
        int i10;
        handleParenthesesPositions(this.f102640tm.firstIndexAfter(classInstanceCreation.getType(), 23), classInstanceCreation.getAnonymousClassDeclaration() == null ? this.f102640tm.lastIndexIn(classInstanceCreation, 25) : this.f102640tm.firstIndexBefore(classInstanceCreation.getAnonymousClassDeclaration(), 25), this.options.parenthesis_positions_in_method_invocation);
        AnonymousClassDeclaration anonymousClassDeclaration = classInstanceCreation.getAnonymousClassDeclaration();
        if (anonymousClassDeclaration != null) {
            forceContinuousWrapping(anonymousClassDeclaration, this.f102640tm.firstIndexIn(classInstanceCreation, 36));
        }
        if (classInstanceCreation.getExpression() != null) {
            i10 = this.options.alignment_for_arguments_in_qualified_allocation_expression;
        } else {
            i10 = this.options.alignment_for_arguments_in_allocation_expression;
        }
        handleArguments(classInstanceCreation.arguments(), i10);
        handleTypeArguments(classInstanceCreation.typeArguments());
        return true;
    }

    @Override
    public boolean visit(ConstructorInvocation constructorInvocation) {
        handleParenthesesPositions(constructorInvocation.arguments().isEmpty() ? this.f102640tm.lastIndexIn(constructorInvocation, 23) : this.f102640tm.firstIndexBefore((ASTNode) constructorInvocation.arguments().get(0), 23), this.f102640tm.lastIndexIn(constructorInvocation, 25), this.options.parenthesis_positions_in_method_invocation);
        handleArguments(constructorInvocation.arguments(), this.options.alignment_for_arguments_in_explicit_constructor_call);
        handleTypeArguments(constructorInvocation.typeArguments());
        return true;
    }

    @Override
    public boolean visit(SuperConstructorInvocation superConstructorInvocation) {
        handleParenthesesPositions(superConstructorInvocation.arguments().isEmpty() ? this.f102640tm.lastIndexIn(superConstructorInvocation, 23) : this.f102640tm.firstIndexBefore((ASTNode) superConstructorInvocation.arguments().get(0), 23), this.f102640tm.lastIndexIn(superConstructorInvocation, 25), this.options.parenthesis_positions_in_method_invocation);
        handleArguments(superConstructorInvocation.arguments(), this.options.alignment_for_arguments_in_explicit_constructor_call);
        handleTypeArguments(superConstructorInvocation.typeArguments());
        return true;
    }

    @Override
    public boolean visit(FieldAccess fieldAccess) {
        handleFieldAccess(fieldAccess);
        return true;
    }

    @Override
    public boolean visit(QualifiedName qualifiedName) {
        handleFieldAccess(qualifiedName);
        return true;
    }

    @Override
    public boolean visit(ThisExpression thisExpression) {
        handleFieldAccess(thisExpression);
        return true;
    }

    @Override
    public boolean visit(SuperFieldAccess superFieldAccess) {
        handleFieldAccess(superFieldAccess);
        return true;
    }

    @Override
    public boolean visit(InfixExpression infixExpression) {
        int i10;
        if (OPERATOR_PRECEDENCE.get(infixExpression.getOperator()) == null) {
            return true;
        }
        ASTNode parent = infixExpression.getParent();
        if ((parent instanceof InfixExpression) && samePrecedence(infixExpression, (InfixExpression) parent)) {
            return true;
        }
        int applyAsInt = OPERATOR_WRAPPING_OPTION.get(infixExpression.getOperator()).applyAsInt(this.options);
        boolean test = OPERATOR_WRAP_BEFORE_OPTION.get(infixExpression.getOperator()).test(this.options);
        if (this.f102640tm.isStringConcatenation(infixExpression)) {
            DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
            int i11 = defaultCodeFormatterOptions.alignment_for_string_concatenation;
            test = defaultCodeFormatterOptions.wrap_before_string_concatenation;
            applyAsInt = i11;
        }
        findTokensToWrap(infixExpression, test, 0);
        this.wrapParentIndex = this.wrapIndexes.remove(0).intValue();
        this.wrapGroupEnd = this.f102640tm.lastIndexIn(infixExpression, -1);
        if ((applyAsInt & 2) != 0 && (i10 = this.wrapParentIndex) > 0) {
            this.wrapParentIndex = i10 - 1;
        }
        int i12 = this.wrapParentIndex;
        while (true) {
            if (i12 < 0) {
                break;
            }
            if (!this.f102640tm.get(i12).isComment()) {
                this.wrapParentIndex = i12;
                break;
            }
            i12--;
        }
        handleWrap(applyAsInt, !test, infixExpression);
        return true;
    }

    @Override
    public boolean visit(ConditionalExpression conditionalExpression) {
        boolean z10 = false;
        boolean z11 = (this.options.alignment_for_conditional_expression_chain & 112) != 0;
        boolean z12 = (conditionalExpression.getParent() instanceof ConditionalExpression) && conditionalExpression == ((ConditionalExpression) conditionalExpression.getParent()).getElseExpression();
        if ((conditionalExpression.getElseExpression() instanceof ConditionalExpression) && !z12) {
            z10 = true;
        }
        boolean z13 = this.options.wrap_before_conditional_operator;
        List<Integer> list = z13 ? this.wrapIndexes : this.secondaryWrapIndexes;
        List<Integer> list2 = z13 ? this.secondaryWrapIndexes : this.wrapIndexes;
        if (!z11 || (!z10 && !z12)) {
            list.add(Integer.valueOf(this.f102640tm.firstIndexAfter(conditionalExpression.getExpression(), 29)));
            list.add(Integer.valueOf(this.f102640tm.firstIndexAfter(conditionalExpression.getThenExpression(), 62)));
            list2.add(Integer.valueOf(this.f102640tm.firstIndexIn(conditionalExpression.getThenExpression(), -1)));
            list2.add(Integer.valueOf(this.f102640tm.firstIndexIn(conditionalExpression.getElseExpression(), -1)));
            this.wrapParentIndex = this.f102640tm.lastIndexIn(conditionalExpression.getExpression(), -1);
            this.wrapGroupEnd = this.f102640tm.lastIndexIn(conditionalExpression, -1);
            handleWrap(this.options.alignment_for_conditional_expression);
        } else if (z10) {
            ArrayList<ConditionalExpression> arrayList = new ArrayList();
            arrayList.add(conditionalExpression);
            ConditionalExpression conditionalExpression2 = conditionalExpression;
            while (conditionalExpression2.getElseExpression() instanceof ConditionalExpression) {
                conditionalExpression2 = (ConditionalExpression) conditionalExpression2.getElseExpression();
                arrayList.add(conditionalExpression2);
            }
            for (ConditionalExpression conditionalExpression3 : arrayList) {
                list.add(Integer.valueOf(this.f102640tm.firstIndexAfter(conditionalExpression3.getThenExpression(), 62)));
                list2.add(Integer.valueOf(this.f102640tm.firstIndexIn(conditionalExpression3.getElseExpression(), -1)));
            }
            this.wrapParentIndex = this.f102640tm.firstIndexIn(conditionalExpression.getExpression(), -1);
            this.wrapGroupEnd = this.f102640tm.lastIndexIn(conditionalExpression, -1);
            handleWrap(this.options.alignment_for_conditional_expression_chain);
            this.currentDepth++;
            for (ConditionalExpression conditionalExpression4 : arrayList) {
                list.add(Integer.valueOf(this.f102640tm.firstIndexAfter(conditionalExpression4.getExpression(), 29)));
                list2.add(Integer.valueOf(this.f102640tm.firstIndexIn(conditionalExpression4.getThenExpression(), -1)));
                this.wrapParentIndex = this.f102640tm.firstIndexIn(conditionalExpression4.getExpression(), -1);
                this.wrapGroupEnd = this.f102640tm.lastIndexIn(conditionalExpression4.getThenExpression(), -1);
                handleWrap(this.options.alignment_for_conditional_expression);
            }
            this.currentDepth--;
        }
        return true;
    }

    @Override
    public boolean visit(ArrayInitializer arrayInitializer) {
        List expressions = arrayInitializer.expressions();
        if (!expressions.isEmpty()) {
            prepareElementsList(expressions, 32, 49);
            handleWrap(this.options.alignment_for_expressions_in_array_initializer, arrayInitializer);
        }
        int firstIndexIn = this.f102640tm.firstIndexIn(arrayInitializer, 49);
        Token token = this.f102640tm.get(firstIndexIn);
        if (token.isNextLineOnWrap() && token.getWrapPolicy() == null && firstIndexIn > 0) {
            token.setWrapPolicy(new Token.WrapPolicy(Token.WrapMode.DISABLED, firstIndexIn - 1, 0));
        }
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        if (!defaultCodeFormatterOptions.join_wrapped_lines && !defaultCodeFormatterOptions.insert_new_line_before_closing_brace_in_array_initializer) {
            int lastIndexIn = this.f102640tm.lastIndexIn(arrayInitializer, 33);
            Token token2 = this.f102640tm.get(lastIndexIn);
            TokenManager tokenManager = this.f102640tm;
            if (tokenManager.countLineBreaksBetween(tokenManager.get(lastIndexIn - 1), token2) == 1) {
                token2.setWrapPolicy(new Token.WrapPolicy(Token.WrapMode.WHERE_NECESSARY, firstIndexIn, lastIndexIn, 0, this.currentDepth, 1.0f, true, false));
            }
        }
        return true;
    }

    @Override
    public boolean visit(Assignment assignment) {
        int firstIndexIn = this.f102640tm.firstIndexIn(assignment.getRightHandSide(), -1);
        if (this.f102640tm.get(firstIndexIn).getLineBreaksBefore() > 0) {
            return true;
        }
        int firstIndexBefore = this.f102640tm.firstIndexBefore(assignment.getRightHandSide(), -1);
        while (this.f102640tm.get(firstIndexBefore).isComment()) {
            firstIndexBefore--;
        }
        this.wrapIndexes.add(Integer.valueOf(this.options.wrap_before_assignment_operator ? firstIndexBefore : firstIndexIn));
        List<Integer> list = this.secondaryWrapIndexes;
        if (!this.options.wrap_before_assignment_operator) {
            firstIndexIn = firstIndexBefore;
        }
        list.add(Integer.valueOf(firstIndexIn));
        this.wrapParentIndex = firstIndexBefore - 1;
        this.wrapGroupEnd = this.f102640tm.lastIndexIn(assignment.getRightHandSide(), -1);
        handleWrap(this.options.alignment_for_assignment);
        return true;
    }

    @Override
    public boolean visit(VariableDeclarationFragment variableDeclarationFragment) {
        if (variableDeclarationFragment.getInitializer() == null) {
            return true;
        }
        int firstIndexIn = this.f102640tm.firstIndexIn(variableDeclarationFragment.getInitializer(), -1);
        if (this.f102640tm.get(firstIndexIn).getLineBreaksBefore() > 0) {
            return true;
        }
        int firstIndexBefore = this.f102640tm.firstIndexBefore(variableDeclarationFragment.getInitializer(), 72);
        this.wrapIndexes.add(Integer.valueOf(this.options.wrap_before_assignment_operator ? firstIndexBefore : firstIndexIn));
        List<Integer> list = this.secondaryWrapIndexes;
        if (!this.options.wrap_before_assignment_operator) {
            firstIndexIn = firstIndexBefore;
        }
        list.add(Integer.valueOf(firstIndexIn));
        this.wrapParentIndex = firstIndexBefore - 1;
        this.wrapGroupEnd = this.f102640tm.lastIndexIn(variableDeclarationFragment.getInitializer(), -1);
        handleWrap(this.options.alignment_for_assignment);
        return true;
    }

    @Override
    public boolean visit(IfStatement ifStatement) {
        handleParenthesesPositions(this.f102640tm.firstIndexIn(ifStatement, 23), this.f102640tm.firstIndexAfter(ifStatement.getExpression(), 25), this.options.parenthesis_positions_in_if_while_statement);
        Statement elseStatement = ifStatement.getElseStatement();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        if (defaultCodeFormatterOptions.keep_then_statement_on_same_line || (defaultCodeFormatterOptions.keep_simple_if_on_one_line && elseStatement == null)) {
            handleSimpleLoop(ifStatement.getThenStatement(), this.options.alignment_for_compact_if);
        }
        DefaultCodeFormatterOptions defaultCodeFormatterOptions2 = this.options;
        if (!defaultCodeFormatterOptions2.keep_else_statement_on_same_line || elseStatement == null) {
            return true;
        }
        handleSimpleLoop(elseStatement, defaultCodeFormatterOptions2.alignment_for_compact_if);
        return true;
    }

    @Override
    public boolean visit(ForStatement forStatement) {
        int firstIndexIn = this.f102640tm.firstIndexIn(forStatement, 23);
        int firstIndexBefore = this.f102640tm.firstIndexBefore(forStatement.getBody(), 25);
        handleParenthesesPositions(firstIndexIn, firstIndexBefore, this.options.parenthesis_positions_in_for_statement);
        List initializers = forStatement.initializers();
        if (!initializers.isEmpty()) {
            this.wrapIndexes.add(Integer.valueOf(this.f102640tm.firstIndexIn((ASTNode) initializers.get(0), -1)));
        }
        if (forStatement.getExpression() != null) {
            this.wrapIndexes.add(Integer.valueOf(this.f102640tm.firstIndexIn(forStatement.getExpression(), -1)));
        }
        List updaters = forStatement.updaters();
        if (!updaters.isEmpty()) {
            this.wrapIndexes.add(Integer.valueOf(this.f102640tm.firstIndexIn((ASTNode) updaters.get(0), -1)));
        }
        if (!this.wrapIndexes.isEmpty()) {
            this.wrapParentIndex = firstIndexIn;
            this.wrapGroupEnd = firstIndexBefore;
            handleWrap(this.options.alignment_for_expressions_in_for_loop_header);
        }
        if (!this.options.keep_simple_for_body_on_same_line) {
            return true;
        }
        handleSimpleLoop(forStatement.getBody(), this.options.alignment_for_compact_loop);
        return true;
    }

    @Override
    public boolean visit(EnhancedForStatement enhancedForStatement) {
        handleParenthesesPositions(this.f102640tm.firstIndexIn(enhancedForStatement, 23), this.f102640tm.firstIndexBefore(enhancedForStatement.getBody(), 25), this.options.parenthesis_positions_in_for_statement);
        if (!this.options.keep_simple_for_body_on_same_line) {
            return true;
        }
        handleSimpleLoop(enhancedForStatement.getBody(), this.options.alignment_for_compact_loop);
        return true;
    }

    @Override
    public boolean visit(WhileStatement whileStatement) {
        handleParenthesesPositions(this.f102640tm.firstIndexIn(whileStatement, 23), this.f102640tm.firstIndexAfter(whileStatement.getExpression(), 25), this.options.parenthesis_positions_in_if_while_statement);
        if (!this.options.keep_simple_while_body_on_same_line) {
            return true;
        }
        handleSimpleLoop(whileStatement.getBody(), this.options.alignment_for_compact_loop);
        return true;
    }

    @Override
    public boolean visit(TryStatement tryStatement) {
        if (!tryStatement.resources().isEmpty()) {
            handleParenthesesPositions(this.f102640tm.firstIndexIn(tryStatement, 23), this.f102640tm.firstIndexBefore(tryStatement.getBody(), 25), this.options.parenthesis_positions_in_try_clause);
        }
        prepareElementsList(tryStatement.resources(), 26, 23);
        handleWrap(this.options.alignment_for_resources_in_try);
        return true;
    }

    @Override
    public boolean visit(UnionType unionType) {
        List<Type> types = unionType.types();
        if (types.isEmpty()) {
            return true;
        }
        if (this.options.wrap_before_or_operator_multicatch) {
            for (Type type : types) {
                if (this.wrapIndexes.isEmpty()) {
                    this.wrapIndexes.add(Integer.valueOf(this.f102640tm.firstIndexIn(type, -1)));
                } else {
                    this.wrapIndexes.add(Integer.valueOf(this.f102640tm.firstIndexBefore(type, 28)));
                    this.secondaryWrapIndexes.add(Integer.valueOf(this.f102640tm.firstIndexIn(type, -1)));
                }
            }
            this.wrapParentIndex = this.f102640tm.firstIndexBefore(unionType, -1);
            while (this.f102640tm.get(this.wrapParentIndex).isComment()) {
                this.wrapParentIndex--;
            }
            this.wrapGroupEnd = this.f102640tm.lastIndexIn((ASTNode) types.get(types.size() - 1), -1);
            handleWrap(this.options.alignment_for_union_type_in_multicatch);
        } else {
            prepareElementsList(types, 28, 23);
            handleWrap(this.options.alignment_for_union_type_in_multicatch);
        }
        return true;
    }

    @Override
    public boolean visit(LambdaExpression lambdaExpression) {
        int firstIndexIn = this.f102640tm.firstIndexIn(lambdaExpression, -1);
        if (this.f102640tm.get(firstIndexIn).tokenType == 23) {
            handleParenthesesPositions(firstIndexIn, this.f102640tm.firstIndexBefore(lambdaExpression.getBody(), 25), this.options.parenthesis_positions_in_lambda_declaration);
        }
        if (lambdaExpression.getBody() instanceof Block) {
            forceContinuousWrapping(lambdaExpression.getBody(), this.f102640tm.firstIndexIn(lambdaExpression, -1));
            List statements = ((Block) lambdaExpression.getBody()).statements();
            if (!statements.isEmpty()) {
                int firstIndexBefore = this.f102640tm.firstIndexBefore((ASTNode) statements.get(0), 49);
                int firstIndexAfter = this.f102640tm.firstIndexAfter((ASTNode) statements.get(statements.size() - 1), 33);
                if (statements.stream().allMatch(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        boolean lambda$14;
                        lambda$14 = WrapPreparator.this.lambda$14((Statement) obj);
                        return lambda$14;
                    }
                })) {
                    Iterator it = statements.iterator();
                    while (it.hasNext()) {
                        this.wrapIndexes.add(Integer.valueOf(this.f102640tm.firstIndexIn((Statement) it.next(), -1)));
                    }
                    this.wrapParentIndex = firstIndexBefore;
                    this.wrapGroupEnd = firstIndexAfter;
                    handleWrap(48, lambdaExpression);
                    this.f102640tm.get(firstIndexAfter).setWrapPolicy(new Token.WrapPolicy(Token.WrapMode.TOP_PRIORITY, firstIndexBefore, firstIndexAfter, 0, this.currentDepth, 1.0f, false, false));
                }
            }
        }
        if (lambdaExpression.hasParentheses()) {
            List parameters = lambdaExpression.parameters();
            this.currentDepth++;
            handleArguments(parameters, this.options.alignment_for_parameters_in_method_declaration);
            this.currentDepth--;
        }
        return true;
    }

    @Override
    public boolean visit(FieldDeclaration fieldDeclaration) {
        handleVariableDeclarations(fieldDeclaration.fragments());
        return true;
    }

    @Override
    public boolean visit(VariableDeclarationStatement variableDeclarationStatement) {
        handleVariableDeclarations(variableDeclarationStatement.fragments());
        return true;
    }

    @Override
    public boolean visit(ParameterizedType parameterizedType) {
        prepareElementsList(parameterizedType.typeArguments(), 32, 11);
        handleWrap(this.options.alignment_for_parameterized_type_references);
        return true;
    }

    @Override
    public boolean visit(TypeMethodReference typeMethodReference) {
        handleTypeArguments(typeMethodReference.typeArguments());
        return true;
    }

    @Override
    public boolean visit(ExpressionMethodReference expressionMethodReference) {
        handleTypeArguments(expressionMethodReference.typeArguments());
        return true;
    }

    @Override
    public boolean visit(SuperMethodReference superMethodReference) {
        handleTypeArguments(superMethodReference.typeArguments());
        return true;
    }

    @Override
    public boolean visit(CreationReference creationReference) {
        handleTypeArguments(creationReference.typeArguments());
        return true;
    }

    @Override
    public boolean visit(ExportsDirective exportsDirective) {
        handleModuleStatement(exportsDirective.modules(), 124);
        return true;
    }

    @Override
    public boolean visit(OpensDirective opensDirective) {
        handleModuleStatement(opensDirective.modules(), 124);
        return true;
    }

    @Override
    public boolean visit(ProvidesDirective providesDirective) {
        handleModuleStatement(providesDirective.implementations(), 125);
        return true;
    }

    @Override
    public boolean visit(CatchClause catchClause) {
        handleParenthesesPositions(this.f102640tm.firstIndexIn(catchClause, 23), this.f102640tm.firstIndexBefore(catchClause.getBody(), 25), this.options.parenthesis_positions_in_catch_clause);
        return true;
    }

    @Override
    public boolean visit(SwitchStatement switchStatement) {
        handleParenthesesPositions(this.f102640tm.firstIndexIn(switchStatement, 23), this.f102640tm.firstIndexAfter(switchStatement.getExpression(), 25), this.options.parenthesis_positions_in_switch_statement);
        return true;
    }

    @Override
    public boolean visit(SwitchExpression switchExpression) {
        handleParenthesesPositions(this.f102640tm.firstIndexIn(switchExpression, 23), this.f102640tm.firstIndexAfter(switchExpression.getExpression(), 25), this.options.parenthesis_positions_in_switch_statement);
        return true;
    }

    @Override
    public boolean visit(DoStatement doStatement) {
        handleParenthesesPositions(this.f102640tm.firstIndexBefore(doStatement.getExpression(), 23), this.f102640tm.firstIndexAfter(doStatement.getExpression(), 25), this.options.parenthesis_positions_in_if_while_statement);
        return true;
    }
}
