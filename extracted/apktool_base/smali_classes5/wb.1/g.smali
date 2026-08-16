.class public final Lwb/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwb/g$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final a:[Lcom/google/android/filament/Texture$c;

.field public static final b:F = 3.1415927f

.field public static final c:F = 6.2831855f


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget-object v0, Lcom/google/android/filament/Texture$c;->POSITIVE_X:Lcom/google/android/filament/Texture$c;

    sget-object v1, Lcom/google/android/filament/Texture$c;->NEGATIVE_X:Lcom/google/android/filament/Texture$c;

    sget-object v2, Lcom/google/android/filament/Texture$c;->POSITIVE_Y:Lcom/google/android/filament/Texture$c;

    sget-object v3, Lcom/google/android/filament/Texture$c;->NEGATIVE_Y:Lcom/google/android/filament/Texture$c;

    sget-object v4, Lcom/google/android/filament/Texture$c;->POSITIVE_Z:Lcom/google/android/filament/Texture$c;

    sget-object v5, Lcom/google/android/filament/Texture$c;->NEGATIVE_Z:Lcom/google/android/filament/Texture$c;

    filled-new-array/range {v0 .. v5}, [Lcom/google/android/filament/Texture$c;

    move-result-object v0

    sput-object v0, Lwb/g;->a:[Lcom/google/android/filament/Texture$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IIIIFF)I
    .locals 0
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
            "c00",
            "c10",
            "c01",
            "c11",
            "tx",
            "ty"
        }
    .end annotation

    invoke-static {p0, p1, p4}, Lwb/g;->i(IIF)I

    move-result p0

    invoke-static {p2, p3, p4}, Lwb/g;->i(IIF)I

    move-result p1

    invoke-static {p0, p1, p5}, Lwb/g;->i(IIF)I

    move-result p0

    return p0
.end method

.method public static b(FFF)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "a",
            "b"
        }
    .end annotation

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method public static c(IIIZLwb/g$a;)Lcom/google/android/filament/Texture;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "cubeSize",
            "flipV",
            "src"
        }
    .end annotation

    move/from16 v10, p2

    invoke-static {}, LQb/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v11

    if-eqz p4, :cond_2

    if-lez p0, :cond_1

    if-lez p1, :cond_1

    if-lez v10, :cond_1

    new-instance v0, Lcom/google/android/filament/Texture$a;

    invoke-direct {v0}, Lcom/google/android/filament/Texture$a;-><init>()V

    sget-object v1, Lcom/google/android/filament/Texture$i;->SAMPLER_CUBEMAP:Lcom/google/android/filament/Texture$i;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Texture$a;->h(Lcom/google/android/filament/Texture$i;)Lcom/google/android/filament/Texture$a;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/google/android/filament/Texture$a;->l(I)Lcom/google/android/filament/Texture$a;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/google/android/filament/Texture$a;->e(I)Lcom/google/android/filament/Texture$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Texture$a;->g(I)Lcom/google/android/filament/Texture$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/Texture$f;->RGBA8:Lcom/google/android/filament/Texture$f;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Texture$a;->d(Lcom/google/android/filament/Texture$f;)Lcom/google/android/filament/Texture$a;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/google/android/filament/Texture$a;->a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Texture;

    move-result-object v12

    const/4 v0, 0x0

    move v13, v0

    :goto_0
    const/4 v0, 0x6

    if-ge v13, v0, :cond_0

    mul-int v0, v10, v10

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    move-object v0, v8

    move/from16 v1, p2

    move/from16 v2, p2

    move v3, v13

    move-object/from16 v4, p4

    move v5, p0

    move v6, p1

    move/from16 v7, p3

    invoke-static/range {v0 .. v7}, Lwb/g;->f(Ljava/nio/ByteBuffer;IIILwb/g$a;IIZ)V

    new-instance v9, Lcom/google/android/filament/Texture$g;

    sget-object v0, Lcom/google/android/filament/Texture$e;->RGBA:Lcom/google/android/filament/Texture$e;

    sget-object v1, Lcom/google/android/filament/Texture$k;->UBYTE:Lcom/google/android/filament/Texture$k;

    invoke-direct {v9, v8, v0, v1}, Lcom/google/android/filament/Texture$g;-><init>(Ljava/nio/Buffer;Lcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;)V

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v12

    move-object v1, v11

    move v5, v13

    move/from16 v6, p2

    move/from16 v7, p2

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/filament/Texture;->G(Lcom/google/android/filament/Engine;IIIIIIILcom/google/android/filament/Texture$g;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    return-object v12

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tamanhos inv\u00e1lidos"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(IFF)[F
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "face",
            "u",
            "v"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p0, :cond_5

    const/high16 v4, -0x40800000    # -1.0f

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    const/4 v5, 0x4

    if-eq p0, v5, :cond_1

    const/4 v3, 0x5

    if-eq p0, v3, :cond_0

    const/4 p1, 0x0

    move p0, p1

    move p2, p0

    goto :goto_0

    :cond_0
    neg-float p1, p1

    move p0, v4

    goto :goto_0

    :cond_1
    move p0, v3

    goto :goto_0

    :cond_2
    move p0, p2

    move p2, v4

    goto :goto_0

    :cond_3
    neg-float p0, p2

    move p2, v3

    goto :goto_0

    :cond_4
    move p0, p1

    move p1, v4

    goto :goto_0

    :cond_5
    neg-float p1, p1

    move p0, p1

    move p1, v3

    :goto_0
    mul-float v3, p1, p1

    mul-float v4, p2, p2

    add-float/2addr v3, v4

    mul-float v4, p0, p0

    add-float/2addr v3, v4

    invoke-static {v3}, Lwb/g;->h(F)F

    move-result v3

    mul-float/2addr p1, v3

    mul-float/2addr p2, v3

    mul-float/2addr p0, v3

    new-array v0, v0, [F

    const/4 v3, 0x0

    aput p1, v0, v3

    aput p2, v0, v2

    aput p0, v0, v1

    return-object v0
.end method

.method public static e(FFF)[F
    .locals 4
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

    float-to-double v0, p2

    float-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p0, v0

    const/high16 p2, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, p2, v0}, Lwb/g;->b(FFF)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->asin(D)D

    move-result-wide p1

    double-to-float p1, p1

    const p2, 0x3e22f983

    mul-float/2addr p0, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p0, p2

    const v1, 0x40490fdb    # (float)Math.PI

    div-float/2addr p1, v1

    sub-float/2addr p2, p1

    const/4 p1, 0x0

    cmpg-float v1, p0, p1

    if-gez v1, :cond_0

    add-float/2addr p0, v0

    goto :goto_0

    :cond_0
    cmpl-float v1, p0, v0

    if-ltz v1, :cond_1

    sub-float/2addr p0, v0

    :cond_1
    :goto_0
    invoke-static {p2, p1, v0}, Lwb/g;->b(FFF)F

    move-result p1

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v0, 0x0

    aput p0, p2, v0

    const/4 p0, 0x1

    aput p1, p2, p0

    return-object p2
.end method

.method public static f(Ljava/nio/ByteBuffer;IIILwb/g$a;IIZ)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dst",
            "w",
            "h",
            "faceIndex",
            "src",
            "srcW",
            "srcH",
            "flipV"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    int-to-float v5, v4

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    int-to-float v7, v2

    div-float/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v5, v7

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v5, v8

    if-eqz p7, :cond_0

    neg-float v5, v5

    :cond_0
    move v9, v3

    :goto_1
    if-ge v9, v1, :cond_1

    int-to-float v10, v9

    add-float/2addr v10, v6

    int-to-float v11, v1

    div-float/2addr v10, v11

    mul-float/2addr v10, v7

    sub-float/2addr v10, v8

    move/from16 v11, p3

    invoke-static {v11, v10, v5}, Lwb/g;->d(IFF)[F

    move-result-object v10

    aget v12, v10, v3

    const/4 v13, 0x1

    aget v14, v10, v13

    const/4 v15, 0x2

    aget v10, v10, v15

    invoke-static {v12, v14, v10}, Lwb/g;->e(FFF)[F

    move-result-object v10

    aget v12, v10, v3

    aget v10, v10, v13

    move-object/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    invoke-static {v13, v14, v15, v12, v10}, Lwb/g;->j(Lwb/g$a;IIFF)I

    move-result v10

    ushr-int/lit8 v12, v10, 0x18

    and-int/lit16 v12, v12, 0xff

    ushr-int/lit8 v3, v10, 0x10

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v6, v10, 0x8

    and-int/lit16 v6, v6, 0xff

    and-int/lit16 v10, v10, 0xff

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v6

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v10

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v12

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_1
    move/from16 v11, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public static g(F)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    float-to-int v0, p0

    int-to-float v1, v0

    cmpg-float p0, p0, v1

    if-gez p0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method public static h(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p0

    return v0
.end method

.method public static i(IIF)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "t"
        }
    .end annotation

    int-to-float v0, p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float/2addr p0, p2

    add-float/2addr v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static j(Lwb/g$a;IIFF)I
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "w",
            "h",
            "u",
            "v"
        }
    .end annotation

    add-int/lit8 v0, p1, -0x1

    int-to-float v0, v0

    mul-float/2addr p3, v0

    add-int/lit8 p2, p2, -0x1

    int-to-float v0, p2

    mul-float/2addr p4, v0

    invoke-static {p3}, Lwb/g;->g(F)I

    move-result v0

    invoke-static {p4}, Lwb/g;->g(F)I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    rem-int/2addr v2, p1

    add-int/lit8 p1, v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p2, v0

    sub-float p2, p3, p2

    int-to-float p3, v1

    sub-float p3, p4, p3

    invoke-interface {p0, v0, v1}, Lwb/g$a;->a(II)I

    move-result p4

    invoke-interface {p0, v2, v1}, Lwb/g$a;->a(II)I

    move-result v1

    invoke-interface {p0, v0, p1}, Lwb/g$a;->a(II)I

    move-result v0

    invoke-interface {p0, v2, p1}, Lwb/g$a;->a(II)I

    move-result p0

    ushr-int/lit8 p1, p4, 0x18

    and-int/lit16 v3, p1, 0xff

    ushr-int/lit8 p1, v1, 0x18

    and-int/lit16 v4, p1, 0xff

    ushr-int/lit8 p1, v0, 0x18

    and-int/lit16 v5, p1, 0xff

    ushr-int/lit8 p1, p0, 0x18

    and-int/lit16 v6, p1, 0xff

    move v7, p2

    move v8, p3

    invoke-static/range {v3 .. v8}, Lwb/g;->a(IIIIFF)I

    move-result p1

    ushr-int/lit8 v2, p4, 0x10

    and-int/lit16 v3, v2, 0xff

    ushr-int/lit8 v2, v1, 0x10

    and-int/lit16 v4, v2, 0xff

    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v5, v2, 0xff

    ushr-int/lit8 v2, p0, 0x10

    and-int/lit16 v6, v2, 0xff

    invoke-static/range {v3 .. v8}, Lwb/g;->a(IIIIFF)I

    move-result v2

    ushr-int/lit8 v3, p4, 0x8

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v5, v0, 0x8

    and-int/lit16 v5, v5, 0xff

    ushr-int/lit8 v6, p0, 0x8

    and-int/lit16 v6, v6, 0xff

    invoke-static/range {v3 .. v8}, Lwb/g;->a(IIIIFF)I

    move-result v9

    and-int/lit16 v3, p4, 0xff

    and-int/lit16 v4, v1, 0xff

    and-int/lit16 v5, v0, 0xff

    and-int/lit16 v6, p0, 0xff

    invoke-static/range {v3 .. v8}, Lwb/g;->a(IIIIFF)I

    move-result p0

    shl-int/lit8 p1, p1, 0x18

    shl-int/lit8 p2, v2, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, v9, 0x8

    or-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method
