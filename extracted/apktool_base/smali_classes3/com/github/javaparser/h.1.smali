.class public final synthetic Lcom/github/javaparser/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/CommentsInserter;

.field public final synthetic c:Lcom/github/javaparser/ast/comments/Comment;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/CommentsInserter;Lcom/github/javaparser/ast/comments/Comment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/h;->b:Lcom/github/javaparser/CommentsInserter;

    iput-object p2, p0, Lcom/github/javaparser/h;->c:Lcom/github/javaparser/ast/comments/Comment;

    iput-object p3, p0, Lcom/github/javaparser/h;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/github/javaparser/h;->b:Lcom/github/javaparser/CommentsInserter;

    iget-object v1, p0, Lcom/github/javaparser/h;->c:Lcom/github/javaparser/ast/comments/Comment;

    iget-object v2, p0, Lcom/github/javaparser/h;->d:Ljava/util/List;

    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-static {v0, v1, v2, p1}, Lcom/github/javaparser/CommentsInserter;->e(Lcom/github/javaparser/CommentsInserter;Lcom/github/javaparser/ast/comments/Comment;Ljava/util/List;Lcom/github/javaparser/ast/Node;)V

    return-void
.end method
