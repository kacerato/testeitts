.class public final synthetic Lcom/github/javaparser/ast/validator/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/Node;

.field public final synthetic c:Lcom/github/javaparser/ast/validator/ProblemReporter;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/validator/e;->b:Lcom/github/javaparser/ast/Node;

    iput-object p2, p0, Lcom/github/javaparser/ast/validator/e;->c:Lcom/github/javaparser/ast/validator/ProblemReporter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/e;->b:Lcom/github/javaparser/ast/Node;

    iget-object v1, p0, Lcom/github/javaparser/ast/validator/e;->c:Lcom/github/javaparser/ast/validator/ProblemReporter;

    check-cast p1, Lcom/github/javaparser/ast/validator/Validator;

    invoke-static {v0, v1, p1}, Lcom/github/javaparser/ast/validator/Validators;->a(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;Lcom/github/javaparser/ast/validator/Validator;)V

    return-void
.end method
