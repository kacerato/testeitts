.class public final synthetic Lcom/github/javaparser/ast/validator/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/validator/TypedValidator;


# instance fields
.field public final synthetic a:Ljava/util/function/Predicate;

.field public final synthetic b:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/validator/a;->a:Ljava/util/function/Predicate;

    iput-object p2, p0, Lcom/github/javaparser/ast/validator/a;->b:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/a;->a:Ljava/util/function/Predicate;

    iget-object v1, p0, Lcom/github/javaparser/ast/validator/a;->b:Ljava/util/function/BiConsumer;

    invoke-static {v0, v1, p1, p2}, Lcom/github/javaparser/ast/validator/SimpleValidator;->b(Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/validator/ProblemReporter;)V

    return-void
.end method
