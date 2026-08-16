.class public Lcom/github/javaparser/ast/validator/language_level_validations/Java1_1Validator;
.super Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;
.source "SourceFile"


# instance fields
.field final innerClasses:Lcom/github/javaparser/ast/validator/Validator;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;-><init>()V

    new-instance v0, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;

    new-instance v1, Lcom/github/javaparser/ast/validator/language_level_validations/X;

    invoke-direct {v1}, Lcom/github/javaparser/ast/validator/language_level_validations/X;-><init>()V

    const-class v2, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    invoke-direct {v0, v2, v1}, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;-><init>(Ljava/lang/Class;Lcom/github/javaparser/ast/validator/TypedValidator;)V

    iput-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_1Validator;->innerClasses:Lcom/github/javaparser/ast/validator/Validator;

    iget-object v1, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noInnerClasses:Lcom/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v1, v0}, Lcom/github/javaparser/ast/validator/Validators;->replace(Lcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noReflection:Lcom/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/validator/Validators;->remove(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    return-void
.end method

.method public static synthetic Q(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_1Validator;->lambda$new$1(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method public static synthetic R(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/Node;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_1Validator;->lambda$null$0(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method private static synthetic lambda$new$1(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
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

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/validator/language_level_validations/W;

    invoke-direct {v1, p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/W;-><init>(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$null$0(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "n",
            "reporter",
            "p"
        }
    .end annotation

    instance-of p2, p2, Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;

    const-string v0, "There is no such thing as a local interface."

    sget-object v1, Lcom/github/javaparser/ParserConfiguration$LanguageLevel;->JAVA_16:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-direct {p2, v0, v1}, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;-><init>(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2, v0}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
