package com.github.javaparser.ast.validator.language_level_validations.chunks;

import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.body.BodyDeclaration;
import com.github.javaparser.ast.body.ClassOrInterfaceDeclaration;
import com.github.javaparser.ast.body.InitializerDeclaration;
import com.github.javaparser.ast.expr.ArrayAccessExpr;
import com.github.javaparser.ast.expr.AssignExpr;
import com.github.javaparser.ast.expr.EnclosedExpr;
import com.github.javaparser.ast.expr.Expression;
import com.github.javaparser.ast.expr.FieldAccessExpr;
import com.github.javaparser.ast.expr.NameExpr;
import com.github.javaparser.ast.validator.ProblemReporter;
import com.github.javaparser.ast.validator.SimpleValidator;
import com.github.javaparser.ast.validator.SingleNodeTypeValidator;
import com.github.javaparser.ast.validator.TreeVisitorValidator;
import com.github.javaparser.ast.validator.TypedValidator;
import com.github.javaparser.ast.validator.Validator;
import com.github.javaparser.ast.validator.Validators;
import com.github.javaparser.ast.validator.language_level_validations.chunks.CommonValidators;
import com.github.javaparser.metamodel.NodeMetaModel;
import com.github.javaparser.metamodel.PropertyMetaModel;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Predicate;

public class CommonValidators extends Validators {
    public CommonValidators() {
        super(new SimpleValidator(ClassOrInterfaceDeclaration.class, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$new$0;
                lambda$new$0 = CommonValidators.lambda$new$0((ClassOrInterfaceDeclaration) obj);
                return lambda$new$0;
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                CommonValidators.lambda$new$1((ClassOrInterfaceDeclaration) obj, (ProblemReporter) obj2);
            }
        }), new SimpleValidator(ClassOrInterfaceDeclaration.class, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$new$2;
                lambda$new$2 = CommonValidators.lambda$new$2((ClassOrInterfaceDeclaration) obj);
                return lambda$new$2;
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                CommonValidators.lambda$new$3((ClassOrInterfaceDeclaration) obj, (ProblemReporter) obj2);
            }
        }), new SingleNodeTypeValidator(ClassOrInterfaceDeclaration.class, new TypedValidator() {
            @Override
            public final void accept(Node node, ProblemReporter problemReporter) {
                CommonValidators.lambda$new$5((ClassOrInterfaceDeclaration) node, problemReporter);
            }
        }), new SingleNodeTypeValidator(AssignExpr.class, new TypedValidator() {
            @Override
            public final void accept(Node node, ProblemReporter problemReporter) {
                CommonValidators.lambda$new$6((AssignExpr) node, problemReporter);
            }
        }), new TreeVisitorValidator(new Validator() {
            @Override
            public final void accept(Node node, ProblemReporter problemReporter) {
                CommonValidators.lambda$new$7(node, problemReporter);
            }
        }));
    }

    public static boolean lambda$new$0(ClassOrInterfaceDeclaration n10) {
        return !n10.isInterface() && n10.getExtendedTypes().size() > 1;
    }

    public static void lambda$new$1(ClassOrInterfaceDeclaration n10, ProblemReporter reporter) {
        reporter.report(n10.getExtendedTypes(1), "A class cannot extend more than one other class.", new Object[0]);
    }

    public static boolean lambda$new$2(ClassOrInterfaceDeclaration n10) {
        return n10.isInterface() && !n10.getImplementedTypes().isEmpty();
    }

    public static void lambda$new$3(ClassOrInterfaceDeclaration n10, ProblemReporter reporter) {
        reporter.report(n10.getImplementedTypes(0), "An interface cannot implement other interfaces.", new Object[0]);
    }

    public static void lambda$new$5(ClassOrInterfaceDeclaration n10, final ProblemReporter reporter) {
        if (n10.isInterface()) {
            n10.getMembers().forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    CommonValidators.lambda$null$4(ProblemReporter.this, (BodyDeclaration) obj);
                }
            });
        }
    }

    public static void lambda$new$6(AssignExpr n10, ProblemReporter reporter) {
        Expression target = n10.getTarget();
        while (target instanceof EnclosedExpr) {
            target = ((EnclosedExpr) target).getInner();
        }
        if ((target instanceof NameExpr) || (target instanceof ArrayAccessExpr) || (target instanceof FieldAccessExpr)) {
            return;
        }
        reporter.report(n10.getTarget(), "Illegal left hand side of an assignment.", new Object[0]);
    }

    public static void lambda$new$7(Node node, ProblemReporter problemReporter) {
        NodeMetaModel metaModel = node.getMetaModel();
        for (PropertyMetaModel propertyMetaModel : metaModel.getAllPropertyMetaModels()) {
            if (propertyMetaModel.isNonEmpty() && propertyMetaModel.isNodeList() && ((NodeList) propertyMetaModel.getValue(node)).isEmpty()) {
                problemReporter.report(node, "%s.%s can not be empty.", metaModel.getTypeName(), propertyMetaModel.getName());
            }
        }
    }

    public static void lambda$null$4(final ProblemReporter reporter, BodyDeclaration mem) {
        if (mem instanceof InitializerDeclaration) {
            reporter.report(mem, "An interface cannot have initializers.", new Object[0]);
        }
    }
}
