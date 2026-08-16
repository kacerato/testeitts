.class public Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;
    }
.end annotation


# instance fields
.field added:Ljava/util/HashSet;

.field annotationInfos:Ljava/util/Map;

.field public delta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

.field infos:Ljava/util/Map;

.field javaElement:Lorg/eclipse/jdt/core/IJavaElement;

.field maxDepth:I

.field newPositions:Ljava/util/Map;

.field oldPositions:Ljava/util/Map;

.field removed:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->maxDepth:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->delta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    .line 4
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->javaElement:Lorg/eclipse/jdt/core/IJavaElement;

    .line 5
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->initialize()V

    .line 6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->javaElement:Lorg/eclipse/jdt/core/IJavaElement;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaModel()Lorg/eclipse/jdt/core/IJavaModel;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaModel;

    const/4 v1, 0x0

    .line 7
    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->recordElementInfo(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/core/JavaModel;I)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/IJavaElement;I)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->delta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    .line 10
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->javaElement:Lorg/eclipse/jdt/core/IJavaElement;

    .line 11
    iput p2, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->maxDepth:I

    .line 12
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->initialize()V

    .line 13
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->javaElement:Lorg/eclipse/jdt/core/IJavaElement;

    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaModel()Lorg/eclipse/jdt/core/IJavaModel;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/core/JavaModel;

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->recordElementInfo(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/core/JavaModel;I)V

    return-void
.end method

.method private added(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->added:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->getNewPosition(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;

    move-result-object p1

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;->previous:Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->getNewPosition(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;->next:Lorg/eclipse/jdt/core/IJavaElement;

    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->getNewPosition(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;

    move-result-object v1

    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;->next:Lorg/eclipse/jdt/core/IJavaElement;

    iput-object v2, v0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;->next:Lorg/eclipse/jdt/core/IJavaElement;

    :cond_2
    if-eqz v1, :cond_3

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;->previous:Lorg/eclipse/jdt/core/IJavaElement;

    iput-object p1, v1, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;->previous:Lorg/eclipse/jdt/core/IJavaElement;

    :cond_3
    return-void
.end method

.method private equals([[[C[[[C)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    array-length v2, p1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_4

    return v0

    :cond_4
    aget-object v3, p1, v2

    aget-object v4, p2, v2

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_5
    :goto_0
    return v1
.end method

.method private findAdditions(Lorg/eclipse/jdt/core/IJavaElement;I)V
    .locals 5

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->getElementInfo(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/JavaElementInfo;

    move-result-object v0

    if-nez v0, :cond_0

    iget v1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->maxDepth:I

    if-ge p2, v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->delta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->added(Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->added(Lorg/eclipse/jdt/core/IJavaElement;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->removeElementInfo(Lorg/eclipse/jdt/core/IJavaElement;)V

    :goto_0
    iget v1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->maxDepth:I

    const/4 v2, 0x1

    if-lt p2, v1, :cond_1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->delta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-virtual {p2, p1, v2}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->changed(Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    return-void

    :cond_1
    :try_start_0
    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElementInfo;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v0, v1, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->findContentChange(Lorg/eclipse/jdt/internal/core/JavaElementInfo;Lorg/eclipse/jdt/internal/core/JavaElementInfo;Lorg/eclipse/jdt/core/IJavaElement;)V

    if-eqz v0, :cond_3

    instance-of p1, p1, Lorg/eclipse/jdt/core/IParent;

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaElementInfo;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    if-eqz p1, :cond_3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_2

    goto :goto_2

    :cond_2
    aget-object v3, p1, v1

    add-int/lit8 v4, p2, 0x1

    invoke-direct {p0, v3, v4}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->findAdditions(Lorg/eclipse/jdt/core/IJavaElement;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    :cond_3
    :goto_2
    return-void
.end method

.method private findAnnotationChanges([Lorg/eclipse/jdt/core/IAnnotation;[Lorg/eclipse/jdt/core/IAnnotation;Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 7

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_5

    array-length v4, p1

    :goto_1
    if-lt v2, v4, :cond_2

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->delta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    const/high16 v0, 0x400000

    invoke-virtual {p2, p3, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->changed(Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    move-result-object p2

    new-array p1, p1, [Lorg/eclipse/jdt/core/IJavaElementDelta;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jdt/core/IJavaElementDelta;

    iput-object p1, p2, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->annotationDeltas:[Lorg/eclipse/jdt/core/IJavaElementDelta;

    :cond_1
    return-void

    :cond_2
    aget-object p2, p1, v2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->annotationInfos:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-direct {v0, p2}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->removed()V

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    aget-object v4, p2, v3

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->annotationInfos:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_7

    new-instance v5, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-direct {v5, v4}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->added()V

    if-nez v1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    :try_start_0
    move-object v6, v4

    check-cast v6, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/core/AnnotationInfo;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v5, Lorg/eclipse/jdt/internal/core/AnnotationInfo;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/core/AnnotationInfo;->members:[Lorg/eclipse/jdt/core/IMemberValuePair;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/core/AnnotationInfo;->members:[Lorg/eclipse/jdt/core/IMemberValuePair;

    invoke-static {v5, v6}, Lorg/eclipse/jdt/internal/core/util/Util;->equalArraysOrNull([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    new-instance v5, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-direct {v5, v4}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->changed(I)V

    if-nez v1, :cond_8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_8
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catch_0
    return-void
.end method

.method private findCategoryChange(Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/core/IJavaElement;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/core/IJavaElement;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/high16 v0, 0x100000

    if-eqz p1, :cond_4

    if-eqz p2, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_4

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/IJavaElement;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    if-nez p2, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    :goto_2
    invoke-static {v3, v4}, Lorg/eclipse/jdt/internal/core/util/Util;->equalArraysOrNull([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->delta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-virtual {v3, v2, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->changed(Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_4

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/core/IJavaElement;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->delta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-virtual {v1, p2, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->changed(Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    goto :goto_3

    :cond_6
    :goto_4
    return-void
.end method

.method private findChangesInPositioning(Lorg/eclipse/jdt/core/IJavaElement;I)V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->maxDepth:I

    if-ge p2, v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->added:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->removed:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->isPositionedCorrectly(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->delta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    const/16 v1, 0x100

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->changed(Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    :cond_1
    instance-of v0, p1, Lorg/eclipse/jdt/core/IParent;

    if-eqz v0, :cond_3

    :try_start_0
    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElementInfo;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElementInfo;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    if-eqz p1, :cond_3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_2

    goto :goto_1

    :cond_2
    aget-object v2, p1, v1

    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v2, v3}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->findChangesInPositioning(Lorg/eclipse/jdt/core/IJavaElement;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    :goto_1
    return-void
.end method

.method private findContentChange(Lorg/eclipse/jdt/internal/core/JavaElementInfo;Lorg/eclipse/jdt/internal/core/JavaElementInfo;Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 3

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/MemberElementInfo;

    if-eqz v0, :cond_a

    instance-of v0, p2, Lorg/eclipse/jdt/internal/core/MemberElementInfo;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/core/MemberElementInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/MemberElementInfo;->getModifiers()I

    move-result v0

    move-object v1, p2

    check-cast v1, Lorg/eclipse/jdt/internal/core/MemberElementInfo;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/MemberElementInfo;->getModifiers()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->delta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    const/4 v1, 0x2

    invoke-virtual {v0, p3, v1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->changed(Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    :cond_0
    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->annotations:[Lorg/eclipse/jdt/core/IAnnotation;

    move-object v1, p2

    check-cast v1, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->annotations:[Lorg/eclipse/jdt/core/IAnnotation;

    invoke-direct {p0, v0, v1, p3}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->findAnnotationChanges([Lorg/eclipse/jdt/core/IAnnotation;[Lorg/eclipse/jdt/core/IAnnotation;Lorg/eclipse/jdt/core/IJavaElement;)V

    :cond_1
    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    instance-of v0, p2, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;

    check-cast p2, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->getReturnTypeName()[C

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->getReturnTypeName()[C

    move-result-object v2

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->getTypeParameterNames()[[C

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->getTypeParameterNames()[[C

    move-result-object v2

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->getTypeParameterBounds()[[[C

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->getTypeParameterBounds()[[[C

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->equals([[[C[[[C)Z

    move-result p1

    if-nez p1, :cond_a

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->delta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-virtual {p1, p3, v1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->changed(Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    goto/16 :goto_0

    :cond_3
    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/SourceFieldElementInfo;

    if-eqz v0, :cond_4

    instance-of v0, p2, Lorg/eclipse/jdt/internal/core/SourceFieldElementInfo;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/eclipse/jdt/internal/core/SourceFieldElementInfo;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/SourceFieldElementInfo;->getTypeName()[C

    move-result-object p1

    check-cast p2, Lorg/eclipse/jdt/internal/core/SourceFieldElementInfo;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/SourceFieldElementInfo;->getTypeName()[C

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->delta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-virtual {p1, p3, v1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->changed(Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    if-eqz v0, :cond_9

    instance-of v0, p2, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    if-eqz v0, :cond_9

    check-cast p1, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    check-cast p2, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getSuperclassName()[C

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getSuperclassName()[C

    move-result-object v2

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getInterfaceNames()[[C

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getInterfaceNames()[[C

    move-result-object v2

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->delta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    const/16 v2, 0x800

    invoke-virtual {v0, p3, v2}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->changed(Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    :cond_6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getTypeParameterNames()[[C

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getTypeParameterNames()[[C

    move-result-object v2

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getTypeParameterBounds()[[[C

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getTypeParameterBounds()[[[C

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->equals([[[C[[[C)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->delta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-virtual {v0, p3, v1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->changed(Lorg/eclipse/jdt/core/IJavaElement;I)Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    :cond_8
    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->categories:Ljava/util/HashMap;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->categories:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->findCategoryChange(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    :cond_9
    instance-of p3, p1, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;

    if-eqz p3, :cond_a

    instance-of p3, p2, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;

    if-eqz p3, :cond_a

    check-cast p1, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;

    check-cast p2, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->getCategories()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->getCategories()Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->findCategoryChange(Ljava/util/Map;Ljava/util/Map;)V

    :cond_a
    :goto_0
    return-void
.end method

.method private findDeletions()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->infos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/IJavaElement;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->delta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->removed(Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->removed(Lorg/eclipse/jdt/core/IJavaElement;)V

    goto :goto_0
.end method

.method private getElementInfo(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/JavaElementInfo;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->infos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElementInfo;

    return-object p1
.end method

.method private getNewPosition(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->newPositions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;

    return-object p1
.end method

.method private getOldPosition(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->oldPositions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;

    return-object p1
.end method

.method private initialize()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->infos:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->oldPositions:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->newPositions:Ljava/util/Map;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->oldPositions:Ljava/util/Map;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->javaElement:Lorg/eclipse/jdt/core/IJavaElement;

    new-instance v2, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;-><init>(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->newPositions:Ljava/util/Map;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->javaElement:Lorg/eclipse/jdt/core/IJavaElement;

    new-instance v2, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;

    invoke-direct {v2, v3, v3}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;-><init>(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->added:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->removed:Ljava/util/HashSet;

    return-void
.end method

.method private insertPositions([Lorg/eclipse/jdt/core/IJavaElement;Z)V
    .locals 8

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_0

    aget-object v3, p1, v1

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    move-object v4, v2

    :goto_1
    if-lt v1, v0, :cond_1

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_2

    aget-object v5, p1, v1

    goto :goto_2

    :cond_2
    move-object v5, v2

    :goto_2
    if-eqz p2, :cond_3

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->newPositions:Ljava/util/Map;

    new-instance v7, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;

    invoke-direct {v7, v4, v5}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;-><init>(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-interface {v6, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->oldPositions:Ljava/util/Map;

    new-instance v7, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;

    invoke-direct {v7, v4, v5}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;-><init>(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;)V

    invoke-interface {v6, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    move-object v4, v3

    move-object v3, v5

    goto :goto_1
.end method

.method private isPositionedCorrectly(Lorg/eclipse/jdt/core/IJavaElement;)Z
    .locals 2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->getOldPosition(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->getNewPosition(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;->previous:Lorg/eclipse/jdt/core/IJavaElement;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;->previous:Lorg/eclipse/jdt/core/IJavaElement;

    if-nez v0, :cond_3

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1

    :cond_3
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private recordElementInfo(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/core/JavaModel;I)V
    .locals 6

    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->maxDepth:I

    if-lt p3, v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getInfo(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaElementInfo;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->infos:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of p1, p1, Lorg/eclipse/jdt/core/IParent;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElementInfo;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->insertPositions([Lorg/eclipse/jdt/core/IJavaElement;Z)V

    array-length v2, p1

    move v3, v1

    :goto_0
    if-lt v3, v2, :cond_2

    goto :goto_1

    :cond_2
    aget-object v4, p1, v3

    add-int/lit8 v5, p3, 0x1

    invoke-direct {p0, v4, p2, v5}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->recordElementInfo(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/core/JavaModel;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    instance-of p1, v0, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;

    if-eqz p1, :cond_4

    check-cast v0, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;

    iget-object p1, v0, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->annotations:[Lorg/eclipse/jdt/core/IAnnotation;

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_7

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->annotationInfos:Ljava/util/Map;

    if-nez p2, :cond_5

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->annotationInfos:Ljava/util/Map;

    :cond_5
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object p2

    array-length p3, p1

    :goto_3
    if-lt v1, p3, :cond_6

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->annotationInfos:Ljava/util/Map;

    aget-object v2, p1, v1

    invoke-virtual {p2, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getInfo(Lorg/eclipse/jdt/core/IJavaElement;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    return-void
.end method

.method private recordNewPositions(Lorg/eclipse/jdt/core/IJavaElement;I)V
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->maxDepth:I

    if-ge p2, v0, :cond_1

    instance-of v0, p1, Lorg/eclipse/jdt/core/IParent;

    if-eqz v0, :cond_1

    :try_start_0
    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElementInfo;
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElementInfo;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->insertPositions([Lorg/eclipse/jdt/core/IJavaElement;Z)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, p1, v2

    add-int/lit8 v4, p2, 0x1

    invoke-direct {p0, v3, v4}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->recordNewPositions(Lorg/eclipse/jdt/core/IJavaElement;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    return-void
.end method

.method private removeElementInfo(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->infos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private removed(Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->removed:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->getOldPosition(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;

    move-result-object p1

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;->previous:Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->getOldPosition(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;->next:Lorg/eclipse/jdt/core/IJavaElement;

    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->getOldPosition(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;

    move-result-object v1

    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;->next:Lorg/eclipse/jdt/core/IJavaElement;

    iput-object v2, v0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;->next:Lorg/eclipse/jdt/core/IJavaElement;

    :cond_2
    if-eqz v1, :cond_3

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;->previous:Lorg/eclipse/jdt/core/IJavaElement;

    iput-object p1, v1, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder$ListItem;->previous:Lorg/eclipse/jdt/core/IJavaElement;

    :cond_3
    return-void
.end method

.method private trimDelta(Lorg/eclipse/jdt/internal/core/JavaElementDelta;)V
    .locals 3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->getKind()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->clearAffectedChildren()V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->getAffectedChildren()[Lorg/eclipse/jdt/core/IJavaElementDelta;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    :goto_1
    return-void

    :cond_1
    aget-object v2, p1, v1

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-direct {p0, v2}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->trimDelta(Lorg/eclipse/jdt/internal/core/JavaElementDelta;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public buildDeltas()V
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->javaElement:Lorg/eclipse/jdt/core/IJavaElement;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->delta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->javaElement:Lorg/eclipse/jdt/core/IJavaElement;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->delta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->fineGrained()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->javaElement:Lorg/eclipse/jdt/core/IJavaElement;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->recordNewPositions(Lorg/eclipse/jdt/core/IJavaElement;I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->javaElement:Lorg/eclipse/jdt/core/IJavaElement;

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->findAdditions(Lorg/eclipse/jdt/core/IJavaElement;I)V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->findDeletions()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->javaElement:Lorg/eclipse/jdt/core/IJavaElement;

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->findChangesInPositioning(Lorg/eclipse/jdt/core/IJavaElement;I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->delta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->trimDelta(Lorg/eclipse/jdt/internal/core/JavaElementDelta;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->delta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->getAffectedChildren()[Lorg/eclipse/jdt/core/IJavaElementDelta;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->delta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->contentChanged()V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Built delta:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/JavaElementDeltaBuilder;->delta:Lorg/eclipse/jdt/internal/core/JavaElementDelta;

    if-nez v1, :cond_0

    const-string v1, "<null>"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaElementDelta;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
