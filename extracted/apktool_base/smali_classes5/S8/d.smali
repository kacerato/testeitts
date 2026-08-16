.class public LS8/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;

.field public final d:Lcom/google/android/filament/Box;

.field public final e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public f:F

.field public g:Z


# direct methods
.method public constructor <init>(I[F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "boneCount",
            "identityMatrix"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/filament/Box;

    invoke-direct {v0}, Lcom/google/android/filament/Box;-><init>()V

    iput-object v0, p0, LS8/d;->d:Lcom/google/android/filament/Box;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LS8/d;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/16 v0, 0x100

    if-gt p1, v0, :cond_1

    iput p1, p0, LS8/d;->a:I

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;-><init>(I)V

    iput-object v1, p0, LS8/d;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v1, p1, 0x10

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iput-object v0, p0, LS8/d;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p0, v0, p2}, LS8/d;->h(I[F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Can`t be more than 256 bones"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, LS8/d;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    iget-object v0, p0, LS8/d;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;

    iget-object v2, p0, LS8/d;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget v3, p0, LS8/d;->a:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;->f(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)V

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, LS8/d;->a:I

    return v0
.end method

.method public c()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    iget-object v0, p0, LS8/d;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, LS8/d;->f:F

    return v0
.end method

.method public e()Lcom/google/android/filament/Box;
    .locals 1

    iget-object v0, p0, LS8/d;->d:Lcom/google/android/filament/Box;

    return-object v0
.end method

.method public f()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;
    .locals 1

    iget-object v0, p0, LS8/d;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, LS8/d;->g:Z

    return v0
.end method

.method public h(I[F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "localBoneIndex",
            "matrix"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, LS8/d;->i(I[FI)V

    return-void
.end method

.method public i(I[FI)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "localBoneIndex",
            "matrix",
            "matrixOffset"
        }
    .end annotation

    const/16 v0, 0x10

    mul-int/2addr p1, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, LS8/d;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int v3, p1, v1

    add-int v4, p3, v1

    aget v4, p2, v4

    invoke-virtual {v2, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j(LS8/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounds"
        }
    .end annotation

    invoke-virtual {p1}, LS8/c;->a()F

    move-result v0

    invoke-virtual {p1}, LS8/c;->b()F

    move-result v1

    invoke-virtual {p1}, LS8/c;->c()F

    move-result v2

    invoke-virtual {p1}, LS8/c;->d()F

    move-result v3

    invoke-virtual {p1}, LS8/c;->e()F

    move-result v4

    invoke-virtual {p1}, LS8/c;->f()F

    move-result p1

    iget-object v5, p0, LS8/d;->d:Lcom/google/android/filament/Box;

    invoke-virtual {v5, v0, v1, v2}, Lcom/google/android/filament/Box;->c(FFF)V

    iget-object v5, p0, LS8/d;->d:Lcom/google/android/filament/Box;

    invoke-virtual {v5, v3, v4, p1}, Lcom/google/android/filament/Box;->d(FFF)V

    iget-object v5, p0, LS8/d;->e:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    mul-float/2addr v3, v3

    mul-float/2addr v4, v4

    add-float/2addr v3, v4

    mul-float/2addr p1, p1

    add-float/2addr v3, p1

    float-to-double v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, LS8/d;->f:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, LS8/d;->g:Z

    return-void
.end method
