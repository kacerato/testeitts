package org.eclipse.jdt.internal.formatter;

import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.AbstractTypeDeclaration;
import org.eclipse.jdt.core.dom.Annotation;
import org.eclipse.jdt.core.dom.AnnotationTypeDeclaration;
import org.eclipse.jdt.core.dom.AnnotationTypeMemberDeclaration;
import org.eclipse.jdt.core.dom.AnonymousClassDeclaration;
import org.eclipse.jdt.core.dom.ArrayInitializer;
import org.eclipse.jdt.core.dom.Block;
import org.eclipse.jdt.core.dom.BodyDeclaration;
import org.eclipse.jdt.core.dom.BreakStatement;
import org.eclipse.jdt.core.dom.CatchClause;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.core.dom.ContinueStatement;
import org.eclipse.jdt.core.dom.DoStatement;
import org.eclipse.jdt.core.dom.EmptyStatement;
import org.eclipse.jdt.core.dom.EnhancedForStatement;
import org.eclipse.jdt.core.dom.EnumConstantDeclaration;
import org.eclipse.jdt.core.dom.EnumDeclaration;
import org.eclipse.jdt.core.dom.Expression;
import org.eclipse.jdt.core.dom.FieldDeclaration;
import org.eclipse.jdt.core.dom.ForStatement;
import org.eclipse.jdt.core.dom.IfStatement;
import org.eclipse.jdt.core.dom.ImportDeclaration;
import org.eclipse.jdt.core.dom.Initializer;
import org.eclipse.jdt.core.dom.LabeledStatement;
import org.eclipse.jdt.core.dom.LambdaExpression;
import org.eclipse.jdt.core.dom.MarkerAnnotation;
import org.eclipse.jdt.core.dom.MethodDeclaration;
import org.eclipse.jdt.core.dom.Modifier;
import org.eclipse.jdt.core.dom.ModuleDeclaration;
import org.eclipse.jdt.core.dom.ModuleDirective;
import org.eclipse.jdt.core.dom.Name;
import org.eclipse.jdt.core.dom.NormalAnnotation;
import org.eclipse.jdt.core.dom.PackageDeclaration;
import org.eclipse.jdt.core.dom.ReturnStatement;
import org.eclipse.jdt.core.dom.SimpleName;
import org.eclipse.jdt.core.dom.SingleMemberAnnotation;
import org.eclipse.jdt.core.dom.SingleVariableDeclaration;
import org.eclipse.jdt.core.dom.Statement;
import org.eclipse.jdt.core.dom.SwitchCase;
import org.eclipse.jdt.core.dom.SwitchExpression;
import org.eclipse.jdt.core.dom.SwitchStatement;
import org.eclipse.jdt.core.dom.TryStatement;
import org.eclipse.jdt.core.dom.TypeDeclaration;
import org.eclipse.jdt.core.dom.VariableDeclarationExpression;
import org.eclipse.jdt.core.dom.VariableDeclarationStatement;
import org.eclipse.jdt.core.dom.WhileStatement;
import org.eclipse.jdt.core.formatter.DefaultCodeFormatterConstants;

public class LineBreaksPreparator extends ASTVisitor {
    private boolean declarationModifierVisited;
    private final DefaultCodeFormatterOptions options;

    private final TokenManager f102593tm;

    public LineBreaksPreparator(TokenManager tokenManager, DefaultCodeFormatterOptions defaultCodeFormatterOptions) {
        this.f102593tm = tokenManager;
        this.options = defaultCodeFormatterOptions;
    }

    private void adjustEmptyLineAfter(int i10, int i11) {
        int i12 = i10 + 1;
        if (i12 >= this.f102593tm.size()) {
            return;
        }
        Token token = this.f102593tm.get(i10);
        Token token2 = this.f102593tm.get(i12);
        if (this.f102593tm.countLineBreaksBetween(token, token2) >= 2) {
            DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
            if (defaultCodeFormatterOptions.indent_empty_lines) {
                token2.setEmptyLineIndentAdjustment(i11 * defaultCodeFormatterOptions.indentation_size);
            }
        }
    }

    private void breakLineBefore(ASTNode aSTNode) {
        this.f102593tm.firstTokenIn(aSTNode, -1).breakBefore();
    }

    private void handleAnnotation(Annotation annotation) {
        boolean z10;
        ASTNode parent = annotation.getParent();
        if (this.declarationModifierVisited) {
            z10 = this.options.insert_new_line_after_type_annotation;
        } else if (parent instanceof PackageDeclaration) {
            z10 = this.options.insert_new_line_after_annotation_on_package;
        } else if (parent instanceof AbstractTypeDeclaration) {
            z10 = this.options.insert_new_line_after_annotation_on_type;
        } else if (parent instanceof EnumConstantDeclaration) {
            z10 = this.options.insert_new_line_after_annotation_on_enum_constant;
        } else if (parent instanceof FieldDeclaration) {
            z10 = this.options.insert_new_line_after_annotation_on_field;
        } else if (parent instanceof MethodDeclaration) {
            z10 = this.options.insert_new_line_after_annotation_on_method;
        } else if (parent instanceof AnnotationTypeMemberDeclaration) {
            if (this.options.insert_new_line_after_annotation_on_method && ((AnnotationTypeMemberDeclaration) parent).getDefault() != annotation) {
                z10 = true;
            }
            z10 = false;
        } else if ((parent instanceof VariableDeclarationStatement) || (parent instanceof VariableDeclarationExpression)) {
            z10 = this.options.insert_new_line_after_annotation_on_local_variable;
        } else {
            if (parent instanceof SingleVariableDeclaration) {
                z10 = parent.getParent() instanceof EnhancedForStatement ? this.options.insert_new_line_after_annotation_on_local_variable : this.options.insert_new_line_after_annotation_on_parameter;
            }
            z10 = false;
        }
        if (z10) {
            this.f102593tm.lastTokenIn(annotation, -1).breakAfter();
        }
    }

    private void handleBodyDeclarations(List<BodyDeclaration> list) {
        BodyDeclaration bodyDeclaration = null;
        for (BodyDeclaration bodyDeclaration2 : list) {
            if (bodyDeclaration == null) {
                putBlankLinesBefore(bodyDeclaration2, this.options.blank_lines_before_first_class_body_declaration);
            } else {
                int i10 = bodyDeclaration2 instanceof FieldDeclaration ? this.options.blank_lines_before_field : bodyDeclaration2 instanceof AbstractTypeDeclaration ? this.options.blank_lines_before_member_type : ((bodyDeclaration2 instanceof MethodDeclaration) || (bodyDeclaration2 instanceof AnnotationTypeMemberDeclaration)) ? this.options.blank_lines_before_method : 0;
                if (!sameChunk(bodyDeclaration, bodyDeclaration2)) {
                    i10 = Math.max(i10, this.options.blank_lines_before_new_chunk);
                }
                putBlankLinesBefore(bodyDeclaration2, i10);
            }
            bodyDeclaration = bodyDeclaration2;
        }
    }

    private void handleBracePosition(Token token, int i10, String str) {
        if (str.equals(DefaultCodeFormatterConstants.NEXT_LINE)) {
            token.breakBefore();
            return;
        }
        if (!str.equals(DefaultCodeFormatterConstants.NEXT_LINE_SHIFTED)) {
            if (str.equals(DefaultCodeFormatterConstants.NEXT_LINE_ON_WRAP)) {
                token.setNextLineOnWrap();
            }
        } else {
            token.breakBefore();
            token.indent();
            int i11 = i10 + 1;
            if (i11 < this.f102593tm.size()) {
                this.f102593tm.get(i11).unindent();
            }
        }
    }

    private void handleBracedCode(ASTNode aSTNode, ASTNode aSTNode2, String str, boolean z10) {
        int firstIndexIn = aSTNode2 == null ? this.f102593tm.firstIndexIn(aSTNode, 49) : this.f102593tm.firstIndexAfter(aSTNode2, 49);
        int lastIndexIn = this.f102593tm.lastIndexIn(aSTNode, 33);
        Token token = this.f102593tm.get(firstIndexIn);
        Token token2 = this.f102593tm.get(lastIndexIn);
        handleBracePosition(token, lastIndexIn, str);
        token.breakAfter();
        token2.breakBefore();
        if (z10) {
            adjustEmptyLineAfter(firstIndexIn, 1);
            this.f102593tm.get(firstIndexIn + 1).indent();
            token2.unindent();
        }
    }

    private void handleLoopBody(Statement statement) {
        if (statement instanceof Block) {
            return;
        }
        if (!(statement instanceof EmptyStatement) || this.options.put_empty_statement_on_new_line || (statement.getParent() instanceof IfStatement)) {
            breakLineBefore(statement);
            adjustEmptyLineAfter(this.f102593tm.lastIndexIn(statement, -1), -1);
            indent(statement);
        }
    }

    private void indent(ASTNode aSTNode) {
        int firstIndexIn = this.f102593tm.firstIndexIn(aSTNode, -1);
        while (firstIndexIn > 0 && this.f102593tm.get(firstIndexIn - 1).isComment()) {
            firstIndexIn--;
        }
        this.f102593tm.get(firstIndexIn).indent();
        int lastIndexIn = this.f102593tm.lastIndexIn(aSTNode, -1) + 1;
        if (lastIndexIn < this.f102593tm.size()) {
            this.f102593tm.get(lastIndexIn).unindent();
        }
    }

    public static boolean lambda$0(Statement statement) {
        return (statement instanceof SwitchCase) && ((SwitchCase) statement).isSwitchLabeledRule();
    }

    public static boolean lambda$1(Statement statement) {
        return (statement instanceof SwitchCase) && ((SwitchCase) statement).isSwitchLabeledRule();
    }

    private void putBlankLinesBefore(ASTNode aSTNode, int i10) {
        int firstIndexIn = this.f102593tm.firstIndexIn(aSTNode, -1);
        while (firstIndexIn > 0 && this.f102593tm.get(firstIndexIn - 1).tokenType == 1003) {
            firstIndexIn--;
        }
        this.f102593tm.get(firstIndexIn).putLineBreaksBefore(i10 + 1);
    }

    private boolean sameChunk(BodyDeclaration bodyDeclaration, BodyDeclaration bodyDeclaration2) {
        if (bodyDeclaration.getClass().equals(bodyDeclaration2.getClass())) {
            return true;
        }
        if ((bodyDeclaration instanceof AbstractTypeDeclaration) && (bodyDeclaration2 instanceof AbstractTypeDeclaration)) {
            return true;
        }
        if ((bodyDeclaration instanceof FieldDeclaration) || (bodyDeclaration instanceof Initializer)) {
            return (bodyDeclaration2 instanceof FieldDeclaration) || (bodyDeclaration2 instanceof Initializer);
        }
        return false;
    }

    public void finishUp() {
        int i10 = this.options.initial_indentation_level;
        Iterator<Token> it = this.f102593tm.iterator();
        while (it.hasNext()) {
            Token next = it.next();
            i10 += next.getIndent();
            next.setIndent(this.options.indentation_size * i10);
        }
    }

    @Override
    public boolean preVisit2(ASTNode aSTNode) {
        return !((aSTNode.getFlags() & 1) != 0);
    }

    @Override
    public boolean visit(CompilationUnit compilationUnit) {
        int firstIndexIn;
        List imports = compilationUnit.imports();
        if (!imports.isEmpty() && (firstIndexIn = this.f102593tm.firstIndexIn((ASTNode) imports.get(0), -1)) > 0) {
            this.f102593tm.get(firstIndexIn).putLineBreaksBefore(this.options.blank_lines_before_imports + 1);
        }
        List types = compilationUnit.types();
        if (!types.isEmpty()) {
            if (!imports.isEmpty()) {
                putBlankLinesBefore((ASTNode) types.get(0), this.options.blank_lines_after_imports);
            }
            for (int i10 = 1; i10 < types.size(); i10++) {
                putBlankLinesBefore((ASTNode) types.get(i10), this.options.blank_lines_between_type_declarations);
            }
        }
        return true;
    }

    @Override
    public boolean visit(PackageDeclaration packageDeclaration) {
        int i10 = this.options.blank_lines_before_package;
        if (i10 > 0) {
            List annotations = packageDeclaration.annotations();
            this.f102593tm.get(annotations.isEmpty() ? this.f102593tm.firstIndexBefore(packageDeclaration.getName(), 85) : this.f102593tm.firstIndexIn((ASTNode) annotations.get(0), -1)).putLineBreaksBefore(i10 + 1);
        }
        this.f102593tm.lastTokenIn(packageDeclaration, 26).putLineBreaksAfter(this.options.blank_lines_after_package + 1);
        this.declarationModifierVisited = false;
        return true;
    }

    @Override
    public boolean visit(ImportDeclaration importDeclaration) {
        breakLineBefore(importDeclaration);
        return true;
    }

    @Override
    public boolean visit(TypeDeclaration typeDeclaration) {
        handleBodyDeclarations(typeDeclaration.bodyDeclarations());
        if (typeDeclaration.getName().getStartPosition() == -1) {
            return true;
        }
        breakLineBefore(typeDeclaration);
        SimpleName name = typeDeclaration.getName();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleBracedCode(typeDeclaration, name, defaultCodeFormatterOptions.brace_position_for_type_declaration, defaultCodeFormatterOptions.indent_body_declarations_compare_to_type_header);
        this.declarationModifierVisited = false;
        return true;
    }

    @Override
    public boolean visit(EnumDeclaration enumDeclaration) {
        SimpleName name = enumDeclaration.getName();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleBracedCode(enumDeclaration, name, defaultCodeFormatterOptions.brace_position_for_enum_declaration, defaultCodeFormatterOptions.indent_body_declarations_compare_to_enum_declaration_header);
        handleBodyDeclarations(enumDeclaration.bodyDeclarations());
        List enumConstants = enumDeclaration.enumConstants();
        for (int i10 = 0; i10 < enumConstants.size(); i10++) {
            EnumConstantDeclaration enumConstantDeclaration = (EnumConstantDeclaration) enumConstants.get(i10);
            if (enumConstantDeclaration.getJavadoc() != null) {
                this.f102593tm.firstTokenIn(enumConstantDeclaration, 1003).breakBefore();
            }
            if (enumConstantDeclaration.getAnonymousClassDeclaration() != null && i10 < enumConstants.size() - 1) {
                this.f102593tm.firstTokenAfter(enumConstantDeclaration, 32).breakAfter();
            }
        }
        int firstIndexAfter = enumConstants.isEmpty() ? this.f102593tm.firstIndexAfter(enumDeclaration.getName(), 49) + 1 : this.f102593tm.firstIndexAfter((ASTNode) enumConstants.get(enumConstants.size() - 1), -1);
        while (true) {
            Token token = this.f102593tm.get(firstIndexAfter);
            if (!token.isComment()) {
                if (token.tokenType == 26) {
                    token.breakAfter();
                } else {
                    this.declarationModifierVisited = false;
                    return true;
                }
            }
            firstIndexAfter++;
        }
    }

    @Override
    public boolean visit(AnnotationTypeDeclaration annotationTypeDeclaration) {
        SimpleName name = annotationTypeDeclaration.getName();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleBracedCode(annotationTypeDeclaration, name, defaultCodeFormatterOptions.brace_position_for_annotation_type_declaration, defaultCodeFormatterOptions.indent_body_declarations_compare_to_annotation_declaration_header);
        handleBodyDeclarations(annotationTypeDeclaration.bodyDeclarations());
        if (annotationTypeDeclaration.getModifiers() == 0) {
            this.f102593tm.firstTokenBefore(annotationTypeDeclaration.getName(), 37).breakBefore();
        }
        this.declarationModifierVisited = false;
        return true;
    }

    @Override
    public boolean visit(AnonymousClassDeclaration anonymousClassDeclaration) {
        if (anonymousClassDeclaration.getParent() instanceof EnumConstantDeclaration) {
            DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
            handleBracedCode(anonymousClassDeclaration, null, defaultCodeFormatterOptions.brace_position_for_enum_constant, defaultCodeFormatterOptions.indent_body_declarations_compare_to_enum_constant_header);
        } else {
            DefaultCodeFormatterOptions defaultCodeFormatterOptions2 = this.options;
            handleBracedCode(anonymousClassDeclaration, null, defaultCodeFormatterOptions2.brace_position_for_anonymous_type_declaration, defaultCodeFormatterOptions2.indent_body_declarations_compare_to_type_header);
        }
        handleBodyDeclarations(anonymousClassDeclaration.bodyDeclarations());
        return true;
    }

    @Override
    public boolean visit(MethodDeclaration methodDeclaration) {
        this.declarationModifierVisited = false;
        if (methodDeclaration.getBody() == null) {
            return true;
        }
        handleBracedCode(methodDeclaration.getBody(), null, methodDeclaration.isConstructor() ? this.options.brace_position_for_constructor_declaration : this.options.brace_position_for_method_declaration, this.options.indent_statements_compare_to_body);
        Token firstTokenIn = this.f102593tm.firstTokenIn(methodDeclaration.getBody(), 49);
        if (firstTokenIn.getLineBreaksAfter() > 0) {
            firstTokenIn.putLineBreaksAfter(this.options.blank_lines_at_beginning_of_method_body + 1);
        }
        return true;
    }

    @Override
    public boolean visit(Block block) {
        for (Statement statement : block.statements()) {
            if (this.options.put_empty_statement_on_new_line || !(statement instanceof EmptyStatement)) {
                breakLineBefore(statement);
            }
        }
        ASTNode parent = block.getParent();
        if (parent.getLength() == 0 || (parent instanceof MethodDeclaration)) {
            return true;
        }
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        String str = defaultCodeFormatterOptions.brace_position_for_block;
        if (parent instanceof SwitchStatement) {
            List statements = ((SwitchStatement) parent).statements();
            int indexOf = statements.indexOf(block);
            if (indexOf > 0 && (statements.get(indexOf - 1) instanceof SwitchCase)) {
                str = this.options.brace_position_for_block_in_case;
            }
        } else if (parent instanceof LambdaExpression) {
            str = defaultCodeFormatterOptions.brace_position_for_lambda_body;
        }
        handleBracedCode(block, null, str, this.options.indent_statements_compare_to_block);
        return true;
    }

    @Override
    public boolean visit(SwitchStatement switchStatement) {
        int i10;
        Expression expression = switchStatement.getExpression();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleBracedCode(switchStatement, expression, defaultCodeFormatterOptions.brace_position_for_switch, defaultCodeFormatterOptions.indent_switchstatements_compare_to_switch);
        List<Statement> statements = switchStatement.statements();
        if (this.options.indent_switchstatements_compare_to_cases) {
            loop0: while (true) {
                i10 = -1;
                for (Statement statement : statements) {
                    boolean z10 = statement instanceof BreakStatement;
                    boolean z11 = z10 || (statement instanceof ReturnStatement) || (statement instanceof ContinueStatement) || (statement instanceof Block);
                    if (z11 && !(statement instanceof Block)) {
                        adjustEmptyLineAfter(this.f102593tm.lastIndexIn(statement, -1), -1);
                    }
                    if (statement instanceof SwitchCase) {
                        if (i10 >= 0) {
                            this.f102593tm.get(i10 + 1).indent();
                            this.f102593tm.firstTokenIn(statement, -1).unindent();
                        }
                    } else if (!z10 && !(statement instanceof Block)) {
                        indent(statement);
                    }
                    if (z11) {
                        break;
                    }
                    i10 = this.f102593tm.lastIndexIn(statement, -1);
                }
            }
            if (i10 >= 0) {
                this.f102593tm.get(i10 + 1).indent();
                this.f102593tm.lastTokenIn(switchStatement, 33).unindent();
            }
        }
        if (this.options.indent_breaks_compare_to_cases) {
            for (Statement statement2 : statements) {
                if (statement2 instanceof BreakStatement) {
                    indent(statement2);
                }
            }
        }
        boolean anyMatch = statements.stream().anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$0;
                lambda$0 = LineBreaksPreparator.lambda$0((Statement) obj);
                return lambda$0;
            }
        });
        for (Statement statement3 : statements) {
            if (!(statement3 instanceof Block) && (!anyMatch || (statement3 instanceof SwitchCase))) {
                if (this.options.put_empty_statement_on_new_line || !(statement3 instanceof EmptyStatement)) {
                    breakLineBefore(statement3);
                }
            }
        }
        return true;
    }

    @Override
    public boolean visit(SwitchExpression switchExpression) {
        int i10;
        Expression expression = switchExpression.getExpression();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleBracedCode(switchExpression, expression, defaultCodeFormatterOptions.brace_position_for_switch, defaultCodeFormatterOptions.indent_switchstatements_compare_to_switch);
        List<Statement> statements = switchExpression.statements();
        if (this.options.indent_switchstatements_compare_to_cases) {
            loop0: while (true) {
                i10 = -1;
                for (Statement statement : statements) {
                    boolean z10 = statement instanceof BreakStatement;
                    boolean z11 = z10 || (statement instanceof ReturnStatement) || (statement instanceof ContinueStatement) || (statement instanceof Block);
                    if (z11 && !(statement instanceof Block)) {
                        adjustEmptyLineAfter(this.f102593tm.lastIndexIn(statement, -1), -1);
                    }
                    if (statement instanceof SwitchCase) {
                        if (i10 >= 0) {
                            this.f102593tm.get(i10 + 1).indent();
                            this.f102593tm.firstTokenIn(statement, -1).unindent();
                        }
                    } else if (!z10 && !(statement instanceof Block)) {
                        indent(statement);
                    }
                    if (z11) {
                        break;
                    }
                    i10 = this.f102593tm.lastIndexIn(statement, -1);
                }
            }
            if (i10 >= 0) {
                this.f102593tm.get(i10 + 1).indent();
                this.f102593tm.lastTokenIn(switchExpression, 33).unindent();
            }
        }
        if (this.options.indent_breaks_compare_to_cases) {
            for (Statement statement2 : statements) {
                if (statement2 instanceof BreakStatement) {
                    indent(statement2);
                }
            }
        }
        boolean anyMatch = statements.stream().anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$1;
                lambda$1 = LineBreaksPreparator.lambda$1((Statement) obj);
                return lambda$1;
            }
        });
        for (Statement statement3 : statements) {
            if (!(statement3 instanceof Block) && (!anyMatch || (statement3 instanceof SwitchCase))) {
                if (this.options.put_empty_statement_on_new_line || !(statement3 instanceof EmptyStatement)) {
                    breakLineBefore(statement3);
                }
            }
        }
        return true;
    }

    @Override
    public boolean visit(DoStatement doStatement) {
        Statement body = doStatement.getBody();
        boolean z10 = this.options.keep_simple_do_while_body_on_same_line;
        if (!z10) {
            handleLoopBody(body);
        }
        if (!this.options.insert_new_line_before_while_in_do_statement && ((body instanceof Block) || (body instanceof EmptyStatement) || z10)) {
            return true;
        }
        this.f102593tm.firstTokenBefore(doStatement.getExpression(), 75).breakBefore();
        return true;
    }

    @Override
    public boolean visit(LabeledStatement labeledStatement) {
        if (!this.options.insert_new_line_after_label) {
            return true;
        }
        this.f102593tm.firstTokenIn(labeledStatement, 62).breakAfter();
        return true;
    }

    @Override
    public boolean visit(ArrayInitializer arrayInitializer) {
        int firstIndexIn = this.f102593tm.firstIndexIn(arrayInitializer, 49);
        int lastIndexIn = this.f102593tm.lastIndexIn(arrayInitializer, 33);
        int i10 = firstIndexIn + 1;
        boolean z10 = i10 == lastIndexIn;
        if (z10) {
            adjustEmptyLineAfter(firstIndexIn, this.options.continuation_indentation_for_array_initializer);
            lastIndexIn = this.f102593tm.lastIndexIn(arrayInitializer, 33);
        }
        Token token = this.f102593tm.get(firstIndexIn);
        Token token2 = this.f102593tm.get(lastIndexIn);
        if (!(arrayInitializer.getParent() instanceof ArrayInitializer)) {
            Token token3 = this.f102593tm.get(i10);
            for (int i11 = 0; i11 < this.options.continuation_indentation_for_array_initializer; i11++) {
                token3.indent();
                token2.unindent();
            }
        }
        if (!z10 || !this.options.keep_empty_array_initializer_on_one_line) {
            handleBracePosition(token, lastIndexIn, this.options.brace_position_for_array_initializer);
        }
        if (!z10) {
            if (this.options.insert_new_line_after_opening_brace_in_array_initializer) {
                token.breakAfter();
            }
            if (this.options.insert_new_line_before_closing_brace_in_array_initializer) {
                token2.breakBefore();
            }
        }
        return true;
    }

    @Override
    public boolean visit(NormalAnnotation normalAnnotation) {
        handleAnnotation(normalAnnotation);
        return true;
    }

    @Override
    public boolean visit(SingleMemberAnnotation singleMemberAnnotation) {
        handleAnnotation(singleMemberAnnotation);
        return true;
    }

    @Override
    public boolean visit(MarkerAnnotation markerAnnotation) {
        handleAnnotation(markerAnnotation);
        return true;
    }

    @Override
    public boolean visit(VariableDeclarationStatement variableDeclarationStatement) {
        this.declarationModifierVisited = false;
        return true;
    }

    @Override
    public boolean visit(SingleVariableDeclaration singleVariableDeclaration) {
        this.declarationModifierVisited = false;
        if (singleVariableDeclaration.getParent() instanceof MethodDeclaration) {
            this.declarationModifierVisited = singleVariableDeclaration.getModifiers() == 0;
        }
        return true;
    }

    @Override
    public boolean visit(VariableDeclarationExpression variableDeclarationExpression) {
        this.declarationModifierVisited = false;
        return true;
    }

    @Override
    public boolean visit(FieldDeclaration fieldDeclaration) {
        this.declarationModifierVisited = false;
        return true;
    }

    @Override
    public boolean visit(AnnotationTypeMemberDeclaration annotationTypeMemberDeclaration) {
        this.declarationModifierVisited = false;
        return true;
    }

    @Override
    public boolean visit(EnumConstantDeclaration enumConstantDeclaration) {
        this.declarationModifierVisited = false;
        return true;
    }

    @Override
    public boolean visit(Modifier modifier) {
        this.declarationModifierVisited = true;
        return true;
    }

    @Override
    public boolean visit(WhileStatement whileStatement) {
        if (this.options.keep_simple_while_body_on_same_line) {
            return true;
        }
        handleLoopBody(whileStatement.getBody());
        return true;
    }

    @Override
    public boolean visit(ForStatement forStatement) {
        if (this.options.keep_simple_for_body_on_same_line) {
            return true;
        }
        handleLoopBody(forStatement.getBody());
        return true;
    }

    @Override
    public boolean visit(EnhancedForStatement enhancedForStatement) {
        if (this.options.keep_simple_for_body_on_same_line) {
            return true;
        }
        handleLoopBody(enhancedForStatement.getBody());
        return true;
    }

    @Override
    public boolean visit(IfStatement ifStatement) {
        Statement elseStatement = ifStatement.getElseStatement();
        Statement thenStatement = ifStatement.getThenStatement();
        if (elseStatement != null) {
            if (this.options.insert_new_line_before_else_in_if_statement || !(thenStatement instanceof Block)) {
                this.f102593tm.firstTokenBefore(elseStatement, 112).breakBefore();
            }
            DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
            if (!defaultCodeFormatterOptions.keep_else_statement_on_same_line && (!defaultCodeFormatterOptions.compact_else_if || !(elseStatement instanceof IfStatement))) {
                handleLoopBody(elseStatement);
            }
        }
        DefaultCodeFormatterOptions defaultCodeFormatterOptions2 = this.options;
        if (defaultCodeFormatterOptions2.keep_then_statement_on_same_line) {
            return true;
        }
        if (defaultCodeFormatterOptions2.keep_simple_if_on_one_line && elseStatement == null) {
            return true;
        }
        handleLoopBody(thenStatement);
        return true;
    }

    @Override
    public boolean visit(TryStatement tryStatement) {
        if (tryStatement.getFinally() == null || !this.options.insert_new_line_before_finally_in_try_statement) {
            return true;
        }
        this.f102593tm.firstTokenBefore(tryStatement.getFinally(), 111).breakBefore();
        return true;
    }

    @Override
    public boolean visit(CatchClause catchClause) {
        if (!this.options.insert_new_line_before_catch_in_try_statement) {
            return true;
        }
        breakLineBefore(catchClause);
        return true;
    }

    @Override
    public boolean visit(ModuleDeclaration moduleDeclaration) {
        int i10;
        breakLineBefore(moduleDeclaration);
        Name name = moduleDeclaration.getName();
        DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
        handleBracedCode(moduleDeclaration, name, defaultCodeFormatterOptions.brace_position_for_type_declaration, defaultCodeFormatterOptions.indent_body_declarations_compare_to_type_header);
        ModuleDirective moduleDirective = null;
        for (ModuleDirective moduleDirective2 : moduleDeclaration.moduleStatements()) {
            if (moduleDirective == null) {
                i10 = this.options.blank_lines_before_first_class_body_declaration;
            } else {
                i10 = moduleDirective.getClass().equals(moduleDirective2.getClass()) ? this.options.blank_lines_before_field : this.options.blank_lines_before_new_chunk;
            }
            putBlankLinesBefore(moduleDirective2, i10);
            moduleDirective = moduleDirective2;
        }
        this.declarationModifierVisited = false;
        return true;
    }
}
