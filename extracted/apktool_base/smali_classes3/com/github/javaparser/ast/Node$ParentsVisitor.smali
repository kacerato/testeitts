.class public Lcom/github/javaparser/ast/Node$ParentsVisitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/ast/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParentsVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/github/javaparser/ast/Node;",
        ">;"
    }
.end annotation


# instance fields
.field private node:Lcom/github/javaparser/ast/Node;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/ast/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/Node$ParentsVisitor;->node:Lcom/github/javaparser/ast/Node;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/Node$ParentsVisitor;->node:Lcom/github/javaparser/ast/Node;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/github/javaparser/ast/Node;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/ast/Node$ParentsVisitor;->node:Lcom/github/javaparser/ast/Node;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/Node;

    iput-object v0, p0, Lcom/github/javaparser/ast/Node$ParentsVisitor;->node:Lcom/github/javaparser/ast/Node;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node$ParentsVisitor;->next()Lcom/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method
