.class public final synthetic Lcom/github/javaparser/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/Node;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/Node;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/f;->b:Lcom/github/javaparser/ast/Node;

    iput-boolean p2, p0, Lcom/github/javaparser/f;->c:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/f;->b:Lcom/github/javaparser/ast/Node;

    iget-boolean v1, p0, Lcom/github/javaparser/f;->c:Z

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-static {v0, v1, p1}, Lcom/github/javaparser/CommentsInserter;->f(Lcom/github/javaparser/ast/Node;ZLcom/github/javaparser/ast/comments/Comment;)Z

    move-result p1

    return p1
.end method
