.class public Lorg/eclipse/jdt/internal/core/Region;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IRegion;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/Region$Node;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private root:Lorg/eclipse/jdt/internal/core/Region$Node;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/eclipse/jdt/internal/core/Region$Node;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/Region$Node;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/Region;->root:Lorg/eclipse/jdt/internal/core/Region$Node;

    return-void
.end method

.method private countLeafNodes()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/Region;->root:Lorg/eclipse/jdt/internal/core/Region$Node;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/Region$Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/Region;->root:Lorg/eclipse/jdt/internal/core/Region$Node;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/Region$Node;->countLeafNodes()I

    move-result v0

    return v0
.end method

.method private createNodeFor(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/Region$Node;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/Region;->root:Lorg/eclipse/jdt/internal/core/Region$Node;

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/Region;->getParent(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/Region;->createNodeFor(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/Region$Node;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/Region$Node;->createChildFor(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/Region$Node;

    move-result-object p1

    return-object p1
.end method

.method private findExactNode(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/Region$Node;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/Region;->root:Lorg/eclipse/jdt/internal/core/Region$Node;

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/Region;->getParent(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/Region;->findExactNode(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/Region$Node;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/Region$Node;->findChildFor(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/Region$Node;

    move-result-object p1

    return-object p1
.end method

.method private findMostSpecificNodeFor(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/Region$Node;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/Region;->root:Lorg/eclipse/jdt/internal/core/Region$Node;

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/Region;->getParent(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/Region;->findMostSpecificNodeFor(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/Region$Node;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/Region$Node;->findChildFor(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/Region$Node;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method

.method private findPath(Ljava/util/List;Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/core/Region$Node;",
            ">;",
            "Lorg/eclipse/jdt/core/IJavaElement;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/Region;->root:Lorg/eclipse/jdt/internal/core/Region$Node;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/Region;->getParent(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/Region;->findPath(Ljava/util/List;Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/Region$Node;

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/Region$Node;->findChildFor(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/Region$Node;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/Region;->contains(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/Region;->createNodeFor(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/Region$Node;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/Region$Node;->clearChildren()V

    return-void
.end method

.method public contains(Lorg/eclipse/jdt/core/IJavaElement;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/Region;->findMostSpecificNodeFor(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/Region$Node;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/Region;->root:Lorg/eclipse/jdt/internal/core/Region$Node;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/Region$Node;->isEmpty()Z

    move-result p1

    return p1
.end method

.method public getElements()[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 3

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/Region;->countLeafNodes()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/jdt/core/IJavaElement;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/Region;->root:Lorg/eclipse/jdt/internal/core/Region$Node;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/Region$Node;->gatherLeaves([Lorg/eclipse/jdt/core/IJavaElement;I)I

    return-object v0
.end method

.method public getParent(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;
    .locals 0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    return-object p1
.end method

.method public remove(Lorg/eclipse/jdt/core/IJavaElement;)Z
    .locals 5

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/Region;->findExactNode(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/Region$Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/Region$Node;->clearChildren()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/Region$Node;->isEmpty()Z

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v1, p1}, Lorg/eclipse/jdt/internal/core/Region;->findPath(Ljava/util/List;Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v3, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/core/Region$Node;

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/Region$Node;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/Region$Node;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/core/Region$Node;->removeChild(Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/Region;->getParent(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    move v2, v3

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method
