.class public final synthetic Lc0/M6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/visitor/VoidVisitorAdapter;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/visitor/VoidVisitorAdapter;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc0/M6;->b:Lcom/github/javaparser/ast/visitor/VoidVisitorAdapter;

    iput-object p2, p0, Lc0/M6;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lc0/M6;->b:Lcom/github/javaparser/ast/visitor/VoidVisitorAdapter;

    iget-object v1, p0, Lc0/M6;->c:Ljava/lang/Object;

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-static {v0, v1, p1}, Lcom/github/javaparser/ast/visitor/VoidVisitorAdapter;->L1(Lcom/github/javaparser/ast/visitor/VoidVisitorAdapter;Ljava/lang/Object;Lcom/github/javaparser/ast/comments/Comment;)V

    return-void
.end method
