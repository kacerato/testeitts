.class public Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/validator/Validator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/github/javaparser/ast/Node;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/github/javaparser/ast/validator/Validator;"
    }
.end annotation


# instance fields
.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TN;>;"
        }
    .end annotation
.end field

.field private final validator:Lcom/github/javaparser/ast/validator/TypedValidator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/javaparser/ast/validator/TypedValidator<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/github/javaparser/ast/validator/TypedValidator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "validator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TN;>;",
            "Lcom/github/javaparser/ast/validator/TypedValidator<",
            "TN;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;->type:Ljava/lang/Class;

    iput-object p2, p0, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;->validator:Lcom/github/javaparser/ast/validator/TypedValidator;

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/Node;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;->lambda$accept$0(Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method private synthetic lambda$accept$0(Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "problemReporter",
            "n"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;->validator:Lcom/github/javaparser/ast/validator/TypedValidator;

    invoke-interface {v0, p2, p1}, Lcom/github/javaparser/ast/validator/TypedValidator;->accept(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "problemReporter"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;->validator:Lcom/github/javaparser/ast/validator/TypedValidator;

    iget-object v1, p0, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;->type:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/Node;

    invoke-interface {v0, v1, p2}, Lcom/github/javaparser/ast/validator/TypedValidator;->accept(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;->type:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/Node;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/github/javaparser/ast/validator/b;

    invoke-direct {v0, p0, p2}, Lcom/github/javaparser/ast/validator/b;-><init>(Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "problemReporter"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/github/javaparser/ast/Node;

    check-cast p2, Lcom/github/javaparser/ast/validator/ProblemReporter;

    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/ast/validator/SingleNodeTypeValidator;->accept(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method
