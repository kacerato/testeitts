.class public Ld4/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:F

.field public final f:F

.field public final g:F


# direct methods
.method public constructor <init>(IIIIFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startX",
            "startY",
            "endX",
            "endY",
            "brushStartX",
            "brushStartY",
            "brushSize"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ld4/b$a;->a:I

    iput p2, p0, Ld4/b$a;->b:I

    iput p3, p0, Ld4/b$a;->c:I

    iput p4, p0, Ld4/b$a;->d:I

    iput p5, p0, Ld4/b$a;->e:F

    iput p6, p0, Ld4/b$a;->f:F

    iput p7, p0, Ld4/b$a;->g:F

    return-void
.end method

.method public static a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;F)Ld4/b$a;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "terrain",
            "worldLocation",
            "size"
        }
    .end annotation

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getCachedGlobalPositionX()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getCachedGlobalPositionZ()F

    move-result v1

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    sub-float/2addr v2, v0

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    sub-float/2addr p1, v1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p2

    sub-float v8, v2, v0

    sub-float v9, p1, v0

    add-float v1, v2, v0

    add-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->width:F

    div-float/2addr v3, v4

    mul-float v4, v8, v3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    mul-float v5, v9, v3

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    mul-float/2addr v1, v3

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    add-int/lit8 v1, v1, 0x1

    mul-float/2addr v0, v3

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v6

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v6, 0x0

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v7

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v7

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v7

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le v1, v4, :cond_4

    if-gt v0, v5, :cond_1

    goto :goto_1

    :cond_1
    if-ne v1, v4, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result p1

    add-int/lit8 v1, v4, 0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_2
    if-ne v0, v5, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result p0

    add-int/lit8 p1, v5, 0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    move v7, p0

    :goto_0
    move v6, v1

    goto :goto_2

    :cond_3
    move v7, v0

    goto :goto_0

    :cond_4
    :goto_1
    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v6, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getResolution()I

    move-result p0

    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result p0

    move v7, p0

    move v5, p1

    move v4, v0

    goto :goto_0

    :goto_2
    new-instance p0, Ld4/b$a;

    move-object v3, p0

    move v10, p2

    invoke-direct/range {v3 .. v10}, Ld4/b$a;-><init>(IIIIFFF)V

    return-object p0

    :cond_5
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public b()I
    .locals 4

    iget v0, p0, Ld4/b$a;->c:I

    iget v1, p0, Ld4/b$a;->a:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Ld4/b$a;->d:I

    iget v3, p0, Ld4/b$a;->b:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    const/16 v1, 0x80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method
