.class public Lcom/github/javaparser/ast/validator/language_level_validations/Java17Validator;
.super Lcom/github/javaparser/ast/validator/language_level_validations/Java16Validator;
.source "SourceFile"


# instance fields
.field final permitsNotAllowedAsIdentifier:Lcom/github/javaparser/ast/validator/Validator;

.field final sealedNotAllowedAsIdentifier:Lcom/github/javaparser/ast/validator/Validator;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/Java16Validator;-><init>()V

    new-instance v0, Lcom/github/javaparser/ast/validator/SimpleValidator;

    new-instance v1, Lcom/github/javaparser/ast/validator/language_level_validations/a;

    invoke-direct {v1}, Lcom/github/javaparser/ast/validator/language_level_validations/a;-><init>()V

    new-instance v2, Lcom/github/javaparser/ast/validator/language_level_validations/b;

    invoke-direct {v2}, Lcom/github/javaparser/ast/validator/language_level_validations/b;-><init>()V

    const-class v3, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    invoke-direct {v0, v3, v1, v2}, Lcom/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    iput-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java17Validator;->sealedNotAllowedAsIdentifier:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v1, Lcom/github/javaparser/ast/validator/SimpleValidator;

    new-instance v2, Lcom/github/javaparser/ast/validator/language_level_validations/c;

    invoke-direct {v2}, Lcom/github/javaparser/ast/validator/language_level_validations/c;-><init>()V

    new-instance v4, Lcom/github/javaparser/ast/validator/language_level_validations/d;

    invoke-direct {v4}, Lcom/github/javaparser/ast/validator/language_level_validations/d;-><init>()V

    invoke-direct {v1, v3, v2, v4}, Lcom/github/javaparser/ast/validator/SimpleValidator;-><init>(Ljava/lang/Class;Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    iput-object v1, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java17Validator;->permitsNotAllowedAsIdentifier:Lcom/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    invoke-virtual {p0, v1}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noSealedClasses:Lcom/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/validator/Validators;->remove(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noPermitsListInClasses:Lcom/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/validator/Validators;->remove(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    return-void
.end method

.method public static synthetic c0(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/Java17Validator;->lambda$new$0(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d0(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/Java17Validator;->lambda$new$2(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e0(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java17Validator;->lambda$new$3(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public static synthetic f0(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java17Validator;->lambda$new$1(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    const-string v0, "sealed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$new$1(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;

    const-string v1, "\'sealed\' identifier is not authorised in this context."

    sget-object v2, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_17:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;-><init>(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$new$2(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/TypeDeclaration;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    const-string v0, "permits"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$new$3(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "reporter"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;

    const-string v1, "\'permits\' identifier is not authorised in this context."

    sget-object v2, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_17:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;-><init>(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0, v1}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;[Ljava/lang/Object;)V

    return-void
.end method
