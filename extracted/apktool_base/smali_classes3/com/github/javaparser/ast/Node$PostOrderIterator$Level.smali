.class Lcom/github/javaparser/ast/Node$PostOrderIterator$Level;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/ast/Node$PostOrderIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Level"
.end annotation


# instance fields
.field private expanded:Z

.field private index:I

.field private final nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/Node;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/javaparser/ast/Node$PostOrderIterator$Level;->index:I

    iput-boolean v0, p0, Lcom/github/javaparser/ast/Node$PostOrderIterator$Level;->expanded:Z

    iput-object p1, p0, Lcom/github/javaparser/ast/Node$PostOrderIterator$Level;->nodes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public done()Z
    .locals 2

    iget v0, p0, Lcom/github/javaparser/ast/Node$PostOrderIterator$Level;->index:I

    iget-object v1, p0, Lcom/github/javaparser/ast/Node$PostOrderIterator$Level;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCurrent()Lcom/github/javaparser/ast/Node;
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/ast/Node$PostOrderIterator$Level;->nodes:Ljava/util/List;

    iget v1, p0, Lcom/github/javaparser/ast/Node$PostOrderIterator$Level;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/Node;

    return-object v0
.end method

.method public goToNext()V
    .locals 1

    iget v0, p0, Lcom/github/javaparser/ast/Node$PostOrderIterator$Level;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/javaparser/ast/Node$PostOrderIterator$Level;->index:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/javaparser/ast/Node$PostOrderIterator$Level;->expanded:Z

    return-void
.end method

.method public isCurrentExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/javaparser/ast/Node$PostOrderIterator$Level;->expanded:Z

    return v0
.end method

.method public setCurrentExpanded()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/javaparser/ast/Node$PostOrderIterator$Level;->expanded:Z

    return-void
.end method
