.class public Lorg/eclipse/jdt/internal/core/JavaElementDelta;
.super Lorg/eclipse/jdt/internal/core/SimpleDelta;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IJavaElementDelta;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/JavaElementDelta$Key;
    }
.end annotation


# static fields
.field static EMPTY_DELTA:[Lorg/eclipse/jdt/core/IJavaElementDelta; = null

.field static NEED_CHILD_INDEX:I = 0x3


# instance fields
.field affectedChildren:[Lorg/eclipse/jdt/core/IJavaElementDelta;

.field annotationDeltas:[Lorg/eclipse/jdt/core/IJavaElementDelta;

.field ast:Lorg/eclipse/jdt/core/dom/CompilationUnit;

.field changedElement:Lorg/eclipse/jdt/core/IJavaElement;

.field childIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/internal/core/JavaElementDelta$Key;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public ignoreFromTests:Z

.field movedFromHandle:Lorg/eclipse/jdt/core/IJavaElement;

.field movedToHandle:Lorg/eclipse/jdt/core/IJavaElement;

.field resourceDeltas:[Lorg/eclipse/core/resources/IResourceDelta;

.field resourceDeltasCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jdt/core/IJavaElementDelta;

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->EMPTY_DELTA:[Lorg/eclipse/jdt/core/IJavaElementDelta;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/SimpleDelta;-><init>()V

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->EMPTY_DELTA:[Lorg/eclipse/jdt/core/IJavaElementDelta;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->affectedChildren:[Lorg/eclipse/jdt/core/IJavaElementDelta;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->ast:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->resourceDeltas:[Lorg/eclipse/core/resources/IResourceDelta;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->movedFromHandle:Lorg/eclipse/jdt/core/IJavaElement;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->movedToHandle:Lorg/eclipse/jdt/core/IJavaElement;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->annotationDeltas:[Lorg/eclipse/jdt/core/IJavaElementDelta;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->ignoreFromTests:Z

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->changedElement:Lorg/eclipse/jdt/core/IJavaElement;

    return-void
.end method

.method public static equalsAndSameParent(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getAncestors(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/util/ArrayList;
    .locals 3

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->changedElement:Lorg/eclipse/jdt/core/IJavaElement;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    return-object v1

    :cond_2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0
.end method


# virtual methods
.method public addAffectedChild(Lorg/eclipse/jdt/internal/core/JavaElementDelta;)V
    .locals 7

    iget v0, p0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->kind:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v2, 0x2

    if-eq v0, v2, :cond_d

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    iput v3, p0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->kind:I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changeFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changeFlags:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changeFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changeFlags:I

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->changedElement:Lorg/eclipse/jdt/core/IJavaElement;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/4 v4, 0x5

    if-lt v0, v4, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->fineGrained()V

    :cond_1
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaElementDelta$Key;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->getElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/eclipse/jdt/internal/core/JavaElementDelta$Key;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->getChildIndex(Lorg/eclipse/jdt/internal/core/JavaElementDelta$Key;)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->addNewChild(Lorg/eclipse/jdt/internal/core/JavaElementDelta;)V

    goto/16 :goto_2

    :cond_2
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->affectedChildren:[Lorg/eclipse/jdt/core/IJavaElementDelta;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v5, v5, v6

    check-cast v5, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->getKind()I

    move-result v6

    if-eq v6, v1, :cond_b

    if-eq v6, v2, :cond_9

    if-eq v6, v3, :cond_3

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->getFlags()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->affectedChildren:[Lorg/eclipse/jdt/core/IJavaElementDelta;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput-object p1, v1, v2

    iget v1, p1, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changeFlags:I

    or-int/2addr v0, v1

    iput v0, p1, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changeFlags:I

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->getKind()I

    move-result v0

    if-eq v0, v1, :cond_8

    if-eq v0, v2, :cond_8

    if-eq v0, v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->getAffectedChildren()[Lorg/eclipse/jdt/core/IJavaElementDelta;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-lt v1, v2, :cond_7

    iget v0, p1, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changeFlags:I

    iget v1, v5, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changeFlags:I

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_5

    and-int/lit16 v2, v0, 0x4000

    if-nez v2, :cond_5

    and-int/lit8 v0, v0, -0x2

    :cond_5
    or-int/2addr v0, v1

    iput v0, v5, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changeFlags:I

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->getResourceDeltas()[Lorg/eclipse/core/resources/IResourceDelta;

    move-result-object v0

    if-eqz v0, :cond_6

    iput-object v0, v5, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->resourceDeltas:[Lorg/eclipse/core/resources/IResourceDelta;

    iget p1, p1, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->resourceDeltasCounter:I

    iput p1, v5, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->resourceDeltasCounter:I

    :cond_6
    return-void

    :cond_7
    aget-object v2, v0, v1

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-virtual {v5, v2}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->addAffectedChild(Lorg/eclipse/jdt/internal/core/JavaElementDelta;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->affectedChildren:[Lorg/eclipse/jdt/core/IJavaElementDelta;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput-object p1, v0, v1

    return-void

    :cond_9
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->getKind()I

    move-result v0

    if-eq v0, v1, :cond_a

    goto :goto_2

    :cond_a
    iput v3, p1, Lorg/eclipse/jdt/internal/core/SimpleDelta;->kind:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->affectedChildren:[Lorg/eclipse/jdt/core/IJavaElementDelta;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput-object p1, v0, v1

    return-void

    :cond_b
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->getKind()I

    move-result p1

    if-eq p1, v2, :cond_c

    :goto_2
    return-void

    :cond_c
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->removeExistingChild(Lorg/eclipse/jdt/internal/core/JavaElementDelta$Key;I)V

    :cond_d
    return-void
.end method

.method public addNewChild(Lorg/eclipse/jdt/internal/core/JavaElementDelta;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->affectedChildren:[Lorg/eclipse/jdt/core/IJavaElementDelta;

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->growAndAddToArray([Lorg/eclipse/jdt/core/IJavaElementDelta;Lorg/eclipse/jdt/core/IJavaElementDelta;)[Lorg/eclipse/jdt/core/IJavaElementDelta;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->affectedChildren:[Lorg/eclipse/jdt/core/IJavaElementDelta;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->childIndex:Ljava/util/Map;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaElementDelta$Key;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->getElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta$Key;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->affectedChildren:[Lorg/eclipse/jdt/core/IJavaElementDelta;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public addResourceDelta(Lorg/eclipse/core/resources/IResourceDelta;)V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->kind:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    iput v2, p0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->kind:I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changeFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changeFlags:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changeFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changeFlags:I

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->resourceDeltas:[Lorg/eclipse/core/resources/IResourceDelta;

    if-nez v0, :cond_1

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/eclipse/core/resources/IResourceDelta;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->resourceDeltas:[Lorg/eclipse/core/resources/IResourceDelta;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->resourceDeltasCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->resourceDeltasCounter:I

    aput-object p1, v0, v1

    return-void

    :cond_1
    array-length v1, v0

    iget v2, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->resourceDeltasCounter:I

    if-ne v1, v2, :cond_2

    mul-int/lit8 v1, v2, 0x2

    new-array v1, v1, [Lorg/eclipse/core/resources/IResourceDelta;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->resourceDeltas:[Lorg/eclipse/core/resources/IResourceDelta;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->resourceDeltas:[Lorg/eclipse/core/resources/IResourceDelta;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->resourceDeltasCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->resourceDeltasCounter:I

    aput-object p1, v0, v1

    :cond_3
    return-void
.end method

.method public added(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->added(Lorg/eclipse/jdt/core/IJavaElement;I)V

    return-void
.end method

.method public added(Lorg/eclipse/jdt/core/IJavaElement;I)V
    .locals 2

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    .line 3
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->added()V

    .line 4
    iget v1, v0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changeFlags:I

    or-int/2addr p2, v1

    iput p2, v0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changeFlags:I

    .line 5
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->insertDeltaTree(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/core/JavaElementDelta;)V

    return-void
.end method

.method public changed(Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/internal/core/JavaElementDelta;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changed(I)V

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->insertDeltaTree(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/core/JavaElementDelta;)V

    return-object v0
.end method

.method public changedAST(Lorg/eclipse/jdt/core/dom/CompilationUnit;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->ast:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    const/high16 p1, 0x80000

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changed(I)V

    return-void
.end method

.method public clearAffectedChildren()V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->EMPTY_DELTA:[Lorg/eclipse/jdt/core/IJavaElementDelta;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->affectedChildren:[Lorg/eclipse/jdt/core/IJavaElementDelta;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->childIndex:Ljava/util/Map;

    return-void
.end method

.method public closed(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changed(I)V

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->insertDeltaTree(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/core/JavaElementDelta;)V

    return-void
.end method

.method public contentChanged()V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changeFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changeFlags:I

    return-void
.end method

.method public createDeltaTree(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/core/JavaElementDelta;)Lorg/eclipse/jdt/internal/core/JavaElementDelta;
    .locals 4

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->getAncestors(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->getElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->getElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->equalsAndSameParent(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p2, Lorg/eclipse/jdt/internal/core/SimpleDelta;->kind:I

    iput p1, p0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->kind:I

    iget p1, p2, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changeFlags:I

    iput p1, p0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changeFlags:I

    iget-object p1, p2, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->movedToHandle:Lorg/eclipse/jdt/core/IJavaElement;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->movedToHandle:Lorg/eclipse/jdt/core/IJavaElement;

    iget-object p1, p2, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->movedFromHandle:Lorg/eclipse/jdt/core/IJavaElement;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->movedFromHandle:Lorg/eclipse/jdt/core/IJavaElement;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_2

    :cond_1
    :goto_1
    return-object p2

    :cond_2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/IJavaElement;

    new-instance v3, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-direct {v3, v2}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-virtual {v3, p2}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->addAffectedChild(Lorg/eclipse/jdt/internal/core/JavaElementDelta;)V

    add-int/lit8 v1, v1, 0x1

    move-object p2, v3

    goto :goto_0
.end method

.method public find(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/JavaElementDelta;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->getElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->equalsAndSameParent(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaElementDelta$Key;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta$Key;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->findDescendant(Lorg/eclipse/jdt/internal/core/JavaElementDelta$Key;)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object p1

    return-object p1
.end method

.method public findDescendant(Lorg/eclipse/jdt/internal/core/JavaElementDelta$Key;)Lorg/eclipse/jdt/internal/core/JavaElementDelta;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->affectedChildren:[Lorg/eclipse/jdt/core/IJavaElementDelta;

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->getChildIndex(Lorg/eclipse/jdt/internal/core/JavaElementDelta$Key;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->affectedChildren:[Lorg/eclipse/jdt/core/IJavaElementDelta;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->affectedChildren:[Lorg/eclipse/jdt/core/IJavaElementDelta;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_2

    return-object v1

    :cond_2
    aget-object v4, v0, v3

    check-cast v4, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-virtual {v4, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->findDescendant(Lorg/eclipse/jdt/internal/core/JavaElementDelta$Key;)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object v4

    if-eqz v4, :cond_3

    return-object v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public fineGrained()V
    .locals 1

    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changed(I)V

    return-void
.end method

.method public getAddedChildren()[Lorg/eclipse/jdt/core/IJavaElementDelta;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->getChildrenOfType(I)[Lorg/eclipse/jdt/core/IJavaElementDelta;

    move-result-object v0

    return-object v0
.end method

.method public getAffectedChildren()[Lorg/eclipse/jdt/core/IJavaElementDelta;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->affectedChildren:[Lorg/eclipse/jdt/core/IJavaElementDelta;

    return-object v0
.end method

.method public getAnnotationDeltas()[Lorg/eclipse/jdt/core/IJavaElementDelta;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->annotationDeltas:[Lorg/eclipse/jdt/core/IJavaElementDelta;

    return-object v0
.end method

.method public getChangedChildren()[Lorg/eclipse/jdt/core/IJavaElementDelta;
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->getChildrenOfType(I)[Lorg/eclipse/jdt/core/IJavaElementDelta;

    move-result-object v0

    return-object v0
.end method

.method public getChildIndex(Lorg/eclipse/jdt/internal/core/JavaElementDelta$Key;)Ljava/lang/Integer;
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->affectedChildren:[Lorg/eclipse/jdt/core/IJavaElementDelta;

    array-length v0, v0

    sget v1, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->NEED_CHILD_INDEX:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    :goto_0
    if-lt v2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/JavaElementDelta$Key;->element:Lorg/eclipse/jdt/core/IJavaElement;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->affectedChildren:[Lorg/eclipse/jdt/core/IJavaElementDelta;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->equalsAndSameParent(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->childIndex:Ljava/util/Map;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->childIndex:Ljava/util/Map;

    :goto_1
    if-lt v2, v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->childIndex:Ljava/util/Map;

    new-instance v3, Lorg/eclipse/jdt/internal/core/JavaElementDelta$Key;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->affectedChildren:[Lorg/eclipse/jdt/core/IJavaElementDelta;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/eclipse/jdt/internal/core/JavaElementDelta$Key;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->childIndex:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public getChildrenOfType(I)[Lorg/eclipse/jdt/core/IJavaElementDelta;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->affectedChildren:[Lorg/eclipse/jdt/core/IJavaElementDelta;

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Lorg/eclipse/jdt/core/IJavaElementDelta;

    return-object p1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-lt v1, v0, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/eclipse/jdt/core/IJavaElementDelta;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->affectedChildren:[Lorg/eclipse/jdt/core/IJavaElementDelta;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getKind()I

    move-result v3

    if-ne v3, p1, :cond_2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->affectedChildren:[Lorg/eclipse/jdt/core/IJavaElementDelta;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCompilationUnitAST()Lorg/eclipse/jdt/core/dom/CompilationUnit;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->ast:Lorg/eclipse/jdt/core/dom/CompilationUnit;

    return-object v0
.end method

.method public getDeltaFor(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/JavaElementDelta;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->find(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object p1

    return-object p1
.end method

.method public getElement()Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->changedElement:Lorg/eclipse/jdt/core/IJavaElement;

    return-object v0
.end method

.method public getMovedFromElement()Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->movedFromHandle:Lorg/eclipse/jdt/core/IJavaElement;

    return-object v0
.end method

.method public getMovedToElement()Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->movedToHandle:Lorg/eclipse/jdt/core/IJavaElement;

    return-object v0
.end method

.method public getRemovedChildren()[Lorg/eclipse/jdt/core/IJavaElementDelta;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->getChildrenOfType(I)[Lorg/eclipse/jdt/core/IJavaElementDelta;

    move-result-object v0

    return-object v0
.end method

.method public getResourceDeltas()[Lorg/eclipse/core/resources/IResourceDelta;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->resourceDeltas:[Lorg/eclipse/core/resources/IResourceDelta;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    array-length v1, v0

    iget v2, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->resourceDeltasCounter:I

    if-eq v1, v2, :cond_1

    new-array v1, v2, [Lorg/eclipse/core/resources/IResourceDelta;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->resourceDeltas:[Lorg/eclipse/core/resources/IResourceDelta;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->resourceDeltas:[Lorg/eclipse/core/resources/IResourceDelta;

    return-object v0
.end method

.method public growAndAddToArray([Lorg/eclipse/jdt/core/IJavaElementDelta;Lorg/eclipse/jdt/core/IJavaElementDelta;)[Lorg/eclipse/jdt/core/IJavaElementDelta;
    .locals 3

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lorg/eclipse/jdt/core/IJavaElementDelta;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    aput-object p2, v0, p1

    return-object v0
.end method

.method public insertDeltaTree(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/core/JavaElementDelta;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->createDeltaTree(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/core/JavaElementDelta;)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object p2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->getElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->equalsAndSameParent(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->addAffectedChild(Lorg/eclipse/jdt/internal/core/JavaElementDelta;)V

    :cond_0
    return-void
.end method

.method public movedFrom(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    const/4 v1, 0x2

    iput v1, v0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->kind:I

    iget v1, v0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changeFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changeFlags:I

    iput-object p2, v0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->movedToHandle:Lorg/eclipse/jdt/core/IJavaElement;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->insertDeltaTree(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/core/JavaElementDelta;)V

    return-void
.end method

.method public movedTo(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    const/4 v1, 0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->kind:I

    iget v1, v0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changeFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changeFlags:I

    iput-object p2, v0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->movedFromHandle:Lorg/eclipse/jdt/core/IJavaElement;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->insertDeltaTree(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/core/JavaElementDelta;)V

    return-void
.end method

.method public opened(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changed(I)V

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->insertDeltaTree(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/core/JavaElementDelta;)V

    return-void
.end method

.method public removeAffectedChild(Lorg/eclipse/jdt/internal/core/JavaElementDelta;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->affectedChildren:[Lorg/eclipse/jdt/core/IJavaElementDelta;

    array-length v0, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaElementDelta$Key;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->getElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta$Key;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->getChildIndex(Lorg/eclipse/jdt/internal/core/JavaElementDelta$Key;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->removeExistingChild(Lorg/eclipse/jdt/internal/core/JavaElementDelta$Key;I)V

    :cond_1
    return-void
.end method

.method public removeAndShrinkArray([Lorg/eclipse/jdt/core/IJavaElementDelta;I)[Lorg/eclipse/jdt/core/IJavaElementDelta;
    .locals 3

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Lorg/eclipse/jdt/core/IJavaElementDelta;

    if-lez p2, :cond_0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    array-length v1, p1

    sub-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_1

    add-int/lit8 v2, p2, 0x1

    invoke-static {p1, v2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v0
.end method

.method public removeExistingChild(Lorg/eclipse/jdt/internal/core/JavaElementDelta$Key;I)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->affectedChildren:[Lorg/eclipse/jdt/core/IJavaElementDelta;

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->removeAndShrinkArray([Lorg/eclipse/jdt/core/IJavaElementDelta;I)[Lorg/eclipse/jdt/core/IJavaElementDelta;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->affectedChildren:[Lorg/eclipse/jdt/core/IJavaElementDelta;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->childIndex:Ljava/util/Map;

    if-eqz v1, :cond_2

    array-length v0, v0

    sget v2, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->NEED_CHILD_INDEX:I

    if-ge v0, v2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->childIndex:Ljava/util/Map;

    goto :goto_1

    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-lt p2, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->childIndex:Ljava/util/Map;

    new-instance v1, Lorg/eclipse/jdt/internal/core/JavaElementDelta$Key;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->affectedChildren:[Lorg/eclipse/jdt/core/IJavaElementDelta;

    aget-object v2, v2, p2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/core/JavaElementDelta$Key;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public removed(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->removed(Lorg/eclipse/jdt/core/IJavaElement;I)V

    return-void
.end method

.method public removed(Lorg/eclipse/jdt/core/IJavaElement;I)V
    .locals 1

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->insertDeltaTree(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/core/JavaElementDelta;)V

    .line 4
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->getDeltaFor(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->removed()V

    .line 6
    iget v0, p1, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changeFlags:I

    or-int/2addr p2, v0

    iput p2, p1, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changeFlags:I

    .line 7
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->clearAffectedChildren()V

    :cond_0
    return-void
.end method

.method public sourceAttached(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changed(I)V

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->insertDeltaTree(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/core/JavaElementDelta;)V

    return-void
.end method

.method public sourceDetached(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changed(I)V

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->insertDeltaTree(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/core/JavaElementDelta;)V

    return-void
.end method

.method public toDebugString(I)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x9

    if-lt v2, p1, :cond_9

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->getElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/JavaElement;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->toDebugString(Ljava/lang/StringBuffer;)V

    .line 4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->getAffectedChildren()[Lorg/eclipse/jdt/core/IJavaElementDelta;

    move-result-object v2

    .line 5
    const-string v4, "\n"

    if-eqz v2, :cond_1

    move v5, v1

    .line 6
    :goto_1
    array-length v6, v2

    if-lt v5, v6, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    aget-object v6, v2, v5

    check-cast v6, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->toDebugString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    move v5, v1

    .line 9
    :goto_3
    iget v2, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->resourceDeltasCounter:I

    const/4 v6, 0x1

    if-lt v5, v2, :cond_4

    .line 10
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->getAnnotationDeltas()[Lorg/eclipse/jdt/core/IJavaElementDelta;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 11
    :goto_4
    array-length v3, v2

    if-lt v1, v3, :cond_2

    goto :goto_5

    .line 12
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    aget-object v3, v2, v1

    check-cast v3, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v3, v5}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->toDebugString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 14
    :cond_3
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 15
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v1

    :goto_6
    add-int/lit8 v7, p1, 0x1

    if-lt v2, v7, :cond_8

    .line 16
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->resourceDeltas:[Lorg/eclipse/core/resources/IResourceDelta;

    aget-object v2, v2, v5

    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    const-string v7, "["

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    invoke-interface {v2}, Lorg/eclipse/core/resources/IResourceDelta;->getKind()I

    move-result v2

    if-eq v2, v6, :cond_7

    const/4 v6, 0x2

    if-eq v2, v6, :cond_6

    const/4 v6, 0x4

    if-eq v2, v6, :cond_5

    const/16 v2, 0x3f

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_5
    const/16 v2, 0x2a

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_6
    const/16 v2, 0x2d

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_7
    const/16 v2, 0x2b

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 24
    :goto_7
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 25
    :cond_8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 26
    :cond_9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public toDebugString(Ljava/lang/StringBuffer;I)Z
    .locals 5

    .line 27
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->toDebugString(Ljava/lang/StringBuffer;I)Z

    move-result v0

    and-int/lit8 v1, p2, 0x8

    .line 28
    const-string v2, " | "

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    :cond_0
    const-string v0, "CHILDREN"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v3

    :cond_1
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 31
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    :cond_2
    const-string v0, "CONTENT"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v3

    :cond_3
    and-int/lit8 v1, p2, 0x10

    .line 33
    const-string v4, ")"

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    .line 34
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MOVED_FROM("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->getMovedFromElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v3

    :cond_5
    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_7

    if-eqz v0, :cond_6

    .line 36
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MOVED_TO("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->getMovedToElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->toStringWithAncestors()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v3

    :cond_7
    and-int/lit8 v1, p2, 0x40

    if-eqz v1, :cond_9

    if-eqz v0, :cond_8

    .line 38
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    :cond_8
    const-string v0, "ADDED TO CLASSPATH"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v3

    :cond_9
    and-int/lit16 v1, p2, 0x80

    if-eqz v1, :cond_b

    if-eqz v0, :cond_a

    .line 40
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    :cond_a
    const-string v0, "REMOVED FROM CLASSPATH"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v3

    :cond_b
    and-int/lit16 v1, p2, 0x100

    if-eqz v1, :cond_d

    if-eqz v0, :cond_c

    .line 42
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    :cond_c
    const-string v0, "REORDERED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v3

    :cond_d
    const v1, 0x8000

    and-int/2addr v1, p2

    if-eqz v1, :cond_f

    if-eqz v0, :cond_e

    .line 44
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    :cond_e
    const-string v0, "ARCHIVE CONTENT CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v3

    :cond_f
    and-int/lit16 v1, p2, 0x1000

    if-eqz v1, :cond_11

    if-eqz v0, :cond_10

    .line 46
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    :cond_10
    const-string v0, "SOURCE ATTACHED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v3

    :cond_11
    and-int/lit16 v1, p2, 0x2000

    if-eqz v1, :cond_13

    if-eqz v0, :cond_12

    .line 48
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    :cond_12
    const-string v0, "SOURCE DETACHED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v3

    :cond_13
    and-int/lit16 v1, p2, 0x4000

    if-eqz v1, :cond_15

    if-eqz v0, :cond_14

    .line 50
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    :cond_14
    const-string v0, "FINE GRAINED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v3

    :cond_15
    const/high16 v1, 0x10000

    and-int/2addr v1, p2

    if-eqz v1, :cond_17

    if-eqz v0, :cond_16

    .line 52
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    :cond_16
    const-string v0, "PRIMARY WORKING COPY"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v3

    :cond_17
    const/high16 v1, 0x20000

    and-int/2addr v1, p2

    if-eqz v1, :cond_19

    if-eqz v0, :cond_18

    .line 54
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    :cond_18
    const-string v0, "RAW CLASSPATH CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v3

    :cond_19
    const/high16 v1, 0x200000

    and-int/2addr v1, p2

    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1a

    .line 56
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    :cond_1a
    const-string v0, "RESOLVED CLASSPATH CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v3

    :cond_1b
    const/high16 v1, 0x40000

    and-int/2addr v1, p2

    if-eqz v1, :cond_1d

    if-eqz v0, :cond_1c

    .line 58
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    :cond_1c
    const-string v0, "PRIMARY RESOURCE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v3

    :cond_1d
    and-int/lit16 v1, p2, 0x200

    if-eqz v1, :cond_1f

    if-eqz v0, :cond_1e

    .line 60
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    :cond_1e
    const-string v0, "OPENED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v3

    :cond_1f
    and-int/lit16 v1, p2, 0x400

    if-eqz v1, :cond_21

    if-eqz v0, :cond_20

    .line 62
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    :cond_20
    const-string v0, "CLOSED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v3

    :cond_21
    const/high16 v1, 0x80000

    and-int/2addr v1, p2

    if-eqz v1, :cond_23

    if-eqz v0, :cond_22

    .line 64
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    :cond_22
    const-string v0, "AST AFFECTED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v3

    :cond_23
    const/high16 v1, 0x100000

    and-int/2addr v1, p2

    if-eqz v1, :cond_25

    if-eqz v0, :cond_24

    .line 66
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    :cond_24
    const-string v0, "CATEGORIES"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v3

    :cond_25
    const/high16 v1, 0x400000

    and-int/2addr p2, v1

    if-eqz p2, :cond_27

    if-eqz v0, :cond_26

    .line 68
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    :cond_26
    const-string p2, "ANNOTATIONS"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_27
    move v3, v0

    :goto_0
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->toDebugString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
