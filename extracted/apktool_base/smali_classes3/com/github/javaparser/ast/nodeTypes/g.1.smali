.class public final synthetic Lcom/github/javaparser/ast/nodeTypes/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-static {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithJavadoc;->q(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/comments/JavadocComment;

    move-result-object p1

    return-object p1
.end method
