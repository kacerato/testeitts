package com.github.javaparser.ast.validator.language_level_validations.chunks;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.body.Parameter;
import com.github.javaparser.ast.body.VariableDeclarator;
import com.github.javaparser.ast.expr.ArrayInitializerExpr;
import com.github.javaparser.ast.expr.Expression;
import com.github.javaparser.ast.expr.LambdaExpr;
import com.github.javaparser.ast.expr.NullLiteralExpr;
import com.github.javaparser.ast.expr.TypePatternExpr;
import com.github.javaparser.ast.expr.VariableDeclarationExpr;
import com.github.javaparser.ast.stmt.ExpressionStmt;
import com.github.javaparser.ast.stmt.ForEachStmt;
import com.github.javaparser.ast.stmt.ForStmt;
import com.github.javaparser.ast.stmt.TryStmt;
import com.github.javaparser.ast.type.VarType;
import com.github.javaparser.ast.validator.ProblemReporter;
import com.github.javaparser.ast.validator.TypedValidator;
import com.github.javaparser.ast.validator.language_level_validations.chunks.VarValidator;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;

public class VarValidator implements TypedValidator<VarType> {
    private boolean varAllowedInLambdaParameters;

    public VarValidator(boolean varAllowedInLambdaParameters) {
        this.varAllowedInLambdaParameters = varAllowedInLambdaParameters;
    }

    public static Boolean lambda$accept$0(Node p10) {
        return Boolean.valueOf(p10 instanceof LambdaExpr);
    }

    public void lambda$accept$4(final ProblemReporter reporter, final VarType node, final VariableDeclarator vd2) {
        if (vd2.getType2().isArrayType()) {
            reporter.report(vd2, "\"var\" cannot have extra array brackets.", new Object[0]);
        }
        Optional<Node> parentNode = vd2.getParentNode();
        if (parentNode.isPresent()) {
            parentNode.ifPresent(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    VarValidator.this.lambda$null$3(node, reporter, vd2, (Node) obj);
                }
            });
        } else {
            reportIllegalPosition(node, reporter);
        }
    }

    public static void lambda$null$1(final ProblemReporter reporter, final VarType node, Expression initializer) {
        if (initializer instanceof NullLiteralExpr) {
            reporter.report(node, "\"var\" cannot infer type from just null.", new Object[0]);
        }
        if (initializer instanceof ArrayInitializerExpr) {
            reporter.report(node, "\"var\" cannot infer array types.", new Object[0]);
        }
    }

    public void lambda$null$2(final VarType node, final ProblemReporter reporter, final VariableDeclarator vd2, Node c10) {
        if (!(c10 instanceof ForStmt) && !(c10 instanceof ForEachStmt) && !(c10 instanceof ExpressionStmt) && !(c10 instanceof TryStmt)) {
            reportIllegalPosition(node, reporter);
        }
        if (c10 instanceof ExpressionStmt) {
            if (!vd2.getInitializer().isPresent()) {
                reporter.report(node, "\"var\" needs an initializer.", new Object[0]);
            }
            vd2.getInitializer().ifPresent(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    VarValidator.lambda$null$1(ProblemReporter.this, node, (Expression) obj);
                }
            });
        }
    }

    public void lambda$null$3(final VarType node, final ProblemReporter reporter, final VariableDeclarator vd2, Node vdeNode) {
        if (!(vdeNode instanceof VariableDeclarationExpr)) {
            reportIllegalPosition(node, reporter);
            return;
        }
        VariableDeclarationExpr variableDeclarationExpr = (VariableDeclarationExpr) vdeNode;
        if (variableDeclarationExpr.getVariables().size() > 1) {
            reporter.report(variableDeclarationExpr, "\"var\" only takes a single variable.", new Object[0]);
        }
        Optional<Node> parentNode = vdeNode.getParentNode();
        if (parentNode.isPresent()) {
            parentNode.ifPresent(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    VarValidator.this.lambda$null$2(node, reporter, vd2, (Node) obj);
                }
            });
        } else {
            reportIllegalPosition(node, reporter);
        }
    }

    private void reportIllegalPosition(VarType n10, ProblemReporter reporter) {
        reporter.report(n10, "\"var\" is not allowed here.", new Object[0]);
    }

    @Override
    public void accept(final VarType node, final ProblemReporter reporter) {
        if (node.hasParentNode() && (node.getParentNode().get() instanceof TypePatternExpr)) {
            return;
        }
        Optional<N> findAncestor = node.findAncestor(VariableDeclarator.class);
        if (!findAncestor.isPresent()) {
            if (this.varAllowedInLambdaParameters && ((Boolean) node.findAncestor(Parameter.class).flatMap(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return ((Parameter) obj).getParentNode();
                }
            }).map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    Boolean lambda$accept$0;
                    lambda$accept$0 = VarValidator.lambda$accept$0((Node) obj);
                    return lambda$accept$0;
                }
            }).orElse(Boolean.FALSE)).booleanValue()) {
                return;
            }
            reportIllegalPosition(node, reporter);
            return;
        }
        findAncestor.ifPresent(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VarValidator.this.lambda$accept$4(reporter, node, (VariableDeclarator) obj);
            }
        });
    }
}
