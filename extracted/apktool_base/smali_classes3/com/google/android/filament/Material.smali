.class public Lcom/google/android/filament/Material;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/filament/proguard/UsedByNative;
    value = "AssetLoader.cpp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Material$c;,
        Lcom/google/android/filament/Material$e;,
        Lcom/google/android/filament/Material$j;,
        Lcom/google/android/filament/Material$f;,
        Lcom/google/android/filament/Material$a;,
        Lcom/google/android/filament/Material$k;,
        Lcom/google/android/filament/Material$h;,
        Lcom/google/android/filament/Material$i;,
        Lcom/google/android/filament/Material$g;,
        Lcom/google/android/filament/Material$n;,
        Lcom/google/android/filament/Material$d;,
        Lcom/google/android/filament/Material$b;,
        Lcom/google/android/filament/Material$Parameter;,
        Lcom/google/android/filament/Material$m;,
        Lcom/google/android/filament/Material$l;
    }
.end annotation


# instance fields
.field public a:J

.field public final b:Lcom/google/android/filament/MaterialInstance;

.field public c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/filament/VertexBuffer$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/filament/Material;->a:J

    invoke-static {p1, p2}, Lcom/google/android/filament/Material;->nGetDefaultInstance(J)J

    move-result-wide p1

    new-instance v0, Lcom/google/android/filament/MaterialInstance;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/filament/MaterialInstance;-><init>(Lcom/google/android/filament/Material;J)V

    iput-object v0, p0, Lcom/google/android/filament/Material;->b:Lcom/google/android/filament/MaterialInstance;

    return-void
.end method

.method public static bridge synthetic a(JLjava/nio/Buffer;IIII)J
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/google/android/filament/Material;->nBuilderBuild(JLjava/nio/Buffer;IIII)J

    move-result-wide p0

    return-wide p0
.end method

.method private static native nBuilderBuild(JLjava/nio/Buffer;IIII)J
    .param p2    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native nCompile(JIILjava/lang/Object;Ljava/lang/Runnable;)V
.end method

.method private static native nCreateInstance(J)J
.end method

.method private static native nCreateInstanceWithName(JLjava/lang/String;)J
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native nGetBlendingMode(J)I
.end method

.method private static native nGetCullingMode(J)I
.end method

.method private static native nGetDefaultInstance(J)J
.end method

.method private static native nGetFeatureLevel(J)I
.end method

.method private static native nGetInterpolation(J)I
.end method

.method private static native nGetMaskThreshold(J)F
.end method

.method private static native nGetName(J)Ljava/lang/String;
.end method

.method private static native nGetParameterCount(J)I
.end method

.method private static native nGetParameterTransformName(JLjava/lang/String;)Ljava/lang/String;
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native nGetParameters(JLjava/util/List;I)V
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/google/android/filament/Material$Parameter;",
            ">;I)V"
        }
    .end annotation
.end method

.method private static native nGetReflectionMode(J)I
.end method

.method private static native nGetRefractionMode(J)I
.end method

.method private static native nGetRefractionType(J)I
.end method

.method private static native nGetRequiredAttributes(J)I
.end method

.method private static native nGetShading(J)I
.end method

.method private static native nGetSpecularAntiAliasingThreshold(J)F
.end method

.method private static native nGetSpecularAntiAliasingVariance(J)F
.end method

.method private static native nGetTransparencyMode(J)I
.end method

.method private static native nGetVertexDomain(J)I
.end method

.method private static native nHasParameter(JLjava/lang/String;)Z
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method private static native nIsAlphaToCoverageEnabled(J)Z
.end method

.method private static native nIsColorWriteEnabled(J)Z
.end method

.method private static native nIsDepthCullingEnabled(J)Z
.end method

.method private static native nIsDepthWriteEnabled(J)Z
.end method

.method private static native nIsDoubleSided(J)Z
.end method


# virtual methods
.method public A(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->m()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Material;->nHasParameter(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public B()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->m()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Material;->nIsAlphaToCoverageEnabled(J)Z

    move-result v0

    return v0
.end method

.method public C()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->m()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Material;->nIsColorWriteEnabled(J)Z

    move-result v0

    return v0
.end method

.method public D()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->m()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Material;->nIsDepthCullingEnabled(J)Z

    move-result v0

    return v0
.end method

.method public E()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->m()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Material;->nIsDepthWriteEnabled(J)Z

    move-result v0

    return v0
.end method

.method public F()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->m()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Material;->nIsDoubleSided(J)Z

    move-result v0

    return v0
.end method

.method public G(Ljava/lang/String;F)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/filament/Material;->b:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/filament/MaterialInstance;->G(Ljava/lang/String;F)V

    return-void
.end method

.method public H(Ljava/lang/String;FF)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/filament/Material;->b:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/filament/MaterialInstance;->H(Ljava/lang/String;FF)V

    return-void
.end method

.method public I(Ljava/lang/String;FFF)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/filament/Material;->b:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/filament/MaterialInstance;->I(Ljava/lang/String;FFF)V

    return-void
.end method

.method public J(Ljava/lang/String;FFFF)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/filament/Material;->b:Lcom/google/android/filament/MaterialInstance;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->J(Ljava/lang/String;FFFF)V

    return-void
.end method

.method public K(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/filament/Material;->b:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/filament/MaterialInstance;->K(Ljava/lang/String;I)V

    return-void
.end method

.method public L(Ljava/lang/String;II)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/filament/Material;->b:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/filament/MaterialInstance;->L(Ljava/lang/String;II)V

    return-void
.end method

.method public M(Ljava/lang/String;III)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/filament/Material;->b:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/filament/MaterialInstance;->M(Ljava/lang/String;III)V

    return-void
.end method

.method public N(Ljava/lang/String;IIII)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/filament/Material;->b:Lcom/google/android/filament/MaterialInstance;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->N(Ljava/lang/String;IIII)V

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

    iget-object v0, p0, Lcom/google/android/filament/Material;->b:Lcom/google/android/filament/MaterialInstance;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->O(Ljava/lang/String;Lcom/google/android/filament/Colors$c;FFF)V

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

    iget-object v0, p0, Lcom/google/android/filament/Material;->b:Lcom/google/android/filament/MaterialInstance;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/filament/MaterialInstance;->P(Ljava/lang/String;Lcom/google/android/filament/Colors$d;FFFF)V

    return-void
.end method

.method public Q(Ljava/lang/String;Lcom/google/android/filament/MaterialInstance$a;[ZII)V
    .locals 6
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

        .annotation build Landroidx/annotation/Size;
            min = 0x1L
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

    iget-object v0, p0, Lcom/google/android/filament/Material;->b:Lcom/google/android/filament/MaterialInstance;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->Q(Ljava/lang/String;Lcom/google/android/filament/MaterialInstance$a;[ZII)V

    return-void
.end method

.method public R(Ljava/lang/String;Lcom/google/android/filament/MaterialInstance$b;[FII)V
    .locals 6
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

        .annotation build Landroidx/annotation/Size;
            min = 0x1L
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

    iget-object v0, p0, Lcom/google/android/filament/Material;->b:Lcom/google/android/filament/MaterialInstance;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->R(Ljava/lang/String;Lcom/google/android/filament/MaterialInstance$b;[FII)V

    return-void
.end method

.method public S(Ljava/lang/String;Lcom/google/android/filament/MaterialInstance$c;[III)V
    .locals 6
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

        .annotation build Landroidx/annotation/Size;
            min = 0x1L
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

    iget-object v0, p0, Lcom/google/android/filament/Material;->b:Lcom/google/android/filament/MaterialInstance;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->S(Ljava/lang/String;Lcom/google/android/filament/MaterialInstance$c;[III)V

    return-void
.end method

.method public T(Ljava/lang/String;Lcom/google/android/filament/Texture;Lcom/google/android/filament/TextureSampler;)V
    .locals 1
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

    iget-object v0, p0, Lcom/google/android/filament/Material;->b:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/filament/MaterialInstance;->T(Ljava/lang/String;Lcom/google/android/filament/Texture;Lcom/google/android/filament/TextureSampler;)V

    return-void
.end method

.method public U(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/filament/Material;->b:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/filament/MaterialInstance;->U(Ljava/lang/String;Z)V

    return-void
.end method

.method public V(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/filament/Material;->b:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/filament/MaterialInstance;->V(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public W(Ljava/lang/String;ZZZ)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/filament/Material;->b:Lcom/google/android/filament/MaterialInstance;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/filament/MaterialInstance;->W(Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public X(Ljava/lang/String;ZZZZ)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/filament/Material;->b:Lcom/google/android/filament/MaterialInstance;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/filament/MaterialInstance;->X(Ljava/lang/String;ZZZZ)V

    return-void
.end method

.method public b()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/Material;->a:J

    return-void
.end method

.method public c(Lcom/google/android/filament/Material$c;ILjava/lang/Object;Ljava/lang/Runnable;)V
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

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->m()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/Material;->nCompile(JIILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()Lcom/google/android/filament/MaterialInstance;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->m()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Material;->nCreateInstance(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/android/filament/MaterialInstance;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/filament/MaterialInstance;-><init>(Lcom/google/android/filament/Material;J)V

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Couldn\'t create MaterialInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e(Ljava/lang/String;)Lcom/google/android/filament/MaterialInstance;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->m()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Material;->nCreateInstanceWithName(JLjava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/filament/MaterialInstance;

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/filament/MaterialInstance;-><init>(Lcom/google/android/filament/Material;J)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t create MaterialInstance"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f()Lcom/google/android/filament/Material$a;
    .locals 3

    sget-object v0, Lcom/google/android/filament/Material$e;->c:[Lcom/google/android/filament/Material$a;

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->m()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/Material;->nGetBlendingMode(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public g()Lcom/google/android/filament/Material$d;
    .locals 3

    sget-object v0, Lcom/google/android/filament/Material$e;->i:[Lcom/google/android/filament/Material$d;

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->m()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/Material;->nGetCullingMode(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public h()Lcom/google/android/filament/MaterialInstance;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/Material;->b:Lcom/google/android/filament/MaterialInstance;

    return-object v0
.end method

.method public i()Lcom/google/android/filament/Engine$d;
    .locals 3

    sget-object v0, Lcom/google/android/filament/Material$e;->g:[Lcom/google/android/filament/Engine$d;

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->m()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/Material;->nGetFeatureLevel(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public j()Lcom/google/android/filament/Material$f;
    .locals 3

    sget-object v0, Lcom/google/android/filament/Material$e;->b:[Lcom/google/android/filament/Material$f;

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->m()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/Material;->nGetInterpolation(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public k()F
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->m()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Material;->nGetMaskThreshold(J)F

    move-result v0

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->m()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Material;->nGetName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/Material;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling method on destroyed Material"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->m()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Material;->nGetParameterCount(J)I

    move-result v0

    return v0
.end method

.method public o(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->m()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Material;->nGetParameterTransformName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public p()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/filament/Material$Parameter;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->n()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->m()J

    move-result-wide v2

    invoke-static {v2, v3, v1, v0}, Lcom/google/android/filament/Material;->nGetParameters(JLjava/util/List;I)V

    :cond_0
    return-object v1
.end method

.method public q()Lcom/google/android/filament/Material$g;
    .locals 3

    sget-object v0, Lcom/google/android/filament/Material$e;->f:[Lcom/google/android/filament/Material$g;

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->m()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/Material;->nGetReflectionMode(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public r()Lcom/google/android/filament/Material$h;
    .locals 3

    sget-object v0, Lcom/google/android/filament/Material$e;->d:[Lcom/google/android/filament/Material$h;

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->m()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/Material;->nGetRefractionMode(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public s()Lcom/google/android/filament/Material$i;
    .locals 3

    sget-object v0, Lcom/google/android/filament/Material$e;->e:[Lcom/google/android/filament/Material$i;

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->m()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/Material;->nGetRefractionType(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public t()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/filament/VertexBuffer$c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/Material;->c:Ljava/util/Set;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->m()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Material;->nGetRequiredAttributes(J)I

    move-result v0

    const-class v1, Lcom/google/android/filament/VertexBuffer$c;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/filament/Material;->c:Ljava/util/Set;

    sget-object v1, Lcom/google/android/filament/Material$e;->j:[Lcom/google/android/filament/VertexBuffer$c;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    const/4 v3, 0x1

    shl-int/2addr v3, v2

    and-int/2addr v3, v0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/filament/Material;->c:Ljava/util/Set;

    aget-object v4, v1, v2

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/filament/Material;->c:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/filament/Material;->c:Ljava/util/Set;

    :cond_2
    iget-object v0, p0, Lcom/google/android/filament/Material;->c:Ljava/util/Set;

    return-object v0
.end method

.method public u()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->m()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Material;->nGetRequiredAttributes(J)I

    move-result v0

    return v0
.end method

.method public v()Lcom/google/android/filament/Material$j;
    .locals 3

    sget-object v0, Lcom/google/android/filament/Material$e;->a:[Lcom/google/android/filament/Material$j;

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->m()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/Material;->nGetShading(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public w()F
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->m()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Material;->nGetSpecularAntiAliasingThreshold(J)F

    move-result v0

    return v0
.end method

.method public x()F
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->m()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Material;->nGetSpecularAntiAliasingVariance(J)F

    move-result v0

    return v0
.end method

.method public y()Lcom/google/android/filament/Material$k;
    .locals 3

    sget-object v0, Lcom/google/android/filament/Material$e;->k:[Lcom/google/android/filament/Material$k;

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->m()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/Material;->nGetTransparencyMode(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public z()Lcom/google/android/filament/Material$n;
    .locals 3

    sget-object v0, Lcom/google/android/filament/Material$e;->h:[Lcom/google/android/filament/Material$n;

    invoke-virtual {p0}, Lcom/google/android/filament/Material;->m()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/Material;->nGetVertexDomain(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
