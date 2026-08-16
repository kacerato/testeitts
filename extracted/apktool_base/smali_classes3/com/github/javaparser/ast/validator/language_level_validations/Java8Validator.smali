.class public Lcom/github/javaparser/ast/validator/language_level_validations/Java8Validator;
.super Lcom/github/javaparser/ast/validator/language_level_validations/Java7Validator;
.source "SourceFile"


# instance fields
.field final defaultMethodsInInterface:Lcom/github/javaparser/ast/validator/Validator;

.field final modifiersWithoutPrivateInterfaceMethods:Lcom/github/javaparser/ast/validator/Validator;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/Java7Validator;-><init>()V

    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;-><init>(ZZZ)V

    iput-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java8Validator;->modifiersWithoutPrivateInterfaceMethods:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v1, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;

    new-instance v2, Lcom/github/javaparser/ast/validator/language_level_validations/f0;

    invoke-direct {v2}, Lcom/github/javaparser/ast/validator/language_level_validations/f0;-><init>()V

    const-class v3, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    invoke-direct {v1, v3, v2}, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;-><init>(Ljava/lang/Class;Lcom/github/javaparser/ast/validator/TypedValidator;)V

    iput-object v1, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java8Validator;->defaultMethodsInInterface:Lcom/github/javaparser/ast/validator/Validator;

    iget-object v2, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_2Validator;->modifiersWithoutDefaultAndStaticInterfaceMethodsAndPrivateInterfaceMethods:Lcom/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v2, v0}, Lcom/github/javaparser/ast/validator/Validators;->replace(Lcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    invoke-virtual {p0, v1}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noLambdas:Lcom/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/validator/Validators;->remove(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    return-void
.end method

.method public static synthetic Z(Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/MethodDeclaration;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java8Validator;->lambda$null$0(Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/MethodDeclaration;)V

    return-void
.end method

.method public static synthetic a0(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java8Validator;->lambda$new$1(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method private static synthetic lambda$new$1(Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 1
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

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->getMethods()Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/g0;

    invoke-direct {v0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/g0;-><init>(Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$null$0(Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/body/MethodDeclaration;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "reporter",
            "m"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/github/javaparser/ast/body/MethodDeclaration;->getBody()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "\'default\' methods must have a body."

    invoke-virtual {p0, p1, v1, v0}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
