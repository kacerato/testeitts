.class public Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field changes:Ljava/util/HashMap;

.field hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->changes:Ljava/util/HashMap;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    return-void
.end method

.method private addAffectedChildren(Lorg/eclipse/jdt/core/IJavaElementDelta;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getAffectedChildren()[Lorg/eclipse/jdt/core/IJavaElementDelta;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    aget-object v2, p1, v1

    invoke-interface {v2}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    check-cast v3, Lorg/eclipse/jdt/core/IImportDeclaration;

    invoke-direct {p0, v3, v2}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->addChange(Lorg/eclipse/jdt/core/IImportDeclaration;Lorg/eclipse/jdt/core/IJavaElementDelta;)V

    goto :goto_1

    :pswitch_2
    check-cast v3, Lorg/eclipse/jdt/core/IImportContainer;

    invoke-direct {p0, v3, v2}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->addChange(Lorg/eclipse/jdt/core/IImportContainer;Lorg/eclipse/jdt/core/IJavaElementDelta;)V

    goto :goto_1

    :pswitch_3
    check-cast v3, Lorg/eclipse/jdt/core/IMember;

    invoke-direct {p0, v3, v2}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->addChange(Lorg/eclipse/jdt/core/IMember;Lorg/eclipse/jdt/core/IJavaElementDelta;)V

    goto :goto_1

    :pswitch_4
    check-cast v3, Lorg/eclipse/jdt/core/IType;

    invoke-direct {p0, v3, v2}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->addChange(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/IJavaElementDelta;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private addChange(Lorg/eclipse/jdt/core/IImportContainer;Lorg/eclipse/jdt/core/IJavaElementDelta;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 13
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getKind()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 14
    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->addAffectedChildren(Lorg/eclipse/jdt/core/IJavaElementDelta;)V

    return-void

    .line 15
    :cond_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->changes:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/core/SimpleDelta;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->getKind()I

    move-result p2

    if-ne p2, v2, :cond_6

    .line 17
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->changes:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->getKind()I

    move-result p2

    if-ne p2, v1, :cond_6

    .line 19
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->changes:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 20
    :cond_3
    new-instance p2, Lorg/eclipse/jdt/internal/core/SimpleDelta;

    invoke-direct {p2}, Lorg/eclipse/jdt/internal/core/SimpleDelta;-><init>()V

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_4

    goto :goto_0

    .line 21
    :cond_4
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->removed()V

    goto :goto_0

    .line 22
    :cond_5
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->added()V

    .line 23
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->changes:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_1
    return-void
.end method

.method private addChange(Lorg/eclipse/jdt/core/IImportDeclaration;Lorg/eclipse/jdt/core/IJavaElementDelta;)V
    .locals 3

    .line 24
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->changes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/SimpleDelta;

    .line 25
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getKind()I

    move-result p2

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq p2, v2, :cond_1

    if-eq p2, v1, :cond_0

    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->getKind()I

    move-result p2

    if-ne p2, v2, :cond_5

    .line 27
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->changes:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->getKind()I

    move-result p2

    if-ne p2, v1, :cond_5

    .line 29
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->changes:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 30
    :cond_2
    new-instance v0, Lorg/eclipse/jdt/internal/core/SimpleDelta;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/SimpleDelta;-><init>()V

    if-eq p2, v2, :cond_4

    if-eq p2, v1, :cond_3

    goto :goto_0

    .line 31
    :cond_3
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->removed()V

    goto :goto_0

    .line 32
    :cond_4
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->added()V

    .line 33
    :goto_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->changes:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    return-void
.end method

.method private addChange(Lorg/eclipse/jdt/core/IMember;Lorg/eclipse/jdt/core/IJavaElementDelta;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 34
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getKind()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_2

    .line 35
    :cond_0
    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->addAffectedChildren(Lorg/eclipse/jdt/core/IJavaElementDelta;)V

    goto :goto_2

    .line 36
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->getAllTypesFromHierarchy(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/util/ArrayList;)V

    .line 38
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-lt v1, v0, :cond_2

    goto :goto_2

    .line 39
    :cond_2
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IType;

    .line 40
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->changes:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/SimpleDelta;

    invoke-direct {p0, p1, v2}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->addTypeRemoval(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/core/SimpleDelta;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->getAllTypesFromElement(Lorg/eclipse/jdt/core/IJavaElement;Ljava/util/ArrayList;)V

    .line 43
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-lt v1, p1, :cond_4

    :goto_2
    return-void

    .line 44
    :cond_4
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IType;

    .line 45
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->changes:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/SimpleDelta;

    invoke-direct {p0, v0, v2}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->addTypeAddition(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/core/SimpleDelta;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private addChange(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/core/IJavaElementDelta;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 46
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getKind()I

    move-result v0

    .line 47
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->changes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/SimpleDelta;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_2

    .line 48
    :cond_0
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getFlags()I

    move-result v0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->addTypeChange(Lorg/eclipse/jdt/core/IType;ILorg/eclipse/jdt/internal/core/SimpleDelta;)V

    .line 49
    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->addAffectedChildren(Lorg/eclipse/jdt/core/IJavaElementDelta;)V

    goto :goto_2

    .line 50
    :cond_1
    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->addTypeRemoval(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/core/SimpleDelta;)V

    .line 51
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->getAllTypesFromHierarchy(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/util/ArrayList;)V

    .line 53
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-lt v2, v0, :cond_2

    goto :goto_2

    .line 54
    :cond_2
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IType;

    .line 55
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->changes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/SimpleDelta;

    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->addTypeRemoval(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/core/SimpleDelta;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    :cond_3
    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->addTypeAddition(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/core/SimpleDelta;)V

    .line 57
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->getAllTypesFromElement(Lorg/eclipse/jdt/core/IJavaElement;Ljava/util/ArrayList;)V

    .line 59
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-lt v2, p1, :cond_4

    :goto_2
    return-void

    .line 60
    :cond_4
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IType;

    .line 61
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->changes:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/SimpleDelta;

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->addTypeAddition(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/core/SimpleDelta;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private addTypeAddition(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/core/SimpleDelta;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->getKind()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->hasSuperTypeChange(Lorg/eclipse/jdt/core/IType;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->superTypes()V

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->hasVisibilityChange(Lorg/eclipse/jdt/core/IType;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->modifiers()V

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    if-nez v1, :cond_5

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->changes:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->hasSupertype(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->subtypesIncludeSupertypeOf(Lorg/eclipse/jdt/core/IType;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->missingTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_4
    new-instance p2, Lorg/eclipse/jdt/internal/core/SimpleDelta;

    invoke-direct {p2}, Lorg/eclipse/jdt/internal/core/SimpleDelta;-><init>()V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->added()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->changes:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    return-void
.end method

.method private addTypeChange(Lorg/eclipse/jdt/core/IType;ILorg/eclipse/jdt/internal/core/SimpleDelta;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->getKind()I

    move-result p2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->getFlags()I

    move-result p2

    and-int/lit16 v0, p2, 0x800

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->hasSuperTypeChange(Lorg/eclipse/jdt/core/IType;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->superTypes()V

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->hasVisibilityChange(Lorg/eclipse/jdt/core/IType;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->modifiers()V

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    if-nez v1, :cond_8

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->changes:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    and-int/lit16 p3, p2, 0x800

    if-eqz p3, :cond_4

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->includesTypeOrSupertype(Lorg/eclipse/jdt/core/IType;)Z

    move-result p3

    if-eqz p3, :cond_4

    new-instance p3, Lorg/eclipse/jdt/internal/core/SimpleDelta;

    invoke-direct {p3}, Lorg/eclipse/jdt/internal/core/SimpleDelta;-><init>()V

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->superTypes()V

    goto :goto_2

    :cond_4
    const/4 p3, 0x0

    :goto_2
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->hasSupertype(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->focusType:Lorg/eclipse/jdt/core/IType;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    :cond_5
    if-nez p3, :cond_6

    new-instance p3, Lorg/eclipse/jdt/internal/core/SimpleDelta;

    invoke-direct {p3}, Lorg/eclipse/jdt/internal/core/SimpleDelta;-><init>()V

    :cond_6
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->modifiers()V

    :cond_7
    if-eqz p3, :cond_8

    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->changes:Ljava/util/HashMap;

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_3
    return-void
.end method

.method private addTypeRemoval(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/core/SimpleDelta;)V
    .locals 2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->getKind()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->removed()V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->changes:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->contains(Lorg/eclipse/jdt/core/IType;)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Lorg/eclipse/jdt/internal/core/SimpleDelta;

    invoke-direct {p2}, Lorg/eclipse/jdt/internal/core/SimpleDelta;-><init>()V

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/SimpleDelta;->removed()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->changes:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method private getAllTypesFromElement(Lorg/eclipse/jdt/core/IJavaElement;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    :pswitch_1
    check-cast p1, Lorg/eclipse/jdt/core/IMember;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IParent;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-lt v1, v2, :cond_0

    goto :goto_3

    :cond_0
    aget-object p1, v0, v1

    check-cast p1, Lorg/eclipse/jdt/core/IType;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->getAllTypesFromElement(Lorg/eclipse/jdt/core/IJavaElement;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_2
    check-cast p1, Lorg/eclipse/jdt/core/IType;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getTypes()[Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    array-length v2, v0

    :goto_1
    if-lt v1, v2, :cond_1

    goto :goto_3

    :cond_1
    aget-object p1, v0, v1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->getAllTypesFromElement(Lorg/eclipse/jdt/core/IJavaElement;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_3
    check-cast p1, Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/ICompilationUnit;->getTypes()[Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    array-length v0, p1

    :goto_2
    if-lt v1, v0, :cond_2

    :goto_3
    return-void

    :cond_2
    aget-object v2, p1, v1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->getAllTypesFromElement(Lorg/eclipse/jdt/core/IJavaElement;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getAllTypesFromHierarchy(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/util/ArrayList;)V
    .locals 5

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->files:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/core/IMember;

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/IType;

    invoke-virtual {p1, v3}, Lorg/eclipse/jdt/internal/core/JavaElement;->isAncestorOf(Lorg/eclipse/jdt/core/IJavaElement;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_2
    check-cast p1, Lorg/eclipse/jdt/core/IOpenable;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->files:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private hasSuperTypeChange(Lorg/eclipse/jdt/core/IType;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getSuperclass(Lorg/eclipse/jdt/core/IType;)Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getSuperclassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getSuperInterfaces(Lorg/eclipse/jdt/core/IType;)[Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IType;->getSuperInterfaceNames()[Ljava/lang/String;

    move-result-object p1

    array-length v0, v0

    array-length v1, p1

    if-eq v0, v1, :cond_2

    return v2

    :cond_2
    array-length v0, p1

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    if-lt v3, v0, :cond_3

    return v1

    :cond_3
    aget-object v4, p1, v3

    invoke-virtual {v4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private hasVisibilityChange(Lorg/eclipse/jdt/core/IType;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->hierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->getCachedFlags(Lorg/eclipse/jdt/core/IType;)I

    move-result v0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getFlags()I

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addChange(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/IJavaElementDelta;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lorg/eclipse/jdt/core/IJavaElementDelta;->getKind()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->addAffectedChildren(Lorg/eclipse/jdt/core/IJavaElementDelta;)V

    goto :goto_2

    .line 3
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    check-cast p1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->getAllTypesFromHierarchy(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/util/ArrayList;)V

    .line 5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-lt v1, v0, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IType;

    .line 7
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->changes:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/SimpleDelta;

    invoke-direct {p0, p1, v2}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->addTypeRemoval(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/core/SimpleDelta;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->getAllTypesFromElement(Lorg/eclipse/jdt/core/IJavaElement;Ljava/util/ArrayList;)V

    .line 10
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-lt v1, p1, :cond_4

    :goto_2
    return-void

    .line 11
    :cond_4
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IType;

    .line 12
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->changes:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/SimpleDelta;

    invoke-direct {p0, v0, v2}, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->addTypeAddition(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/core/SimpleDelta;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public needsRefresh()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->changes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/ChangeCollector;->changes:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/JavaElement;->toDebugString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
