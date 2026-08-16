package com.github.javaparser.ast.validator.language_level_validations;

import com.github.javaparser.ParserConfiguration;
import com.github.javaparser.ast.body.ClassOrInterfaceDeclaration;
import com.github.javaparser.ast.validator.ProblemReporter;
import com.github.javaparser.ast.validator.SimpleValidator;
import com.github.javaparser.ast.validator.Validator;
import java.util.function.BiConsumer;
import java.util.function.Predicate;

public class Java17Validator extends Java16Validator {
    final Validator permitsNotAllowedAsIdentifier;
    final Validator sealedNotAllowedAsIdentifier;

    public Java17Validator() {
        SimpleValidator simpleValidator = new SimpleValidator(ClassOrInterfaceDeclaration.class, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$new$0;
                lambda$new$0 = Java17Validator.lambda$new$0((ClassOrInterfaceDeclaration) obj);
                return lambda$new$0;
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Java17Validator.lambda$new$1((ClassOrInterfaceDeclaration) obj, (ProblemReporter) obj2);
            }
        });
        this.sealedNotAllowedAsIdentifier = simpleValidator;
        SimpleValidator simpleValidator2 = new SimpleValidator(ClassOrInterfaceDeclaration.class, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$new$2;
                lambda$new$2 = Java17Validator.lambda$new$2((ClassOrInterfaceDeclaration) obj);
                return lambda$new$2;
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Java17Validator.lambda$new$3((ClassOrInterfaceDeclaration) obj, (ProblemReporter) obj2);
            }
        });
        this.permitsNotAllowedAsIdentifier = simpleValidator2;
        add(simpleValidator);
        add(simpleValidator2);
        remove(this.noSealedClasses);
        remove(this.noPermitsListInClasses);
    }

    public static boolean lambda$new$0(ClassOrInterfaceDeclaration n10) {
        return n10.getName().getIdentifier().equals("sealed");
    }

    public static void lambda$new$1(ClassOrInterfaceDeclaration n10, ProblemReporter reporter) {
        reporter.report(n10, new UpgradeJavaMessage("'sealed' identifier is not authorised in this context.", ParserConfiguration.LanguageLevel.JAVA_17), new Object[0]);
    }

    public static boolean lambda$new$2(ClassOrInterfaceDeclaration n10) {
        return n10.getName().getIdentifier().equals("permits");
    }

    public static void lambda$new$3(ClassOrInterfaceDeclaration n10, ProblemReporter reporter) {
        reporter.report(n10, new UpgradeJavaMessage("'permits' identifier is not authorised in this context.", ParserConfiguration.LanguageLevel.JAVA_17), new Object[0]);
    }
}
