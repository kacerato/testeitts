.class public final synthetic Lc0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/ast/modules/ModuleUsesDirective;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/ast/modules/ModuleUsesDirective;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc0/l;->b:Lcom/github/javaparser/ast/modules/ModuleUsesDirective;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lc0/l;->b:Lcom/github/javaparser/ast/modules/ModuleUsesDirective;

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/Node;->addOrphanComment(Lcom/github/javaparser/ast/comments/Comment;)V

    return-void
.end method
