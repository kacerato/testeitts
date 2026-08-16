.class public Lvb/c;
.super Lvb/a;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Lcom/google/android/filament/TextureSampler;

.field public final e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

.field public final f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public g:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;


# direct methods
.method public constructor <init>(III)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "depth"
        }
    .end annotation

    move-object v0, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v12, p3

    invoke-direct {p0}, Lvb/a;-><init>()V

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v1, v0, Lvb/c;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-lez v2, :cond_0

    if-lez v3, :cond_0

    if-lez v12, :cond_0

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    iput v2, v0, Lvb/c;->a:I

    iput v3, v0, Lvb/c;->b:I

    iput v12, v0, Lvb/c;->c:I

    new-instance v8, Lcom/google/android/filament/TextureSampler;

    sget-object v1, Lcom/google/android/filament/TextureSampler$e;->LINEAR:Lcom/google/android/filament/TextureSampler$e;

    sget-object v4, Lcom/google/android/filament/TextureSampler$d;->LINEAR:Lcom/google/android/filament/TextureSampler$d;

    sget-object v5, Lcom/google/android/filament/TextureSampler$f;->CLAMP_TO_EDGE:Lcom/google/android/filament/TextureSampler$f;

    invoke-direct {v8, v1, v4, v5}, Lcom/google/android/filament/TextureSampler;-><init>(Lcom/google/android/filament/TextureSampler$e;Lcom/google/android/filament/TextureSampler$d;Lcom/google/android/filament/TextureSampler$f;)V

    iput-object v8, v0, Lvb/c;->d:Lcom/google/android/filament/TextureSampler;

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    mul-int v4, v2, v3

    mul-int/2addr v4, v12

    mul-int/lit8 v4, v4, 0x4

    invoke-direct {v1, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;-><init>(I)V

    iput-object v1, v0, Lvb/c;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    new-instance v13, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    sget-object v4, Lcom/google/android/filament/Texture$e;->RGBA:Lcom/google/android/filament/Texture$e;

    sget-object v5, Lcom/google/android/filament/Texture$k;->UBYTE:Lcom/google/android/filament/Texture$k;

    sget-object v6, Lcom/google/android/filament/Texture$f;->RGBA8:Lcom/google/android/filament/Texture$f;

    new-instance v1, Lcom/google/android/filament/Texture$a;

    invoke-direct {v1}, Lcom/google/android/filament/Texture$a;-><init>()V

    invoke-virtual {v1, v6}, Lcom/google/android/filament/Texture$a;->d(Lcom/google/android/filament/Texture$f;)Lcom/google/android/filament/Texture$a;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/google/android/filament/Texture$a;->b(I)Lcom/google/android/filament/Texture$a;

    move-result-object v7

    const/16 v10, 0x18

    invoke-static {}, Lvb/c;->d()Lcom/google/android/filament/Texture$i;

    move-result-object v11

    const/4 v9, 0x0

    move-object v1, v13

    move v2, p1

    move/from16 v3, p2

    move/from16 v12, p3

    invoke-direct/range {v1 .. v12}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;-><init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$f;Lcom/google/android/filament/Texture$a;Lcom/google/android/filament/TextureSampler;IILcom/google/android/filament/Texture$i;I)V

    iput-object v13, v0, Lvb/c;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v2, v1}, Lvb/c;->h(IIII)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Width, height and depth must be greater than zero"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static d()Lcom/google/android/filament/Texture$i;
    .locals 3

    :try_start_0
    const-string v0, "SAMPLER_2D_ARRAY"

    invoke-static {v0}, Lcom/google/android/filament/Texture$i;->valueOf(Ljava/lang/String;)Lcom/google/android/filament/Texture$i;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Filament does not support 2D array textures in this runtime"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static e(B)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static g(I)B
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "material",
            "attributeName"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lvb/c;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget-object v1, p0, Lvb/c;->d:Lcom/google/android/filament/TextureSampler;

    invoke-virtual {p1, p2, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->q(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;Lcom/google/android/filament/TextureSampler;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attributeName can\'t be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "material can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
    .locals 1

    iget-object v0, p0, Lvb/c;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    return-object v0
.end method

.method public c()V
    .locals 9

    invoke-static {}, LK8/a;->G()V

    iget-object v0, p0, Lvb/c;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget v5, p0, Lvb/c;->a:I

    iget v6, p0, Lvb/c;->b:I

    iget v7, p0, Lvb/c;->c:I

    iget-object v8, p0, Lvb/c;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->J(IIIIIIILcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)V

    return-void
.end method

.method public f()V
    .locals 1

    invoke-static {}, LQb/a;->d()V

    invoke-static {}, LK8/a;->G()V

    iget-object v0, p0, Lvb/c;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->destroyImmediate()V

    const/4 v0, 0x0

    iput-object v0, p0, Lvb/c;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    :cond_0
    iget-object v0, p0, Lvb/c;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->destroyImmediate()V

    :cond_1
    return-void
.end method

.method public h(IIII)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "g",
            "b",
            "a"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lvb/c;->c:I

    if-ge v1, v2, :cond_2

    move v2, v0

    :goto_1
    iget v3, p0, Lvb/c;->b:I

    if-ge v2, v3, :cond_1

    move v3, v0

    :goto_2
    iget v4, p0, Lvb/c;->a:I

    if-ge v3, v4, :cond_0

    invoke-virtual {p0, v3, v2, v1}, Lvb/c;->o(III)I

    move-result v4

    iget-object v5, p0, Lvb/c;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-static {p4}, Lvb/c;->g(I)B

    move-result v6

    invoke-virtual {v5, v4, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->set(IB)V

    iget-object v5, p0, Lvb/c;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    add-int/lit8 v6, v4, 0x1

    invoke-static {p1}, Lvb/c;->g(I)B

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->set(IB)V

    iget-object v5, p0, Lvb/c;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    add-int/lit8 v6, v4, 0x2

    invoke-static {p2}, Lvb/c;->g(I)B

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->set(IB)V

    iget-object v5, p0, Lvb/c;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    add-int/lit8 v4, v4, 0x3

    invoke-static {p3}, Lvb/c;->g(I)B

    move-result v6

    invoke-virtual {v5, v4, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->set(IB)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lvb/c;->c()V

    return-void
.end method

.method public i(III)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lvb/c;->j(IIILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public j(IIILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 2
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
            "z",
            "out"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lvb/c;->p(III)V

    invoke-virtual {p0, p1, p2, p3}, Lvb/c;->o(III)I

    move-result p1

    iget-object p2, p0, Lvb/c;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->get(I)B

    move-result p2

    invoke-static {p2}, Lvb/c;->e(B)I

    move-result p2

    iget-object p3, p0, Lvb/c;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p3, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->get(I)B

    move-result p3

    invoke-static {p3}, Lvb/c;->e(B)I

    move-result p3

    iget-object v0, p0, Lvb/c;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lvb/c;->e(B)I

    move-result v0

    iget-object v1, p0, Lvb/c;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->get(I)B

    move-result p1

    invoke-static {p1}, Lvb/c;->e(B)I

    move-result p1

    invoke-virtual {p4, p2, p3, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->Y(IIII)V

    return-object p4
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lvb/c;->c:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lvb/c;->b:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lvb/c;->a:I

    return v0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lvb/c;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final o(III)I
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    iget v0, p0, Lvb/c;->b:I

    mul-int/2addr p3, v0

    add-int/2addr p3, p2

    iget p2, p0, Lvb/c;->a:I

    mul-int/2addr p3, p2

    add-int/2addr p3, p1

    mul-int/lit8 p3, p3, 0x4

    return p3
.end method

.method public final p(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    if-ltz p1, :cond_2

    iget v0, p0, Lvb/c;->a:I

    if-ge p1, v0, :cond_2

    if-ltz p2, :cond_1

    iget p1, p0, Lvb/c;->b:I

    if-ge p2, p1, :cond_1

    if-ltz p3, :cond_0

    iget p1, p0, Lvb/c;->c:I

    if-ge p3, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "z out of bounds"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "y out of bounds"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "x out of bounds"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q(IIILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 8
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
            "z",
            "color"
        }
    .end annotation

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->C()I

    move-result v4

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->x()I

    move-result v5

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->p()I

    move-result v6

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->o()I

    move-result v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v7}, Lvb/c;->y(IIIIIII)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "color can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r(IIIFFF)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "r",
            "g",
            "b"
        }
    .end annotation

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lvb/c;->s(IIIFFFF)V

    return-void
.end method

.method public s(IIIFFFF)V
    .locals 1
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
            "x",
            "y",
            "z",
            "r",
            "g",
            "b",
            "a"
        }
    .end annotation

    iget-object v0, p0, Lvb/c;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p7, p4, p5, p6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->T(FFFF)V

    iget-object p4, p0, Lvb/c;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0, p1, p2, p3, p4}, Lvb/c;->q(IIILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void
.end method

.method public t(IIII)V
    .locals 1
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
            "z",
            "v"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lvb/c;->p(III)V

    iget-object v0, p0, Lvb/c;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lvb/c;->o(III)I

    move-result p1

    invoke-static {p4}, Lvb/c;->g(I)B

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->set(IB)V

    invoke-virtual {p0}, Lvb/c;->c()V

    return-void
.end method

.method public u(IIII)V
    .locals 1
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
            "z",
            "v"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lvb/c;->p(III)V

    iget-object v0, p0, Lvb/c;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lvb/c;->o(III)I

    move-result p1

    add-int/lit8 p1, p1, 0x3

    invoke-static {p4}, Lvb/c;->g(I)B

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->set(IB)V

    invoke-virtual {p0}, Lvb/c;->c()V

    return-void
.end method

.method public v(IIII)V
    .locals 1
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
            "z",
            "v"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lvb/c;->p(III)V

    iget-object v0, p0, Lvb/c;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lvb/c;->o(III)I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    invoke-static {p4}, Lvb/c;->g(I)B

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->set(IB)V

    invoke-virtual {p0}, Lvb/c;->c()V

    return-void
.end method

.method public w(IIII)V
    .locals 1
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
            "z",
            "v"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lvb/c;->p(III)V

    iget-object v0, p0, Lvb/c;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lvb/c;->o(III)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p4}, Lvb/c;->g(I)B

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->set(IB)V

    invoke-virtual {p0}, Lvb/c;->c()V

    return-void
.end method

.method public x(IIIIII)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "r",
            "g",
            "b"
        }
    .end annotation

    const/16 v7, 0xff

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lvb/c;->y(IIIIIII)V

    return-void
.end method

.method public y(IIIIIII)V
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
            "x",
            "y",
            "z",
            "r",
            "g",
            "b",
            "a"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lvb/c;->p(III)V

    invoke-virtual {p0, p1, p2, p3}, Lvb/c;->o(III)I

    move-result p1

    iget-object p2, p0, Lvb/c;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-static {p7}, Lvb/c;->g(I)B

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->set(IB)V

    iget-object p2, p0, Lvb/c;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    add-int/lit8 p3, p1, 0x1

    invoke-static {p4}, Lvb/c;->g(I)B

    move-result p4

    invoke-virtual {p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->set(IB)V

    iget-object p2, p0, Lvb/c;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    add-int/lit8 p3, p1, 0x2

    invoke-static {p5}, Lvb/c;->g(I)B

    move-result p4

    invoke-virtual {p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->set(IB)V

    iget-object p2, p0, Lvb/c;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    add-int/lit8 p1, p1, 0x3

    invoke-static {p6}, Lvb/c;->g(I)B

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->set(IB)V

    invoke-virtual {p0}, Lvb/c;->c()V

    return-void
.end method
