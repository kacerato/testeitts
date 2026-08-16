package org.eclipse.jdt.internal.formatter;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.function.Function;
import java.util.stream.Collectors;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.AnnotationTypeDeclaration;
import org.eclipse.jdt.core.dom.AnonymousClassDeclaration;
import org.eclipse.jdt.core.dom.Assignment;
import org.eclipse.jdt.core.dom.Block;
import org.eclipse.jdt.core.dom.DoStatement;
import org.eclipse.jdt.core.dom.EnhancedForStatement;
import org.eclipse.jdt.core.dom.EnumConstantDeclaration;
import org.eclipse.jdt.core.dom.EnumDeclaration;
import org.eclipse.jdt.core.dom.ExpressionStatement;
import org.eclipse.jdt.core.dom.ForStatement;
import org.eclipse.jdt.core.dom.IfStatement;
import org.eclipse.jdt.core.dom.LambdaExpression;
import org.eclipse.jdt.core.dom.MethodDeclaration;
import org.eclipse.jdt.core.dom.ModuleDeclaration;
import org.eclipse.jdt.core.dom.PrimitiveType;
import org.eclipse.jdt.core.dom.ReturnStatement;
import org.eclipse.jdt.core.dom.ThrowStatement;
import org.eclipse.jdt.core.dom.Type;
import org.eclipse.jdt.core.dom.TypeDeclaration;
import org.eclipse.jdt.core.dom.WhileStatement;
import org.eclipse.jdt.core.formatter.DefaultCodeFormatterConstants;

public class OneLineEnforcer extends ASTVisitor {
    private final DefaultCodeFormatterOptions options;

    private final TokenManager f102597tm;

    public OneLineEnforcer(TokenManager tokenManager, DefaultCodeFormatterOptions defaultCodeFormatterOptions) {
        this.f102597tm = tokenManager;
        this.options = defaultCodeFormatterOptions;
    }

    public Integer lambda$0(ASTNode aSTNode) {
        return Integer.valueOf(this.f102597tm.firstIndexIn(aSTNode, -1));
    }

    private void tryKeepOnOneLine(ASTNode aSTNode, ASTNode aSTNode2, List<? extends ASTNode> list, String str) {
        int firstIndexAfter;
        if (aSTNode2 == null) {
            firstIndexAfter = this.f102597tm.firstIndexIn(aSTNode, 49);
        } else {
            firstIndexAfter = this.f102597tm.firstIndexAfter(aSTNode2, 49);
        }
        int i10 = firstIndexAfter;
        int lastIndexIn = this.f102597tm.lastIndexIn(aSTNode, 33);
        tryKeepOnOneLine(i10, lastIndexIn, lastIndexIn, list, str);
    }

    @Override
    public void endVisit(TypeDeclaration typeDeclaration) {
        if (typeDeclaration.getParent().getLength() == 0) {
            return;
        }
        tryKeepOnOneLine(typeDeclaration, typeDeclaration.getName(), typeDeclaration.bodyDeclarations(), this.options.keep_type_declaration_on_one_line);
    }

    @Override
    public void endVisit(EnumDeclaration enumDeclaration) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(enumDeclaration.bodyDeclarations());
        arrayList.addAll(enumDeclaration.enumConstants());
        tryKeepOnOneLine(enumDeclaration, enumDeclaration.getName(), arrayList, this.options.keep_enum_declaration_on_one_line);
    }

    private void tryKeepOnOneLine(int i10, int i11, int i12, List<? extends ASTNode> list, String str) {
        if (DefaultCodeFormatterConstants.ONE_LINE_NEVER.equals(str)) {
            return;
        }
        if (DefaultCodeFormatterConstants.ONE_LINE_IF_EMPTY.equals(str) && !list.isEmpty()) {
            return;
        }
        if (DefaultCodeFormatterConstants.ONE_LINE_IF_SINGLE_ITEM.equals(str) && list.size() > 1) {
            return;
        }
        if (DefaultCodeFormatterConstants.ONE_LINE_PRESERVE.equals(str)) {
            TokenManager tokenManager = this.f102597tm;
            if (tokenManager.countLineBreaksBetween(tokenManager.get(i10), this.f102597tm.get(i12)) > 0) {
                return;
            }
        }
        Set<Integer> set = (Set) list.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Integer lambda$0;
                lambda$0 = OneLineEnforcer.this.lambda$0((ASTNode) obj);
                return lambda$0;
            }
        }).collect(Collectors.toSet());
        int i13 = i10 + 1;
        set.add(Integer.valueOf(i13));
        set.add(Integer.valueOf(i11));
        Token token = this.f102597tm.get(i10);
        int positionInLine = this.f102597tm.getPositionInLine(i10);
        int length = this.f102597tm.getLength(token, positionInLine) + positionInLine;
        int i14 = i13;
        while (true) {
            if (i14 > i12) {
                if (!list.isEmpty()) {
                    if (list.get(0).getParent().getParent() instanceof LambdaExpression) {
                        length -= positionInLine;
                    }
                    if (length > this.options.page_width) {
                        return;
                    }
                }
                for (Integer num : set) {
                    this.f102597tm.get(num.intValue() - 1).clearLineBreaksAfter();
                    Token token2 = this.f102597tm.get(num.intValue());
                    token2.clearLineBreaksBefore();
                    if (!list.isEmpty()) {
                        token2.spaceBefore();
                    }
                }
                return;
            }
            Token token3 = this.f102597tm.get(i14);
            int countLineBreaksBetween = this.f102597tm.countLineBreaksBetween(token, token3);
            if (this.options.number_of_empty_lines_to_preserve > 0 && countLineBreaksBetween > 1) {
                return;
            }
            boolean z10 = token.isSpaceAfter() || token3.isSpaceBefore();
            if (token.isComment() || token3.isComment()) {
                if (countLineBreaksBetween > 0) {
                    return;
                }
                char charAt = this.f102597tm.charAt(token3.originalStart - 1);
                z10 = z10 || charAt == ' ' || charAt == '\t';
            }
            if (token.getLineBreaksAfter() > 0 || token3.getLineBreaksBefore() > 0) {
                if (!set.contains(Integer.valueOf(i14))) {
                    return;
                } else {
                    z10 = (!z10 && i14 == i11 && i14 == i13) ? false : true;
                }
            }
            if (z10) {
                length++;
            }
            length += this.f102597tm.getLength(token3, length);
            i14++;
            token = token3;
        }
    }

    @Override
    public void endVisit(AnnotationTypeDeclaration annotationTypeDeclaration) {
        tryKeepOnOneLine(annotationTypeDeclaration, annotationTypeDeclaration.getName(), annotationTypeDeclaration.bodyDeclarations(), this.options.keep_annotation_declaration_on_one_line);
    }

    @Override
    public void endVisit(AnonymousClassDeclaration anonymousClassDeclaration) {
        if (anonymousClassDeclaration.getParent() instanceof EnumConstantDeclaration) {
            tryKeepOnOneLine(anonymousClassDeclaration, null, anonymousClassDeclaration.bodyDeclarations(), this.options.keep_enum_constant_declaration_on_one_line);
        } else {
            tryKeepOnOneLine(anonymousClassDeclaration, null, anonymousClassDeclaration.bodyDeclarations(), this.options.keep_anonymous_type_declaration_on_one_line);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00a2, code lost:
    
        if (r3 == false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00ea, code lost:
    
        if (r10.f102597tm.get(r0 + 1).isComment() == false) goto L85;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void endVisit(Block block) {
        ASTNode parent = block.getParent();
        List statements = block.statements();
        if (parent.getLength() == 0) {
            return;
        }
        boolean z10 = parent instanceof MethodDeclaration;
        String str = DefaultCodeFormatterConstants.ONE_LINE_ALWAYS;
        boolean z11 = false;
        if (z10) {
            DefaultCodeFormatterOptions defaultCodeFormatterOptions = this.options;
            String str2 = defaultCodeFormatterOptions.keep_method_body_on_one_line;
            if (defaultCodeFormatterOptions.keep_simple_getter_setter_on_one_line) {
                MethodDeclaration methodDeclaration = (MethodDeclaration) parent;
                String identifier = methodDeclaration.getName().getIdentifier();
                Type returnType2 = methodDeclaration.getReturnType2();
                boolean z12 = (returnType2 instanceof PrimitiveType) && ((PrimitiveType) returnType2).getPrimitiveTypeCode() == PrimitiveType.VOID;
                boolean z13 = identifier.matches("(is|get)\\p{Lu}.*") && !methodDeclaration.isConstructor() && !z12 && methodDeclaration.parameters().isEmpty() && statements.size() == 1 && (statements.get(0) instanceof ReturnStatement);
                if (identifier.matches("set\\p{Lu}.*") && !methodDeclaration.isConstructor() && z12 && methodDeclaration.parameters().size() == 1 && statements.size() == 1 && (statements.get(0) instanceof ExpressionStatement) && (((ExpressionStatement) statements.get(0)).getExpression() instanceof Assignment)) {
                    z11 = true;
                }
                if (!z13) {
                }
            }
            str = str2;
        } else if ((parent instanceof IfStatement) && ((IfStatement) parent).getElseStatement() == null) {
            DefaultCodeFormatterOptions defaultCodeFormatterOptions2 = this.options;
            String str3 = defaultCodeFormatterOptions2.keep_if_then_body_block_on_one_line;
            if (defaultCodeFormatterOptions2.keep_guardian_clause_on_one_line) {
                if (statements.size() == 1 && ((statements.get(0) instanceof ReturnStatement) || (statements.get(0) instanceof ThrowStatement))) {
                    z11 = true;
                }
                int firstIndexIn = this.f102597tm.firstIndexIn(block, 49);
                if (z11) {
                }
            }
            str = str3;
        } else if (parent instanceof LambdaExpression) {
            str = this.options.keep_lambda_body_block_on_one_line;
        } else if (!(parent instanceof ForStatement) && !(parent instanceof EnhancedForStatement) && !(parent instanceof WhileStatement)) {
            if (parent instanceof DoStatement) {
                String str4 = this.options.keep_loop_body_block_on_one_line;
                int firstIndexIn2 = this.f102597tm.firstIndexIn(block, 49);
                int lastIndexIn = this.f102597tm.lastIndexIn(block, 33);
                tryKeepOnOneLine(firstIndexIn2, lastIndexIn, this.f102597tm.firstTokenAfter(block, 75).getLineBreaksBefore() == 0 ? this.f102597tm.lastIndexIn(parent, -1) : lastIndexIn, statements, str4);
                return;
            }
            str = this.options.keep_code_block_on_one_line;
        } else {
            str = this.options.keep_loop_body_block_on_one_line;
        }
        tryKeepOnOneLine(block, null, statements, str);
    }

    @Override
    public void endVisit(ModuleDeclaration moduleDeclaration) {
        tryKeepOnOneLine(moduleDeclaration, moduleDeclaration.getName(), moduleDeclaration.moduleStatements(), this.options.keep_type_declaration_on_one_line);
    }
}
