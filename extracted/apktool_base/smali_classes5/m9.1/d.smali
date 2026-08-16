.class public final Lm9/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm9/d$a;
    }
.end annotation


# static fields
.field public static final s:F = 0.05f


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lm9/c;",
            "Lm9/i;",
            ">;"
        }
    .end annotation
.end field

.field public e:[Lm9/c;

.field public f:I

.field public final g:Lm9/f;

.field public final h:Lm9/g;

.field public volatile i:[I

.field public volatile j:I

.field public volatile k:Z

.field public l:I

.field public volatile m:Lm9/d$a;

.field public volatile n:F

.field public volatile o:F

.field public volatile p:F

.field public volatile q:F

.field public volatile r:F


# direct methods
.method public constructor <init>(JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "cellKey"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    iput-object v0, p0, Lm9/d;->c:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lm9/d;->d:Ljava/util/Map;

    new-array v0, v1, [Lm9/c;

    iput-object v0, p0, Lm9/d;->e:[Lm9/c;

    new-instance v0, Lm9/f;

    invoke-direct {v0}, Lm9/f;-><init>()V

    iput-object v0, p0, Lm9/d;->g:Lm9/f;

    new-instance v0, Lm9/g;

    invoke-direct {v0}, Lm9/g;-><init>()V

    iput-object v0, p0, Lm9/d;->h:Lm9/g;

    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lm9/d;->i:[I

    sget-object v0, Lm9/d$a;->HIDDEN:Lm9/d$a;

    iput-object v0, p0, Lm9/d;->m:Lm9/d$a;

    iput-wide p1, p0, Lm9/d;->a:J

    iput-wide p3, p0, Lm9/d;->b:J

    return-void
.end method


# virtual methods
.method public final a(Lm9/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "materialObject"
        }
    .end annotation

    iget v0, p0, Lm9/d;->f:I

    iget-object v1, p0, Lm9/d;->e:[Lm9/c;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    array-length v2, v1

    shl-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Lm9/c;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lm9/d;->e:[Lm9/c;

    :cond_0
    iget-object v0, p0, Lm9/d;->e:[Lm9/c;

    iget v1, p0, Lm9/d;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lm9/d;->f:I

    aput-object p1, v0, v1

    return-void
.end method

.method public b(Lm9/j;Lm9/d$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "batch",
            "state"
        }
    .end annotation

    sget-object v0, Lm9/d$a;->IMPOSTOR_VISIBLE:Lm9/d$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    iget-boolean v3, p0, Lm9/d;->k:Z

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    sget-object v4, Lm9/d$a;->NORMAL_VISIBLE:Lm9/d$a;

    if-eq p2, v4, :cond_2

    if-ne p2, v0, :cond_1

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :cond_2
    :goto_1
    iget-object v0, p0, Lm9/d;->i:[I

    iget v4, p0, Lm9/d;->j:I

    :goto_2
    if-ge v1, v4, :cond_3

    aget v5, v0, v1

    invoke-virtual {p1, v5, v2}, Lm9/j;->a(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lm9/d;->g:Lm9/f;

    invoke-virtual {v0}, Lm9/f;->c()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0, v3}, Lm9/j;->a(IZ)V

    :cond_4
    if-eqz v2, :cond_5

    sget-object p2, Lm9/d$a;->NORMAL_VISIBLE:Lm9/d$a;

    :cond_5
    iput-object p2, p0, Lm9/d;->m:Lm9/d$a;

    return-void
.end method

.method public c(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scene"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lm9/d;->f:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lm9/d;->d:Ljava/util/Map;

    iget-object v3, p0, Lm9/d;->e:[Lm9/c;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm9/i;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lm9/i;->c(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    :cond_0
    iget-object v2, p0, Lm9/d;->e:[Lm9/c;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lm9/d;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iput v0, p0, Lm9/d;->f:I

    iput v0, p0, Lm9/d;->j:I

    iput v0, p0, Lm9/d;->l:I

    iput-boolean v0, p0, Lm9/d;->k:Z

    iget-object v0, p0, Lm9/d;->g:Lm9/f;

    invoke-virtual {v0, p1}, Lm9/f;->b(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    iget-object p1, p0, Lm9/d;->h:Lm9/g;

    invoke-virtual {p1}, Lm9/g;->a()V

    return-void
.end method

.method public final d(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    iget-object v0, p0, Lm9/d;->i:[I

    array-length v1, v0

    if-ge v1, p1, :cond_0

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lm9/d;->i:[I

    :cond_0
    return-void
.end method

.method public e(FFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "captureHalfWidth",
            "captureHalfHeight",
            "capturePivotYOffset",
            "captureSourceScale"
        }
    .end annotation

    iget-object v0, p0, Lm9/d;->h:Lm9/g;

    invoke-virtual {v0, p1, p2, p3, p4}, Lm9/g;->c(FFFF)V

    return-void
.end method

.method public f(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "materialObjects"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lm9/c;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm9/c;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lm9/c;->c()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lm9/c;->d()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lm9/c;->d()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->z()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lm9/d;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lm9/d;->d:Ljava/util/Map;

    new-instance v3, Lm9/i;

    invoke-direct {v3, v1}, Lm9/i;-><init>(Lm9/c;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lm9/d;->a(Lm9/c;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget p1, p0, Lm9/d;->f:I

    invoke-virtual {p0, p1}, Lm9/d;->d(I)V

    return-void
.end method

.method public g()V
    .locals 7

    const/4 v0, 0x0

    iput v0, p0, Lm9/d;->n:F

    iput v0, p0, Lm9/d;->o:F

    iput v0, p0, Lm9/d;->p:F

    iget-object v1, p0, Lm9/d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Lm9/d;->q:F

    iput v0, p0, Lm9/d;->r:F

    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lm9/d;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lm9/d;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    iget v4, p0, Lm9/d;->n:F

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->i()F

    move-result v5

    add-float/2addr v4, v5

    iput v4, p0, Lm9/d;->n:F

    iget v4, p0, Lm9/d;->o:F

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->j()F

    move-result v5

    add-float/2addr v4, v5

    iput v4, p0, Lm9/d;->o:F

    iget v4, p0, Lm9/d;->p:F

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->k()F

    move-result v3

    add-float/2addr v4, v3

    iput v4, p0, Lm9/d;->p:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lm9/d;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v2

    iget v2, p0, Lm9/d;->n:F

    mul-float/2addr v2, v3

    iput v2, p0, Lm9/d;->n:F

    iget v2, p0, Lm9/d;->o:F

    mul-float/2addr v2, v3

    iput v2, p0, Lm9/d;->o:F

    iget v2, p0, Lm9/d;->p:F

    mul-float/2addr v2, v3

    iput v2, p0, Lm9/d;->p:F

    move v2, v1

    move v1, v0

    :goto_1
    iget-object v3, p0, Lm9/d;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lm9/d;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->i()F

    move-result v4

    iget v5, p0, Lm9/d;->n:F

    sub-float/2addr v4, v5

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->j()F

    move-result v5

    iget v6, p0, Lm9/d;->o:F

    sub-float/2addr v5, v6

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->k()F

    move-result v3

    iget v6, p0, Lm9/d;->p:F

    sub-float/2addr v3, v6

    mul-float/2addr v4, v4

    mul-float/2addr v5, v5

    add-float/2addr v5, v4

    mul-float/2addr v3, v3

    add-float/2addr v5, v3

    cmpl-float v6, v5, v0

    if-lez v6, :cond_2

    move v0, v5

    :cond_2
    add-float/2addr v4, v3

    cmpl-float v3, v4, v1

    if-lez v3, :cond_3

    move v1, v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    const v2, 0x3d4ccccd    # 0.05f

    invoke-static {v2, v0}, LNc/b;->M(FF)F

    move-result v0

    iput v0, p0, Lm9/d;->q:F

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v2, v0}, LNc/b;->M(FF)F

    move-result v0

    iput v0, p0, Lm9/d;->r:F

    iget-object v1, p0, Lm9/d;->h:Lm9/g;

    iget-object v2, p0, Lm9/d;->c:Ljava/util/List;

    iget v3, p0, Lm9/d;->n:F

    iget v4, p0, Lm9/d;->o:F

    iget v5, p0, Lm9/d;->p:F

    iget v6, p0, Lm9/d;->q:F

    invoke-virtual/range {v1 .. v6}, Lm9/g;->b(Ljava/util/List;FFFF)V

    return-void
.end method

.method public final h()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget v3, p0, Lm9/d;->f:I

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lm9/d;->d:Ljava/util/Map;

    iget-object v4, p0, Lm9/d;->e:[Lm9/c;

    aget-object v4, v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm9/i;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lm9/i;->d()I

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lm9/d;->d(I)V

    iget-object v1, p0, Lm9/d;->i:[I

    move v3, v0

    move v4, v3

    :goto_1
    iget v5, p0, Lm9/d;->f:I

    if-ge v3, v5, :cond_4

    iget-object v5, p0, Lm9/d;->d:Ljava/util/Map;

    iget-object v6, p0, Lm9/d;->e:[Lm9/c;

    aget-object v6, v6, v3

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm9/i;

    if-nez v5, :cond_2

    move v5, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Lm9/i;->d()I

    move-result v5

    :goto_2
    if-eqz v5, :cond_3

    add-int/lit8 v6, v4, 0x1

    aput v5, v1, v4

    move v4, v6

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iput-object v1, p0, Lm9/d;->i:[I

    iput v2, p0, Lm9/d;->j:I

    const/4 v0, 0x0

    iput-object v0, p0, Lm9/d;->m:Lm9/d$a;

    return-void
.end method

.method public final i(Lm9/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "materialObject"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lm9/d;->f:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lm9/d;->e:[Lm9/c;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    invoke-virtual {p0, v0}, Lm9/d;->j(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final j(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget v0, p0, Lm9/d;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lm9/d;->f:I

    iget-object v1, p0, Lm9/d;->e:[Lm9/c;

    aget-object v2, v1, v0

    aput-object v2, v1, p1

    const/4 p1, 0x0

    aput-object p1, v1, v0

    return-void
.end method

.method public k(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Ln9/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scene",
            "resources"
        }
    .end annotation

    iget-object v0, p0, Lm9/d;->g:Lm9/f;

    iget-object v1, p0, Lm9/d;->h:Lm9/g;

    invoke-virtual {v0, p1, v1, p2}, Lm9/f;->e(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Lm9/g;Ln9/b;)V

    iget-object p1, p0, Lm9/d;->g:Lm9/f;

    invoke-virtual {p1}, Lm9/f;->c()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lm9/d;->k:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lm9/d;->m:Lm9/d$a;

    return-void
.end method

.method public l(Ljava/util/List;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;ZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "materialObjects",
            "scene",
            "castShadow",
            "receiveShadow"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lm9/c;",
            ">;",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;",
            "ZZ)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm9/c;

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Lm9/c;->c()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lm9/c;->d()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lm9/c;->d()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->z()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lm9/d;->d:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm9/i;

    if-nez v3, :cond_2

    new-instance v3, Lm9/i;

    invoke-direct {v3, v2}, Lm9/i;-><init>(Lm9/c;)V

    iget-object v4, p0, Lm9/d;->d:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lm9/d;->a(Lm9/c;)V

    :cond_2
    iget-object v2, p0, Lm9/d;->h:Lm9/g;

    invoke-virtual {v3, p2, v2, p3, p4}, Lm9/i;->g(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Lm9/g;ZZ)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v3, p0, Lm9/d;->d:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm9/i;

    if-eqz v3, :cond_4

    invoke-virtual {v3, p2}, Lm9/i;->c(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    invoke-virtual {p0, v2}, Lm9/d;->i(Lm9/c;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    iget p3, p0, Lm9/d;->f:I

    if-ge v0, p3, :cond_9

    iget-object p3, p0, Lm9/d;->e:[Lm9/c;

    aget-object p3, p3, v0

    if-eqz p1, :cond_7

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    iget-object p4, p0, Lm9/d;->d:Ljava/util/Map;

    invoke-interface {p4, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lm9/i;

    if-eqz p3, :cond_8

    invoke-virtual {p3, p2}, Lm9/i;->c(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    :cond_8
    invoke-virtual {p0, v0}, Lm9/d;->j(I)V

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lm9/d;->h()V

    return-void
.end method
