.class public final synthetic Lcom/github/javaparser/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ParserConfiguration;

.field public final synthetic c:Lcom/github/javaparser/ast/Node;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/ast/Node;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/h0;->b:Lcom/github/javaparser/ParserConfiguration;

    iput-object p2, p0, Lcom/github/javaparser/h0;->c:Lcom/github/javaparser/ast/Node;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/h0;->b:Lcom/github/javaparser/ParserConfiguration;

    iget-object v1, p0, Lcom/github/javaparser/h0;->c:Lcom/github/javaparser/ast/Node;

    check-cast p1, Lcom/github/javaparser/ast/comments/CommentsCollection;

    invoke-static {v0, v1, p1}, Lcom/github/javaparser/ParserConfiguration$1;->b(Lcom/github/javaparser/ParserConfiguration;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/comments/CommentsCollection;)V

    return-void
.end method
