.class public Lcom/github/javaparser/ast/validator/language_level_validations/Java9Validator;
.super Lcom/github/javaparser/ast/validator/language_level_validations/Java8Validator;
.source "SourceFile"


# instance fields
.field final modifiers:Lcom/github/javaparser/ast/validator/Validator;

.field final tryWithResources:Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator<",
            "Lcom/github/javaparser/ast/stmt/TryStmt;",
            ">;"
        }
    .end annotation
.end field

.field final underscoreKeywordValidator:Lcom/github/javaparser/ast/validator/Validator;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/github/javaparser/ast/validator/language_level_validations/Java8Validator;-><init>()V

    new-instance v0, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/UnderscoreKeywordValidator;

    invoke-direct {v0}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/UnderscoreKeywordValidator;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java9Validator;->underscoreKeywordValidator:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v1, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v2, v2}, Lcom/github/javaparser/ast/validator/language_level_validations/chunks/ModifierValidator;-><init>(ZZZ)V

    iput-object v1, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java9Validator;->modifiers:Lcom/github/javaparser/ast/validator/Validator;

    new-instance v2, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;

    new-instance v3, Lcom/github/javaparser/ast/validator/language_level_validations/h0;

    invoke-direct {v3}, Lcom/github/javaparser/ast/validator/language_level_validations/h0;-><init>()V

    const-class v4, Lcom/github/javaparser/ast/stmt/TryStmt;

    invoke-direct {v2, v4, v3}, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;-><init>(Ljava/lang/Class;Lcom/github/javaparser/ast/validator/TypedValidator;)V

    iput-object v2, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java9Validator;->tryWithResources:Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/validator/Validators;->add(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java1_0Validator;->noModules:Lcom/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/ast/validator/Validators;->remove(Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java8Validator;->modifiersWithoutPrivateInterfaceMethods:Lcom/github/javaparser/ast/validator/Validator;

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/validator/Validators;->replace(Lcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/Java7Validator;->tryWithLimitedResources:Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;

    invoke-virtual {p0, v0, v2}, Lcom/github/javaparser/ast/validator/Validators;->replace(Lcom/github/javaparser/ast/validator/Validator;Lcom/github/javaparser/ast/validator/Validator;)Lcom/github/javaparser/ast/validator/Validators;

    return-void
.end method

.method public static synthetic b0(Lcom/github/javaparser/ast/stmt/TryStmt;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/validator/language_level_validations/Java9Validator;->lambda$new$0(Lcom/github/javaparser/ast/stmt/TryStmt;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Lcom/github/javaparser/ast/stmt/TryStmt;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
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

    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/TryStmt;->getCatchClauses()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/TryStmt;->getResources()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/ast/stmt/TryStmt;->getFinallyBlock()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Try has no finally, no catch, and no resources."

    invoke-virtual {p1, p0, v1, v0}, Lcom/github/javaparser/ast/validator/ProblemReporter;->report(Lcom/github/javaparser/ast/nodeTypes/NodeWithTokenRange;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
