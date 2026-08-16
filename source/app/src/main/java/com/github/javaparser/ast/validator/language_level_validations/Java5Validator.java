package com.github.javaparser.ast.validator.language_level_validations;

import com.github.javaparser.ParserConfiguration;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.expr.VariableDeclarationExpr;
import com.github.javaparser.ast.nodeTypes.NodeWithTypeArguments;
import com.github.javaparser.ast.stmt.ForEachStmt;
import com.github.javaparser.ast.type.PrimitiveType;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.ast.validator.ProblemReporter;
import com.github.javaparser.ast.validator.ReservedKeywordValidator;
import com.github.javaparser.ast.validator.SingleNodeTypeValidator;
import com.github.javaparser.ast.validator.TreeVisitorValidator;
import com.github.javaparser.ast.validator.TypedValidator;
import com.github.javaparser.ast.validator.Validator;
import java.util.Optional;
import java.util.function.Consumer;

public class Java5Validator extends Java1_4Validator {
    final Validator enumNotAllowed;
    final Validator forEachStmt;
    final Validator genericsWithoutDiamondOperator;
    protected final Validator noPrimitiveGenericArguments;

    public Java5Validator() {
        TreeVisitorValidator treeVisitorValidator = new TreeVisitorValidator(new Validator() {
            @Override
            public final void accept(Node node, ProblemReporter problemReporter) {
                Java5Validator.lambda$new$0(node, problemReporter);
            }
        });
        this.genericsWithoutDiamondOperator = treeVisitorValidator;
        TreeVisitorValidator treeVisitorValidator2 = new TreeVisitorValidator(new Validator() {
            @Override
            public final void accept(Node node, ProblemReporter problemReporter) {
                Java5Validator.lambda$new$3(node, problemReporter);
            }
        });
        this.noPrimitiveGenericArguments = treeVisitorValidator2;
        SingleNodeTypeValidator singleNodeTypeValidator = new SingleNodeTypeValidator(ForEachStmt.class, new TypedValidator() {
            @Override
            public final void accept(Node node, ProblemReporter problemReporter) {
                Java5Validator.lambda$new$4((ForEachStmt) node, problemReporter);
            }
        });
        this.forEachStmt = singleNodeTypeValidator;
        ReservedKeywordValidator reservedKeywordValidator = new ReservedKeywordValidator("enum");
        this.enumNotAllowed = reservedKeywordValidator;
        replace(this.noGenerics, treeVisitorValidator);
        add(treeVisitorValidator2);
        add(reservedKeywordValidator);
        add(singleNodeTypeValidator);
        remove(this.noAnnotations);
        remove(this.noEnums);
        remove(this.noVarargs);
        remove(this.noForEach);
        remove(this.noStaticImports);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void lambda$new$0(Node node, ProblemReporter reporter) {
        if (node instanceof NodeWithTypeArguments) {
            Optional<NodeList<Type>> typeArguments = ((NodeWithTypeArguments) node).getTypeArguments();
            if (typeArguments.isPresent() && typeArguments.get().isEmpty()) {
                reporter.report(node, new UpgradeJavaMessage("The diamond operator is not supported.", ParserConfiguration.LanguageLevel.JAVA_7), new Object[0]);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void lambda$new$3(final Node node, final ProblemReporter reporter) {
        if (node instanceof NodeWithTypeArguments) {
            ((NodeWithTypeArguments) node).getTypeArguments().ifPresent(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Java5Validator.lambda$null$2(ProblemReporter.this, node, (NodeList) obj);
                }
            });
        }
    }

    public static void lambda$new$4(ForEachStmt node, ProblemReporter reporter) {
        VariableDeclarationExpr variable = node.getVariable();
        if (variable.getVariables().size() != 1) {
            reporter.report(node, "A foreach statement's variable declaration must have exactly one variable declarator. Given: " + variable.getVariables().size() + ".", new Object[0]);
        }
    }

    public static void lambda$null$1(final ProblemReporter reporter, final Node node, Type ty) {
        if (ty instanceof PrimitiveType) {
            reporter.report(node, "Type arguments may not be primitive.", new Object[0]);
        }
    }

    public static void lambda$null$2(final ProblemReporter reporter, final Node node, NodeList types) {
        types.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Java5Validator.lambda$null$1(ProblemReporter.this, node, (Type) obj);
            }
        });
    }
}
