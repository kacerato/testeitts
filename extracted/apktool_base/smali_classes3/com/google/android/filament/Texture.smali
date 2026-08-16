.class public Lcom/google/android/filament/Texture;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Texture$f;,
        Lcom/google/android/filament/Texture$e;,
        Lcom/google/android/filament/Texture$k;,
        Lcom/google/android/filament/Texture$i;,
        Lcom/google/android/filament/Texture$g;,
        Lcom/google/android/filament/Texture$d;,
        Lcom/google/android/filament/Texture$b;,
        Lcom/google/android/filament/Texture$h;,
        Lcom/google/android/filament/Texture$l;,
        Lcom/google/android/filament/Texture$a;,
        Lcom/google/android/filament/Texture$j;,
        Lcom/google/android/filament/Texture$c;
    }
.end annotation


# static fields
.field public static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final c:[Lcom/google/android/filament/Texture$i;

.field public static final d:[Lcom/google/android/filament/Texture$f;

.field public static final e:I


# instance fields
.field public a:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "android.hardware.HardwareBuffer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/Texture;->b:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Lcom/google/android/filament/Texture$i;->values()[Lcom/google/android/filament/Texture$i;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/Texture;->c:[Lcom/google/android/filament/Texture$i;

    invoke-static {}, Lcom/google/android/filament/Texture$f;->values()[Lcom/google/android/filament/Texture$f;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/Texture;->d:[Lcom/google/android/filament/Texture$f;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/filament/Texture;->a:J

    return-void
.end method

.method public static A(Lcom/google/android/filament/Engine;Lcom/google/android/filament/Texture$f;)Z
    .locals 2
    .param p0    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/filament/Texture$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/google/android/filament/Texture;->nIsTextureFormatSupported(JI)Z

    move-result p0

    return p0
.end method

.method public static B(Lcom/google/android/filament/Engine;)Z
    .locals 2
    .param p0    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Texture;->nIsTextureSwizzleSupported(J)Z

    move-result p0

    return p0
.end method

.method public static L(Lcom/google/android/filament/Texture$f;Lcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;)Z
    .locals 0
    .param p0    # Lcom/google/android/filament/Texture$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/filament/Texture$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/Texture$k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/Texture;->nValidatePixelFormatAndType(III)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic a(JJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/Texture;->nBuilderBuild(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic b(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/Texture;->nBuilderDepth(JI)V

    return-void
.end method

.method public static bridge synthetic c(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/Texture;->nBuilderExternal(J)V

    return-void
.end method

.method public static bridge synthetic d(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/Texture;->nBuilderFormat(JI)V

    return-void
.end method

.method public static bridge synthetic e(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/Texture;->nBuilderHeight(JI)V

    return-void
.end method

.method public static bridge synthetic f(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/Texture;->nBuilderImportTexture(JJ)V

    return-void
.end method

.method public static bridge synthetic g(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/Texture;->nBuilderLevels(JI)V

    return-void
.end method

.method public static bridge synthetic h(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/Texture;->nBuilderSampler(JI)V

    return-void
.end method

.method public static bridge synthetic i(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/Texture;->nBuilderSamples(JI)V

    return-void
.end method

.method public static bridge synthetic j(JIIII)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/filament/Texture;->nBuilderSwizzle(JIIII)V

    return-void
.end method

.method public static bridge synthetic k(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/Texture;->nBuilderUsage(JI)V

    return-void
.end method

.method public static bridge synthetic l(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/Texture;->nBuilderWidth(JI)V

    return-void
.end method

.method public static bridge synthetic m()J
    .locals 2

    invoke-static {}, Lcom/google/android/filament/Texture;->nCreateBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic n(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/Texture;->nDestroyBuilder(J)V

    return-void
.end method

.method private static native nBuilderBuild(JJ)J
.end method

.method private static native nBuilderDepth(JI)V
.end method

.method private static native nBuilderExternal(J)V
.end method

.method private static native nBuilderFormat(JI)V
.end method

.method private static native nBuilderHeight(JI)V
.end method

.method private static native nBuilderImportTexture(JJ)V
.end method

.method private static native nBuilderLevels(JI)V
.end method

.method private static native nBuilderSampler(JI)V
.end method

.method private static native nBuilderSamples(JI)V
.end method

.method private static native nBuilderSwizzle(JIIII)V
.end method

.method private static native nBuilderUsage(JI)V
.end method

.method private static native nBuilderWidth(JI)V
.end method

.method private static native nCreateBuilder()J
.end method

.method private static native nDestroyBuilder(J)V
.end method

.method private static native nGenerateMipmaps(JJ)V
.end method

.method private static native nGeneratePrefilterMipmap(JJIILjava/nio/Buffer;IIIIIII[ILjava/lang/Object;Ljava/lang/Runnable;IZ)I
.end method

.method private static native nGetDepth(JI)I
.end method

.method private static native nGetHeight(JI)I
.end method

.method private static native nGetInternalFormat(J)I
.end method

.method private static native nGetLevels(J)I
.end method

.method private static native nGetMaxArrayTextureLayers(J)I
.end method

.method private static native nGetMaxTextureSize(JI)I
.end method

.method private static native nGetTarget(J)I
.end method

.method private static native nGetWidth(JI)I
.end method

.method private static native nIsStreamValidForTexture(JJ)Z
.end method

.method private static native nIsTextureFormatMipmappable(JI)Z
.end method

.method private static native nIsTextureFormatSupported(JI)Z
.end method

.method private static native nIsTextureSwizzleSupported(J)Z
.end method

.method private static native nSetExternalImage(JJJ)V
.end method

.method private static native nSetExternalImageByAHB(JJLjava/lang/Object;)Z
.end method

.method private static native nSetExternalStream(JJJ)V
.end method

.method private static native nSetImage3D(JJIIIIIIILjava/nio/Buffer;IIIIIIILjava/lang/Object;Ljava/lang/Runnable;)I
.end method

.method private static native nSetImage3DCompressed(JJIIIIIIILjava/nio/Buffer;IIIIIIILjava/lang/Object;Ljava/lang/Runnable;)I
.end method

.method private static native nSetImage3DDirect(JJIIIIIIIJIIIIIIILjava/lang/Object;Ljava/lang/Runnable;)I
.end method

.method private static native nSetImage3DDirectCompressed(JJIIIIIIIJIIILjava/lang/Object;Ljava/lang/Runnable;)I
.end method

.method private static native nValidatePixelFormatAndType(III)Z
.end method

.method public static v(Lcom/google/android/filament/Engine;)I
    .locals 2
    .param p0    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Texture;->nGetMaxArrayTextureLayers(J)I

    move-result p0

    return p0
.end method

.method public static w(Lcom/google/android/filament/Engine;Lcom/google/android/filament/Texture$i;)I
    .locals 2
    .param p0    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/google/android/filament/Texture;->nGetMaxTextureSize(JI)I

    move-result p0

    return p0
.end method

.method public static z(Lcom/google/android/filament/Engine;Lcom/google/android/filament/Texture$f;)Z
    .locals 2
    .param p0    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/filament/Texture$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/google/android/filament/Texture;->nIsTextureFormatMipmappable(JI)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public C(Lcom/google/android/filament/Engine;J)V
    .locals 6
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/Texture;->nSetExternalImage(JJJ)V

    return-void
.end method

.method public D(Lcom/google/android/filament/Engine;Ljava/lang/Object;)V
    .locals 4
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/google/android/filament/Texture;->b:Ljava/lang/Class;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Lcom/google/android/filament/Texture;->nSetExternalImageByAHB(JJLjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error setting AHardwareBuffer as external image"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "externalImageRef must be a AHardwareBuffer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "setExternalImage(Engine, Object) not supported on this platform"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public E(Lcom/google/android/filament/Engine;Lcom/google/android/filament/Stream;)V
    .locals 6
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/Stream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/android/filament/Stream;->h()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lcom/google/android/filament/Texture;->nIsStreamValidForTexture(JJ)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/Texture;->nSetExternalStream(JJJ)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid texture sampler: When used with a stream, a texture must use a SAMPLER_EXTERNAL"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public F(Lcom/google/android/filament/Engine;IIIIIIILcom/google/android/filament/Texture$d;)V
    .locals 23
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
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
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p7    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p8    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p9    # Lcom/google/android/filament/Texture$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p9

    iget-object v1, v0, Lcom/google/android/filament/Texture$d;->d:Lcom/google/android/filament/Texture$k;

    sget-object v2, Lcom/google/android/filament/Texture$k;->COMPRESSED:Lcom/google/android/filament/Texture$k;

    if-ne v1, v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v5

    iget-wide v14, v0, Lcom/google/android/filament/Texture$d;->a:J

    iget v1, v0, Lcom/google/android/filament/Texture$d;->b:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/filament/Texture$d;->j:I

    move/from16 v17, v1

    iget-object v1, v0, Lcom/google/android/filament/Texture$d;->k:Lcom/google/android/filament/Texture$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    iget-object v1, v0, Lcom/google/android/filament/Texture$d;->l:Ljava/lang/Object;

    move-object/from16 v19, v1

    iget-object v0, v0, Lcom/google/android/filament/Texture$d;->m:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    invoke-static/range {v3 .. v20}, Lcom/google/android/filament/Texture;->nSetImage3DDirectCompressed(JJIIIIIIIJIIILjava/lang/Object;Ljava/lang/Runnable;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v3

    iget-wide v12, v0, Lcom/google/android/filament/Texture$d;->a:J

    iget v14, v0, Lcom/google/android/filament/Texture$d;->b:I

    iget v15, v0, Lcom/google/android/filament/Texture$d;->f:I

    iget v5, v0, Lcom/google/android/filament/Texture$d;->g:I

    move/from16 v16, v5

    iget-object v5, v0, Lcom/google/android/filament/Texture$d;->d:Lcom/google/android/filament/Texture$k;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    iget v5, v0, Lcom/google/android/filament/Texture$d;->e:I

    move/from16 v18, v5

    iget v5, v0, Lcom/google/android/filament/Texture$d;->h:I

    move/from16 v19, v5

    iget-object v5, v0, Lcom/google/android/filament/Texture$d;->i:Lcom/google/android/filament/Texture$e;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    iget-object v5, v0, Lcom/google/android/filament/Texture$d;->l:Ljava/lang/Object;

    move-object/from16 v21, v5

    iget-object v0, v0, Lcom/google/android/filament/Texture$d;->m:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-static/range {v1 .. v22}, Lcom/google/android/filament/Texture;->nSetImage3DDirect(JJIIIIIIIJIIIIIIILjava/lang/Object;Ljava/lang/Runnable;)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0
.end method

.method public G(Lcom/google/android/filament/Engine;IIIIIIILcom/google/android/filament/Texture$g;)V
    .locals 24
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
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
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p7    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p8    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p9    # Lcom/google/android/filament/Texture$g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p9

    iget-object v1, v0, Lcom/google/android/filament/Texture$g;->b:Lcom/google/android/filament/Texture$k;

    sget-object v2, Lcom/google/android/filament/Texture$k;->COMPRESSED:Lcom/google/android/filament/Texture$k;

    if-ne v1, v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v5

    iget-object v1, v0, Lcom/google/android/filament/Texture$g;->a:Ljava/nio/Buffer;

    move-object v14, v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v15

    iget v1, v0, Lcom/google/android/filament/Texture$g;->d:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/filament/Texture$g;->e:I

    move/from16 v17, v1

    iget-object v1, v0, Lcom/google/android/filament/Texture$g;->b:Lcom/google/android/filament/Texture$k;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    iget v1, v0, Lcom/google/android/filament/Texture$g;->c:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/android/filament/Texture$g;->h:I

    move/from16 v20, v1

    iget-object v1, v0, Lcom/google/android/filament/Texture$g;->i:Lcom/google/android/filament/Texture$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v21

    iget-object v1, v0, Lcom/google/android/filament/Texture$g;->j:Ljava/lang/Object;

    move-object/from16 v22, v1

    iget-object v0, v0, Lcom/google/android/filament/Texture$g;->k:Ljava/lang/Runnable;

    move-object/from16 v23, v0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    invoke-static/range {v3 .. v23}, Lcom/google/android/filament/Texture;->nSetImage3DCompressed(JJIIIIIIILjava/nio/Buffer;IIIIIIILjava/lang/Object;Ljava/lang/Runnable;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v3

    iget-object v5, v0, Lcom/google/android/filament/Texture$g;->a:Ljava/nio/Buffer;

    move-object v12, v5

    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    move-result v13

    iget v14, v0, Lcom/google/android/filament/Texture$g;->d:I

    iget v15, v0, Lcom/google/android/filament/Texture$g;->e:I

    iget-object v5, v0, Lcom/google/android/filament/Texture$g;->b:Lcom/google/android/filament/Texture$k;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    iget v5, v0, Lcom/google/android/filament/Texture$g;->c:I

    move/from16 v17, v5

    iget v5, v0, Lcom/google/android/filament/Texture$g;->f:I

    move/from16 v18, v5

    iget-object v5, v0, Lcom/google/android/filament/Texture$g;->g:Lcom/google/android/filament/Texture$e;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v19

    iget-object v5, v0, Lcom/google/android/filament/Texture$g;->j:Ljava/lang/Object;

    move-object/from16 v20, v5

    iget-object v0, v0, Lcom/google/android/filament/Texture$g;->k:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-static/range {v1 .. v21}, Lcom/google/android/filament/Texture;->nSetImage3D(JJIIIIIIILjava/nio/Buffer;IIIIIIILjava/lang/Object;Ljava/lang/Runnable;)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0
.end method

.method public H(Lcom/google/android/filament/Engine;IIIIILcom/google/android/filament/Texture$d;)V
    .locals 10
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
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
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p7    # Lcom/google/android/filament/Texture$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/filament/Texture;->F(Lcom/google/android/filament/Engine;IIIIIIILcom/google/android/filament/Texture$d;)V

    return-void
.end method

.method public I(Lcom/google/android/filament/Engine;IIIIILcom/google/android/filament/Texture$g;)V
    .locals 10
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
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
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p7    # Lcom/google/android/filament/Texture$g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/filament/Texture;->G(Lcom/google/android/filament/Engine;IIIIIIILcom/google/android/filament/Texture$g;)V

    return-void
.end method

.method public J(Lcom/google/android/filament/Engine;ILcom/google/android/filament/Texture$d;)V
    .locals 10
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # Lcom/google/android/filament/Texture$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2}, Lcom/google/android/filament/Texture;->y(I)I

    move-result v6

    invoke-virtual {p0, p2}, Lcom/google/android/filament/Texture;->t(I)I

    move-result v7

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v9, p3

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/filament/Texture;->F(Lcom/google/android/filament/Engine;IIIIIIILcom/google/android/filament/Texture$d;)V

    return-void
.end method

.method public K(Lcom/google/android/filament/Engine;ILcom/google/android/filament/Texture$g;)V
    .locals 10
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # Lcom/google/android/filament/Texture$g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2}, Lcom/google/android/filament/Texture;->y(I)I

    move-result v6

    invoke-virtual {p0, p2}, Lcom/google/android/filament/Texture;->t(I)I

    move-result v7

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v9, p3

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/filament/Texture;->G(Lcom/google/android/filament/Engine;IIIIIIILcom/google/android/filament/Texture$g;)V

    return-void
.end method

.method public getNativeObject()J
    .locals 4
    .annotation build Lcom/google/android/filament/proguard/UsedByReflection;
        value = "TextureHelper.java"
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/Texture;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling method on destroyed Texture"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/Texture;->a:J

    return-void
.end method

.method public p(Lcom/google/android/filament/Engine;)V
    .locals 4
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Texture;->nGenerateMipmaps(JJ)V

    return-void
.end method

.method public q(Lcom/google/android/filament/Engine;Lcom/google/android/filament/Texture$g;[ILcom/google/android/filament/Texture$h;)V
    .locals 23
    .param p1    # Lcom/google/android/filament/Engine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/Texture$g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x6L
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/filament/Texture;->y(I)I

    move-result v8

    invoke-virtual {v0, v3}, Lcom/google/android/filament/Texture;->t(I)I

    move-result v9

    if-eqz v2, :cond_0

    iget v3, v2, Lcom/google/android/filament/Texture$h;->a:I

    iget-boolean v2, v2, Lcom/google/android/filament/Texture$h;->b:Z

    move/from16 v22, v2

    move/from16 v21, v3

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    const/4 v3, 0x1

    move/from16 v21, v2

    move/from16 v22, v3

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v6

    iget-object v2, v1, Lcom/google/android/filament/Texture$g;->a:Ljava/nio/Buffer;

    move-object v10, v2

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v11

    iget v12, v1, Lcom/google/android/filament/Texture$g;->d:I

    iget v13, v1, Lcom/google/android/filament/Texture$g;->e:I

    iget-object v2, v1, Lcom/google/android/filament/Texture$g;->b:Lcom/google/android/filament/Texture$k;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    iget v15, v1, Lcom/google/android/filament/Texture$g;->c:I

    iget v2, v1, Lcom/google/android/filament/Texture$g;->f:I

    move/from16 v16, v2

    iget-object v2, v1, Lcom/google/android/filament/Texture$g;->g:Lcom/google/android/filament/Texture$e;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    iget-object v2, v1, Lcom/google/android/filament/Texture$g;->j:Ljava/lang/Object;

    move-object/from16 v19, v2

    iget-object v1, v1, Lcom/google/android/filament/Texture$g;->k:Ljava/lang/Runnable;

    move-object/from16 v20, v1

    move-object/from16 v18, p3

    invoke-static/range {v4 .. v22}, Lcom/google/android/filament/Texture;->nGeneratePrefilterMipmap(JJIILjava/nio/Buffer;IIIIIII[ILjava/lang/Object;Ljava/lang/Runnable;IZ)I

    move-result v1

    if-ltz v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1
.end method

.method public r(I)I
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Texture;->nGetDepth(JI)I

    move-result p1

    return p1
.end method

.method public s()Lcom/google/android/filament/Texture$f;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/google/android/filament/Texture;->d:[Lcom/google/android/filament/Texture$f;

    invoke-virtual {p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/Texture;->nGetInternalFormat(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public t(I)I
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Texture;->nGetHeight(JI)I

    move-result p1

    return p1
.end method

.method public u()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Texture;->nGetLevels(J)I

    move-result v0

    return v0
.end method

.method public x()Lcom/google/android/filament/Texture$i;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/google/android/filament/Texture;->c:[Lcom/google/android/filament/Texture$i;

    invoke-virtual {p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/Texture;->nGetTarget(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public y(I)I
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Texture;->nGetWidth(JI)I

    move-result p1

    return p1
.end method
