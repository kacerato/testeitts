.class public final synthetic Lc0/P1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/visitor/ModifierVisitor;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc0/P1;->b:Lcom/github/javaparser/ast/visitor/ModifierVisitor;

    iput-object p2, p0, Lc0/P1;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lc0/P1;->b:Lcom/github/javaparser/ast/visitor/ModifierVisitor;

    iget-object v1, p0, Lc0/P1;->c:Ljava/lang/Object;

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-static {v0, v1, p1}, Lcom/github/javaparser/ast/visitor/ModifierVisitor;->w0(Lcom/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/comments/Comment;

    move-result-object p1

    return-object p1
.end method
