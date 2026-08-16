.class public Lcom/google/android/filament/LightManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/LightManager$d;,
        Lcom/google/android/filament/LightManager$a;,
        Lcom/google/android/filament/LightManager$b;,
        Lcom/google/android/filament/LightManager$c;
    }
.end annotation


# static fields
.field public static final b:[Lcom/google/android/filament/LightManager$d;

.field public static final c:F = 0.022f

.field public static final d:F = 0.0707f

.field public static final e:F = 0.0878f

.field public static final f:F = 0.1171f


# instance fields
.field public a:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/filament/LightManager$d;->values()[Lcom/google/android/filament/LightManager$d;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/LightManager;->b:[Lcom/google/android/filament/LightManager$d;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/filament/LightManager;->a:J

    return-void
.end method

.method public static bridge synthetic a(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/LightManager;->nBuilderAngularRadius(JF)V

    return-void
.end method

.method public static bridge synthetic b(JJI)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/LightManager;->nBuilderBuild(JJI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/LightManager;->nBuilderCastLight(JZ)V

    return-void
.end method

.method public static bridge synthetic d(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/LightManager;->nBuilderCastShadows(JZ)V

    return-void
.end method

.method public static bridge synthetic e(JFFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/LightManager;->nBuilderColor(JFFF)V

    return-void
.end method

.method public static bridge synthetic f(JFFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/LightManager;->nBuilderDirection(JFFF)V

    return-void
.end method

.method public static bridge synthetic g(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/LightManager;->nBuilderFalloff(JF)V

    return-void
.end method

.method public static bridge synthetic h(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/LightManager;->nBuilderHaloFalloff(JF)V

    return-void
.end method

.method public static bridge synthetic i(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/LightManager;->nBuilderHaloSize(JF)V

    return-void
.end method

.method public static bridge synthetic j(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/LightManager;->nBuilderIntensity(JF)V

    return-void
.end method

.method public static bridge synthetic k(JFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/LightManager;->nBuilderIntensity(JFF)V

    return-void
.end method

.method public static bridge synthetic l(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/LightManager;->nBuilderIntensityCandela(JF)V

    return-void
.end method

.method public static bridge synthetic m(JIZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/LightManager;->nBuilderLightChannel(JIZ)V

    return-void
.end method

.method public static bridge synthetic n(JFFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/LightManager;->nBuilderPosition(JFFF)V

    return-void
.end method

.method private static native nBuilderAngularRadius(JF)V
.end method

.method private static native nBuilderBuild(JJI)Z
.end method

.method private static native nBuilderCastLight(JZ)V
.end method

.method private static native nBuilderCastShadows(JZ)V
.end method

.method private static native nBuilderColor(JFFF)V
.end method

.method private static native nBuilderDirection(JFFF)V
.end method

.method private static native nBuilderFalloff(JF)V
.end method

.method private static native nBuilderHaloFalloff(JF)V
.end method

.method private static native nBuilderHaloSize(JF)V
.end method

.method private static native nBuilderIntensity(JF)V
.end method

.method private static native nBuilderIntensity(JFF)V
.end method

.method private static native nBuilderIntensityCandela(JF)V
.end method

.method private static native nBuilderLightChannel(JIZ)V
.end method

.method private static native nBuilderPosition(JFFF)V
.end method

.method private static native nBuilderShadowOptions(JII[FFFFFFZZFFZIFZFF[F)V
.end method

.method private static native nBuilderSpotLightCone(JFF)V
.end method

.method private static native nComputeLogSplits([FIFF)V
.end method

.method private static native nComputePracticalSplits([FIFFF)V
.end method

.method private static native nComputeUniformSplits([FI)V
.end method

.method private static native nCreateBuilder(I)J
.end method

.method private static native nDestroy(JI)V
.end method

.method private static native nDestroyBuilder(J)V
.end method

.method private static native nGetColor(JI[F)V
.end method

.method private static native nGetComponentCount(J)I
.end method

.method private static native nGetDirection(JI[F)V
.end method

.method private static native nGetFalloff(JI)F
.end method

.method private static native nGetInnerConeAngle(JI)F
.end method

.method private static native nGetInstance(JI)I
.end method

.method private static native nGetIntensity(JI)F
.end method

.method private static native nGetLightChannel(JII)Z
.end method

.method private static native nGetOuterConeAngle(JI)F
.end method

.method private static native nGetPosition(JI[F)V
.end method

.method private static native nGetSunAngularRadius(JI)F
.end method

.method private static native nGetSunHaloFalloff(JI)F
.end method

.method private static native nGetSunHaloSize(JI)F
.end method

.method private static native nGetType(JI)I
.end method

.method private static native nHasComponent(JI)Z
.end method

.method private static native nIsShadowCaster(JI)Z
.end method

.method private static native nSetColor(JIFFF)V
.end method

.method private static native nSetDirection(JIFFF)V
.end method

.method private static native nSetFalloff(JIF)V
.end method

.method private static native nSetIntensity(JIF)V
.end method

.method private static native nSetIntensity(JIFF)V
.end method

.method private static native nSetIntensityCandela(JIF)V
.end method

.method private static native nSetLightChannel(JIIZ)V
.end method

.method private static native nSetPosition(JIFFF)V
.end method

.method private static native nSetShadowCaster(JIZ)V
.end method

.method private static native nSetSpotLightCone(JIFF)V
.end method

.method private static native nSetSunAngularRadius(JIF)V
.end method

.method private static native nSetSunHaloFalloff(JIF)V
.end method

.method private static native nSetSunHaloSize(JIF)V
.end method

.method public static bridge synthetic o(JII[FFFFFFZZFFZIFZFF[F)V
    .locals 0

    invoke-static/range {p0 .. p20}, Lcom/google/android/filament/LightManager;->nBuilderShadowOptions(JII[FFFFFFZZFFZIFZFF[F)V

    return-void
.end method

.method public static bridge synthetic p(JFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/LightManager;->nBuilderSpotLightCone(JFF)V

    return-void
.end method

.method public static bridge synthetic q([FIFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/LightManager;->nComputeLogSplits([FIFF)V

    return-void
.end method

.method public static bridge synthetic r([FIFFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/LightManager;->nComputePracticalSplits([FIFFF)V

    return-void
.end method

.method public static bridge synthetic s([FI)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/LightManager;->nComputeUniformSplits([FI)V

    return-void
.end method

.method public static bridge synthetic t(I)J
    .locals 2

    invoke-static {p0}, Lcom/google/android/filament/LightManager;->nCreateBuilder(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic u(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/LightManager;->nDestroyBuilder(J)V

    return-void
.end method


# virtual methods
.method public A(I)F
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/LightManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/LightManager;->nGetInnerConeAngle(JI)F

    move-result p1

    return p1
.end method

.method public B(I)I
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/g;
        .end annotation
    .end param
    .annotation build Lcom/google/android/filament/h;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/LightManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/LightManager;->nGetInstance(JI)I

    move-result p1

    return p1
.end method

.method public C(I)F
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/LightManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/LightManager;->nGetIntensity(JI)F

    move-result p1

    return p1
.end method

.method public D(II)Z
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x7L
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/LightManager;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/LightManager;->nGetLightChannel(JII)Z

    move-result p1

    return p1
.end method

.method public E()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/LightManager;->a:J

    return-wide v0
.end method

.method public F(I)F
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/LightManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/LightManager;->nGetOuterConeAngle(JI)F

    move-result p1

    return p1
.end method

.method public G(I[F)[F
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x3L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p2}, Lcom/google/android/filament/c;->e([F)[F

    move-result-object p2

    iget-wide v0, p0, Lcom/google/android/filament/LightManager;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/LightManager;->nGetPosition(JI[F)V

    return-object p2
.end method

.method public H(I)F
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/LightManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/LightManager;->nGetSunAngularRadius(JI)F

    move-result p1

    return p1
.end method

.method public I(I)F
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/LightManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/LightManager;->nGetSunHaloFalloff(JI)F

    move-result p1

    return p1
.end method

.method public J(I)F
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/LightManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/LightManager;->nGetSunHaloSize(JI)F

    move-result p1

    return p1
.end method

.method public K(I)Lcom/google/android/filament/LightManager$d;
    .locals 3
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/google/android/filament/LightManager;->b:[Lcom/google/android/filament/LightManager$d;

    iget-wide v1, p0, Lcom/google/android/filament/LightManager;->a:J

    invoke-static {v1, v2, p1}, Lcom/google/android/filament/LightManager;->nGetType(JI)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public L(I)Z
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/g;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/LightManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/LightManager;->nHasComponent(JI)Z

    move-result p1

    return p1
.end method

.method public M(I)Z
    .locals 1
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/android/filament/LightManager;->K(I)Lcom/google/android/filament/LightManager$d;

    move-result-object p1

    sget-object v0, Lcom/google/android/filament/LightManager$d;->DIRECTIONAL:Lcom/google/android/filament/LightManager$d;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/google/android/filament/LightManager$d;->SUN:Lcom/google/android/filament/LightManager$d;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public N(I)Z
    .locals 1
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/android/filament/LightManager;->K(I)Lcom/google/android/filament/LightManager$d;

    move-result-object p1

    sget-object v0, Lcom/google/android/filament/LightManager$d;->POINT:Lcom/google/android/filament/LightManager$d;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public O(I)Z
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/LightManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/LightManager;->nIsShadowCaster(JI)Z

    move-result p1

    return p1
.end method

.method public P(I)Z
    .locals 1
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/android/filament/LightManager;->K(I)Lcom/google/android/filament/LightManager$d;

    move-result-object p1

    sget-object v0, Lcom/google/android/filament/LightManager$d;->SPOT:Lcom/google/android/filament/LightManager$d;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/google/android/filament/LightManager$d;->FOCUSED_SPOT:Lcom/google/android/filament/LightManager$d;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public Q(IFFF)V
    .locals 6
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/LightManager;->a:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/LightManager;->nSetColor(JIFFF)V

    return-void
.end method

.method public R(IFFF)V
    .locals 6
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/LightManager;->a:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/LightManager;->nSetDirection(JIFFF)V

    return-void
.end method

.method public S(IF)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/LightManager;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/LightManager;->nSetFalloff(JIF)V

    return-void
.end method

.method public T(IF)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/LightManager;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/LightManager;->nSetIntensity(JIF)V

    return-void
.end method

.method public U(IFF)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/LightManager;->a:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/LightManager;->nSetIntensity(JIFF)V

    return-void
.end method

.method public V(IF)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/LightManager;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/LightManager;->nSetIntensityCandela(JIF)V

    return-void
.end method

.method public W(IIZ)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x7L
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/LightManager;->a:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/LightManager;->nSetLightChannel(JIIZ)V

    return-void
.end method

.method public X(IFFF)V
    .locals 6
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/LightManager;->a:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/LightManager;->nSetPosition(JIFFF)V

    return-void
.end method

.method public Y(IZ)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/LightManager;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/LightManager;->nSetShadowCaster(JIZ)V

    return-void
.end method

.method public Z(IFF)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/LightManager;->a:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/LightManager;->nSetSpotLightCone(JIFF)V

    return-void
.end method

.method public a0(IF)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/LightManager;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/LightManager;->nSetSunAngularRadius(JIF)V

    return-void
.end method

.method public b0(IF)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/LightManager;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/LightManager;->nSetSunHaloFalloff(JIF)V

    return-void
.end method

.method public c0(IF)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/LightManager;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/LightManager;->nSetSunHaloSize(JIF)V

    return-void
.end method

.method public v(I)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/g;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/LightManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/LightManager;->nDestroy(JI)V

    return-void
.end method

.method public w(I[F)[F
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x3L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p2}, Lcom/google/android/filament/c;->e([F)[F

    move-result-object p2

    iget-wide v0, p0, Lcom/google/android/filament/LightManager;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/LightManager;->nGetColor(JI[F)V

    return-object p2
.end method

.method public x()I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/LightManager;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/LightManager;->nGetComponentCount(J)I

    move-result v0

    return v0
.end method

.method public y(I[F)[F
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x3L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p2}, Lcom/google/android/filament/c;->e([F)[F

    move-result-object p2

    iget-wide v0, p0, Lcom/google/android/filament/LightManager;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/LightManager;->nGetDirection(JI[F)V

    return-object p2
.end method

.method public z(I)F
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/LightManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/LightManager;->nGetFalloff(JI)F

    move-result p1

    return p1
.end method
