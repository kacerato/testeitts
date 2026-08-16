.class public Lcom/github/javaparser/ast/Node$PostOrderIterator;
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
    name = "PostOrderIterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/ast/Node$PostOrderIterator$Level;
    }
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
.field private final stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/github/javaparser/ast/Node$PostOrderIterator$Level;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/javaparser/ast/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "root"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/ast/Node$PostOrderIterator;->stack:Ljava/util/Stack;

    new-instance v1, Lcom/github/javaparser/ast/Node$PostOrderIterator$Level;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/github/javaparser/ast/Node$PostOrderIterator$Level;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private cleanupStack(Lcom/github/javaparser/ast/Node$PostOrderIterator$Level;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node$PostOrderIterator$Level;->done()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/github/javaparser/ast/Node$PostOrderIterator;->stack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private expand(Lcom/github/javaparser/ast/Node$PostOrderIterator$Level;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node$PostOrderIterator$Level;->getCurrent()Lcom/github/javaparser/ast/Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/Node;->getChildNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/github/javaparser/ast/Node$PostOrderIterator;->stack:Ljava/util/Stack;

    new-instance v2, Lcom/github/javaparser/ast/Node$PostOrderIterator$Level;

    invoke-direct {v2, v0}, Lcom/github/javaparser/ast/Node$PostOrderIterator$Level;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node$PostOrderIterator$Level;->setCurrentExpanded()V

    return-void
.end method

.method private getNextAndCleanupStack(Lcom/github/javaparser/ast/Node$PostOrderIterator$Level;)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node$PostOrderIterator$Level;->getCurrent()Lcom/github/javaparser/ast/Node;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node$PostOrderIterator$Level;->goToNext()V

    invoke-direct {p0, p1}, Lcom/github/javaparser/ast/Node$PostOrderIterator;->cleanupStack(Lcom/github/javaparser/ast/Node$PostOrderIterator$Level;)V

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/Node$PostOrderIterator;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Lcom/github/javaparser/ast/Node;
    .locals 2

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/github/javaparser/ast/Node$PostOrderIterator;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/Node$PostOrderIterator$Level;

    .line 3
    invoke-virtual {v0}, Lcom/github/javaparser/ast/Node$PostOrderIterator$Level;->isCurrentExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-direct {p0, v0}, Lcom/github/javaparser/ast/Node$PostOrderIterator;->getNextAndCleanupStack(Lcom/github/javaparser/ast/Node$PostOrderIterator$Level;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    invoke-direct {p0, v0}, Lcom/github/javaparser/ast/Node$PostOrderIterator;->expand(Lcom/github/javaparser/ast/Node$PostOrderIterator$Level;)V

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node$PostOrderIterator;->next()Lcom/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method
