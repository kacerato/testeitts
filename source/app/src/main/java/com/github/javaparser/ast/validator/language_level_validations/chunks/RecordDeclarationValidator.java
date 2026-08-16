package com.github.javaparser.ast.validator.language_level_validations.chunks;

import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.body.FieldDeclaration;
import com.github.javaparser.ast.body.MethodDeclaration;
import com.github.javaparser.ast.body.Parameter;
import com.github.javaparser.ast.body.RecordDeclaration;
import com.github.javaparser.ast.validator.ProblemReporter;
import com.github.javaparser.ast.validator.TypedValidator;
import com.github.javaparser.ast.validator.language_level_validations.chunks.RecordDeclarationValidator;
import java.util.function.Consumer;
import java.util.function.Predicate;

public class RecordDeclarationValidator implements TypedValidator<RecordDeclaration> {
    private void forbidAbstractModifier(RecordDeclaration n10, ProblemReporter reporter) {
        if (n10.getModifiers().contains((NodeList<Modifier>) Modifier.abstractModifier())) {
            reporter.report(n10, "Record Declarations must not be declared as abstract.", new Object[0]);
        }
    }

    private void forbidNonStaticFieldsInRecords(RecordDeclaration n10, ProblemReporter reporter) {
        if (n10.getFields().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$forbidNonStaticFieldsInRecords$0;
                lambda$forbidNonStaticFieldsInRecords$0 = RecordDeclarationValidator.lambda$forbidNonStaticFieldsInRecords$0((FieldDeclaration) obj);
                return lambda$forbidNonStaticFieldsInRecords$0;
            }
        }).count() > 0) {
            reporter.report(n10, "Record Declarations must have zero non-static fields.", new Object[0]);
        }
    }

    public static boolean lambda$forbidNonStaticFieldsInRecords$0(FieldDeclaration fieldDeclaration) {
        return !fieldDeclaration.isStatic();
    }

    public static boolean lambda$null$1(MethodDeclaration methodDeclaration) {
        return methodDeclaration.getParameters().isEmpty();
    }

    public static void lambda$null$2(final Parameter parameter, final ProblemReporter reporter, final RecordDeclaration n10, MethodDeclaration methodDeclaration) {
        if (methodDeclaration.getType2().equals(parameter.getType2())) {
            return;
        }
        reporter.report(n10, String.format("Incorrect component accessor return type. Expected: '%s', found: '%s'.", parameter.getTypeAsString(), methodDeclaration.getTypeAsString()), new Object[0]);
    }

    public static void lambda$validateRecordComponentAccessorMethods$3(final RecordDeclaration n10, final ProblemReporter reporter, final Parameter parameter) {
        n10.getMethodsByName(parameter.getNameAsString()).stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$null$1;
                lambda$null$1 = RecordDeclarationValidator.lambda$null$1((MethodDeclaration) obj);
                return lambda$null$1;
            }
        }).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                RecordDeclarationValidator.lambda$null$2(Parameter.this, reporter, n10, (MethodDeclaration) obj);
            }
        });
    }

    private void validateRecordComponentAccessorMethods(final RecordDeclaration n10, final ProblemReporter reporter) {
        n10.getParameters().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                RecordDeclarationValidator.lambda$validateRecordComponentAccessorMethods$3(RecordDeclaration.this, reporter, (Parameter) obj);
            }
        });
    }

    @Override
    public void accept(RecordDeclaration node, ProblemReporter reporter) {
        forbidAbstractModifier(node, reporter);
        forbidNonStaticFieldsInRecords(node, reporter);
        validateRecordComponentAccessorMethods(node, reporter);
    }
}
