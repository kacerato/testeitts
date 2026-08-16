package com.github.javaparser.ast.validator.language_level_validations;

import com.github.javaparser.ParserConfiguration;
import com.github.javaparser.ast.ImportDeclaration;
import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.body.AnnotationDeclaration;
import com.github.javaparser.ast.body.ClassOrInterfaceDeclaration;
import com.github.javaparser.ast.body.EnumDeclaration;
import com.github.javaparser.ast.body.Parameter;
import com.github.javaparser.ast.body.RecordDeclaration;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.expr.ClassExpr;
import com.github.javaparser.ast.expr.Expression;
import com.github.javaparser.ast.expr.InstanceOfExpr;
import com.github.javaparser.ast.expr.LambdaExpr;
import com.github.javaparser.ast.expr.RecordPatternExpr;
import com.github.javaparser.ast.expr.SwitchExpr;
import com.github.javaparser.ast.expr.TextBlockLiteralExpr;
import com.github.javaparser.ast.modules.ModuleDeclaration;
import com.github.javaparser.ast.nodeTypes.NodeWithTypeArguments;
import com.github.javaparser.ast.nodeTypes.NodeWithTypeParameters;
import com.github.javaparser.ast.stmt.AssertStmt;
import com.github.javaparser.ast.stmt.ForEachStmt;
import com.github.javaparser.ast.stmt.SwitchEntry;
import com.github.javaparser.ast.stmt.TryStmt;
import com.github.javaparser.ast.stmt.YieldStmt;
import com.github.javaparser.ast.type.UnionType;
import com.github.javaparser.ast.validator.ProblemReporter;
import com.github.javaparser.ast.validator.SimpleValidator;
import com.github.javaparser.ast.validator.SingleNodeTypeValidator;
import com.github.javaparser.ast.validator.TreeVisitorValidator;
import com.github.javaparser.ast.validator.TypedValidator;
import com.github.javaparser.ast.validator.Validator;
import com.github.javaparser.ast.validator.Validators;
import com.github.javaparser.ast.validator.language_level_validations.chunks.CommonValidators;
import com.github.javaparser.ast.validator.language_level_validations.chunks.ModifierValidator;
import com.github.javaparser.ast.validator.language_level_validations.chunks.NoBinaryIntegerLiteralsValidator;
import com.github.javaparser.ast.validator.language_level_validations.chunks.NoUnderscoresInIntegerLiteralsValidator;
import java.util.function.BiConsumer;
import java.util.function.Predicate;

public class Java1_0Validator extends Validators {
    final Validator modifiersWithoutStrictfpAndDefaultAndStaticInterfaceMethodsAndPrivateInterfaceMethods;
    final Validator noAnnotations;
    final Validator noAssertKeyword;
    final Validator noBinaryIntegerLiterals;
    final Validator noEnums;
    final Validator noForEach;
    final Validator noGenerics;
    final Validator noInnerClasses;
    final Validator noLambdas;
    final Validator noModules;
    final Validator noMultiCatch;
    final Validator noPatternMatchingInstanceOf;
    final Validator noPermitsListInClasses;
    final Validator noRecordDeclaration;
    final Validator noRecordPatterns;
    final Validator noReflection;
    final Validator noSealedClasses;
    final Validator noStaticImports;
    final Validator noSwitchExpressions;
    final Validator noSwitchNullDefault;
    final Validator noSwitchPatterns;
    final Validator noTextBlockLiteral;
    final Validator noUnderscoresInIntegerLiterals;
    final Validator noVarargs;
    final Validator noYield;
    final Validator onlyOneLabelInSwitchCase;
    final SingleNodeTypeValidator<TryStmt> tryWithoutResources;

    public Java1_0Validator() {
        super(new CommonValidators());
        Validator modifierValidator = new ModifierValidator(false, false, false);
        this.modifiersWithoutStrictfpAndDefaultAndStaticInterfaceMethodsAndPrivateInterfaceMethods = modifierValidator;
        Validator simpleValidator = new SimpleValidator(AssertStmt.class, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$new$0;
                lambda$new$0 = Java1_0Validator.lambda$new$0((AssertStmt) obj);
                return lambda$new$0;
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Java1_0Validator.lambda$new$1((AssertStmt) obj, (ProblemReporter) obj2);
            }
        });
        this.noAssertKeyword = simpleValidator;
        Validator simpleValidator2 = new SimpleValidator(ClassOrInterfaceDeclaration.class, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$new$2;
                lambda$new$2 = Java1_0Validator.lambda$new$2((ClassOrInterfaceDeclaration) obj);
                return lambda$new$2;
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Java1_0Validator.lambda$new$3((ClassOrInterfaceDeclaration) obj, (ProblemReporter) obj2);
            }
        });
        this.noInnerClasses = simpleValidator2;
        Validator simpleValidator3 = new SimpleValidator(ClassExpr.class, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$new$4;
                lambda$new$4 = Java1_0Validator.lambda$new$4((ClassExpr) obj);
                return lambda$new$4;
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Java1_0Validator.lambda$new$5((ClassExpr) obj, (ProblemReporter) obj2);
            }
        });
        this.noReflection = simpleValidator3;
        Validator treeVisitorValidator = new TreeVisitorValidator(new Validator() {
            @Override
            public final void accept(Node node, ProblemReporter problemReporter) {
                Java1_0Validator.lambda$new$6(node, problemReporter);
            }
        });
        this.noGenerics = treeVisitorValidator;
        SingleNodeTypeValidator<TryStmt> singleNodeTypeValidator = new SingleNodeTypeValidator<>(TryStmt.class, new TypedValidator() {
            @Override
            public final void accept(Node node, ProblemReporter problemReporter) {
                Java1_0Validator.lambda$new$7((TryStmt) node, problemReporter);
            }
        });
        this.tryWithoutResources = singleNodeTypeValidator;
        Validator treeVisitorValidator2 = new TreeVisitorValidator(new Validator() {
            @Override
            public final void accept(Node node, ProblemReporter problemReporter) {
                Java1_0Validator.lambda$new$8(node, problemReporter);
            }
        });
        this.noAnnotations = treeVisitorValidator2;
        Validator simpleValidator4 = new SimpleValidator(EnumDeclaration.class, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$new$9;
                lambda$new$9 = Java1_0Validator.lambda$new$9((EnumDeclaration) obj);
                return lambda$new$9;
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Java1_0Validator.lambda$new$10((EnumDeclaration) obj, (ProblemReporter) obj2);
            }
        });
        this.noEnums = simpleValidator4;
        Validator simpleValidator5 = new SimpleValidator(Parameter.class, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((Parameter) obj).isVarArgs();
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Java1_0Validator.lambda$new$11((Parameter) obj, (ProblemReporter) obj2);
            }
        });
        this.noVarargs = simpleValidator5;
        Validator simpleValidator6 = new SimpleValidator(ForEachStmt.class, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$new$12;
                lambda$new$12 = Java1_0Validator.lambda$new$12((ForEachStmt) obj);
                return lambda$new$12;
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Java1_0Validator.lambda$new$13((ForEachStmt) obj, (ProblemReporter) obj2);
            }
        });
        this.noForEach = simpleValidator6;
        Validator simpleValidator7 = new SimpleValidator(ImportDeclaration.class, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((ImportDeclaration) obj).isStatic();
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Java1_0Validator.lambda$new$14((ImportDeclaration) obj, (ProblemReporter) obj2);
            }
        });
        this.noStaticImports = simpleValidator7;
        Validator simpleValidator8 = new SimpleValidator(SwitchEntry.class, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$new$15;
                lambda$new$15 = Java1_0Validator.lambda$new$15((SwitchEntry) obj);
                return lambda$new$15;
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Java1_0Validator.lambda$new$16((SwitchEntry) obj, (ProblemReporter) obj2);
            }
        });
        this.onlyOneLabelInSwitchCase = simpleValidator8;
        Validator simpleValidator9 = new SimpleValidator(YieldStmt.class, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$new$17;
                lambda$new$17 = Java1_0Validator.lambda$new$17((YieldStmt) obj);
                return lambda$new$17;
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Java1_0Validator.lambda$new$18((YieldStmt) obj, (ProblemReporter) obj2);
            }
        });
        this.noYield = simpleValidator9;
        Validator noBinaryIntegerLiteralsValidator = new NoBinaryIntegerLiteralsValidator();
        this.noBinaryIntegerLiterals = noBinaryIntegerLiteralsValidator;
        Validator noUnderscoresInIntegerLiteralsValidator = new NoUnderscoresInIntegerLiteralsValidator();
        this.noUnderscoresInIntegerLiterals = noUnderscoresInIntegerLiteralsValidator;
        Validator simpleValidator10 = new SimpleValidator(UnionType.class, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$new$19;
                lambda$new$19 = Java1_0Validator.lambda$new$19((UnionType) obj);
                return lambda$new$19;
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Java1_0Validator.lambda$new$20((UnionType) obj, (ProblemReporter) obj2);
            }
        });
        this.noMultiCatch = simpleValidator10;
        Validator simpleValidator11 = new SimpleValidator(LambdaExpr.class, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$new$21;
                lambda$new$21 = Java1_0Validator.lambda$new$21((LambdaExpr) obj);
                return lambda$new$21;
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Java1_0Validator.lambda$new$22((LambdaExpr) obj, (ProblemReporter) obj2);
            }
        });
        this.noLambdas = simpleValidator11;
        Validator simpleValidator12 = new SimpleValidator(ModuleDeclaration.class, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$new$23;
                lambda$new$23 = Java1_0Validator.lambda$new$23((ModuleDeclaration) obj);
                return lambda$new$23;
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Java1_0Validator.lambda$new$24((ModuleDeclaration) obj, (ProblemReporter) obj2);
            }
        });
        this.noModules = simpleValidator12;
        Validator simpleValidator13 = new SimpleValidator(SwitchExpr.class, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$new$25;
                lambda$new$25 = Java1_0Validator.lambda$new$25((SwitchExpr) obj);
                return lambda$new$25;
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Java1_0Validator.lambda$new$26((SwitchExpr) obj, (ProblemReporter) obj2);
            }
        });
        this.noSwitchExpressions = simpleValidator13;
        Validator simpleValidator14 = new SimpleValidator(InstanceOfExpr.class, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$new$27;
                lambda$new$27 = Java1_0Validator.lambda$new$27((InstanceOfExpr) obj);
                return lambda$new$27;
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Java1_0Validator.lambda$new$28((InstanceOfExpr) obj, (ProblemReporter) obj2);
            }
        });
        this.noPatternMatchingInstanceOf = simpleValidator14;
        Validator simpleValidator15 = new SimpleValidator(TextBlockLiteralExpr.class, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$new$29;
                lambda$new$29 = Java1_0Validator.lambda$new$29((TextBlockLiteralExpr) obj);
                return lambda$new$29;
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Java1_0Validator.lambda$new$30((TextBlockLiteralExpr) obj, (ProblemReporter) obj2);
            }
        });
        this.noTextBlockLiteral = simpleValidator15;
        Validator simpleValidator16 = new SimpleValidator(RecordDeclaration.class, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$new$31;
                lambda$new$31 = Java1_0Validator.lambda$new$31((RecordDeclaration) obj);
                return lambda$new$31;
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Java1_0Validator.lambda$new$32((RecordDeclaration) obj, (ProblemReporter) obj2);
            }
        });
        this.noRecordDeclaration = simpleValidator16;
        Validator simpleValidator17 = new SimpleValidator(ClassOrInterfaceDeclaration.class, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$new$33;
                lambda$new$33 = Java1_0Validator.lambda$new$33((ClassOrInterfaceDeclaration) obj);
                return lambda$new$33;
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Java1_0Validator.lambda$new$34((ClassOrInterfaceDeclaration) obj, (ProblemReporter) obj2);
            }
        });
        this.noSealedClasses = simpleValidator17;
        Validator simpleValidator18 = new SimpleValidator(ClassOrInterfaceDeclaration.class, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$new$35;
                lambda$new$35 = Java1_0Validator.lambda$new$35((ClassOrInterfaceDeclaration) obj);
                return lambda$new$35;
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Java1_0Validator.lambda$new$36((ClassOrInterfaceDeclaration) obj, (ProblemReporter) obj2);
            }
        });
        this.noPermitsListInClasses = simpleValidator18;
        Validator singleNodeTypeValidator2 = new SingleNodeTypeValidator(SwitchEntry.class, new TypedValidator() {
            @Override
            public final void accept(Node node, ProblemReporter problemReporter) {
                Java1_0Validator.lambda$new$37((SwitchEntry) node, problemReporter);
            }
        });
        this.noSwitchNullDefault = singleNodeTypeValidator2;
        Validator singleNodeTypeValidator3 = new SingleNodeTypeValidator(SwitchEntry.class, new TypedValidator() {
            @Override
            public final void accept(Node node, ProblemReporter problemReporter) {
                Java1_0Validator.lambda$new$39((SwitchEntry) node, problemReporter);
            }
        });
        this.noSwitchPatterns = singleNodeTypeValidator3;
        Validator treeVisitorValidator3 = new TreeVisitorValidator(new Validator() {
            @Override
            public final void accept(Node node, ProblemReporter problemReporter) {
                Java1_0Validator.lambda$new$40(node, problemReporter);
            }
        });
        this.noRecordPatterns = treeVisitorValidator3;
        add(modifierValidator);
        add(simpleValidator);
        add(simpleValidator2);
        add(simpleValidator3);
        add(treeVisitorValidator);
        add(singleNodeTypeValidator);
        add(treeVisitorValidator2);
        add(simpleValidator4);
        add(simpleValidator5);
        add(simpleValidator6);
        add(simpleValidator7);
        add(simpleValidator9);
        add(simpleValidator8);
        add(noBinaryIntegerLiteralsValidator);
        add(noUnderscoresInIntegerLiteralsValidator);
        add(simpleValidator10);
        add(simpleValidator11);
        add(simpleValidator12);
        add(simpleValidator13);
        add(simpleValidator14);
        add(simpleValidator15);
        add(simpleValidator16);
        add(simpleValidator17);
        add(simpleValidator18);
        add(singleNodeTypeValidator2);
        add(singleNodeTypeValidator3);
        add(treeVisitorValidator3);
    }

    public static boolean lambda$new$0(AssertStmt n10) {
        return true;
    }

    public static void lambda$new$1(AssertStmt n10, ProblemReporter reporter) {
        reporter.report(n10, new UpgradeJavaMessage("'assert' keyword is not supported.", ParserConfiguration.LanguageLevel.JAVA_1_4), new Object[0]);
    }

    public static void lambda$new$10(EnumDeclaration n10, ProblemReporter reporter) {
        reporter.report(n10, new UpgradeJavaMessage("Enumerations are not supported.", ParserConfiguration.LanguageLevel.JAVA_5), new Object[0]);
    }

    public static void lambda$new$11(Parameter n10, ProblemReporter reporter) {
        reporter.report(n10, new UpgradeJavaMessage("Varargs are not supported.", ParserConfiguration.LanguageLevel.JAVA_5), new Object[0]);
    }

    public static boolean lambda$new$12(ForEachStmt n10) {
        return true;
    }

    public static void lambda$new$13(ForEachStmt n10, ProblemReporter reporter) {
        reporter.report(n10, new UpgradeJavaMessage("For-each loops are not supported.", ParserConfiguration.LanguageLevel.JAVA_5), new Object[0]);
    }

    public static void lambda$new$14(ImportDeclaration n10, ProblemReporter reporter) {
        reporter.report(n10, new UpgradeJavaMessage("Static imports are not supported.", ParserConfiguration.LanguageLevel.JAVA_5), new Object[0]);
    }

    public static boolean lambda$new$15(SwitchEntry n10) {
        return n10.getLabels().size() > 1;
    }

    public static void lambda$new$16(SwitchEntry n10, ProblemReporter reporter) {
        reporter.report(n10.getLabels().getParentNode().get(), new UpgradeJavaMessage("Only one label allowed in a switch-case.", ParserConfiguration.LanguageLevel.JAVA_7), new Object[0]);
    }

    public static boolean lambda$new$17(YieldStmt n10) {
        return true;
    }

    public static void lambda$new$18(YieldStmt n10, ProblemReporter reporter) {
        reporter.report(n10, new UpgradeJavaMessage("Only labels allowed in break statements.", ParserConfiguration.LanguageLevel.JAVA_13), new Object[0]);
    }

    public static boolean lambda$new$19(UnionType n10) {
        return true;
    }

    public static boolean lambda$new$2(ClassOrInterfaceDeclaration n10) {
        return !n10.isTopLevelType();
    }

    public static void lambda$new$20(UnionType n10, ProblemReporter reporter) {
        reporter.report(n10, new UpgradeJavaMessage("Multi-catch is not supported.", ParserConfiguration.LanguageLevel.JAVA_7), new Object[0]);
    }

    public static boolean lambda$new$21(LambdaExpr n10) {
        return true;
    }

    public static void lambda$new$22(LambdaExpr n10, ProblemReporter reporter) {
        reporter.report(n10, new UpgradeJavaMessage("Lambdas are not supported.", ParserConfiguration.LanguageLevel.JAVA_8), new Object[0]);
    }

    public static boolean lambda$new$23(ModuleDeclaration n10) {
        return true;
    }

    public static void lambda$new$24(ModuleDeclaration n10, ProblemReporter reporter) {
        reporter.report(n10, new UpgradeJavaMessage("Modules are not supported.", ParserConfiguration.LanguageLevel.JAVA_9), new Object[0]);
    }

    public static boolean lambda$new$25(SwitchExpr n10) {
        return true;
    }

    public static void lambda$new$26(SwitchExpr n10, ProblemReporter reporter) {
        reporter.report(n10, new UpgradeJavaMessage("Switch expressions are not supported.", ParserConfiguration.LanguageLevel.JAVA_12), new Object[0]);
    }

    public static boolean lambda$new$27(InstanceOfExpr n10) {
        return n10.getPattern().isPresent();
    }

    public static void lambda$new$28(InstanceOfExpr n10, ProblemReporter reporter) {
        reporter.report(n10, new UpgradeJavaMessage("Use of patterns with instanceof is not supported.", ParserConfiguration.LanguageLevel.JAVA_14), new Object[0]);
    }

    public static boolean lambda$new$29(TextBlockLiteralExpr n10) {
        return true;
    }

    public static void lambda$new$3(ClassOrInterfaceDeclaration n10, ProblemReporter reporter) {
        reporter.report(n10, new UpgradeJavaMessage("inner classes or interfaces are not supported.", ParserConfiguration.LanguageLevel.JAVA_1_1), new Object[0]);
    }

    public static void lambda$new$30(TextBlockLiteralExpr n10, ProblemReporter reporter) {
        reporter.report(n10, new UpgradeJavaMessage("Text Block Literals are not supported.", ParserConfiguration.LanguageLevel.JAVA_15), new Object[0]);
    }

    public static boolean lambda$new$31(RecordDeclaration n10) {
        return true;
    }

    public static void lambda$new$32(RecordDeclaration n10, ProblemReporter reporter) {
        reporter.report(n10, new UpgradeJavaMessage("Record Declarations are not supported.", ParserConfiguration.LanguageLevel.JAVA_14), new Object[0]);
    }

    public static boolean lambda$new$33(ClassOrInterfaceDeclaration n10) {
        return n10.hasModifier(Modifier.Keyword.SEALED) || n10.hasModifier(Modifier.Keyword.NON_SEALED);
    }

    public static void lambda$new$34(ClassOrInterfaceDeclaration n10, ProblemReporter reporter) {
        reporter.report(n10, new UpgradeJavaMessage("Sealed classes are not supported.", ParserConfiguration.LanguageLevel.JAVA_15), new Object[0]);
    }

    public static boolean lambda$new$35(ClassOrInterfaceDeclaration n10) {
        return n10.getPermittedTypes().isNonEmpty();
    }

    public static void lambda$new$36(ClassOrInterfaceDeclaration n10, ProblemReporter reporter) {
        reporter.report(n10, new UpgradeJavaMessage("Permitted sub-classes are not supported.", ParserConfiguration.LanguageLevel.JAVA_17), new Object[0]);
    }

    public static void lambda$new$37(SwitchEntry n10, ProblemReporter reporter) {
        if (n10.getLabels().isNonEmpty() && n10.isDefault()) {
            reporter.report(n10, new UpgradeJavaMessage("Switch case null, default not supported.", ParserConfiguration.LanguageLevel.JAVA_21), new Object[0]);
        }
    }

    public static void lambda$new$39(SwitchEntry n10, ProblemReporter reporter) {
        if (n10.getGuard().isPresent() || n10.getLabels().stream().anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean isPatternExpr;
                isPatternExpr = ((Expression) obj).isPatternExpr();
                return isPatternExpr;
            }
        })) {
            reporter.report(n10, new UpgradeJavaMessage("Switch patterns not supported.", ParserConfiguration.LanguageLevel.JAVA_21), new Object[0]);
        }
    }

    public static boolean lambda$new$4(ClassExpr n10) {
        return true;
    }

    public static void lambda$new$40(Node node, ProblemReporter reporter) {
        if (node instanceof RecordPatternExpr) {
            reporter.report(node, new UpgradeJavaMessage("Record patterns are not supported.", ParserConfiguration.LanguageLevel.JAVA_21), new Object[0]);
        }
    }

    public static void lambda$new$5(ClassExpr n10, ProblemReporter reporter) {
        reporter.report(n10, new UpgradeJavaMessage("Reflection is not supported.", ParserConfiguration.LanguageLevel.JAVA_1_1), new Object[0]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void lambda$new$6(Node node, ProblemReporter reporter) {
        if ((node instanceof NodeWithTypeArguments) && ((NodeWithTypeArguments) node).getTypeArguments().isPresent()) {
            reporter.report(node, new UpgradeJavaMessage("Generics are not supported.", ParserConfiguration.LanguageLevel.JAVA_5), new Object[0]);
        }
        if ((node instanceof NodeWithTypeParameters) && ((NodeWithTypeParameters) node).getTypeParameters().isNonEmpty()) {
            reporter.report(node, new UpgradeJavaMessage("Generics are not supported.", ParserConfiguration.LanguageLevel.JAVA_5), new Object[0]);
        }
    }

    public static void lambda$new$7(TryStmt n10, ProblemReporter reporter) {
        if (n10.getCatchClauses().isEmpty() && !n10.getFinallyBlock().isPresent()) {
            reporter.report(n10, new UpgradeJavaMessage("Try has no finally and no catch.", ParserConfiguration.LanguageLevel.JAVA_7), new Object[0]);
        }
        if (n10.getResources().isNonEmpty()) {
            reporter.report(n10, new UpgradeJavaMessage("Catch with resource is not supported.", ParserConfiguration.LanguageLevel.JAVA_7), new Object[0]);
        }
    }

    public static void lambda$new$8(Node node, ProblemReporter reporter) {
        if ((node instanceof AnnotationExpr) || (node instanceof AnnotationDeclaration)) {
            reporter.report(node, new UpgradeJavaMessage("Annotations are not supported.", ParserConfiguration.LanguageLevel.JAVA_5), new Object[0]);
        }
    }

    public static boolean lambda$new$9(EnumDeclaration n10) {
        return true;
    }
}
