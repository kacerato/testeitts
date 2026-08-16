.class public Lcom/google/android/filament/View;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/View$d;,
        Lcom/google/android/filament/View$c;,
        Lcom/google/android/filament/View$k;,
        Lcom/google/android/filament/View$u;,
        Lcom/google/android/filament/View$p;,
        Lcom/google/android/filament/View$j;,
        Lcom/google/android/filament/View$v;,
        Lcom/google/android/filament/View$g;,
        Lcom/google/android/filament/View$h;,
        Lcom/google/android/filament/View$n;,
        Lcom/google/android/filament/View$o;,
        Lcom/google/android/filament/View$q;,
        Lcom/google/android/filament/View$x;,
        Lcom/google/android/filament/View$r;,
        Lcom/google/android/filament/View$a;,
        Lcom/google/android/filament/View$b;,
        Lcom/google/android/filament/View$e;,
        Lcom/google/android/filament/View$w;,
        Lcom/google/android/filament/View$i;,
        Lcom/google/android/filament/View$f;,
        Lcom/google/android/filament/View$s;,
        Lcom/google/android/filament/View$InternalOnPickCallback;,
        Lcom/google/android/filament/View$l;,
        Lcom/google/android/filament/View$m;,
        Lcom/google/android/filament/View$t;
    }
.end annotation


# static fields
.field public static final w:[Lcom/google/android/filament/View$c;

.field public static final x:[Lcom/google/android/filament/View$g;

.field public static final y:[Lcom/google/android/filament/View$a;


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Lcom/google/android/filament/Scene;

.field public d:Lcom/google/android/filament/Camera;

.field public e:Lcom/google/android/filament/w;

.field public f:Lcom/google/android/filament/View$h;

.field public g:Lcom/google/android/filament/View$o;

.field public h:Lcom/google/android/filament/View$b;

.field public i:Lcom/google/android/filament/View$e;

.field public j:Lcom/google/android/filament/View$i;

.field public k:Lcom/google/android/filament/View$s;

.field public l:Lcom/google/android/filament/RenderTarget;

.field public m:Lcom/google/android/filament/View$d;

.field public n:Lcom/google/android/filament/View$f;

.field public o:Lcom/google/android/filament/View$w;

.field public p:Lcom/google/android/filament/ColorGrading;

.field public q:Lcom/google/android/filament/View$u;

.field public r:Lcom/google/android/filament/View$p;

.field public s:Lcom/google/android/filament/View$k;

.field public t:Lcom/google/android/filament/View$x;

.field public u:Lcom/google/android/filament/View$r;

.field public v:Lcom/google/android/filament/View$j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/filament/View$c;->values()[Lcom/google/android/filament/View$c;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/View;->w:[Lcom/google/android/filament/View$c;

    invoke-static {}, Lcom/google/android/filament/View$g;->values()[Lcom/google/android/filament/View$g;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/View;->x:[Lcom/google/android/filament/View$g;

    invoke-static {}, Lcom/google/android/filament/View$a;->values()[Lcom/google/android/filament/View$a;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/View;->y:[Lcom/google/android/filament/View$a;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/filament/w;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/google/android/filament/w;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/filament/View;->e:Lcom/google/android/filament/w;

    iput-wide p1, p0, Lcom/google/android/filament/View;->a:J

    return-void
.end method

.method private static native nClearFrameHistory(JJ)V
.end method

.method private static native nGetAmbientOcclusion(J)I
.end method

.method private static native nGetAntiAliasing(J)I
.end method

.method private static native nGetDithering(J)I
.end method

.method private static native nGetEffectiveGridSize(J)D
.end method

.method private static native nGetFogEntity(J)I
.end method

.method private static native nGetGridSize(J)D
.end method

.method private static native nGetLastDynamicResolutionScale(J[F)V
.end method

.method private static native nGetMaterialGlobal(JI[F)V
.end method

.method private static native nGetSampleCount(J)I
.end method

.method private static native nGetVisibleLayers(J)I
.end method

.method private static native nGetVisibleRenderableCount(J)I
.end method

.method private static native nHasCamera(J)Z
.end method

.method private static native nIsChannelDepthClearEnabled(JI)Z
.end method

.method private static native nIsFrontFaceWindingInverted(J)Z
.end method

.method private static native nIsFrustumCullingEnabled(J)Z
.end method

.method private static native nIsPostProcessingEnabled(J)Z
.end method

.method private static native nIsScreenSpaceRefractionEnabled(J)Z
.end method

.method private static native nIsShadowingEnabled(J)Z
.end method

.method private static native nIsStencilBufferEnabled(J)Z
.end method

.method private static native nIsTransparentPickingEnabled(J)Z
.end method

.method private static native nPick(JIILjava/lang/Object;Lcom/google/android/filament/View$InternalOnPickCallback;)V
.end method

.method private static native nSetAmbientOcclusion(JI)V
.end method

.method private static native nSetAmbientOcclusionOptions(JFFFFFFIIIZZF)V
.end method

.method private static native nSetAntiAliasing(JI)V
.end method

.method private static native nSetBlendMode(JI)V
.end method

.method private static native nSetBloomOptions(JJFFIIIZZFZZFIFFFFF)V
.end method

.method private static native nSetCamera(JJ)V
.end method

.method private static native nSetChannelDepthClearEnabled(JIZ)V
.end method

.method private static native nSetColorGrading(JJ)V
.end method

.method private static native nSetDepthOfFieldOptions(JFFZIZIIIII)V
.end method

.method private static native nSetDithering(JI)V
.end method

.method private static native nSetDynamicLightingOptions(JFF)V
.end method

.method private static native nSetDynamicResolutionOptions(JZZFFFI)V
.end method

.method private static native nSetFogOptions(JFFFFFFFFFFFZJZ)V
.end method

.method private static native nSetFrontFaceWindingInverted(JZ)V
.end method

.method private static native nSetFrustumCullingEnabled(JZ)V
.end method

.method private static native nSetGridSize(JD)V
.end method

.method private static native nSetGuardBandOptions(JZ)V
.end method

.method private static native nSetMaterialGlobal(JIFFFF)V
.end method

.method private static native nSetMultiSampleAntiAliasingOptions(JZIZ)V
.end method

.method private static native nSetName(JLjava/lang/String;)V
.end method

.method private static native nSetPostProcessingEnabled(JZ)V
.end method

.method private static native nSetRenderQuality(JI)V
.end method

.method private static native nSetRenderTarget(JJ)V
.end method

.method private static native nSetSSCTOptions(JFFFFFFFFFIIZ)V
.end method

.method private static native nSetSampleCount(JI)V
.end method

.method private static native nSetScene(JJ)V
.end method

.method private static native nSetScreenSpaceReflectionsOptions(JFFFFZ)V
.end method

.method private static native nSetScreenSpaceRefractionEnabled(JZ)V
.end method

.method private static native nSetShadowType(JI)V
.end method

.method private static native nSetShadowingEnabled(JZ)V
.end method

.method private static native nSetSoftShadowOptions(JFF)V
.end method

.method private static native nSetStencilBufferEnabled(JZ)V
.end method

.method private static native nSetStereoscopicOptions(JZ)V
.end method

.method private static native nSetTemporalAntiAliasingOptions(JFFZ)V
.end method

.method private static native nSetTransparentPickingEnabled(JZ)V
.end method

.method private static native nSetViewport(JIIII)V
.end method

.method private static native nSetVignetteOptions(JFFFFFFFZ)V
.end method

.method private static native nSetVisibleLayers(JII)V
.end method

.method private static native nSetVsmShadowOptions(JIZZFF)V
.end method


# virtual methods
.method public A()Lcom/google/android/filament/View$p;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/View;->r:Lcom/google/android/filament/View$p;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/filament/View$p;

    invoke-direct {v0}, Lcom/google/android/filament/View$p;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View;->r:Lcom/google/android/filament/View$p;

    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/View;->r:Lcom/google/android/filament/View$p;

    return-object v0
.end method

.method public A0(Lcom/google/android/filament/View$s;)V
    .locals 2
    .param p1    # Lcom/google/android/filament/View$s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/filament/View;->k:Lcom/google/android/filament/View$s;

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    iget-boolean p1, p1, Lcom/google/android/filament/View$s;->a:Z

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetStereoscopicOptions(JZ)V

    return-void
.end method

.method public B()Lcom/google/android/filament/View$r;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/View;->u:Lcom/google/android/filament/View$r;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/filament/View$r;

    invoke-direct {v0}, Lcom/google/android/filament/View$r;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View;->u:Lcom/google/android/filament/View$r;

    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/View;->u:Lcom/google/android/filament/View$r;

    return-object v0
.end method

.method public B0(Lcom/google/android/filament/View$u;)V
    .locals 4
    .param p1    # Lcom/google/android/filament/View$u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/filament/View;->q:Lcom/google/android/filament/View$u;

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    iget v2, p1, Lcom/google/android/filament/View$u;->b:F

    iget v3, p1, Lcom/google/android/filament/View$u;->a:F

    iget-boolean p1, p1, Lcom/google/android/filament/View$u;->e:Z

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/filament/View;->nSetTemporalAntiAliasingOptions(JFFZ)V

    return-void
.end method

.method public C()Lcom/google/android/filament/View$s;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/View;->k:Lcom/google/android/filament/View$s;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/filament/View$s;

    invoke-direct {v0}, Lcom/google/android/filament/View$s;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View;->k:Lcom/google/android/filament/View$s;

    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/View;->k:Lcom/google/android/filament/View$s;

    return-object v0
.end method

.method public C0(Lcom/google/android/filament/View$v;)V
    .locals 0
    .param p1    # Lcom/google/android/filament/View$v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public D()Lcom/google/android/filament/View$u;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/View;->q:Lcom/google/android/filament/View$u;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/filament/View$u;

    invoke-direct {v0}, Lcom/google/android/filament/View$u;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View;->q:Lcom/google/android/filament/View$u;

    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/View;->q:Lcom/google/android/filament/View$u;

    return-object v0
.end method

.method public D0(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetTransparentPickingEnabled(JZ)V

    return-void
.end method

.method public E()Lcom/google/android/filament/View$v;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/android/filament/View$v;->ACES:Lcom/google/android/filament/View$v;

    return-object v0
.end method

.method public E0(Lcom/google/android/filament/w;)V
    .locals 6
    .param p1    # Lcom/google/android/filament/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/filament/View;->e:Lcom/google/android/filament/w;

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/filament/View;->e:Lcom/google/android/filament/w;

    iget v2, p1, Lcom/google/android/filament/w;->a:I

    iget v3, p1, Lcom/google/android/filament/w;->b:I

    iget v4, p1, Lcom/google/android/filament/w;->c:I

    iget v5, p1, Lcom/google/android/filament/w;->d:I

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/View;->nSetViewport(JIIII)V

    return-void
.end method

.method public F()Lcom/google/android/filament/w;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/View;->e:Lcom/google/android/filament/w;

    return-object v0
.end method

.method public F0(Lcom/google/android/filament/View$w;)V
    .locals 11
    .param p1    # Lcom/google/android/filament/View$w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p1, Lcom/google/android/filament/View$w;->d:[F

    invoke-static {v0}, Lcom/google/android/filament/c;->h([F)V

    iput-object p1, p0, Lcom/google/android/filament/View;->o:Lcom/google/android/filament/View$w;

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v1

    iget v3, p1, Lcom/google/android/filament/View$w;->a:F

    iget v4, p1, Lcom/google/android/filament/View$w;->b:F

    iget v5, p1, Lcom/google/android/filament/View$w;->c:F

    iget-object v0, p1, Lcom/google/android/filament/View$w;->d:[F

    const/4 v6, 0x0

    aget v6, v0, v6

    const/4 v7, 0x1

    aget v7, v0, v7

    const/4 v8, 0x2

    aget v8, v0, v8

    const/4 v9, 0x3

    aget v9, v0, v9

    iget-boolean v10, p1, Lcom/google/android/filament/View$w;->e:Z

    invoke-static/range {v1 .. v10}, Lcom/google/android/filament/View;->nSetVignetteOptions(JFFFFFFFZ)V

    return-void
.end method

.method public G()Lcom/google/android/filament/View$w;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/View;->o:Lcom/google/android/filament/View$w;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/filament/View$w;

    invoke-direct {v0}, Lcom/google/android/filament/View$w;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View;->o:Lcom/google/android/filament/View$w;

    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/View;->o:Lcom/google/android/filament/View$w;

    return-object v0
.end method

.method public G0(II)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    and-int/lit16 p1, p1, 0xff

    and-int/lit16 p2, p2, 0xff

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/View;->nSetVisibleLayers(JII)V

    return-void
.end method

.method public H()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/View;->nGetVisibleLayers(J)I

    move-result v0

    return v0
.end method

.method public H0(Lcom/google/android/filament/View$x;)V
    .locals 7
    .param p1    # Lcom/google/android/filament/View$x;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/filament/View;->t:Lcom/google/android/filament/View$x;

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    iget v2, p1, Lcom/google/android/filament/View$x;->a:I

    iget-boolean v3, p1, Lcom/google/android/filament/View$x;->b:Z

    iget-boolean v4, p1, Lcom/google/android/filament/View$x;->d:Z

    iget v5, p1, Lcom/google/android/filament/View$x;->e:F

    iget v6, p1, Lcom/google/android/filament/View$x;->f:F

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/View;->nSetVsmShadowOptions(JIZZFF)V

    return-void
.end method

.method public I()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/View;->nGetVisibleRenderableCount(J)I

    move-result v0

    return v0
.end method

.method public J()Lcom/google/android/filament/View$x;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/View;->t:Lcom/google/android/filament/View$x;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/filament/View$x;

    invoke-direct {v0}, Lcom/google/android/filament/View$x;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View;->t:Lcom/google/android/filament/View$x;

    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/View;->t:Lcom/google/android/filament/View$x;

    return-object v0
.end method

.method public K()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/View;->nHasCamera(J)Z

    move-result v0

    return v0
.end method

.method public L(I)Z
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x7L
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nIsChannelDepthClearEnabled(JI)Z

    move-result p1

    return p1
.end method

.method public M()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/View;->nIsFrontFaceWindingInverted(J)Z

    move-result v0

    return v0
.end method

.method public N()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/View;->nIsFrustumCullingEnabled(J)Z

    move-result v0

    return v0
.end method

.method public O()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/View;->nIsPostProcessingEnabled(J)Z

    move-result v0

    return v0
.end method

.method public P()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/View;->nIsScreenSpaceRefractionEnabled(J)Z

    move-result v0

    return v0
.end method

.method public Q()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/View;->nIsShadowingEnabled(J)Z

    move-result v0

    return v0
.end method

.method public R()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/View;->nIsStencilBufferEnabled(J)Z

    move-result v0

    return v0
.end method

.method public S()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/View;->nIsTransparentPickingEnabled(J)Z

    move-result v0

    return v0
.end method

.method public T(IILjava/lang/Object;Lcom/google/android/filament/View$l;)V
    .locals 6
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/filament/View$l;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v5, Lcom/google/android/filament/View$InternalOnPickCallback;

    invoke-direct {v5, p4}, Lcom/google/android/filament/View$InternalOnPickCallback;-><init>(Lcom/google/android/filament/View$l;)V

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/View;->nPick(JIILjava/lang/Object;Lcom/google/android/filament/View$InternalOnPickCallback;)V

    return-void
.end method

.method public U(Lcom/google/android/filament/View$a;)V
    .locals 2
    .param p1    # Lcom/google/android/filament/View$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetAmbientOcclusion(JI)V

    return-void
.end method

.method public V(Lcom/google/android/filament/View$b;)V
    .locals 30
    .param p1    # Lcom/google/android/filament/View$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/google/android/filament/View;->h:Lcom/google/android/filament/View$b;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v2

    iget v4, v1, Lcom/google/android/filament/View$b;->b:F

    iget v5, v1, Lcom/google/android/filament/View$b;->d:F

    iget v6, v1, Lcom/google/android/filament/View$b;->c:F

    iget v7, v1, Lcom/google/android/filament/View$b;->e:F

    iget v8, v1, Lcom/google/android/filament/View$b;->f:F

    iget v9, v1, Lcom/google/android/filament/View$b;->g:F

    iget-object v10, v1, Lcom/google/android/filament/View$b;->h:Lcom/google/android/filament/View$n;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    iget-object v11, v1, Lcom/google/android/filament/View$b;->i:Lcom/google/android/filament/View$n;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    iget-object v12, v1, Lcom/google/android/filament/View$b;->j:Lcom/google/android/filament/View$n;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    iget-boolean v13, v1, Lcom/google/android/filament/View$b;->k:Z

    iget-boolean v14, v1, Lcom/google/android/filament/View$b;->l:Z

    iget v15, v1, Lcom/google/android/filament/View$b;->m:F

    invoke-static/range {v2 .. v15}, Lcom/google/android/filament/View;->nSetAmbientOcclusionOptions(JFFFFFFIIIZZF)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v16

    iget v2, v1, Lcom/google/android/filament/View$b;->n:F

    iget v3, v1, Lcom/google/android/filament/View$b;->o:F

    iget v4, v1, Lcom/google/android/filament/View$b;->p:F

    iget v5, v1, Lcom/google/android/filament/View$b;->q:F

    iget-object v6, v1, Lcom/google/android/filament/View$b;->r:[F

    const/4 v7, 0x0

    aget v22, v6, v7

    const/4 v7, 0x1

    aget v23, v6, v7

    const/4 v7, 0x2

    aget v24, v6, v7

    iget v6, v1, Lcom/google/android/filament/View$b;->s:F

    iget v7, v1, Lcom/google/android/filament/View$b;->t:F

    iget v8, v1, Lcom/google/android/filament/View$b;->u:I

    iget v9, v1, Lcom/google/android/filament/View$b;->v:I

    iget-boolean v1, v1, Lcom/google/android/filament/View$b;->w:Z

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v25, v6

    move/from16 v26, v7

    move/from16 v27, v8

    move/from16 v28, v9

    move/from16 v29, v1

    invoke-static/range {v16 .. v29}, Lcom/google/android/filament/View;->nSetSSCTOptions(JFFFFFFFFFIIZ)V

    return-void
.end method

.method public W(Lcom/google/android/filament/View$c;)V
    .locals 2
    .param p1    # Lcom/google/android/filament/View$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetAntiAliasing(JI)V

    return-void
.end method

.method public X(Lcom/google/android/filament/View$d;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/filament/View;->m:Lcom/google/android/filament/View$d;

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetBlendMode(JI)V

    return-void
.end method

.method public Y(Lcom/google/android/filament/View$e;)V
    .locals 23
    .param p1    # Lcom/google/android/filament/View$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/google/android/filament/View;->i:Lcom/google/android/filament/View$e;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v2

    iget-object v4, v1, Lcom/google/android/filament/View$e;->a:Lcom/google/android/filament/Texture;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    iget v6, v1, Lcom/google/android/filament/View$e;->b:F

    iget v7, v1, Lcom/google/android/filament/View$e;->c:F

    iget v8, v1, Lcom/google/android/filament/View$e;->d:I

    iget v9, v1, Lcom/google/android/filament/View$e;->e:I

    iget-object v10, v1, Lcom/google/android/filament/View$e;->f:Lcom/google/android/filament/View$e$a;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    iget-boolean v11, v1, Lcom/google/android/filament/View$e;->g:Z

    iget-boolean v12, v1, Lcom/google/android/filament/View$e;->h:Z

    iget v13, v1, Lcom/google/android/filament/View$e;->i:F

    iget-boolean v14, v1, Lcom/google/android/filament/View$e;->k:Z

    iget-boolean v15, v1, Lcom/google/android/filament/View$e;->l:Z

    iget v0, v1, Lcom/google/android/filament/View$e;->m:F

    move/from16 v16, v0

    iget v0, v1, Lcom/google/android/filament/View$e;->n:I

    move/from16 v17, v0

    iget v0, v1, Lcom/google/android/filament/View$e;->o:F

    move/from16 v18, v0

    iget v0, v1, Lcom/google/android/filament/View$e;->p:F

    move/from16 v19, v0

    iget v0, v1, Lcom/google/android/filament/View$e;->q:F

    move/from16 v20, v0

    iget v0, v1, Lcom/google/android/filament/View$e;->r:F

    move/from16 v21, v0

    iget v0, v1, Lcom/google/android/filament/View$e;->s:F

    move/from16 v22, v0

    invoke-static/range {v2 .. v22}, Lcom/google/android/filament/View;->nSetBloomOptions(JJFFIIIZZFZZFIFFFFF)V

    return-void
.end method

.method public Z(Lcom/google/android/filament/Camera;)V
    .locals 4
    .param p1    # Lcom/google/android/filament/Camera;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/filament/View;->d:Lcom/google/android/filament/Camera;

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    if-nez p1, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v2

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/View;->nSetCamera(JJ)V

    return-void
.end method

.method public a(Lcom/google/android/filament/Engine;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/View;->nClearFrameHistory(JJ)V

    return-void
.end method

.method public a0(IZ)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x7L
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/View;->nSetChannelDepthClearEnabled(JIZ)V

    return-void
.end method

.method public b()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/View;->a:J

    return-void
.end method

.method public b0(Lcom/google/android/filament/ColorGrading;)V
    .locals 4
    .param p1    # Lcom/google/android/filament/ColorGrading;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/filament/ColorGrading;->x()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/View;->nSetColorGrading(JJ)V

    iput-object p1, p0, Lcom/google/android/filament/View;->p:Lcom/google/android/filament/ColorGrading;

    return-void
.end method

.method public c()Lcom/google/android/filament/View$a;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/android/filament/View;->y:[Lcom/google/android/filament/View$a;

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/View;->nGetAmbientOcclusion(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public c0(Lcom/google/android/filament/View$f;)V
    .locals 12
    .param p1    # Lcom/google/android/filament/View$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/filament/View;->n:Lcom/google/android/filament/View$f;

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    iget v2, p1, Lcom/google/android/filament/View$f;->a:F

    iget v3, p1, Lcom/google/android/filament/View$f;->c:F

    iget-boolean v4, p1, Lcom/google/android/filament/View$f;->d:Z

    iget-object v5, p1, Lcom/google/android/filament/View$f;->e:Lcom/google/android/filament/View$f$a;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    iget-boolean v6, p1, Lcom/google/android/filament/View$f;->f:Z

    iget v7, p1, Lcom/google/android/filament/View$f;->g:I

    iget v8, p1, Lcom/google/android/filament/View$f;->h:I

    iget v9, p1, Lcom/google/android/filament/View$f;->i:I

    iget v10, p1, Lcom/google/android/filament/View$f;->j:I

    iget v11, p1, Lcom/google/android/filament/View$f;->k:I

    invoke-static/range {v0 .. v11}, Lcom/google/android/filament/View;->nSetDepthOfFieldOptions(JFFZIZIIIII)V

    return-void
.end method

.method public d()Lcom/google/android/filament/View$b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/View;->h:Lcom/google/android/filament/View$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/filament/View$b;

    invoke-direct {v0}, Lcom/google/android/filament/View$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View;->h:Lcom/google/android/filament/View$b;

    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/View;->h:Lcom/google/android/filament/View$b;

    return-object v0
.end method

.method public d0(Lcom/google/android/filament/View$g;)V
    .locals 2
    .param p1    # Lcom/google/android/filament/View$g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetDithering(JI)V

    return-void
.end method

.method public e()Lcom/google/android/filament/View$c;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/google/android/filament/View;->w:[Lcom/google/android/filament/View$c;

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/View;->nGetAntiAliasing(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public e0(FF)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/View;->nSetDynamicLightingOptions(JFF)V

    return-void
.end method

.method public f()Lcom/google/android/filament/View$d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/filament/View;->m:Lcom/google/android/filament/View$d;

    return-object v0
.end method

.method public f0(Lcom/google/android/filament/View$h;)V
    .locals 8
    .param p1    # Lcom/google/android/filament/View$h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/filament/View;->f:Lcom/google/android/filament/View$h;

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    iget-boolean v2, p1, Lcom/google/android/filament/View$h;->d:Z

    iget-boolean v3, p1, Lcom/google/android/filament/View$h;->e:Z

    iget v4, p1, Lcom/google/android/filament/View$h;->a:F

    iget v5, p1, Lcom/google/android/filament/View$h;->b:F

    iget v6, p1, Lcom/google/android/filament/View$h;->c:F

    iget-object p1, p1, Lcom/google/android/filament/View$h;->f:Lcom/google/android/filament/View$n;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-static/range {v0 .. v7}, Lcom/google/android/filament/View;->nSetDynamicResolutionOptions(JZZFFFI)V

    return-void
.end method

.method public g()Lcom/google/android/filament/View$e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/View;->i:Lcom/google/android/filament/View$e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/filament/View$e;

    invoke-direct {v0}, Lcom/google/android/filament/View$e;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View;->i:Lcom/google/android/filament/View$e;

    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/View;->i:Lcom/google/android/filament/View$e;

    return-object v0
.end method

.method public g0(Lcom/google/android/filament/View$i;)V
    .locals 19
    .param p1    # Lcom/google/android/filament/View$i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/filament/View$i;->f:[F

    invoke-static {v1}, Lcom/google/android/filament/c;->f([F)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/filament/View;->j:Lcom/google/android/filament/View$i;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v2

    iget v4, v0, Lcom/google/android/filament/View$i;->a:F

    iget v5, v0, Lcom/google/android/filament/View$i;->c:F

    iget v6, v0, Lcom/google/android/filament/View$i;->d:F

    iget v7, v0, Lcom/google/android/filament/View$i;->e:F

    iget v8, v0, Lcom/google/android/filament/View$i;->b:F

    iget-object v9, v0, Lcom/google/android/filament/View$i;->f:[F

    const/4 v10, 0x0

    aget v10, v9, v10

    const/4 v11, 0x1

    aget v11, v9, v11

    const/4 v12, 0x2

    aget v12, v9, v12

    iget v13, v0, Lcom/google/android/filament/View$i;->g:F

    iget v14, v0, Lcom/google/android/filament/View$i;->h:F

    iget v15, v0, Lcom/google/android/filament/View$i;->i:F

    iget-boolean v9, v0, Lcom/google/android/filament/View$i;->j:Z

    iget-object v1, v0, Lcom/google/android/filament/View$i;->k:Lcom/google/android/filament/Texture;

    if-nez v1, :cond_0

    const-wide/16 v16, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v16

    :goto_0
    iget-boolean v0, v0, Lcom/google/android/filament/View$i;->l:Z

    move/from16 v18, v0

    move v0, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move v14, v15

    move v15, v0

    invoke-static/range {v2 .. v18}, Lcom/google/android/filament/View;->nSetFogOptions(JFFFFFFFFFFFZJZ)V

    return-void
.end method

.method public h()Lcom/google/android/filament/Camera;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/View;->d:Lcom/google/android/filament/Camera;

    return-object v0
.end method

.method public h0(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetFrontFaceWindingInverted(JZ)V

    return-void
.end method

.method public i()Lcom/google/android/filament/ColorGrading;
    .locals 1

    iget-object v0, p0, Lcom/google/android/filament/View;->p:Lcom/google/android/filament/ColorGrading;

    return-object v0
.end method

.method public i0(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetFrustumCullingEnabled(JZ)V

    return-void
.end method

.method public j()Lcom/google/android/filament/View$f;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/View;->n:Lcom/google/android/filament/View$f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/filament/View$f;

    invoke-direct {v0}, Lcom/google/android/filament/View$f;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View;->n:Lcom/google/android/filament/View$f;

    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/View;->n:Lcom/google/android/filament/View$f;

    return-object v0
.end method

.method public j0(D)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/View;->nSetGridSize(JD)V

    return-void
.end method

.method public k()Lcom/google/android/filament/View$g;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/google/android/filament/View;->x:[Lcom/google/android/filament/View$g;

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/View;->nGetDithering(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public k0(Lcom/google/android/filament/View$j;)V
    .locals 2
    .param p1    # Lcom/google/android/filament/View$j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/filament/View;->v:Lcom/google/android/filament/View$j;

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    iget-boolean p1, p1, Lcom/google/android/filament/View$j;->a:Z

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetGuardBandOptions(JZ)V

    return-void
.end method

.method public l()Lcom/google/android/filament/View$h;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/View;->f:Lcom/google/android/filament/View$h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/filament/View$h;

    invoke-direct {v0}, Lcom/google/android/filament/View$h;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View;->f:Lcom/google/android/filament/View$h;

    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/View;->f:Lcom/google/android/filament/View$h;

    return-object v0
.end method

.method public l0(IZ)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x7L
        .end annotation
    .end param

    const/4 v0, 0x1

    shl-int p1, v0, p1

    if-eqz p2, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/filament/View;->G0(II)V

    return-void
.end method

.method public m()D
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/View;->nGetEffectiveGridSize(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public m0(I[F)V
    .locals 7
    .param p2    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x4L
        .end annotation
    .end param

    invoke-static {p2}, Lcom/google/android/filament/c;->h([F)V

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    const/4 v2, 0x0

    aget v3, p2, v2

    const/4 v2, 0x1

    aget v4, p2, v2

    const/4 v2, 0x2

    aget v5, p2, v2

    const/4 v2, 0x3

    aget v6, p2, v2

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/View;->nSetMaterialGlobal(JIFFFF)V

    return-void
.end method

.method public n()I
    .locals 2
    .annotation build Lcom/google/android/filament/g;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/View;->nGetFogEntity(J)I

    move-result v0

    return v0
.end method

.method public n0(Lcom/google/android/filament/View$k;)V
    .locals 4
    .param p1    # Lcom/google/android/filament/View$k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/filament/View;->s:Lcom/google/android/filament/View$k;

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    iget-boolean v2, p1, Lcom/google/android/filament/View$k;->a:Z

    iget v3, p1, Lcom/google/android/filament/View$k;->b:I

    iget-boolean p1, p1, Lcom/google/android/filament/View$k;->c:Z

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/filament/View;->nSetMultiSampleAntiAliasingOptions(JZIZ)V

    return-void
.end method

.method public o()Lcom/google/android/filament/View$i;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/View;->j:Lcom/google/android/filament/View$i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/filament/View$i;

    invoke-direct {v0}, Lcom/google/android/filament/View$i;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View;->j:Lcom/google/android/filament/View$i;

    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/View;->j:Lcom/google/android/filament/View$i;

    return-object v0
.end method

.method public o0(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/filament/View;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetName(JLjava/lang/String;)V

    return-void
.end method

.method public p()D
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/View;->nGetGridSize(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public p0(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetPostProcessingEnabled(JZ)V

    return-void
.end method

.method public q()Lcom/google/android/filament/View$j;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/View;->v:Lcom/google/android/filament/View$j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/filament/View$j;

    invoke-direct {v0}, Lcom/google/android/filament/View$j;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View;->v:Lcom/google/android/filament/View$j;

    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/View;->v:Lcom/google/android/filament/View$j;

    return-object v0
.end method

.method public q0(Lcom/google/android/filament/View$o;)V
    .locals 2
    .param p1    # Lcom/google/android/filament/View$o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/filament/View;->g:Lcom/google/android/filament/View$o;

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    iget-object p1, p1, Lcom/google/android/filament/View$o;->a:Lcom/google/android/filament/View$n;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetRenderQuality(JI)V

    return-void
.end method

.method public r([F)[F
    .locals 2
    .param p1    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x2L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        min = 0x2L
    .end annotation

    invoke-static {p1}, Lcom/google/android/filament/c;->d([F)[F

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nGetLastDynamicResolutionScale(J[F)V

    return-object p1
.end method

.method public r0(Lcom/google/android/filament/RenderTarget;)V
    .locals 4
    .param p1    # Lcom/google/android/filament/RenderTarget;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/filament/View;->l:Lcom/google/android/filament/RenderTarget;

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/filament/RenderTarget;->m()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/View;->nSetRenderTarget(JJ)V

    return-void
.end method

.method public s(I[F)[F
    .locals 2
    .param p2    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x4L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        min = 0x4L
    .end annotation

    invoke-static {p2}, Lcom/google/android/filament/c;->g([F)[F

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/View;->nGetMaterialGlobal(JI[F)V

    return-object p2
.end method

.method public s0(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetSampleCount(JI)V

    return-void
.end method

.method public t()Lcom/google/android/filament/View$k;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/View;->s:Lcom/google/android/filament/View$k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/filament/View$k;

    invoke-direct {v0}, Lcom/google/android/filament/View$k;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View;->s:Lcom/google/android/filament/View$k;

    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/View;->s:Lcom/google/android/filament/View$k;

    return-object v0
.end method

.method public t0(Lcom/google/android/filament/Scene;)V
    .locals 4
    .param p1    # Lcom/google/android/filament/Scene;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/filament/View;->c:Lcom/google/android/filament/Scene;

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    if-nez p1, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/filament/Scene;->j()J

    move-result-wide v2

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/View;->nSetScene(JJ)V

    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/View;->b:Ljava/lang/String;

    return-object v0
.end method

.method public u0(Lcom/google/android/filament/View$p;)V
    .locals 7
    .param p1    # Lcom/google/android/filament/View$p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/filament/View;->r:Lcom/google/android/filament/View$p;

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    iget v2, p1, Lcom/google/android/filament/View$p;->a:F

    iget v3, p1, Lcom/google/android/filament/View$p;->b:F

    iget v4, p1, Lcom/google/android/filament/View$p;->c:F

    iget v5, p1, Lcom/google/android/filament/View$p;->d:F

    iget-boolean v6, p1, Lcom/google/android/filament/View$p;->e:Z

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/View;->nSetScreenSpaceReflectionsOptions(JFFFFZ)V

    return-void
.end method

.method public v()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/View;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling method on destroyed View"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public v0(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetScreenSpaceRefractionEnabled(JZ)V

    return-void
.end method

.method public w()Lcom/google/android/filament/View$o;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/View;->g:Lcom/google/android/filament/View$o;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/filament/View$o;

    invoke-direct {v0}, Lcom/google/android/filament/View$o;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/View;->g:Lcom/google/android/filament/View$o;

    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/View;->g:Lcom/google/android/filament/View$o;

    return-object v0
.end method

.method public w0(Lcom/google/android/filament/View$q;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetShadowType(JI)V

    return-void
.end method

.method public x()Lcom/google/android/filament/RenderTarget;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/View;->l:Lcom/google/android/filament/RenderTarget;

    return-object v0
.end method

.method public x0(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetShadowingEnabled(JZ)V

    return-void
.end method

.method public y()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/View;->nGetSampleCount(J)I

    move-result v0

    return v0
.end method

.method public y0(Lcom/google/android/filament/View$r;)V
    .locals 3
    .param p1    # Lcom/google/android/filament/View$r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/filament/View;->u:Lcom/google/android/filament/View$r;

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    iget v2, p1, Lcom/google/android/filament/View$r;->a:F

    iget p1, p1, Lcom/google/android/filament/View$r;->b:F

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/filament/View;->nSetSoftShadowOptions(JFF)V

    return-void
.end method

.method public z()Lcom/google/android/filament/Scene;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/View;->c:Lcom/google/android/filament/Scene;

    return-object v0
.end method

.method public z0(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/View;->v()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/View;->nSetStencilBufferEnabled(JZ)V

    return-void
.end method
