.class public final synthetic Lcom/github/javaparser/ast/validator/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/validator/TypedValidator$1;

.field public final synthetic c:Lcom/github/javaparser/ParseResult;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/validator/TypedValidator$1;Lcom/github/javaparser/ParseResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/validator/c;->b:Lcom/github/javaparser/ast/validator/TypedValidator$1;

    iput-object p2, p0, Lcom/github/javaparser/ast/validator/c;->c:Lcom/github/javaparser/ParseResult;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/c;->b:Lcom/github/javaparser/ast/validator/TypedValidator$1;

    iget-object v1, p0, Lcom/github/javaparser/ast/validator/c;->c:Lcom/github/javaparser/ParseResult;

    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-static {v0, v1, p1}, Lcom/github/javaparser/ast/validator/TypedValidator$1;->b(Lcom/github/javaparser/ast/validator/TypedValidator$1;Lcom/github/javaparser/ParseResult;Lcom/github/javaparser/ast/Node;)V

    return-void
.end method
