.class public final Lm9/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final b:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

.field public final c:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field public final d:[F

.field public final e:Lcom/google/android/filament/Box;

.field public final f:[F

.field public g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public h:I

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F


# direct methods
.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lm9/g;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v0, p0, Lm9/g;->b:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object v0, p0, Lm9/g;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lm9/g;->d:[F

    new-instance v1, Lcom/google/android/filament/Box;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/filament/Box;-><init>(FFFFFF)V

    iput-object v1, p0, Lm9/g;->e:Lcom/google/android/filament/Box;

    new-array v0, v0, [F

    iput-object v0, p0, Lm9/g;->f:[F

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lm9/g;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lm9/g;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lm9/g;->h:I

    return-void
.end method

.method public b(Ljava/util/List;FFFF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "objects",
            "centerX",
            "centerY",
            "centerZ",
            "radius"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;",
            ">;FFFF)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    iput v1, p0, Lm9/g;->h:I

    const/4 v1, 0x0

    iput v1, p0, Lm9/g;->i:F

    iget-object v1, p0, Lm9/g;->e:Lcom/google/android/filament/Box;

    invoke-virtual {v1, p2, p3, p4}, Lcom/google/android/filament/Box;->c(FFF)V

    iget-object p2, p0, Lm9/g;->e:Lcom/google/android/filament/Box;

    invoke-virtual {p2, p5, p5, p5}, Lcom/google/android/filament/Box;->d(FFF)V

    iget p2, p0, Lm9/g;->h:I

    if-nez p2, :cond_1

    return-void

    :cond_1
    const/16 p3, 0x10

    mul-int/2addr p2, p3

    iget-object p4, p0, Lm9/g;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result p4

    if-ge p4, p2, :cond_5

    :cond_2
    iget-object p4, p0, Lm9/g;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/16 p5, 0x100

    if-nez p4, :cond_3

    move p4, p5

    goto :goto_1

    :cond_3
    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result p4

    :goto_1
    if-ge p4, p2, :cond_4

    shr-int/lit8 v1, p4, 0x1

    invoke-static {p5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr p4, v1

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lm9/g;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    new-instance p5, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {p5, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iput-object p5, p0, Lm9/g;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    :cond_5
    move p2, v0

    :goto_2
    iget p4, p0, Lm9/g;->h:I

    if-ge p2, p4, :cond_7

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

    iget p5, p0, Lm9/g;->i:F

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->getScale()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p5, v1}, Ljava/lang/Math;->max(FF)F

    move-result p5

    iput p5, p0, Lm9/g;->i:F

    iget-object p5, p0, Lm9/g;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p4, p5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->m(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p5, p0, Lm9/g;->b:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p4, p5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->o(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p5, p0, Lm9/g;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v1, p0, Lm9/g;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lm9/g;->b:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;->getScale()F

    move-result p4

    invoke-virtual {p5, v1, v2, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->Y0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;F)V

    iget-object p4, p0, Lm9/g;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p5, p0, Lm9/g;->d:[F

    invoke-virtual {p4, p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o([F)[F

    iget-object p4, p0, Lm9/g;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 p5, p2, 0x10

    iget-object v1, p0, Lm9/g;->d:[F

    invoke-virtual {p4, p5, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(I[F)V

    if-nez p2, :cond_6

    iget-object p4, p0, Lm9/g;->d:[F

    iget-object p5, p0, Lm9/g;->f:[F

    invoke-static {p4, v0, p5, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public c(FFFF)V
    .locals 3
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

    const v0, 0x38d1b717    # 1.0E-4f

    invoke-static {v0, p4}, LNc/b;->M(FF)F

    move-result p4

    iget v0, p0, Lm9/g;->i:F

    div-float/2addr v0, p4

    iget-object p4, p0, Lm9/g;->e:Lcom/google/android/filament/Box;

    invoke-virtual {p4}, Lcom/google/android/filament/Box;->a()[F

    move-result-object p4

    iget-object v1, p0, Lm9/g;->e:Lcom/google/android/filament/Box;

    invoke-virtual {v1}, Lcom/google/android/filament/Box;->b()[F

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    aget v2, p4, v2

    iput v2, p0, Lm9/g;->j:F

    const/4 v2, 0x1

    aget v2, p4, v2

    iput v2, p0, Lm9/g;->k:F

    const/4 v2, 0x2

    aget p4, p4, v2

    iput p4, p0, Lm9/g;->l:F

    mul-float/2addr p1, v0

    add-float/2addr p1, v1

    const p4, 0x3d4ccccd    # 0.05f

    invoke-static {p4, p1}, LNc/b;->M(FF)F

    move-result p1

    iput p1, p0, Lm9/g;->m:F

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr p2, p1

    mul-float/2addr p2, v0

    add-float/2addr p2, v1

    invoke-static {p4, p2}, LNc/b;->M(FF)F

    move-result p1

    iput p1, p0, Lm9/g;->n:F

    iget p1, p0, Lm9/g;->m:F

    iput p1, p0, Lm9/g;->o:F

    return-void
.end method
