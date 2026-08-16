.class public final synthetic Lc0/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/body/EnumDeclaration;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/body/EnumDeclaration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc0/L;->b:Lcom/github/javaparser/ast/body/EnumDeclaration;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lc0/L;->b:Lcom/github/javaparser/ast/body/EnumDeclaration;

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/Node;->addOrphanComment(Lcom/github/javaparser/ast/comments/Comment;)V

    return-void
.end method
