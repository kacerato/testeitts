package org.eclipse.jdt.internal.formatter;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.Annotation;
import org.eclipse.jdt.core.dom.AnnotationTypeDeclaration;
import org.eclipse.jdt.core.dom.AnnotationTypeMemberDeclaration;
import org.eclipse.jdt.core.dom.AnonymousClassDeclaration;
import org.eclipse.jdt.core.dom.ArrayAccess;
import org.eclipse.jdt.core.dom.ArrayCreation;
import org.eclipse.jdt.core.dom.ArrayInitializer;
import org.eclipse.jdt.core.dom.ArrayType;
import org.eclipse.jdt.core.dom.AssertStatement;
import org.eclipse.jdt.core.dom.Assignment;
import org.eclipse.jdt.core.dom.Block;
import org.eclipse.jdt.core.dom.BreakStatement;
import org.eclipse.jdt.core.dom.CastExpression;
import org.eclipse.jdt.core.dom.CatchClause;
import org.eclipse.jdt.core.dom.ClassInstanceCreation;
import org.eclipse.jdt.core.dom.ConditionalExpression;
import org.eclipse.jdt.core.dom.ConstructorInvocation;
import org.eclipse.jdt.core.dom.CreationReference;
import org.eclipse.jdt.core.dom.Dimension;
import org.eclipse.jdt.core.dom.DoStatement;
import org.eclipse.jdt.core.dom.EmptyStatement;
import org.eclipse.jdt.core.dom.EnhancedForStatement;
import org.eclipse.jdt.core.dom.EnumConstantDeclaration;
import org.eclipse.jdt.core.dom.EnumDeclaration;
import org.eclipse.jdt.core.dom.ExportsDirective;
import org.eclipse.jdt.core.dom.Expression;
import org.eclipse.jdt.core.dom.ExpressionMethodReference;
import org.eclipse.jdt.core.dom.ExpressionStatement;
import org.eclipse.jdt.core.dom.FieldDeclaration;
import org.eclipse.jdt.core.dom.ForStatement;
import org.eclipse.jdt.core.dom.IfStatement;
import org.eclipse.jdt.core.dom.ImportDeclaration;
import org.eclipse.jdt.core.dom.InfixExpression;
import org.eclipse.jdt.core.dom.InstanceofExpression;
import org.eclipse.jdt.core.dom.IntersectionType;
import org.eclipse.jdt.core.dom.LabeledStatement;
import org.eclipse.jdt.core.dom.LambdaExpression;
import org.eclipse.jdt.core.dom.MarkerAnnotation;
import org.eclipse.jdt.core.dom.MemberValuePair;
import org.eclipse.jdt.core.dom.MethodDeclaration;
import org.eclipse.jdt.core.dom.MethodInvocation;
import org.eclipse.jdt.core.dom.ModuleDeclaration;
import org.eclipse.jdt.core.dom.Name;
import org.eclipse.jdt.core.dom.NormalAnnotation;
import org.eclipse.jdt.core.dom.OpensDirective;
import org.eclipse.jdt.core.dom.PackageDeclaration;
import org.eclipse.jdt.core.dom.ParameterizedType;
import org.eclipse.jdt.core.dom.ParenthesizedExpression;
import org.eclipse.jdt.core.dom.PostfixExpression;
import org.eclipse.jdt.core.dom.PrefixExpression;
import org.eclipse.jdt.core.dom.ProvidesDirective;
import org.eclipse.jdt.core.dom.ReturnStatement;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.SingleMemberAnnotation;
import org.eclipse.jdt.core.dom.SingleVariableDeclaration;
import org.eclipse.jdt.core.dom.Statement;
import org.eclipse.jdt.core.dom.SuperConstructorInvocation;
import org.eclipse.jdt.core.dom.SuperMethodInvocation;
import org.eclipse.jdt.core.dom.SuperMethodReference;
import org.eclipse.jdt.core.dom.SwitchCase;
import org.eclipse.jdt.core.dom.SwitchExpression;
import org.eclipse.jdt.core.dom.SwitchStatement;
import org.eclipse.jdt.core.dom.SynchronizedStatement;
import org.eclipse.jdt.core.dom.ThrowStatement;
import org.eclipse.jdt.core.dom.TryStatement;
import org.eclipse.jdt.core.dom.Type;
import org.eclipse.jdt.core.dom.TypeDeclaration;
import org.eclipse.jdt.core.dom.TypeMethodReference;
import org.eclipse.jdt.core.dom.TypeParameter;
import org.eclipse.jdt.core.dom.UnionType;
import org.eclipse.jdt.core.dom.VariableDeclarationExpression;
import org.eclipse.jdt.core.dom.VariableDeclarationFragment;
import org.eclipse.jdt.core.dom.VariableDeclarationStatement;
import org.eclipse.jdt.core.dom.WhileStatement;
import org.eclipse.jdt.core.dom.WildcardType;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;

public class SpacePreparator extends ASTVisitor {
    private static final Map<InfixExpression.Operator, Predicate<DefaultCodeFormatterOptions>> SPACE_AFTER_OPERATOR;
    private static final Map<InfixExpression.Operator, Predicate<DefaultCodeFormatterOptions>> SPACE_BEFORE_OPERATOR;
    private DefaultCodeFormatterOptions options;

    TokenManager f102601tm;

    static {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        for (InfixExpression.Operator operator : Arrays.asList(InfixExpression.Operator.TIMES, InfixExpression.Operator.DIVIDE, InfixExpression.Operator.REMAINDER)) {
            hashMap.put(operator, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean z10;
                    z10 = ((DefaultCodeFormatterOptions) obj).insert_space_before_multiplicative_operator;
                    return z10;
                }
            });
            hashMap2.put(operator, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean z10;
                    z10 = ((DefaultCodeFormatterOptions) obj).insert_space_after_multiplicative_operator;
                    return z10;
                }
            });
        }
        for (InfixExpression.Operator operator2 : Arrays.asList(InfixExpression.Operator.PLUS, InfixExpression.Operator.MINUS)) {
            hashMap.put(operator2, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean z10;
                    z10 = ((DefaultCodeFormatterOptions) obj).insert_space_before_additive_operator;
                    return z10;
                }
            });
            hashMap2.put(operator2, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean z10;
                    z10 = ((DefaultCodeFormatterOptions) obj).insert_space_after_additive_operator;
                    return z10;
                }
            });
        }
        for (InfixExpression.Operator operator3 : Arrays.asList(InfixExpression.Operator.LEFT_SHIFT, InfixExpression.Operator.RIGHT_SHIFT_SIGNED, InfixExpression.Operator.RIGHT_SHIFT_UNSIGNED)) {
            hashMap.put(operator3, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean z10;
                    z10 = ((DefaultCodeFormatterOptions) obj).insert_space_before_shift_operator;
                    return z10;
                }
            });
            hashMap2.put(operator3, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean z10;
                    z10 = ((DefaultCodeFormatterOptions) obj).insert_space_after_shift_operator;
                    return z10;
                }
            });
        }
        for (InfixExpression.Operator operator4 : Arrays.asList(InfixExpression.Operator.LESS, InfixExpression.Operator.GREATER, InfixExpression.Operator.LESS_EQUALS, InfixExpression.Operator.GREATER_EQUALS, InfixExpression.Operator.EQUALS, InfixExpression.Operator.NOT_EQUALS)) {
            hashMap.put(operator4, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean z10;
                    z10 = ((DefaultCodeFormatterOptions) obj).insert_space_before_relational_operator;
                    return z10;
                }
            });
            hashMap2.put(operator4, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean z10;
                    z10 = ((DefaultCodeFormatterOptions) obj).insert_space_after_relational_operator;
                    return z10;
                }
            });
        }
        for (InfixExpression.Operator operator5 : Arrays.asList(InfixExpression.Operator.AND, InfixExpression.Operator.XOR, InfixExpression.Operator.OR)) {
            hashMap.put(operator5, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean z10;
                    z10 = ((DefaultCodeFormatterOptions) obj).insert_space_before_bitwise_operator;
                    return z10;
                }
            });
            hashMap2.put(operator5, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean z10;
                    z10 = ((DefaultCodeFormatterOptions) obj).insert_space_after_bitwise_operator;
                    return z10;
                }
            });
        }
        for (InfixExpression.Operator operator6 : Arrays.asList(InfixExpression.Operator.CONDITIONAL_AND, InfixExpression.Operator.CONDITIONAL_OR)) {
            hashMap.put(operator6, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean z10;
                    z10 = ((DefaultCodeFormatterOptions) obj).insert_space_before_logical_operator;
                    return z10;
                }
            });
            hashMap2.put(operator6, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean z10;
                    z10 = ((DefaultCodeFormatterOptions) obj).insert_space_after_logical_operator;
                    return z10;
                }
            });
        }
        SPACE_BEFORE_OPERATOR = Collections.unmodifiableMap(hashMap);
        SPACE_AFTER_OPERATOR = Collections.unmodifiableMap(hashMap2);
    }

    public SpacePreparator(TokenManager tokenManager, DefaultCodeFormatterOptions defaultCodeFormatterOptions) {
        this.f102601tm = tokenManager;
        this.options = defaultCodeFormatterOptions;
    }

    private void handleAnnotation(Annotation annotation, boolean z10) {
        handleToken(annotation, 37, false, this.options.insert_space_after_at_in_annotation);
        if (z10) {
            DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
            handleToken(annotation, 23, defaultCodeFormatterOptions.insert_space_before_opening_paren_in_annotation, defaultCodeFormatterOptions.insert_space_after_opening_paren_in_annotation);
            if (this.options.insert_space_before_closing_paren_in_annotation) {
                this.f102601tm.lastTokenIn(annotation, 25).spaceBefore();
            }
        }
        ASTNode parent = annotation.getParent();
        if ((parent instanceof Annotation) || (parent instanceof MemberValuePair)) {
            return;
        }
        if (((parent instanceof AnnotationTypeMemberDeclaration) && ((AnnotationTypeMemberDeclaration) parent).getDefault() == annotation) || (parent instanceof ArrayInitializer)) {
            return;
        }
        this.f102601tm.lastTokenIn(annotation, -1).spaceAfter();
    }

    private void handleCommas(List<? extends ASTNode> list, boolean z10, boolean z11) {
        if (z10 || z11) {
            for (int i10 = 1; i10 < list.size(); i10++) {
                handleTokenBefore(list.get(i10), 32, z10, z11);
            }
        }
    }

    private boolean handleEmptyBrackets(ASTNode aSTNode, boolean z10) {
        int firstIndexIn = this.f102601tm.firstIndexIn(aSTNode, 6);
        if (this.f102601tm.get(firstIndexIn + 1).tokenType != 66) {
            return false;
        }
        if (!z10) {
            return true;
        }
        this.f102601tm.get(firstIndexIn).spaceAfter();
        return true;
    }

    private boolean handleEmptyParens(ASTNode aSTNode, boolean z10) {
        int findIndex = this.f102601tm.findIndex(aSTNode.getStartPosition(), 23, true);
        if (this.f102601tm.get(findIndex + 1).tokenType != 25) {
            return false;
        }
        if (z10) {
            this.f102601tm.get(findIndex).spaceAfter();
        }
        return true;
    }

    private void handleInvocation(ASTNode aSTNode, ASTNode aSTNode2) {
        handleInvocation(aSTNode, aSTNode2, null);
    }

    private void handleLoopBody(Statement statement) {
        int firstIndexIn = this.f102601tm.firstIndexIn(statement, -1);
        if ((statement instanceof Block) || (statement instanceof EmptyStatement) || this.f102601tm.get(firstIndexIn - 1).isComment()) {
            return;
        }
        this.f102601tm.get(firstIndexIn).spaceBefore();
    }

    private void handleModuleStatementCommas(List<Name> list) {
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleCommas(list, defaultCodeFormatterOptions.insert_space_before_comma_in_multiple_field_declarations, defaultCodeFormatterOptions.insert_space_after_comma_in_multiple_field_declarations);
    }

    private void handleOperator(String str, ASTNode aSTNode, boolean z10, boolean z11) {
        if (z10 || z11) {
            int firstIndexBefore = this.f102601tm.firstIndexBefore(aSTNode, -1);
            while (!str.equals(this.f102601tm.toString(firstIndexBefore))) {
                firstIndexBefore--;
            }
            handleToken(this.f102601tm.get(firstIndexBefore), z10, z11);
        }
    }

    private void handleSemicolon(ASTNode aSTNode) {
        if (this.options.insert_space_before_semicolon) {
            Token lastTokenIn = this.f102601tm.lastTokenIn(aSTNode, -1);
            if (lastTokenIn.tokenType == 26) {
                lastTokenIn.spaceBefore();
            }
        }
    }

    private void handleToken(ASTNode aSTNode, int i10, boolean z10, boolean z11) {
        if (z10 || z11) {
            TokenManager tokenManager = this.f102601tm;
            handleToken(tokenManager.get(tokenManager.findIndex(aSTNode.getStartPosition(), i10, true)), z10, z11);
        }
    }

    private void handleTokenAfter(ASTNode aSTNode, int i10, boolean z10, boolean z11) {
        if (i10 == 15) {
            int lastIndexIn = this.f102601tm.lastIndexIn(aSTNode, -1);
            int i11 = lastIndexIn;
            while (true) {
                int i12 = 2;
                if (i11 >= lastIndexIn + 2) {
                    break;
                }
                Token token = this.f102601tm.get(i11);
                int i13 = token.tokenType;
                if (i13 == 14 || i13 == 16) {
                    this.f102601tm.remove(i11);
                    int i14 = 0;
                    while (true) {
                        if (i14 >= (token.tokenType == 14 ? i12 : 3)) {
                            break;
                        }
                        int i15 = token.originalStart;
                        this.f102601tm.insert(i11 + i14, new Token(i15 + i14, i15 + i14, 15));
                        i14++;
                        i12 = 2;
                    }
                }
                i11++;
            }
        }
        if (z10 || z11) {
            handleToken(this.f102601tm.firstTokenAfter(aSTNode, i10), z10, z11);
        }
    }

    private void handleTokenBefore(ASTNode aSTNode, int i10, boolean z10, boolean z11) {
        if (z10 || z11) {
            handleToken(this.f102601tm.firstTokenBefore(aSTNode, i10), z10, z11);
        }
    }

    private void handleTypeArguments(List<Type> list) {
        if (list.isEmpty()) {
            return;
        }
        Type type = list.get(0);
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleTokenBefore(type, 11, defaultCodeFormatterOptions.insert_space_before_opening_angle_bracket_in_type_arguments, defaultCodeFormatterOptions.insert_space_after_opening_angle_bracket_in_type_arguments);
        Type type2 = list.get(list.size() - 1);
        DefaultCodeFormatterOptions defaultCodeFormatterOptions2 = this.options;
        handleTokenAfter(type2, 15, defaultCodeFormatterOptions2.insert_space_before_closing_angle_bracket_in_type_arguments, defaultCodeFormatterOptions2.insert_space_after_closing_angle_bracket_in_type_arguments);
        DefaultCodeFormatterOptions defaultCodeFormatterOptions3 = this.options;
        handleCommas(list, defaultCodeFormatterOptions3.insert_space_before_comma_in_type_arguments, defaultCodeFormatterOptions3.insert_space_after_comma_in_type_arguments);
    }

    private void handleTypeParameters(List<TypeParameter> list) {
        if (list.isEmpty()) {
            return;
        }
        TypeParameter typeParameter = list.get(0);
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleTokenBefore(typeParameter, 11, defaultCodeFormatterOptions.insert_space_before_opening_angle_bracket_in_type_parameters, defaultCodeFormatterOptions.insert_space_after_opening_angle_bracket_in_type_parameters);
        TypeParameter typeParameter2 = list.get(list.size() - 1);
        DefaultCodeFormatterOptions defaultCodeFormatterOptions2 = this.options;
        handleTokenAfter(typeParameter2, 15, defaultCodeFormatterOptions2.insert_space_before_closing_angle_bracket_in_type_parameters, defaultCodeFormatterOptions2.insert_space_after_closing_angle_bracket_in_type_parameters);
        DefaultCodeFormatterOptions defaultCodeFormatterOptions3 = this.options;
        handleCommas(list, defaultCodeFormatterOptions3.insert_space_before_comma_in_type_parameters, defaultCodeFormatterOptions3.insert_space_after_comma_in_type_parameters);
    }

    @Override
    public void endVisit(SingleVariableDeclaration singleVariableDeclaration) {
        if (!singleVariableDeclaration.isVarargs()) {
            handleToken(singleVariableDeclaration.getName(), 22, true, false);
            return;
        }
        SimpleName name = singleVariableDeclaration.getName();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleTokenBefore(name, 122, defaultCodeFormatterOptions.insert_space_before_ellipsis, defaultCodeFormatterOptions.insert_space_after_ellipsis);
        List varargsAnnotations = singleVariableDeclaration.varargsAnnotations();
        if (varargsAnnotations.isEmpty()) {
            return;
        }
        this.f102601tm.firstTokenIn((ASTNode) varargsAnnotations.get(0), 37).spaceBefore();
        this.f102601tm.lastTokenIn((ASTNode) varargsAnnotations.get(varargsAnnotations.size() - 1), -1).clearSpaceAfter();
    }

    public void finishUp() {
        this.f102601tm.traverse(0, new TokenTraverser() {
            boolean isPreviousJIDP = false;

            @Override
            public boolean token(Token token, int i10) {
                char charAt = SpacePreparator.this.f102601tm.charAt(token.originalStart);
                boolean isJavaIdentifierPart = ScannerHelper.isJavaIdentifierPart(charAt);
                if ((isJavaIdentifierPart || charAt == '@') && this.isPreviousJIDP) {
                    getPrevious().spaceAfter();
                }
                this.isPreviousJIDP = isJavaIdentifierPart;
                int i11 = token.tokenType;
                if (i11 == 4) {
                    if (getNext().tokenType != 4 && getNext().tokenType != 2) {
                        return true;
                    }
                    token.spaceAfter();
                    return true;
                }
                if (i11 != 5) {
                    return true;
                }
                if (getNext().tokenType != 5 && getNext().tokenType != 3) {
                    return true;
                }
                token.spaceAfter();
                return true;
            }
        });
    }

    @Override
    public boolean preVisit2(ASTNode aSTNode) {
        return !((aSTNode.getFlags() & 1) != 0);
    }

    @Override
    public boolean visit(PackageDeclaration packageDeclaration) {
        handleSemicolon(packageDeclaration);
        return true;
    }

    private void handleInvocation(ASTNode aSTNode, ASTNode aSTNode2, ASTNode aSTNode3) {
        Token firstTokenBefore;
        if (handleEmptyParens(aSTNode2, this.options.insert_space_between_empty_parens_in_method_invocation)) {
            handleToken(aSTNode2, 23, this.options.insert_space_before_opening_paren_in_method_invocation, false);
            return;
        }
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleToken(aSTNode2, 23, defaultCodeFormatterOptions.insert_space_before_opening_paren_in_method_invocation, defaultCodeFormatterOptions.insert_space_after_opening_paren_in_method_invocation);
        if (this.options.insert_space_before_closing_paren_in_method_invocation) {
            if (aSTNode3 == null) {
                firstTokenBefore = this.f102601tm.lastTokenIn(aSTNode, 25);
            } else {
                firstTokenBefore = this.f102601tm.firstTokenBefore(aSTNode3, 25);
            }
            firstTokenBefore.spaceBefore();
        }
    }

    @Override
    public boolean visit(ImportDeclaration importDeclaration) {
        handleSemicolon(importDeclaration);
        return true;
    }

    private void handleToken(Token token, boolean z10, boolean z11) {
        if (z10) {
            token.spaceBefore();
        }
        if (z11) {
            token.spaceAfter();
        }
    }

    @Override
    public boolean visit(TypeDeclaration typeDeclaration) {
        if (typeDeclaration.getName().getStartPosition() == -1) {
            return true;
        }
        handleToken(typeDeclaration.getName(), 22, true, false);
        handleTypeParameters(typeDeclaration.typeParameters());
        if (!typeDeclaration.isInterface() && !typeDeclaration.superInterfaceTypes().isEmpty()) {
            handleToken(typeDeclaration.getName(), 123, true, false);
        }
        handleToken(typeDeclaration.getName(), 49, this.options.insert_space_before_opening_brace_in_type_declaration, false);
        List superInterfaceTypes = typeDeclaration.superInterfaceTypes();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleCommas(superInterfaceTypes, defaultCodeFormatterOptions.insert_space_before_comma_in_superinterfaces, defaultCodeFormatterOptions.insert_space_after_comma_in_superinterfaces);
        return true;
    }

    private void handleSemicolon(List<ASTNode> list) {
        if (this.options.insert_space_before_semicolon) {
            Iterator<ASTNode> it = list.iterator();
            while (it.hasNext()) {
                handleSemicolon(it.next());
            }
        }
    }

    @Override
    public boolean visit(EnumDeclaration enumDeclaration) {
        handleToken(enumDeclaration.getName(), 49, this.options.insert_space_before_opening_brace_in_enum_declaration, false);
        List superInterfaceTypes = enumDeclaration.superInterfaceTypes();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleCommas(superInterfaceTypes, defaultCodeFormatterOptions.insert_space_before_comma_in_superinterfaces, defaultCodeFormatterOptions.insert_space_after_comma_in_superinterfaces);
        List enumConstants = enumDeclaration.enumConstants();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions2 = this.options;
        handleCommas(enumConstants, defaultCodeFormatterOptions2.insert_space_before_comma_in_enum_declarations, defaultCodeFormatterOptions2.insert_space_after_comma_in_enum_declarations);
        return true;
    }

    @Override
    public boolean visit(EnumConstantDeclaration enumConstantDeclaration) {
        int lastIndexIn;
        Token token;
        List arguments = enumConstantDeclaration.arguments();
        if (!arguments.isEmpty()) {
            token = this.f102601tm.firstTokenIn(enumConstantDeclaration, 23);
            if (this.options.insert_space_after_opening_paren_in_enum_constant) {
                token.spaceAfter();
            }
            handleTokenAfter(arguments.get(arguments.size() - 1), 25, this.options.insert_space_before_closing_paren_in_enum_constant, false);
        } else {
            int firstIndexIn = this.f102601tm.firstIndexIn(enumConstantDeclaration.getName(), 22) + 1;
            AnonymousClassDeclaration anonymousClassDeclaration = enumConstantDeclaration.getAnonymousClassDeclaration();
            if (anonymousClassDeclaration != null) {
                lastIndexIn = this.f102601tm.firstIndexBefore(anonymousClassDeclaration, -1);
            } else {
                lastIndexIn = this.f102601tm.lastIndexIn(enumConstantDeclaration, -1);
            }
            while (true) {
                if (firstIndexIn > lastIndexIn) {
                    token = null;
                    break;
                }
                if (this.f102601tm.get(firstIndexIn).tokenType == 23) {
                    token = this.f102601tm.get(firstIndexIn);
                    if (this.options.insert_space_between_empty_parens_in_enum_constant) {
                        token.spaceAfter();
                    }
                } else {
                    firstIndexIn++;
                }
            }
        }
        if (token != null && this.options.insert_space_before_opening_paren_in_enum_constant) {
            token.spaceBefore();
        }
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleCommas(arguments, defaultCodeFormatterOptions.insert_space_before_comma_in_enum_constant_arguments, defaultCodeFormatterOptions.insert_space_after_comma_in_enum_constant_arguments);
        return true;
    }

    @Override
    public boolean visit(AnonymousClassDeclaration anonymousClassDeclaration) {
        boolean z10 = this.options.insert_space_before_opening_brace_in_anonymous_type_declaration;
        if (anonymousClassDeclaration.getParent() instanceof EnumConstantDeclaration) {
            z10 = this.options.insert_space_before_opening_brace_in_enum_constant;
        }
        handleToken(anonymousClassDeclaration, 49, z10, false);
        return true;
    }

    @Override
    public boolean visit(MethodDeclaration methodDeclaration) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        boolean z17;
        handleToken(methodDeclaration.getName(), 22, true, false);
        if (methodDeclaration.isConstructor()) {
            z10 = this.options.insert_space_before_opening_paren_in_constructor_declaration;
        } else {
            z10 = this.options.insert_space_before_opening_paren_in_method_declaration;
        }
        if (methodDeclaration.isConstructor()) {
            z11 = this.options.insert_space_after_opening_paren_in_constructor_declaration;
        } else {
            z11 = this.options.insert_space_after_opening_paren_in_method_declaration;
        }
        if (methodDeclaration.isConstructor()) {
            z12 = this.options.insert_space_between_empty_parens_in_constructor_declaration;
        } else {
            z12 = this.options.insert_space_between_empty_parens_in_method_declaration;
        }
        if (handleEmptyParens(methodDeclaration.getName(), z12)) {
            handleToken(methodDeclaration.getName(), 23, z10, false);
        } else {
            handleToken(methodDeclaration.getName(), 23, z10, z11);
            if (methodDeclaration.isConstructor()) {
                z13 = this.options.insert_space_before_closing_paren_in_constructor_declaration;
            } else {
                z13 = this.options.insert_space_before_closing_paren_in_method_declaration;
            }
            if (z13) {
                List parameters = methodDeclaration.parameters();
                handleTokenAfter(parameters.isEmpty() ? methodDeclaration.getName() : (ASTNode) parameters.get(parameters.size() - 1), 25, true, false);
            }
        }
        if (!methodDeclaration.isConstructor() ? this.options.insert_space_before_opening_brace_in_method_declaration : this.options.insert_space_before_opening_brace_in_constructor_declaration) {
            if (methodDeclaration.getBody() != null) {
                this.f102601tm.firstTokenIn(methodDeclaration.getBody(), 49).spaceBefore();
            }
        }
        if (methodDeclaration.getReceiverType() != null) {
            this.f102601tm.lastTokenIn(methodDeclaration.getReceiverType(), -1).spaceAfter();
        }
        if (methodDeclaration.isConstructor()) {
            z14 = this.options.insert_space_before_comma_in_constructor_declaration_parameters;
        } else {
            z14 = this.options.insert_space_before_comma_in_method_declaration_parameters;
        }
        if (methodDeclaration.isConstructor()) {
            z15 = this.options.insert_space_after_comma_in_constructor_declaration_parameters;
        } else {
            z15 = this.options.insert_space_after_comma_in_method_declaration_parameters;
        }
        List parameters2 = methodDeclaration.parameters();
        if (methodDeclaration.getReceiverType() != null) {
            ArrayList arrayList = new ArrayList(parameters2);
            arrayList.add(0, null);
            parameters2 = arrayList;
        }
        handleCommas(parameters2, z14, z15);
        List thrownExceptionTypes = methodDeclaration.thrownExceptionTypes();
        if (!thrownExceptionTypes.isEmpty()) {
            this.f102601tm.firstTokenBefore((ASTNode) thrownExceptionTypes.get(0), 120).spaceBefore();
            if (methodDeclaration.isConstructor()) {
                z16 = this.options.insert_space_before_comma_in_constructor_declaration_throws;
            } else {
                z16 = this.options.insert_space_before_comma_in_method_declaration_throws;
            }
            if (methodDeclaration.isConstructor()) {
                z17 = this.options.insert_space_after_comma_in_constructor_declaration_throws;
            } else {
                z17 = this.options.insert_space_after_comma_in_method_declaration_throws;
            }
            handleCommas(thrownExceptionTypes, z16, z17);
        }
        List typeParameters = methodDeclaration.typeParameters();
        if (!typeParameters.isEmpty()) {
            handleTypeParameters(typeParameters);
            handleTokenBefore(typeParameters.get(0), 11, true, false);
            handleTokenAfter(typeParameters.get(typeParameters.size() - 1), 15, false, true);
        }
        handleSemicolon(methodDeclaration);
        return true;
    }

    @Override
    public boolean visit(FieldDeclaration fieldDeclaration) {
        handleToken((ASTNode) fieldDeclaration.fragments().get(0), 22, true, false);
        List fragments = fieldDeclaration.fragments();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleCommas(fragments, defaultCodeFormatterOptions.insert_space_before_comma_in_multiple_field_declarations, defaultCodeFormatterOptions.insert_space_after_comma_in_multiple_field_declarations);
        handleSemicolon(fieldDeclaration);
        return true;
    }

    @Override
    public boolean visit(VariableDeclarationStatement variableDeclarationStatement) {
        handleToken((ASTNode) variableDeclarationStatement.fragments().get(0), 22, true, false);
        List fragments = variableDeclarationStatement.fragments();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleCommas(fragments, defaultCodeFormatterOptions.insert_space_before_comma_in_multiple_local_declarations, defaultCodeFormatterOptions.insert_space_after_comma_in_multiple_local_declarations);
        return true;
    }

    @Override
    public boolean visit(VariableDeclarationFragment variableDeclarationFragment) {
        if (variableDeclarationFragment.getInitializer() == null) {
            return true;
        }
        SimpleName name = variableDeclarationFragment.getName();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleToken(name, 72, defaultCodeFormatterOptions.insert_space_before_assignment_operator, defaultCodeFormatterOptions.insert_space_after_assignment_operator);
        return true;
    }

    @Override
    public boolean visit(SwitchStatement switchStatement) {
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleToken(switchStatement, 23, defaultCodeFormatterOptions.insert_space_before_opening_paren_in_switch, defaultCodeFormatterOptions.insert_space_after_opening_paren_in_switch);
        handleTokenAfter(switchStatement.getExpression(), 25, this.options.insert_space_before_closing_paren_in_switch, false);
        handleTokenAfter(switchStatement.getExpression(), 49, this.options.insert_space_before_opening_brace_in_switch, false);
        handleSemicolon((List<ASTNode>) switchStatement.statements());
        return true;
    }

    @Override
    public boolean visit(SwitchExpression switchExpression) {
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleToken(switchExpression, 23, defaultCodeFormatterOptions.insert_space_before_opening_paren_in_switch, defaultCodeFormatterOptions.insert_space_after_opening_paren_in_switch);
        handleTokenAfter(switchExpression.getExpression(), 25, this.options.insert_space_before_closing_paren_in_switch, false);
        handleTokenAfter(switchExpression.getExpression(), 49, this.options.insert_space_before_opening_brace_in_switch, false);
        handleSemicolon((List<ASTNode>) switchExpression.statements());
        return true;
    }

    @Override
    public boolean visit(SwitchCase switchCase) {
        if (switchCase.isSwitchLabeledRule()) {
            handleToken(this.f102601tm.lastTokenIn(switchCase, 98), switchCase.isDefault() ? this.options.insert_space_before_arrow_in_switch_default : this.options.insert_space_before_arrow_in_switch_case, switchCase.isDefault() ? this.options.insert_space_after_arrow_in_switch_default : this.options.insert_space_after_arrow_in_switch_case);
        } else {
            handleToken(this.f102601tm.lastTokenIn(switchCase, 62), switchCase.isDefault() ? this.options.insert_space_before_colon_in_default : this.options.insert_space_before_colon_in_case, false);
        }
        if (!switchCase.isDefault()) {
            handleToken(switchCase, 101, false, true);
            List expressions = switchCase.expressions();
            DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
            handleCommas(expressions, defaultCodeFormatterOptions.insert_space_before_comma_in_switch_case_expressions, defaultCodeFormatterOptions.insert_space_after_comma_in_switch_case_expressions);
        }
        return true;
    }

    @Override
    public boolean visit(BreakStatement breakStatement) {
        if (breakStatement.getExpression() == null || breakStatement.isImplicit()) {
            return true;
        }
        this.f102601tm.firstTokenIn(breakStatement, 77).spaceAfter();
        return true;
    }

    @Override
    public boolean visit(DoStatement doStatement) {
        Expression expression = doStatement.getExpression();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleTokenBefore(expression, 23, defaultCodeFormatterOptions.insert_space_before_opening_paren_in_while, defaultCodeFormatterOptions.insert_space_after_opening_paren_in_while);
        handleTokenBefore(doStatement.getExpression(), 75, !(doStatement.getBody() instanceof Block) || this.options.insert_space_after_closing_brace_in_block, false);
        handleTokenAfter(doStatement.getExpression(), 25, this.options.insert_space_before_closing_paren_in_while, false);
        return true;
    }

    @Override
    public boolean visit(WhileStatement whileStatement) {
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleToken(whileStatement, 23, defaultCodeFormatterOptions.insert_space_before_opening_paren_in_while, defaultCodeFormatterOptions.insert_space_after_opening_paren_in_while);
        handleTokenBefore(whileStatement.getBody(), 25, this.options.insert_space_before_closing_paren_in_while, false);
        handleLoopBody(whileStatement.getBody());
        return true;
    }

    @Override
    public boolean visit(SynchronizedStatement synchronizedStatement) {
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleToken(synchronizedStatement, 23, defaultCodeFormatterOptions.insert_space_before_opening_paren_in_synchronized, defaultCodeFormatterOptions.insert_space_after_opening_paren_in_synchronized);
        handleTokenBefore(synchronizedStatement.getBody(), 25, this.options.insert_space_before_closing_paren_in_synchronized, false);
        return true;
    }

    @Override
    public boolean visit(TryStatement tryStatement) {
        List resources = tryStatement.resources();
        if (!resources.isEmpty()) {
            DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
            handleToken(tryStatement, 23, defaultCodeFormatterOptions.insert_space_before_opening_paren_in_try, defaultCodeFormatterOptions.insert_space_after_opening_paren_in_try);
            handleTokenBefore(tryStatement.getBody(), 25, this.options.insert_space_before_closing_paren_in_try, false);
            for (int i10 = 1; i10 < resources.size(); i10++) {
                ASTNode aSTNode = (ASTNode) resources.get(i10);
                DefaultCodeFormatterOptions defaultCodeFormatterOptions2 = this.options;
                handleTokenBefore(aSTNode, 26, defaultCodeFormatterOptions2.insert_space_before_semicolon_in_try_resources, defaultCodeFormatterOptions2.insert_space_after_semicolon_in_try_resources);
            }
            int firstIndexAfter = this.f102601tm.firstIndexAfter((ASTNode) resources.get(resources.size() - 1), -1);
            while (firstIndexAfter < this.f102601tm.size()) {
                int i11 = firstIndexAfter + 1;
                Token token = this.f102601tm.get(firstIndexAfter);
                int i12 = token.tokenType;
                if (i12 != 26) {
                    if (i12 == 25) {
                        break;
                    }
                } else {
                    handleToken(token, this.options.insert_space_before_semicolon_in_try_resources, false);
                }
                firstIndexAfter = i11;
            }
        }
        return true;
    }

    @Override
    public boolean visit(CatchClause catchClause) {
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleToken(catchClause, 23, defaultCodeFormatterOptions.insert_space_before_opening_paren_in_catch, defaultCodeFormatterOptions.insert_space_after_opening_paren_in_catch);
        handleTokenBefore(catchClause.getBody(), 25, this.options.insert_space_before_closing_paren_in_catch, false);
        return true;
    }

    @Override
    public boolean visit(AssertStatement assertStatement) {
        this.f102601tm.firstTokenIn(assertStatement, 76).spaceAfter();
        if (assertStatement.getMessage() == null) {
            return true;
        }
        Expression message = assertStatement.getMessage();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleTokenBefore(message, 62, defaultCodeFormatterOptions.insert_space_before_colon_in_assert, defaultCodeFormatterOptions.insert_space_after_colon_in_assert);
        return true;
    }

    @Override
    public boolean visit(ReturnStatement returnStatement) {
        if (returnStatement.getExpression() == null) {
            return true;
        }
        int firstIndexIn = this.f102601tm.firstIndexIn(returnStatement, 82);
        if ((returnStatement.getExpression() instanceof ParenthesizedExpression) && !this.options.insert_space_before_parenthesized_expression_in_return) {
            return true;
        }
        this.f102601tm.get(firstIndexIn).spaceAfter();
        return true;
    }

    @Override
    public boolean visit(ThrowStatement throwStatement) {
        int firstIndexIn = this.f102601tm.firstIndexIn(throwStatement, 74);
        if (this.f102601tm.get(firstIndexIn + 1).tokenType == 23 && !this.options.insert_space_before_parenthesized_expression_in_throw) {
            return true;
        }
        this.f102601tm.get(firstIndexIn).spaceAfter();
        return true;
    }

    @Override
    public boolean visit(LabeledStatement labeledStatement) {
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleToken(labeledStatement, 62, defaultCodeFormatterOptions.insert_space_before_colon_in_labeled_statement, defaultCodeFormatterOptions.insert_space_after_colon_in_labeled_statement);
        return true;
    }

    @Override
    public boolean visit(AnnotationTypeDeclaration annotationTypeDeclaration) {
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleToken(annotationTypeDeclaration, 37, defaultCodeFormatterOptions.insert_space_before_at_in_annotation_type_declaration, defaultCodeFormatterOptions.insert_space_after_at_in_annotation_type_declaration);
        handleToken(annotationTypeDeclaration.getName(), 49, this.options.insert_space_before_opening_brace_in_annotation_type_declaration, false);
        return true;
    }

    @Override
    public boolean visit(AnnotationTypeMemberDeclaration annotationTypeMemberDeclaration) {
        handleToken(annotationTypeMemberDeclaration.getName(), 22, true, false);
        handleToken(annotationTypeMemberDeclaration.getName(), 23, this.options.insert_space_before_opening_paren_in_annotation_type_member_declaration, false);
        handleEmptyParens(annotationTypeMemberDeclaration.getName(), this.options.insert_space_between_empty_parens_in_annotation_type_member_declaration);
        if (annotationTypeMemberDeclaration.getDefault() != null) {
            handleTokenBefore(annotationTypeMemberDeclaration.getDefault(), 73, true, true);
        }
        return true;
    }

    @Override
    public boolean visit(NormalAnnotation normalAnnotation) {
        handleAnnotation(normalAnnotation, true);
        List values = normalAnnotation.values();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleCommas(values, defaultCodeFormatterOptions.insert_space_before_comma_in_annotation, defaultCodeFormatterOptions.insert_space_after_comma_in_annotation);
        return true;
    }

    @Override
    public boolean visit(MemberValuePair memberValuePair) {
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleToken(memberValuePair, 72, defaultCodeFormatterOptions.insert_space_before_assignment_operator, defaultCodeFormatterOptions.insert_space_after_assignment_operator);
        return true;
    }

    @Override
    public boolean visit(SingleMemberAnnotation singleMemberAnnotation) {
        handleAnnotation(singleMemberAnnotation, true);
        return true;
    }

    @Override
    public boolean visit(MarkerAnnotation markerAnnotation) {
        handleAnnotation(markerAnnotation, false);
        return true;
    }

    @Override
    public boolean visit(LambdaExpression lambdaExpression) {
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleToken(lambdaExpression, 98, defaultCodeFormatterOptions.insert_space_before_lambda_arrow, defaultCodeFormatterOptions.insert_space_after_lambda_arrow);
        List parameters = lambdaExpression.parameters();
        if (!lambdaExpression.hasParentheses()) {
            return true;
        }
        if (handleEmptyParens(lambdaExpression, this.options.insert_space_between_empty_parens_in_method_declaration)) {
            handleToken(lambdaExpression, 23, this.options.insert_space_before_opening_paren_in_method_declaration, false);
        } else {
            DefaultCodeFormatterOptions defaultCodeFormatterOptions2 = this.options;
            handleToken(lambdaExpression, 23, defaultCodeFormatterOptions2.insert_space_before_opening_paren_in_method_declaration, defaultCodeFormatterOptions2.insert_space_after_opening_paren_in_method_declaration);
            handleTokenBefore(lambdaExpression.getBody(), 25, this.options.insert_space_before_closing_paren_in_method_declaration, false);
        }
        DefaultCodeFormatterOptions defaultCodeFormatterOptions3 = this.options;
        handleCommas(parameters, defaultCodeFormatterOptions3.insert_space_before_comma_in_method_declaration_parameters, defaultCodeFormatterOptions3.insert_space_after_comma_in_method_declaration_parameters);
        return true;
    }

    @Override
    public boolean visit(Block block) {
        handleSemicolon((List<ASTNode>) block.statements());
        ASTNode parent = block.getParent();
        if (parent.getLength() == 0 || (parent instanceof MethodDeclaration)) {
            return true;
        }
        handleToken(block, 49, this.options.insert_space_before_opening_brace_in_block, false);
        if (this.options.insert_space_after_closing_brace_in_block && ((parent instanceof Statement) || (parent instanceof CatchClause))) {
            this.f102601tm.get(this.f102601tm.lastIndexIn(block, 33)).spaceAfter();
        }
        return true;
    }

    @Override
    public boolean visit(IfStatement ifStatement) {
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleToken(ifStatement, 23, defaultCodeFormatterOptions.insert_space_before_opening_paren_in_if, defaultCodeFormatterOptions.insert_space_after_opening_paren_in_if);
        Statement thenStatement = ifStatement.getThenStatement();
        handleTokenBefore(thenStatement, 25, this.options.insert_space_before_closing_paren_in_if, false);
        handleLoopBody(thenStatement);
        handleSemicolon(thenStatement);
        return true;
    }

    @Override
    public boolean visit(ForStatement forStatement) {
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleToken(forStatement, 23, defaultCodeFormatterOptions.insert_space_before_opening_paren_in_for, defaultCodeFormatterOptions.insert_space_after_opening_paren_in_for);
        boolean z10 = false;
        handleTokenBefore(forStatement.getBody(), 25, this.options.insert_space_before_closing_paren_in_for, false);
        List initializers = forStatement.initializers();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions2 = this.options;
        handleCommas(initializers, defaultCodeFormatterOptions2.insert_space_before_comma_in_for_inits, defaultCodeFormatterOptions2.insert_space_after_comma_in_for_inits);
        List updaters = forStatement.updaters();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions3 = this.options;
        handleCommas(updaters, defaultCodeFormatterOptions3.insert_space_before_comma_in_for_increments, defaultCodeFormatterOptions3.insert_space_after_comma_in_for_increments);
        boolean isEmpty = forStatement.initializers().isEmpty();
        boolean z11 = forStatement.getExpression() == null;
        boolean isEmpty2 = forStatement.updaters().isEmpty();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions4 = this.options;
        handleToken(forStatement, 26, defaultCodeFormatterOptions4.insert_space_before_semicolon_in_for && !isEmpty, defaultCodeFormatterOptions4.insert_space_after_semicolon_in_for && !z11);
        Statement body = forStatement.getBody();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions5 = this.options;
        boolean z12 = defaultCodeFormatterOptions5.insert_space_before_semicolon_in_for && !z11;
        if (defaultCodeFormatterOptions5.insert_space_after_semicolon_in_for && !isEmpty2) {
            z10 = true;
        }
        handleTokenBefore(body, 26, z12, z10);
        handleLoopBody(forStatement.getBody());
        return true;
    }

    @Override
    public boolean visit(VariableDeclarationExpression variableDeclarationExpression) {
        ASTNode parent = variableDeclarationExpression.getParent();
        if (parent instanceof ForStatement) {
            List fragments = variableDeclarationExpression.fragments();
            DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
            handleCommas(fragments, defaultCodeFormatterOptions.insert_space_before_comma_in_for_inits, defaultCodeFormatterOptions.insert_space_after_comma_in_for_inits);
        } else if (parent instanceof ExpressionStatement) {
            List fragments2 = variableDeclarationExpression.fragments();
            DefaultCodeFormatterOptions defaultCodeFormatterOptions2 = this.options;
            handleCommas(fragments2, defaultCodeFormatterOptions2.insert_space_before_comma_in_multiple_local_declarations, defaultCodeFormatterOptions2.insert_space_after_comma_in_multiple_local_declarations);
        }
        this.f102601tm.firstTokenAfter(variableDeclarationExpression.getType(), -1).spaceBefore();
        return true;
    }

    @Override
    public boolean visit(EnhancedForStatement enhancedForStatement) {
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleToken(enhancedForStatement, 23, defaultCodeFormatterOptions.insert_space_before_opening_paren_in_for, defaultCodeFormatterOptions.insert_space_after_opening_paren_in_for);
        handleTokenBefore(enhancedForStatement.getBody(), 25, this.options.insert_space_before_closing_paren_in_for, false);
        SingleVariableDeclaration parameter = enhancedForStatement.getParameter();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions2 = this.options;
        handleTokenAfter(parameter, 62, defaultCodeFormatterOptions2.insert_space_before_colon_in_for, defaultCodeFormatterOptions2.insert_space_after_colon_in_for);
        handleLoopBody(enhancedForStatement.getBody());
        return true;
    }

    @Override
    public boolean visit(MethodInvocation methodInvocation) {
        handleTypeArguments(methodInvocation.typeArguments());
        handleInvocation(methodInvocation, methodInvocation.getName());
        List arguments = methodInvocation.arguments();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleCommas(arguments, defaultCodeFormatterOptions.insert_space_before_comma_in_method_invocation_arguments, defaultCodeFormatterOptions.insert_space_after_comma_in_method_invocation_arguments);
        return true;
    }

    @Override
    public boolean visit(SuperMethodInvocation superMethodInvocation) {
        handleTypeArguments(superMethodInvocation.typeArguments());
        handleInvocation(superMethodInvocation, superMethodInvocation.getName());
        List arguments = superMethodInvocation.arguments();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleCommas(arguments, defaultCodeFormatterOptions.insert_space_before_comma_in_method_invocation_arguments, defaultCodeFormatterOptions.insert_space_after_comma_in_method_invocation_arguments);
        return true;
    }

    @Override
    public boolean visit(ClassInstanceCreation classInstanceCreation) {
        List typeArguments = classInstanceCreation.typeArguments();
        handleTypeArguments(typeArguments);
        handleInvocation(classInstanceCreation, classInstanceCreation.getType(), classInstanceCreation.getAnonymousClassDeclaration());
        if (!typeArguments.isEmpty()) {
            handleTokenBefore(typeArguments.get(0), 36, false, true);
        }
        List arguments = classInstanceCreation.arguments();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleCommas(arguments, defaultCodeFormatterOptions.insert_space_before_comma_in_allocation_expression, defaultCodeFormatterOptions.insert_space_after_comma_in_allocation_expression);
        return true;
    }

    @Override
    public boolean visit(ConstructorInvocation constructorInvocation) {
        handleTypeArguments(constructorInvocation.typeArguments());
        handleInvocation(constructorInvocation, constructorInvocation);
        List arguments = constructorInvocation.arguments();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleCommas(arguments, defaultCodeFormatterOptions.insert_space_before_comma_in_explicit_constructor_call_arguments, defaultCodeFormatterOptions.insert_space_after_comma_in_explicit_constructor_call_arguments);
        return true;
    }

    @Override
    public boolean visit(SuperConstructorInvocation superConstructorInvocation) {
        handleTypeArguments(superConstructorInvocation.typeArguments());
        handleInvocation(superConstructorInvocation, superConstructorInvocation);
        List arguments = superConstructorInvocation.arguments();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleCommas(arguments, defaultCodeFormatterOptions.insert_space_before_comma_in_explicit_constructor_call_arguments, defaultCodeFormatterOptions.insert_space_after_comma_in_explicit_constructor_call_arguments);
        return true;
    }

    @Override
    public boolean visit(Assignment assignment) {
        String operator = assignment.getOperator().toString();
        Expression rightHandSide = assignment.getRightHandSide();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleOperator(operator, rightHandSide, defaultCodeFormatterOptions.insert_space_before_assignment_operator, defaultCodeFormatterOptions.insert_space_after_assignment_operator);
        return true;
    }

    @Override
    public boolean visit(InfixExpression infixExpression) {
        InfixExpression.Operator operator = infixExpression.getOperator();
        boolean test = SPACE_BEFORE_OPERATOR.get(operator).test(this.options);
        boolean test2 = SPACE_AFTER_OPERATOR.get(operator).test(this.options);
        if (this.f102601tm.isStringConcatenation(infixExpression)) {
            DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
            boolean z10 = defaultCodeFormatterOptions.insert_space_before_string_concatenation;
            test2 = defaultCodeFormatterOptions.insert_space_after_string_concatenation;
            test = z10;
        }
        handleOperator(operator.toString(), infixExpression.getRightOperand(), test, test2);
        Iterator it = infixExpression.extendedOperands().iterator();
        while (it.hasNext()) {
            handleOperator(operator.toString(), (Expression) it.next(), test, test2);
        }
        return true;
    }

    @Override
    public boolean visit(PrefixExpression prefixExpression) {
        PrefixExpression.Operator operator = prefixExpression.getOperator();
        if (!operator.equals(PrefixExpression.Operator.INCREMENT) && !operator.equals(PrefixExpression.Operator.DECREMENT)) {
            String operator2 = operator.toString();
            Expression operand = prefixExpression.getOperand();
            DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
            handleOperator(operator2, operand, defaultCodeFormatterOptions.insert_space_before_unary_operator, defaultCodeFormatterOptions.insert_space_after_unary_operator);
            return true;
        }
        String operator3 = operator.toString();
        Expression operand2 = prefixExpression.getOperand();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions2 = this.options;
        handleOperator(operator3, operand2, defaultCodeFormatterOptions2.insert_space_before_prefix_operator, defaultCodeFormatterOptions2.insert_space_after_prefix_operator);
        return true;
    }

    @Override
    public boolean visit(PostfixExpression postfixExpression) {
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        if (!defaultCodeFormatterOptions.insert_space_before_postfix_operator && !defaultCodeFormatterOptions.insert_space_after_postfix_operator) {
            return true;
        }
        String operator = postfixExpression.getOperator().toString();
        int firstIndexAfter = this.f102601tm.firstIndexAfter(postfixExpression.getOperand(), -1);
        while (!operator.equals(this.f102601tm.toString(firstIndexAfter))) {
            firstIndexAfter++;
        }
        Token token = this.f102601tm.get(firstIndexAfter);
        DefaultCodeFormatterOptions defaultCodeFormatterOptions2 = this.options;
        handleToken(token, defaultCodeFormatterOptions2.insert_space_before_postfix_operator, defaultCodeFormatterOptions2.insert_space_after_postfix_operator);
        return true;
    }

    @Override
    public boolean visit(ParenthesizedExpression parenthesizedExpression) {
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleToken(parenthesizedExpression, 23, defaultCodeFormatterOptions.insert_space_before_opening_paren_in_parenthesized_expression, defaultCodeFormatterOptions.insert_space_after_opening_paren_in_parenthesized_expression);
        handleTokenAfter(parenthesizedExpression.getExpression(), 25, this.options.insert_space_before_closing_paren_in_parenthesized_expression, false);
        return true;
    }

    @Override
    public boolean visit(CastExpression castExpression) {
        handleToken(castExpression, 23, false, this.options.insert_space_after_opening_paren_in_cast);
        Expression expression = castExpression.getExpression();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleTokenBefore(expression, 25, defaultCodeFormatterOptions.insert_space_before_closing_paren_in_cast, defaultCodeFormatterOptions.insert_space_after_closing_paren_in_cast);
        return true;
    }

    @Override
    public boolean visit(IntersectionType intersectionType) {
        List types = intersectionType.types();
        for (int i10 = 1; i10 < types.size(); i10++) {
            ASTNode aSTNode = (ASTNode) types.get(i10);
            DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
            handleTokenBefore(aSTNode, 21, defaultCodeFormatterOptions.insert_space_before_bitwise_operator, defaultCodeFormatterOptions.insert_space_after_bitwise_operator);
        }
        return true;
    }

    @Override
    public boolean visit(ConditionalExpression conditionalExpression) {
        Expression thenExpression = conditionalExpression.getThenExpression();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleTokenBefore(thenExpression, 29, defaultCodeFormatterOptions.insert_space_before_question_in_conditional, defaultCodeFormatterOptions.insert_space_after_question_in_conditional);
        Expression elseExpression = conditionalExpression.getElseExpression();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions2 = this.options;
        handleTokenBefore(elseExpression, 62, defaultCodeFormatterOptions2.insert_space_before_colon_in_conditional, defaultCodeFormatterOptions2.insert_space_after_colon_in_conditional);
        return true;
    }

    @Override
    public boolean visit(ArrayType arrayType) {
        boolean z10;
        boolean z11;
        if (arrayType.getParent() instanceof ArrayCreation) {
            DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
            z10 = defaultCodeFormatterOptions.insert_space_before_opening_bracket_in_array_allocation_expression;
            z11 = defaultCodeFormatterOptions.insert_space_between_empty_brackets_in_array_allocation_expression;
        } else {
            DefaultCodeFormatterOptions defaultCodeFormatterOptions2 = this.options;
            z10 = defaultCodeFormatterOptions2.insert_space_before_opening_bracket_in_array_type_reference;
            z11 = defaultCodeFormatterOptions2.insert_space_between_brackets_in_array_type_reference;
        }
        for (Dimension dimension : arrayType.dimensions()) {
            handleToken(dimension, 6, z10, false);
            handleEmptyBrackets(dimension, z11);
        }
        return true;
    }

    @Override
    public boolean visit(ArrayAccess arrayAccess) {
        Expression index = arrayAccess.getIndex();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleTokenBefore(index, 6, defaultCodeFormatterOptions.insert_space_before_opening_bracket_in_array_reference, defaultCodeFormatterOptions.insert_space_after_opening_bracket_in_array_reference);
        handleTokenAfter(arrayAccess.getIndex(), 66, this.options.insert_space_before_closing_bracket_in_array_reference, false);
        return true;
    }

    @Override
    public boolean visit(ArrayCreation arrayCreation) {
        for (Expression expression : arrayCreation.dimensions()) {
            handleTokenBefore(expression, 6, false, this.options.insert_space_after_opening_bracket_in_array_allocation_expression);
            handleTokenAfter(expression, 66, this.options.insert_space_before_closing_bracket_in_array_allocation_expression, false);
        }
        return true;
    }

    @Override
    public boolean visit(ArrayInitializer arrayInitializer) {
        int firstIndexIn = this.f102601tm.firstIndexIn(arrayInitializer, 49);
        int lastIndexIn = this.f102601tm.lastIndexIn(arrayInitializer, 33);
        Token token = this.f102601tm.get(lastIndexIn - 1);
        int i10 = token.tokenType;
        boolean z10 = false;
        if (i10 == 49) {
            Token token2 = this.f102601tm.get(firstIndexIn);
            if (this.options.insert_space_before_opening_brace_in_array_initializer && !(arrayInitializer.getParent() instanceof ArrayInitializer) && !(arrayInitializer.getParent() instanceof SingleMemberAnnotation)) {
                z10 = true;
            }
            handleToken(token2, z10, this.options.insert_space_between_empty_braces_in_array_initializer);
        } else {
            boolean z11 = i10 == 32;
            handleToken(this.f102601tm.get(firstIndexIn), (!this.options.insert_space_before_opening_brace_in_array_initializer || (arrayInitializer.getParent() instanceof ArrayInitializer) || (arrayInitializer.getParent() instanceof SingleMemberAnnotation)) ? false : true, this.options.insert_space_after_opening_brace_in_array_initializer && !(z11 && arrayInitializer.expressions().isEmpty()));
            List expressions = arrayInitializer.expressions();
            DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
            handleCommas(expressions, defaultCodeFormatterOptions.insert_space_before_comma_in_array_initializer, defaultCodeFormatterOptions.insert_space_after_comma_in_array_initializer);
            if (z11) {
                handleToken(token, this.options.insert_space_before_comma_in_array_initializer, false);
            }
            handleToken(this.f102601tm.get(lastIndexIn), this.options.insert_space_before_closing_brace_in_array_initializer && !(z11 && arrayInitializer.expressions().isEmpty()), false);
        }
        return true;
    }

    @Override
    public boolean visit(ParameterizedType parameterizedType) {
        List typeArguments = parameterizedType.typeArguments();
        boolean isEmpty = typeArguments.isEmpty();
        Type type = parameterizedType.getType();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleTokenAfter(type, 11, defaultCodeFormatterOptions.insert_space_before_opening_angle_bracket_in_parameterized_type_reference, !isEmpty && defaultCodeFormatterOptions.insert_space_after_opening_angle_bracket_in_parameterized_type_reference);
        if (!isEmpty) {
            handleTokenAfter((ASTNode) typeArguments.get(typeArguments.size() - 1), 15, this.options.insert_space_before_closing_angle_bracket_in_parameterized_type_reference, false);
            List typeArguments2 = parameterizedType.typeArguments();
            DefaultCodeFormatterOptions defaultCodeFormatterOptions2 = this.options;
            handleCommas(typeArguments2, defaultCodeFormatterOptions2.insert_space_before_comma_in_parameterized_type_reference, defaultCodeFormatterOptions2.insert_space_after_comma_in_parameterized_type_reference);
        }
        return true;
    }

    @Override
    public boolean visit(TypeParameter typeParameter) {
        List typeBounds = typeParameter.typeBounds();
        for (int i10 = 1; i10 < typeBounds.size(); i10++) {
            ASTNode aSTNode = (ASTNode) typeBounds.get(i10);
            DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
            handleTokenBefore(aSTNode, 21, defaultCodeFormatterOptions.insert_space_before_and_in_type_parameter, defaultCodeFormatterOptions.insert_space_after_and_in_type_parameter);
        }
        return true;
    }

    @Override
    public boolean visit(WildcardType wildcardType) {
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleToken(wildcardType, 29, defaultCodeFormatterOptions.insert_space_before_question_in_wilcard, defaultCodeFormatterOptions.insert_space_after_question_in_wilcard || wildcardType.getBound() != null);
        return true;
    }

    @Override
    public boolean visit(UnionType unionType) {
        List types = unionType.types();
        for (int i10 = 1; i10 < types.size(); i10++) {
            ASTNode aSTNode = (ASTNode) types.get(i10);
            DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
            handleTokenBefore(aSTNode, 28, defaultCodeFormatterOptions.insert_space_before_bitwise_operator, defaultCodeFormatterOptions.insert_space_after_bitwise_operator);
        }
        return true;
    }

    @Override
    public boolean visit(Dimension dimension) {
        List annotations = dimension.annotations();
        if (!annotations.isEmpty()) {
            handleToken((ASTNode) annotations.get(0), 37, true, false);
        }
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
    public boolean visit(InstanceofExpression instanceofExpression) {
        handleTokenAfter(instanceofExpression.getLeftOperand(), 17, true, true);
        return true;
    }

    @Override
    public boolean visit(ModuleDeclaration moduleDeclaration) {
        handleToken(moduleDeclaration.getName(), 49, this.options.insert_space_before_opening_brace_in_type_declaration, false);
        return true;
    }

    @Override
    public boolean visit(ExportsDirective exportsDirective) {
        handleModuleStatementCommas(exportsDirective.modules());
        return true;
    }

    @Override
    public boolean visit(OpensDirective opensDirective) {
        handleModuleStatementCommas(opensDirective.modules());
        return true;
    }

    @Override
    public boolean visit(ProvidesDirective providesDirective) {
        handleModuleStatementCommas(providesDirective.implementations());
        return true;
    }
}
