.class public final synthetic La0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/comments/CommentsCollection;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/comments/CommentsCollection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La0/d;->b:Lcom/github/javaparser/ast/comments/CommentsCollection;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, La0/d;->b:Lcom/github/javaparser/ast/comments/CommentsCollection;

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-static {v0, p1}, Lcom/github/javaparser/ast/comments/CommentsCollection;->c(Lcom/github/javaparser/ast/comments/CommentsCollection;Lcom/github/javaparser/ast/comments/Comment;)Z

    move-result p1

    return p1
.end method
