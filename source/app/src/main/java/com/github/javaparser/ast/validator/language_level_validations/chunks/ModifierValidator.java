package com.github.javaparser.ast.validator.language_level_validations.chunks;

import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.body.AnnotationDeclaration;
import com.github.javaparser.ast.body.AnnotationMemberDeclaration;
import com.github.javaparser.ast.body.ClassOrInterfaceDeclaration;
import com.github.javaparser.ast.body.ConstructorDeclaration;
import com.github.javaparser.ast.body.EnumDeclaration;
import com.github.javaparser.ast.body.FieldDeclaration;
import com.github.javaparser.ast.body.MethodDeclaration;
import com.github.javaparser.ast.body.Parameter;
import com.github.javaparser.ast.body.TypeDeclaration;
import com.github.javaparser.ast.expr.LambdaExpr;
import com.github.javaparser.ast.expr.VariableDeclarationExpr;
import com.github.javaparser.ast.modules.ModuleRequiresDirective;
import com.github.javaparser.ast.nodeTypes.NodeWithModifiers;
import com.github.javaparser.ast.nodeTypes.NodeWithTokenRange;
import com.github.javaparser.ast.stmt.CatchClause;
import com.github.javaparser.ast.validator.ProblemReporter;
import com.github.javaparser.ast.validator.VisitorValidator;
import com.github.javaparser.ast.validator.language_level_validations.chunks.ModifierValidator;
import com.github.javaparser.utils.SeparatedItemStringBuilder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.function.Consumer;

public class ModifierValidator extends VisitorValidator {
    private final boolean hasDefaultAndStaticInterfaceMethods;
    private final boolean hasPrivateInterfaceMethods;
    private final boolean hasStrictfp;
    private final Modifier.Keyword[] interfaceWithNothingSpecial;
    private final Modifier.Keyword[] interfaceWithStaticAndDefault;
    private final Modifier.Keyword[] interfaceWithStaticAndDefaultAndPrivate;

    public ModifierValidator(boolean hasStrictfp, boolean hasDefaultAndStaticInterfaceMethods, boolean hasPrivateInterfaceMethods) {
        Modifier.Keyword keyword = Modifier.Keyword.PUBLIC;
        Modifier.Keyword keyword2 = Modifier.Keyword.PROTECTED;
        Modifier.Keyword keyword3 = Modifier.Keyword.ABSTRACT;
        Modifier.Keyword keyword4 = Modifier.Keyword.FINAL;
        Modifier.Keyword keyword5 = Modifier.Keyword.SYNCHRONIZED;
        Modifier.Keyword keyword6 = Modifier.Keyword.NATIVE;
        Modifier.Keyword keyword7 = Modifier.Keyword.STRICTFP;
        this.interfaceWithNothingSpecial = new Modifier.Keyword[]{keyword, keyword2, keyword3, keyword4, keyword5, keyword6, keyword7};
        Modifier.Keyword keyword8 = Modifier.Keyword.STATIC;
        Modifier.Keyword keyword9 = Modifier.Keyword.DEFAULT;
        this.interfaceWithStaticAndDefault = new Modifier.Keyword[]{keyword, keyword2, keyword3, keyword8, keyword4, keyword5, keyword6, keyword7, keyword9};
        this.interfaceWithStaticAndDefaultAndPrivate = new Modifier.Keyword[]{keyword, keyword2, Modifier.Keyword.PRIVATE, keyword3, keyword8, keyword4, keyword5, keyword6, keyword7, keyword9};
        this.hasStrictfp = hasStrictfp;
        this.hasDefaultAndStaticInterfaceMethods = hasDefaultAndStaticInterfaceMethods;
        this.hasPrivateInterfaceMethods = hasPrivateInterfaceMethods;
    }

    private boolean arrayContains(Object[] items, Object searchItem) {
        for (Object obj : items) {
            if (obj == searchItem) {
                return true;
            }
        }
        return false;
    }

    public void lambda$visit$0(final ProblemReporter reporter, Parameter p10) {
        validateModifiers(p10, reporter, Modifier.Keyword.FINAL);
    }

    public void lambda$visit$1(final ProblemReporter reporter, Parameter p10) {
        validateModifiers(p10, reporter, Modifier.Keyword.FINAL);
    }

    public void lambda$visit$2(final ProblemReporter reporter, Parameter p10) {
        validateModifiers(p10, reporter, Modifier.Keyword.FINAL);
    }

    private Modifier.Keyword[] removeModifierFromArray(Modifier.Keyword m10, Modifier.Keyword[] allowedModifiers) {
        ArrayList arrayList = new ArrayList(Arrays.asList(allowedModifiers));
        arrayList.remove(m10);
        return (Modifier.Keyword[]) arrayList.toArray(new Modifier.Keyword[0]);
    }

    /* JADX WARN: Incorrect types in method signature: <T::Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers<*>;:Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange<*>;>(TT;Lcom/github/javaparser/ast/validator/ProblemReporter;[Lcom/github/javaparser/ast/Modifier$Keyword;)V */
    private void validateAtMostOneOf(NodeWithModifiers t10, ProblemReporter reporter, Modifier.Keyword... modifiers) {
        ArrayList arrayList = new ArrayList();
        for (Modifier.Keyword keyword : modifiers) {
            if (t10.hasModifier(keyword)) {
                arrayList.add(keyword);
            }
        }
        if (arrayList.size() > 1) {
            SeparatedItemStringBuilder separatedItemStringBuilder = new SeparatedItemStringBuilder("Can have only one of '", "', '", "'.");
            Iterator<E> it = arrayList.iterator();
            while (it.hasNext()) {
                separatedItemStringBuilder.append(((Modifier.Keyword) it.next()).asString(), new Object[0]);
            }
            reporter.report((NodeWithTokenRange<?>) t10, separatedItemStringBuilder.toString(), new Object[0]);
        }
    }

    private void validateClassModifiers(ClassOrInterfaceDeclaration n10, ProblemReporter reporter) {
        if (n10.isTopLevelType()) {
            validateModifiers(n10, reporter, Modifier.Keyword.PUBLIC, Modifier.Keyword.ABSTRACT, Modifier.Keyword.FINAL, Modifier.Keyword.STRICTFP, Modifier.Keyword.SEALED, Modifier.Keyword.NON_SEALED);
        } else if (n10.isNestedType()) {
            validateModifiers(n10, reporter, Modifier.Keyword.PUBLIC, Modifier.Keyword.PROTECTED, Modifier.Keyword.PRIVATE, Modifier.Keyword.ABSTRACT, Modifier.Keyword.STATIC, Modifier.Keyword.FINAL, Modifier.Keyword.STRICTFP, Modifier.Keyword.SEALED, Modifier.Keyword.NON_SEALED);
        } else if (n10.isLocalClassDeclaration()) {
            validateModifiers(n10, reporter, Modifier.Keyword.ABSTRACT, Modifier.Keyword.FINAL, Modifier.Keyword.STRICTFP, Modifier.Keyword.SEALED, Modifier.Keyword.NON_SEALED);
        }
    }

    private void validateInterfaceModifiers(TypeDeclaration<?> n10, ProblemReporter reporter) {
        if (n10.isTopLevelType()) {
            validateModifiers(n10, reporter, Modifier.Keyword.PUBLIC, Modifier.Keyword.ABSTRACT, Modifier.Keyword.STRICTFP, Modifier.Keyword.SEALED, Modifier.Keyword.NON_SEALED);
        } else if (n10.isNestedType()) {
            validateModifiers(n10, reporter, Modifier.Keyword.PUBLIC, Modifier.Keyword.PROTECTED, Modifier.Keyword.PRIVATE, Modifier.Keyword.ABSTRACT, Modifier.Keyword.STATIC, Modifier.Keyword.STRICTFP, Modifier.Keyword.SEALED, Modifier.Keyword.NON_SEALED);
        }
    }

    /* JADX WARN: Incorrect types in method signature: <T::Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers<*>;:Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange<*>;>(TT;Lcom/github/javaparser/ast/validator/ProblemReporter;[Lcom/github/javaparser/ast/Modifier$Keyword;)V */
    private void validateModifiers(NodeWithModifiers n10, ProblemReporter reporter, Modifier.Keyword... allowedModifiers) {
        validateAtMostOneOf(n10, reporter, Modifier.Keyword.PUBLIC, Modifier.Keyword.PROTECTED, Modifier.Keyword.PRIVATE);
        validateAtMostOneOf(n10, reporter, Modifier.Keyword.FINAL, Modifier.Keyword.ABSTRACT);
        if (this.hasStrictfp) {
            validateAtMostOneOf(n10, reporter, Modifier.Keyword.NATIVE, Modifier.Keyword.STRICTFP);
        } else {
            allowedModifiers = removeModifierFromArray(Modifier.Keyword.STRICTFP, allowedModifiers);
        }
        Iterator<Modifier> it = n10.getModifiers().iterator();
        while (it.hasNext()) {
            Modifier next = it.next();
            if (!arrayContains(allowedModifiers, next.getKeyword())) {
                reporter.report((NodeWithTokenRange<?>) n10, "'%s' is not allowed here.", next.getKeyword().asString());
            }
        }
    }

    @Override
    public void visit(ClassOrInterfaceDeclaration n10, ProblemReporter reporter) {
        if (n10.isInterface()) {
            validateInterfaceModifiers(n10, reporter);
        } else {
            validateClassModifiers(n10, reporter);
        }
        super.visit(n10, (ClassOrInterfaceDeclaration) reporter);
    }

    @Override
    public void visit(EnumDeclaration n10, ProblemReporter reporter) {
        if (n10.isTopLevelType()) {
            validateModifiers(n10, reporter, Modifier.Keyword.PUBLIC, Modifier.Keyword.STRICTFP);
        } else if (n10.isNestedType()) {
            validateModifiers(n10, reporter, Modifier.Keyword.PUBLIC, Modifier.Keyword.PROTECTED, Modifier.Keyword.PRIVATE, Modifier.Keyword.STATIC, Modifier.Keyword.STRICTFP);
        }
        super.visit(n10, (EnumDeclaration) reporter);
    }

    @Override
    public void visit(AnnotationDeclaration n10, ProblemReporter reporter) {
        validateInterfaceModifiers(n10, reporter);
        super.visit(n10, (AnnotationDeclaration) reporter);
    }

    @Override
    public void visit(AnnotationMemberDeclaration n10, ProblemReporter reporter) {
        validateModifiers(n10, reporter, Modifier.Keyword.PUBLIC, Modifier.Keyword.ABSTRACT);
        super.visit(n10, (AnnotationMemberDeclaration) reporter);
    }

    @Override
    public void visit(ConstructorDeclaration n10, final ProblemReporter reporter) {
        validateModifiers(n10, reporter, Modifier.Keyword.PUBLIC, Modifier.Keyword.PROTECTED, Modifier.Keyword.PRIVATE);
        n10.getParameters().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ModifierValidator.this.lambda$visit$0(reporter, (Parameter) obj);
            }
        });
        super.visit(n10, (ConstructorDeclaration) reporter);
    }

    @Override
    public void visit(FieldDeclaration n10, ProblemReporter reporter) {
        validateModifiers(n10, reporter, Modifier.Keyword.PUBLIC, Modifier.Keyword.PROTECTED, Modifier.Keyword.PRIVATE, Modifier.Keyword.STATIC, Modifier.Keyword.FINAL, Modifier.Keyword.TRANSIENT, Modifier.Keyword.VOLATILE);
        super.visit(n10, (FieldDeclaration) reporter);
    }

    @Override
    public void visit(MethodDeclaration n10, final ProblemReporter reporter) {
        if (n10.isAbstract()) {
            SeparatedItemStringBuilder separatedItemStringBuilder = new SeparatedItemStringBuilder("Cannot be 'abstract' and also '", "', '", "'.");
            for (Modifier.Keyword keyword : Arrays.asList(Modifier.Keyword.PRIVATE, Modifier.Keyword.STATIC, Modifier.Keyword.FINAL, Modifier.Keyword.NATIVE, Modifier.Keyword.STRICTFP, Modifier.Keyword.SYNCHRONIZED)) {
                if (n10.hasModifier(keyword)) {
                    separatedItemStringBuilder.append(keyword.asString(), new Object[0]);
                }
            }
            if (separatedItemStringBuilder.hasItems()) {
                reporter.report(n10, separatedItemStringBuilder.toString(), new Object[0]);
            }
        }
        if (n10.getParentNode().isPresent() && (n10.getParentNode().get() instanceof ClassOrInterfaceDeclaration)) {
            if (((ClassOrInterfaceDeclaration) n10.getParentNode().get()).isInterface()) {
                if (this.hasDefaultAndStaticInterfaceMethods) {
                    if (this.hasPrivateInterfaceMethods) {
                        validateModifiers(n10, reporter, this.interfaceWithStaticAndDefaultAndPrivate);
                    } else {
                        validateModifiers(n10, reporter, this.interfaceWithStaticAndDefault);
                    }
                } else {
                    validateModifiers(n10, reporter, this.interfaceWithNothingSpecial);
                }
            } else {
                validateModifiers(n10, reporter, Modifier.Keyword.PUBLIC, Modifier.Keyword.PROTECTED, Modifier.Keyword.PRIVATE, Modifier.Keyword.ABSTRACT, Modifier.Keyword.STATIC, Modifier.Keyword.FINAL, Modifier.Keyword.SYNCHRONIZED, Modifier.Keyword.NATIVE, Modifier.Keyword.STRICTFP);
            }
        }
        n10.getParameters().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ModifierValidator.this.lambda$visit$1(reporter, (Parameter) obj);
            }
        });
        super.visit(n10, (MethodDeclaration) reporter);
    }

    @Override
    public void visit(LambdaExpr n10, final ProblemReporter reporter) {
        n10.getParameters().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ModifierValidator.this.lambda$visit$2(reporter, (Parameter) obj);
            }
        });
        super.visit(n10, (LambdaExpr) reporter);
    }

    @Override
    public void visit(CatchClause n10, ProblemReporter reporter) {
        validateModifiers(n10.getParameter(), reporter, Modifier.Keyword.FINAL);
        super.visit(n10, (CatchClause) reporter);
    }

    @Override
    public void visit(VariableDeclarationExpr n10, ProblemReporter reporter) {
        validateModifiers(n10, reporter, Modifier.Keyword.FINAL);
        super.visit(n10, (VariableDeclarationExpr) reporter);
    }

    @Override
    public void visit(ModuleRequiresDirective n10, ProblemReporter reporter) {
        validateModifiers(n10, reporter, Modifier.Keyword.TRANSITIVE, Modifier.Keyword.STATIC);
        super.visit(n10, (ModuleRequiresDirective) reporter);
    }
}
