.class public final synthetic Lcom/github/javaparser/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/CommentsInserter;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/CommentsInserter;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/c;->b:Lcom/github/javaparser/CommentsInserter;

    iput-object p2, p0, Lcom/github/javaparser/c;->c:Ljava/util/List;

    iput-object p3, p0, Lcom/github/javaparser/c;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/github/javaparser/c;->b:Lcom/github/javaparser/CommentsInserter;

    iget-object v1, p0, Lcom/github/javaparser/c;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/github/javaparser/c;->d:Ljava/util/List;

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-static {v0, v1, v2, p1}, Lcom/github/javaparser/CommentsInserter;->g(Lcom/github/javaparser/CommentsInserter;Ljava/util/List;Ljava/util/List;Lcom/github/javaparser/ast/comments/Comment;)V

    return-void
.end method
