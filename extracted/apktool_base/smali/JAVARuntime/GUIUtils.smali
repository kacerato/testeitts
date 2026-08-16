.class public final LJAVARuntime/GUIUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "GUI"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/GUIUtils$TouchFilter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public static applyFilter(Ltc/h;LJAVARuntime/GUIUtils$TouchFilter;)Z
    .locals 3
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "touch",
            "touchFilter"
        }
    .end annotation

    sget-object v0, LJAVARuntime/GUIUtils$TouchFilter;->All:LJAVARuntime/GUIUtils$TouchFilter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Ltc/h;->k()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ltc/h;->q()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ltc/h;->t()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    sget-object v0, LJAVARuntime/GUIUtils$TouchFilter;->Pressed:LJAVARuntime/GUIUtils$TouchFilter;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Ltc/h;->q()Z

    move-result p0

    return p0

    :cond_3
    sget-object v0, LJAVARuntime/GUIUtils$TouchFilter;->Down:LJAVARuntime/GUIUtils$TouchFilter;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Ltc/h;->k()Z

    move-result p0

    return p0

    :cond_4
    sget-object v0, LJAVARuntime/GUIUtils$TouchFilter;->Up:LJAVARuntime/GUIUtils$TouchFilter;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Ltc/h;->t()Z

    move-result p0

    return p0

    :cond_5
    sget-object v0, LJAVARuntime/GUIUtils$TouchFilter;->DownAndPressed:LJAVARuntime/GUIUtils$TouchFilter;

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Ltc/h;->k()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Ltc/h;->q()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    move v1, v2

    :cond_7
    :goto_1
    return v1

    :cond_8
    sget-object v0, LJAVARuntime/GUIUtils$TouchFilter;->DownAndUp:LJAVARuntime/GUIUtils$TouchFilter;

    if-ne p1, v0, :cond_b

    invoke-virtual {p0}, Ltc/h;->k()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0}, Ltc/h;->t()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_2

    :cond_9
    move v1, v2

    :cond_a
    :goto_2
    return v1

    :cond_b
    sget-object v0, LJAVARuntime/GUIUtils$TouchFilter;->PressedAndUp:LJAVARuntime/GUIUtils$TouchFilter;

    if-ne p1, v0, :cond_e

    invoke-virtual {p0}, Ltc/h;->q()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {p0}, Ltc/h;->t()Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_3

    :cond_c
    move v1, v2

    :cond_d
    :goto_3
    return v1

    :cond_e
    return v2
.end method

.method public static determineTouch(IIII)LJAVARuntime/Touch;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "width",
            "height"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "width",
            "height"
        }
    .end annotation

    .line 1
    sget-object v0, LJAVARuntime/GUIUtils$TouchFilter;->All:LJAVARuntime/GUIUtils$TouchFilter;

    invoke-static {p0, p1, p2, p3, v0}, LJAVARuntime/GUIUtils;->determineTouch(IIIILJAVARuntime/GUIUtils$TouchFilter;)LJAVARuntime/Touch;

    move-result-object p0

    return-object p0
.end method

.method public static determineTouch(IIIILJAVARuntime/GUIUtils$TouchFilter;)LJAVARuntime/Touch;
    .locals 6
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "width",
            "height",
            "touchFilter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "width",
            "height",
            "touchFilter"
        }
    .end annotation

    .line 2
    sget-object v0, Lrc/a;->k:Ljava/util/List;

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltc/h;

    if-eqz v2, :cond_0

    .line 5
    invoke-static {v2, p4}, LJAVARuntime/GUIUtils;->applyFilter(Ltc/h;LJAVARuntime/GUIUtils$TouchFilter;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v2}, Ltc/h;->b()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v3

    .line 7
    iget v4, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    int-to-float v5, p0

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_0

    add-int v5, p0, p2

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    .line 8
    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    int-to-float v4, p1

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    add-int v4, p1, p3

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 9
    invoke-virtual {v2}, Ltc/h;->L()LJAVARuntime/Touch;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static determineTouchList(IIII)Ljava/util/List;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "width",
            "height"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "width",
            "height"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/List<",
            "LJAVARuntime/Touch;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, LJAVARuntime/GUIUtils$TouchFilter;->All:LJAVARuntime/GUIUtils$TouchFilter;

    invoke-static {p0, p1, p2, p3, v0}, LJAVARuntime/GUIUtils;->determineTouchList(IIIILJAVARuntime/GUIUtils$TouchFilter;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static determineTouchList(IIIILJAVARuntime/GUIUtils$TouchFilter;)Ljava/util/List;
    .locals 7
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "width",
            "height",
            "touchFilter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "width",
            "height",
            "touchFilter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "LJAVARuntime/GUIUtils$TouchFilter;",
            ")",
            "Ljava/util/List<",
            "LJAVARuntime/Touch;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 3
    sget-object v1, Lrc/a;->k:Ljava/util/List;

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 5
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltc/h;

    .line 6
    invoke-static {v3, p4}, LJAVARuntime/GUIUtils;->applyFilter(Ltc/h;LJAVARuntime/GUIUtils$TouchFilter;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v3}, Ltc/h;->b()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v4

    .line 8
    iget v5, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    int-to-float v6, p0

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_0

    add-int v6, p0, p2

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 9
    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    int-to-float v5, p1

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_0

    add-int v5, p1, p3

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    .line 10
    invoke-virtual {v3}, Ltc/h;->L()LJAVARuntime/Touch;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static determineTouches(IIII)[LJAVARuntime/Touch;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "width",
            "height"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "width",
            "height"
        }
    .end annotation

    .line 1
    sget-object v0, LJAVARuntime/GUIUtils$TouchFilter;->All:LJAVARuntime/GUIUtils$TouchFilter;

    invoke-static {p0, p1, p2, p3, v0}, LJAVARuntime/GUIUtils;->determineTouches(IIIILJAVARuntime/GUIUtils$TouchFilter;)[LJAVARuntime/Touch;

    move-result-object p0

    return-object p0
.end method

.method public static determineTouches(IIIILJAVARuntime/GUIUtils$TouchFilter;)[LJAVARuntime/Touch;
    .locals 8
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "width",
            "height",
            "touchFilter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "width",
            "height",
            "touchFilter"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v1, Lrc/a;->k:Ljava/util/List;

    const/4 v2, 0x0

    move v3, v2

    .line 4
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 5
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltc/h;

    .line 6
    invoke-static {v4, p4}, LJAVARuntime/GUIUtils;->applyFilter(Ltc/h;LJAVARuntime/GUIUtils$TouchFilter;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    invoke-virtual {v4}, Ltc/h;->b()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v5

    .line 8
    iget v6, v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    int-to-float v7, p0

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_0

    add-int v7, p0, p2

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 9
    iget v5, v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    int-to-float v6, p1

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_0

    add-int v6, p1, p3

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 10
    invoke-virtual {v4}, Ltc/h;->L()LJAVARuntime/Touch;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [LJAVARuntime/Touch;

    .line 13
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_2

    .line 14
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LJAVARuntime/Touch;

    aput-object p1, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isTouchInside(LJAVARuntime/Touch;IIII)Z
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "touch",
            "x",
            "y",
            "width",
            "height"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "touch",
            "x",
            "y",
            "width",
            "height"
        }
    .end annotation

    iget-object p0, p0, LJAVARuntime/Touch;->touch:Ltc/h;

    invoke-virtual {p0}, Ltc/h;->b()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    int-to-float v1, p1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    add-int/2addr p1, p3

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    int-to-float p1, p2

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_0

    add-int/2addr p2, p4

    int-to-float p1, p2

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
