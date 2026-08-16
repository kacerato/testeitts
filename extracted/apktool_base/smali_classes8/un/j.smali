.class public Lun/j;
.super Lun/a;
.source "SourceFile"


# instance fields
.field public final d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;IF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vertices",
            "triangles",
            "area",
            "flagMergeThreshold"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lun/j;->c(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)[F

    move-result-object v0

    invoke-direct {p0, p3, p4, v0}, Lun/a;-><init>(IF[F)V

    .line 2
    iput-object p1, p0, Lun/j;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    .line 3
    iput-object p2, p0, Lun/j;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;[FIF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vertices",
            "triangles",
            "bounds",
            "area",
            "flagMergeThreshold"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p4, p5, p3}, Lun/a;-><init>(IF[F)V

    .line 5
    iput-object p1, p0, Lun/j;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    .line 6
    iput-object p2, p0, Lun/j;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    return-void
.end method

.method public static c(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)[F
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertices"
        }
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v2

    aput v2, v0, v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v3

    aput v3, v0, v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v4

    aput v4, v0, v3

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v4

    const/4 v5, 0x3

    aput v4, v0, v5

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v4

    const/4 v6, 0x4

    aput v4, v0, v6

    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v4

    const/4 v7, 0x5

    aput v4, v0, v7

    move v4, v5

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v8

    if-ge v4, v8, :cond_0

    aget v8, v0, v1

    invoke-virtual {p0, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    aput v8, v0, v1

    aget v8, v0, v2

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {p0, v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v8

    aput v8, v0, v2

    aget v8, v0, v3

    add-int/lit8 v10, v4, 0x2

    invoke-virtual {p0, v10}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->min(FF)F

    move-result v8

    aput v8, v0, v3

    aget v8, v0, v5

    invoke-virtual {p0, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(FF)F

    move-result v8

    aput v8, v0, v5

    aget v8, v0, v6

    invoke-virtual {p0, v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    aput v8, v0, v6

    aget v8, v0, v7

    invoke-virtual {p0, v10}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get(I)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    aput v8, v0, v7

    add-int/lit8 v4, v4, 0x3

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public b(Lwn/h;Lwn/N;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hf",
            "telemetry"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lun/j;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lun/j;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v1, p0, Lun/j;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v4

    iget-object v1, p0, Lun/j;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v5

    iget-object v1, p0, Lun/j;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v6

    iget v7, p0, Lun/a;->a:I

    iget v1, p0, Lun/a;->b:F

    iget v2, p1, Lwn/h;->f:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v8, v1

    move-object v2, p1

    move-object v9, p2

    invoke-static/range {v2 .. v9}, Lwn/G;->e(Lwn/h;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IIIIILwn/N;)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    return-void
.end method
