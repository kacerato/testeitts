.class public Lcom/google/android/filament/MaterialInstance;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/filament/proguard/UsedByNative;
    value = "AssetLoader.cpp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/MaterialInstance$a;,
        Lcom/google/android/filament/MaterialInstance$c;,
        Lcom/google/android/filament/MaterialInstance$b;,
        Lcom/google/android/filament/MaterialInstance$d;,
        Lcom/google/android/filament/MaterialInstance$e;
    }
.end annotation


# static fields
.field public static final e:[Lcom/google/android/filament/Material$d;

.field public static final f:[I


# instance fields
.field public a:Lcom/google/android/filament/Material;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/android/filament/Material$d;->values()[Lcom/google/android/filament/Material$d;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/MaterialInstance;->e:[Lcom/google/android/filament/Material$d;

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/MaterialInstance;->f:[I

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lcom/google/android/filament/MaterialInstance;->c:J

    .line 10
    invoke-static {p1, p2}, Lcom/google/android/filament/MaterialInstance;->nGetMaterial(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/filament/MaterialInstance;->d:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/Engine;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lcom/google/android/filament/MaterialInstance;->c:J

    .line 3
    invoke-static {p2, p3}, Lcom/google/android/filament/MaterialInstance;->nGetMaterial(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/filament/MaterialInstance;->d:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/Material;J)V
    .locals 2
    .param p1    # Lcom/google/android/filament/Material;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/filament/MaterialInstance;->a:Lcom/google/android/filament/Material;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/filament/Material;->m()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/MaterialInstance;->d:J

    .line 7
    iput-wide p2, p0, Lcom/google/android/filament/MaterialInstance;->c:J

    return-void
.end method

.method public static c(Lcom/google/android/filament/MaterialInstance;Ljava/lang/String;)Lcom/google/android/filament/MaterialInstance;
    .locals 4
    .param p0    # Lcom/google/android/filament/MaterialInstance;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/MaterialInstance;->c:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/MaterialInstance;->nDuplicate(JLjava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->j()Lcom/google/android/filament/Material;

    move-result-object p0

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/filament/MaterialInstance;-><init>(Lcom/google/android/filament/Material;J)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Couldn\'t duplicate MaterialInstance"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native nCompile(JIILjava/lang/Object;Ljava/lang/Runnable;)V
.end method

.method private static native nDuplicate(JLjava/lang/String;)J
.end method

.method private static native nGetConstantBool(JLjava/lang/String;)Z
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native nGetConstantFloat(JLjava/lang/String;)F
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native nGetConstantInt(JLjava/lang/String;)I
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native nGetCullingMode(J)I
.end method

.method private static native nGetDepthFunc(J)I
.end method

.method private static native nGetMaskThreshold(J)F
.end method

.method private static native nGetMaterial(J)J
.end method

.method private static native nGetName(J)Ljava/lang/String;
.end method

.method private static native nGetShadowCullingMode(J)I
.end method

.method private static native nGetSpecularAntiAliasingThreshold(J)F
.end method

.method private static native nGetSpecularAntiAliasingVariance(J)F
.end method

.method private static native nGetTransparencyMode(J)I
.end method

.method private static native nIsColorWriteEnabled(J)Z
.end method

.method private static native nIsDepthCullingEnabled(J)Z
.end method

.method private static native nIsDepthWriteEnabled(J)Z
.end method

.method private static native nIsDoubleSided(J)Z
.end method

.method private static native nIsStencilWriteEnabled(J)Z
.end method

.method private static native nSetBooleanParameterArray(JLjava/lang/String;I[ZII)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Z
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
.end method

.method private static native nSetColorWrite(JZ)V
.end method

.method private static native nSetConstantBool(JLjava/lang/String;Z)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native nSetConstantFloat(JLjava/lang/String;F)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native nSetConstantInt(JLjava/lang/String;I)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native nSetCullingMode(JJ)V
.end method

.method private static native nSetCullingModeSeparate(JJJ)V
.end method

.method private static native nSetDepthCulling(JZ)V
.end method

.method private static native nSetDepthFunc(JJ)V
.end method

.method private static native nSetDepthWrite(JZ)V
.end method

.method private static native nSetDoubleSided(JZ)V
.end method

.method private static native nSetFloatParameterArray(JLjava/lang/String;I[FII)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
.end method

.method private static native nSetIntParameterArray(JLjava/lang/String;I[III)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
.end method

.method private static native nSetMaskThreshold(JF)V
.end method

.method private static native nSetParameterBool(JLjava/lang/String;Z)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native nSetParameterBool2(JLjava/lang/String;ZZ)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native nSetParameterBool3(JLjava/lang/String;ZZZ)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native nSetParameterBool4(JLjava/lang/String;ZZZZ)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native nSetParameterFloat(JLjava/lang/String;F)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native nSetParameterFloat2(JLjava/lang/String;FF)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native nSetParameterFloat3(JLjava/lang/String;FFF)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native nSetParameterFloat4(JLjava/lang/String;FFFF)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native nSetParameterInt(JLjava/lang/String;I)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native nSetParameterInt2(JLjava/lang/String;II)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native nSetParameterInt3(JLjava/lang/String;III)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native nSetParameterInt4(JLjava/lang/String;IIII)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native nSetParameterTexture(JLjava/lang/String;JJ)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native nSetPolygonOffset(JFF)V
.end method

.method private static native nSetScissor(JIIII)V
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
.end method

.method private static native nSetSpecularAntiAliasingThreshold(JF)V
.end method

.method private static native nSetSpecularAntiAliasingVariance(JF)V
.end method

.method private static native nSetStencilCompareFunction(JJJ)V
.end method

.method private static native nSetStencilOpDepthFail(JJJ)V
.end method

.method private static native nSetStencilOpDepthStencilPass(JJJ)V
.end method

.method private static native nSetStencilOpStencilFail(JJJ)V
.end method

.method private static native nSetStencilReadMask(JIJ)V
.end method

.method private static native nSetStencilReferenceValue(JIJ)V
.end method

.method private static native nSetStencilWrite(JZ)V
.end method

.method private static native nSetStencilWriteMask(JIJ)V
.end method

.method private static native nSetTransparencyMode(JI)V
.end method

.method private static native nUnsetScissor(J)V
.end method


# virtual methods
.method public A(Lcom/google/android/filament/Material$d;Lcom/google/android/filament/Material$d;)V
    .locals 6
    .param p1    # Lcom/google/android/filament/Material$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/Material$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long v4, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->nSetCullingModeSeparate(JJJ)V

    return-void
.end method

.method public B(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/MaterialInstance;->nSetDepthCulling(JZ)V

    return-void
.end method

.method public C(Lcom/google/android/filament/TextureSampler$a;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/MaterialInstance;->nSetDepthFunc(JJ)V

    return-void
.end method

.method public D(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/MaterialInstance;->nSetDepthWrite(JZ)V

    return-void
.end method

.method public E(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/MaterialInstance;->nSetDoubleSided(JZ)V

    return-void
.end method

.method public F(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/MaterialInstance;->nSetMaskThreshold(JF)V

    return-void
.end method

.method public G(Ljava/lang/String;F)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/MaterialInstance;->nSetParameterFloat(JLjava/lang/String;F)V

    return-void
.end method

.method public H(Ljava/lang/String;FF)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/MaterialInstance;->nSetParameterFloat2(JLjava/lang/String;FF)V

    return-void
.end method

.method public I(Ljava/lang/String;FFF)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->nSetParameterFloat3(JLjava/lang/String;FFF)V

    return-void
.end method

.method public J(Ljava/lang/String;FFFF)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/MaterialInstance;->nSetParameterFloat4(JLjava/lang/String;FFFF)V

    return-void
.end method

.method public K(Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/MaterialInstance;->nSetParameterInt(JLjava/lang/String;I)V

    return-void
.end method

.method public L(Ljava/lang/String;II)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/MaterialInstance;->nSetParameterInt2(JLjava/lang/String;II)V

    return-void
.end method

.method public M(Ljava/lang/String;III)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->nSetParameterInt3(JLjava/lang/String;III)V

    return-void
.end method

.method public N(Ljava/lang/String;IIII)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/MaterialInstance;->nSetParameterInt4(JLjava/lang/String;IIII)V

    return-void
.end method

.method public O(Ljava/lang/String;Lcom/google/android/filament/Colors$c;FFF)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/Colors$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p2, p3, p4, p5}, Lcom/google/android/filament/Colors;->d(Lcom/google/android/filament/Colors$c;FFF)[F

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    const/4 p3, 0x0

    aget v3, p2, p3

    const/4 p3, 0x1

    aget v4, p2, p3

    const/4 p3, 0x2

    aget v5, p2, p3

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->nSetParameterFloat3(JLjava/lang/String;FFF)V

    return-void
.end method

.method public P(Ljava/lang/String;Lcom/google/android/filament/Colors$d;FFFF)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/Colors$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p2, p3, p4, p5, p6}, Lcom/google/android/filament/Colors;->f(Lcom/google/android/filament/Colors$d;FFFF)[F

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    const/4 p3, 0x0

    aget v3, p2, p3

    const/4 p3, 0x1

    aget v4, p2, p3

    const/4 p3, 0x2

    aget v5, p2, p3

    const/4 p3, 0x3

    aget v6, p2, p3

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/MaterialInstance;->nSetParameterFloat4(JLjava/lang/String;FFFF)V

    return-void
.end method

.method public Q(Ljava/lang/String;Lcom/google/android/filament/MaterialInstance$a;[ZII)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/MaterialInstance$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Z
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/MaterialInstance;->nSetBooleanParameterArray(JLjava/lang/String;I[ZII)V

    return-void
.end method

.method public R(Ljava/lang/String;Lcom/google/android/filament/MaterialInstance$b;[FII)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/MaterialInstance$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/MaterialInstance;->nSetFloatParameterArray(JLjava/lang/String;I[FII)V

    return-void
.end method

.method public S(Ljava/lang/String;Lcom/google/android/filament/MaterialInstance$c;[III)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/MaterialInstance$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/MaterialInstance;->nSetIntParameterArray(JLjava/lang/String;I[III)V

    return-void
.end method

.method public T(Ljava/lang/String;Lcom/google/android/filament/Texture;Lcom/google/android/filament/TextureSampler;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/Texture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/filament/TextureSampler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v3

    iget-wide v5, p3, Lcom/google/android/filament/TextureSampler;->a:J

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/MaterialInstance;->nSetParameterTexture(JLjava/lang/String;JJ)V

    return-void
.end method

.method public U(Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/MaterialInstance;->nSetParameterBool(JLjava/lang/String;Z)V

    return-void
.end method

.method public V(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/MaterialInstance;->nSetParameterBool2(JLjava/lang/String;ZZ)V

    return-void
.end method

.method public W(Ljava/lang/String;ZZZ)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->nSetParameterBool3(JLjava/lang/String;ZZZ)V

    return-void
.end method

.method public X(Ljava/lang/String;ZZZZ)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/MaterialInstance;->nSetParameterBool4(JLjava/lang/String;ZZZZ)V

    return-void
.end method

.method public Y(FF)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/MaterialInstance;->nSetPolygonOffset(JFF)V

    return-void
.end method

.method public Z(IIII)V
    .locals 6
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
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->nSetScissor(JIIII)V

    return-void
.end method

.method public a()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/MaterialInstance;->c:J

    return-void
.end method

.method public a0(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/MaterialInstance;->nSetSpecularAntiAliasingThreshold(JF)V

    return-void
.end method

.method public b(Lcom/google/android/filament/Material$c;ILjava/lang/Object;Ljava/lang/Runnable;)V
    .locals 6
    .param p1    # Lcom/google/android/filament/Material$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->nCompile(JIILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public b0(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/MaterialInstance;->nSetSpecularAntiAliasingVariance(JF)V

    return-void
.end method

.method public c0(Lcom/google/android/filament/TextureSampler$a;)V
    .locals 1

    sget-object v0, Lcom/google/android/filament/MaterialInstance$d;->FRONT_AND_BACK:Lcom/google/android/filament/MaterialInstance$d;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/filament/MaterialInstance;->d0(Lcom/google/android/filament/TextureSampler$a;Lcom/google/android/filament/MaterialInstance$d;)V

    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/MaterialInstance;->nGetConstantBool(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public d0(Lcom/google/android/filament/TextureSampler$a;Lcom/google/android/filament/MaterialInstance$d;)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long v2, p1

    sget-object p1, Lcom/google/android/filament/MaterialInstance;->f:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    int-to-long v4, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->nSetStencilCompareFunction(JJJ)V

    return-void
.end method

.method public e(Ljava/lang/String;)F
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/MaterialInstance;->nGetConstantFloat(JLjava/lang/String;)F

    move-result p1

    return p1
.end method

.method public e0(Lcom/google/android/filament/MaterialInstance$e;)V
    .locals 1

    sget-object v0, Lcom/google/android/filament/MaterialInstance$d;->FRONT_AND_BACK:Lcom/google/android/filament/MaterialInstance$d;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/filament/MaterialInstance;->f0(Lcom/google/android/filament/MaterialInstance$e;Lcom/google/android/filament/MaterialInstance$d;)V

    return-void
.end method

.method public f(Ljava/lang/String;)I
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/MaterialInstance;->nGetConstantInt(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public f0(Lcom/google/android/filament/MaterialInstance$e;Lcom/google/android/filament/MaterialInstance$d;)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long v2, p1

    sget-object p1, Lcom/google/android/filament/MaterialInstance;->f:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    int-to-long v4, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->nSetStencilOpDepthFail(JJJ)V

    return-void
.end method

.method public g()Lcom/google/android/filament/Material$d;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/google/android/filament/MaterialInstance;->e:[Lcom/google/android/filament/Material$d;

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/MaterialInstance;->nGetCullingMode(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public g0(Lcom/google/android/filament/MaterialInstance$e;)V
    .locals 1

    sget-object v0, Lcom/google/android/filament/MaterialInstance$d;->FRONT_AND_BACK:Lcom/google/android/filament/MaterialInstance$d;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/filament/MaterialInstance;->h0(Lcom/google/android/filament/MaterialInstance$e;Lcom/google/android/filament/MaterialInstance$d;)V

    return-void
.end method

.method public h()Lcom/google/android/filament/TextureSampler$a;
    .locals 3

    sget-object v0, Lcom/google/android/filament/TextureSampler$c;->e:[Lcom/google/android/filament/TextureSampler$a;

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/MaterialInstance;->nGetDepthFunc(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public h0(Lcom/google/android/filament/MaterialInstance$e;Lcom/google/android/filament/MaterialInstance$d;)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long v2, p1

    sget-object p1, Lcom/google/android/filament/MaterialInstance;->f:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    int-to-long v4, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->nSetStencilOpDepthStencilPass(JJJ)V

    return-void
.end method

.method public i()F
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/MaterialInstance;->nGetMaskThreshold(J)F

    move-result v0

    return v0
.end method

.method public i0(Lcom/google/android/filament/MaterialInstance$e;)V
    .locals 1

    sget-object v0, Lcom/google/android/filament/MaterialInstance$d;->FRONT_AND_BACK:Lcom/google/android/filament/MaterialInstance$d;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/filament/MaterialInstance;->j0(Lcom/google/android/filament/MaterialInstance$e;Lcom/google/android/filament/MaterialInstance$d;)V

    return-void
.end method

.method public j()Lcom/google/android/filament/Material;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/MaterialInstance;->a:Lcom/google/android/filament/Material;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/filament/Material;

    iget-wide v1, p0, Lcom/google/android/filament/MaterialInstance;->d:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/Material;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/filament/MaterialInstance;->a:Lcom/google/android/filament/Material;

    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/MaterialInstance;->a:Lcom/google/android/filament/Material;

    return-object v0
.end method

.method public j0(Lcom/google/android/filament/MaterialInstance$e;Lcom/google/android/filament/MaterialInstance$d;)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long v2, p1

    sget-object p1, Lcom/google/android/filament/MaterialInstance;->f:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    int-to-long v4, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->nSetStencilOpStencilFail(JJJ)V

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/MaterialInstance;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/MaterialInstance;->nGetName(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filament/MaterialInstance;->b:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/MaterialInstance;->b:Ljava/lang/String;

    return-object v0
.end method

.method public k0(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    sget-object v0, Lcom/google/android/filament/MaterialInstance$d;->FRONT_AND_BACK:Lcom/google/android/filament/MaterialInstance$d;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/filament/MaterialInstance;->l0(ILcom/google/android/filament/MaterialInstance$d;)V

    return-void
.end method

.method public l()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/MaterialInstance;->c:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling method on destroyed MaterialInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l0(ILcom/google/android/filament/MaterialInstance$d;)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    sget-object v2, Lcom/google/android/filament/MaterialInstance;->f:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v2, p2

    int-to-long v2, p2

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/android/filament/MaterialInstance;->nSetStencilReadMask(JIJ)V

    return-void
.end method

.method public m()Lcom/google/android/filament/Material$d;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/google/android/filament/MaterialInstance;->e:[Lcom/google/android/filament/Material$d;

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/MaterialInstance;->nGetShadowCullingMode(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public m0(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    sget-object v0, Lcom/google/android/filament/MaterialInstance$d;->FRONT_AND_BACK:Lcom/google/android/filament/MaterialInstance$d;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/filament/MaterialInstance;->n0(ILcom/google/android/filament/MaterialInstance$d;)V

    return-void
.end method

.method public n()F
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/MaterialInstance;->nGetSpecularAntiAliasingThreshold(J)F

    move-result v0

    return v0
.end method

.method public n0(ILcom/google/android/filament/MaterialInstance$d;)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    sget-object v2, Lcom/google/android/filament/MaterialInstance;->f:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v2, p2

    int-to-long v2, p2

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/android/filament/MaterialInstance;->nSetStencilReferenceValue(JIJ)V

    return-void
.end method

.method public o()F
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/MaterialInstance;->nGetSpecularAntiAliasingVariance(J)F

    move-result v0

    return v0
.end method

.method public o0(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/MaterialInstance;->nSetStencilWrite(JZ)V

    return-void
.end method

.method public p()Lcom/google/android/filament/Material$k;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/google/android/filament/Material$e;->k:[Lcom/google/android/filament/Material$k;

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/MaterialInstance;->nGetTransparencyMode(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public p0(I)V
    .locals 1

    sget-object v0, Lcom/google/android/filament/MaterialInstance$d;->FRONT_AND_BACK:Lcom/google/android/filament/MaterialInstance$d;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/filament/MaterialInstance;->q0(ILcom/google/android/filament/MaterialInstance$d;)V

    return-void
.end method

.method public q()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/MaterialInstance;->nIsColorWriteEnabled(J)Z

    move-result v0

    return v0
.end method

.method public q0(ILcom/google/android/filament/MaterialInstance$d;)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    sget-object v2, Lcom/google/android/filament/MaterialInstance;->f:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v2, p2

    int-to-long v2, p2

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/android/filament/MaterialInstance;->nSetStencilWriteMask(JIJ)V

    return-void
.end method

.method public r()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/MaterialInstance;->nIsDepthCullingEnabled(J)Z

    move-result v0

    return v0
.end method

.method public r0(Lcom/google/android/filament/Material$k;)V
    .locals 2
    .param p1    # Lcom/google/android/filament/Material$k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/MaterialInstance;->nSetTransparencyMode(JI)V

    return-void
.end method

.method public s()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/MaterialInstance;->nIsDepthWriteEnabled(J)Z

    move-result v0

    return v0
.end method

.method public s0()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/MaterialInstance;->nUnsetScissor(J)V

    return-void
.end method

.method public t()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/MaterialInstance;->nIsDoubleSided(J)Z

    move-result v0

    return v0
.end method

.method public u()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/MaterialInstance;->nIsStencilWriteEnabled(J)Z

    move-result v0

    return v0
.end method

.method public v(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/MaterialInstance;->nSetColorWrite(JZ)V

    return-void
.end method

.method public w(Ljava/lang/String;F)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/MaterialInstance;->nSetConstantFloat(JLjava/lang/String;F)V

    return-void
.end method

.method public x(Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/MaterialInstance;->nSetConstantInt(JLjava/lang/String;I)V

    return-void
.end method

.method public y(Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/MaterialInstance;->nSetConstantBool(JLjava/lang/String;Z)V

    return-void
.end method

.method public z(Lcom/google/android/filament/Material$d;)V
    .locals 4
    .param p1    # Lcom/google/android/filament/Material$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/MaterialInstance;->nSetCullingMode(JJ)V

    return-void
.end method
