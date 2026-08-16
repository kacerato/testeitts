.class public Lcom/google/android/filament/Engine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Engine$c;,
        Lcom/google/android/filament/Engine$b;,
        Lcom/google/android/filament/Engine$a;,
        Lcom/google/android/filament/Engine$e;,
        Lcom/google/android/filament/Engine$d;,
        Lcom/google/android/filament/Engine$f;,
        Lcom/google/android/filament/Engine$g;
    }
.end annotation


# static fields
.field public static final g:[Lcom/google/android/filament/Engine$a;

.field public static final h:[Lcom/google/android/filament/Engine$d;


# instance fields
.field public a:J

.field public b:Lcom/google/android/filament/Engine$c;

.field public final c:Lcom/google/android/filament/TransformManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:Lcom/google/android/filament/LightManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Lcom/google/android/filament/RenderableManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final f:Lcom/google/android/filament/EntityManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/filament/Engine$a;->values()[Lcom/google/android/filament/Engine$a;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/Engine;->g:[Lcom/google/android/filament/Engine$a;

    invoke-static {}, Lcom/google/android/filament/Engine$d;->values()[Lcom/google/android/filament/Engine$d;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/Engine;->h:[Lcom/google/android/filament/Engine$d;

    return-void
.end method

.method public constructor <init>(JLcom/google/android/filament/Engine$c;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/google/android/filament/Engine;->a:J

    .line 4
    new-instance v0, Lcom/google/android/filament/TransformManager;

    invoke-static {p1, p2}, Lcom/google/android/filament/Engine;->nGetTransformManager(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/TransformManager;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/filament/Engine;->c:Lcom/google/android/filament/TransformManager;

    .line 5
    new-instance v0, Lcom/google/android/filament/LightManager;

    invoke-static {p1, p2}, Lcom/google/android/filament/Engine;->nGetLightManager(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/LightManager;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/filament/Engine;->d:Lcom/google/android/filament/LightManager;

    .line 6
    new-instance v0, Lcom/google/android/filament/RenderableManager;

    invoke-static {p1, p2}, Lcom/google/android/filament/Engine;->nGetRenderableManager(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/RenderableManager;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/filament/Engine;->e:Lcom/google/android/filament/RenderableManager;

    .line 7
    new-instance v0, Lcom/google/android/filament/EntityManager;

    invoke-static {p1, p2}, Lcom/google/android/filament/Engine;->nGetEntityManager(J)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/google/android/filament/EntityManager;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/filament/Engine;->f:Lcom/google/android/filament/EntityManager;

    .line 8
    iput-object p3, p0, Lcom/google/android/filament/Engine;->b:Lcom/google/android/filament/Engine$c;

    return-void
.end method

.method public synthetic constructor <init>(JLcom/google/android/filament/Engine$c;Lcom/google/android/filament/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/filament/Engine;-><init>(JLcom/google/android/filament/Engine$c;)V

    return-void
.end method

.method public static bridge synthetic a(J)J
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/Engine;->nBuilderBuild(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic b()J
    .locals 2

    invoke-static {}, Lcom/google/android/filament/Engine;->nCreateBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic c(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/Engine;->nDestroyBuilder(J)V

    return-void
.end method

.method public static bridge synthetic d(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/Engine;->nSetBuilderBackend(JJ)V

    return-void
.end method

.method public static bridge synthetic e(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/Engine;->nSetBuilderColorGrading(JJ)V

    return-void
.end method

.method public static bridge synthetic f(JJJJJJJZIJJJZIZZIJ)V
    .locals 0

    invoke-static/range {p0 .. p28}, Lcom/google/android/filament/Engine;->nSetBuilderConfig(JJJJJJJZIJJJZIZZIJ)V

    return-void
.end method

.method public static bridge synthetic g(JLjava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/Engine;->nSetBuilderFeature(JLjava/lang/String;Z)V

    return-void
.end method

.method public static native getSteadyClockTimeNano()J
.end method

.method public static bridge synthetic h(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/Engine;->nSetBuilderFeatureLevel(JI)V

    return-void
.end method

.method public static bridge synthetic i(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/Engine;->nSetBuilderPaused(JZ)V

    return-void
.end method

.method public static bridge synthetic j(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/Engine;->nSetBuilderSharedContext(JJ)V

    return-void
.end method

.method public static k(Z)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Object couldn\'t be destroyed (double destroy()?)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static n()Lcom/google/android/filament/Engine;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/filament/Engine$b;

    invoke-direct {v0}, Lcom/google/android/filament/Engine$b;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/filament/Engine$b;->b()Lcom/google/android/filament/Engine;

    move-result-object v0

    return-object v0
.end method

.method private static native nBuilderBuild(J)J
.end method

.method private static native nCompile(JIJJIILjava/lang/Object;Ljava/lang/Runnable;)V
.end method

.method private static native nCreateBuilder()J
.end method

.method private static native nCreateCamera(JI)J
.end method

.method private static native nCreateFence(J)J
.end method

.method private static native nCreateRenderer(J)J
.end method

.method private static native nCreateScene(J)J
.end method

.method private static native nCreateSwapChain(JLjava/lang/Object;J)J
.end method

.method private static native nCreateSwapChainFromRawPointer(JJJ)J
.end method

.method private static native nCreateSwapChainHeadless(JIIJ)J
.end method

.method private static native nCreateView(J)J
.end method

.method private static native nDestroyBuilder(J)V
.end method

.method private static native nDestroyCameraComponent(JI)V
.end method

.method private static native nDestroyColorGrading(JJ)Z
.end method

.method private static native nDestroyEngine(J)V
.end method

.method private static native nDestroyEntity(JI)V
.end method

.method private static native nDestroyFence(JJ)Z
.end method

.method private static native nDestroyIndexBuffer(JJ)Z
.end method

.method private static native nDestroyIndirectLight(JJ)Z
.end method

.method private static native nDestroyInstanceBuffer(JJ)Z
.end method

.method private static native nDestroyMaterial(JJ)Z
.end method

.method private static native nDestroyMaterialInstance(JJ)Z
.end method

.method private static native nDestroyMorphTargetBuffer(JJ)Z
.end method

.method private static native nDestroyRenderTarget(JJ)Z
.end method

.method private static native nDestroyRenderer(JJ)Z
.end method

.method private static native nDestroyScene(JJ)Z
.end method

.method private static native nDestroySkinningBuffer(JJ)Z
.end method

.method private static native nDestroySkybox(JJ)Z
.end method

.method private static native nDestroyStream(JJ)Z
.end method

.method private static native nDestroySwapChain(JJ)Z
.end method

.method private static native nDestroyTexture(JJ)Z
.end method

.method private static native nDestroyVertexBuffer(JJ)Z
.end method

.method private static native nDestroyView(JJ)Z
.end method

.method private static native nFlush(J)V
.end method

.method private static native nFlushAndWait(JJ)Z
.end method

.method private static native nGetActiveFeatureLevel(J)I
.end method

.method private static native nGetBackend(J)J
.end method

.method private static native nGetCameraComponent(JI)J
.end method

.method private static native nGetEntityManager(J)J
.end method

.method private static native nGetFeatureFlag(JLjava/lang/String;)Z
.end method

.method private static native nGetJobSystem(J)J
.end method

.method private static native nGetLightManager(J)J
.end method

.method private static native nGetMaxAutomaticInstances(J)I
.end method

.method private static native nGetMaxStereoscopicEyes(J)J
.end method

.method private static native nGetRenderableManager(J)J
.end method

.method private static native nGetSupportedFeatureLevel(J)I
.end method

.method private static native nGetTransformManager(J)J
.end method

.method private static native nHasFeatureFlag(JLjava/lang/String;)Z
.end method

.method private static native nHasUnrecoverableFailure(J)Z
.end method

.method private static native nIsAutomaticInstancingEnabled(J)Z
.end method

.method private static native nIsPaused(J)Z
.end method

.method private static native nIsValidColorGrading(JJ)Z
.end method

.method private static native nIsValidExpensiveMaterialInstance(JJ)Z
.end method

.method private static native nIsValidFence(JJ)Z
.end method

.method private static native nIsValidIndexBuffer(JJ)Z
.end method

.method private static native nIsValidIndirectLight(JJ)Z
.end method

.method private static native nIsValidInstanceBuffer(JJ)Z
.end method

.method private static native nIsValidMaterial(JJ)Z
.end method

.method private static native nIsValidMaterialInstance(JJJ)Z
.end method

.method private static native nIsValidMorphTargetBuffer(JJ)Z
.end method

.method private static native nIsValidRenderTarget(JJ)Z
.end method

.method private static native nIsValidRenderer(JJ)Z
.end method

.method private static native nIsValidScene(JJ)Z
.end method

.method private static native nIsValidSkinningBuffer(JJ)Z
.end method

.method private static native nIsValidSkybox(JJ)Z
.end method

.method private static native nIsValidStream(JJ)Z
.end method

.method private static native nIsValidSwapChain(JJ)Z
.end method

.method private static native nIsValidTexture(JJ)Z
.end method

.method private static native nIsValidVertexBuffer(JJ)Z
.end method

.method private static native nIsValidView(JJ)Z
.end method

.method private static native nSetActiveFeatureLevel(JI)I
.end method

.method private static native nSetAutomaticInstancingEnabled(JZ)V
.end method

.method private static native nSetBuilderBackend(JJ)V
.end method

.method private static native nSetBuilderColorGrading(JJ)V
.end method

.method private static native nSetBuilderConfig(JJJJJJJZIJJJZIZZIJ)V
.end method

.method private static native nSetBuilderFeature(JLjava/lang/String;Z)V
.end method

.method private static native nSetBuilderFeatureLevel(JI)V
.end method

.method private static native nSetBuilderPaused(JZ)V
.end method

.method private static native nSetBuilderSharedContext(JJ)V
.end method

.method private static native nSetFeatureFlag(JLjava/lang/String;Z)Z
.end method

.method private static native nSetPaused(JZ)V
.end method

.method private static native nUnprotected(J)V
.end method

.method public static o(Lcom/google/android/filament/Engine$a;)Lcom/google/android/filament/Engine;
    .locals 1
    .param p0    # Lcom/google/android/filament/Engine$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/filament/Engine$b;

    invoke-direct {v0}, Lcom/google/android/filament/Engine$b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/filament/Engine$b;->a(Lcom/google/android/filament/Engine$a;)Lcom/google/android/filament/Engine$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/filament/Engine$b;->b()Lcom/google/android/filament/Engine;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/lang/Object;)Lcom/google/android/filament/Engine;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/filament/Engine$b;

    invoke-direct {v0}, Lcom/google/android/filament/Engine$b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/filament/Engine$b;->h(Ljava/lang/Object;)Lcom/google/android/filament/Engine$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/filament/Engine$b;->b()Lcom/google/android/filament/Engine;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A(I)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/g;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Engine;->nDestroyCameraComponent(JI)V

    return-void
.end method

.method public A0(Lcom/google/android/filament/Scene;)Z
    .locals 4
    .param p1    # Lcom/google/android/filament/Scene;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Scene;->j()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nIsValidScene(JJ)Z

    move-result p1

    return p1
.end method

.method public B(Lcom/google/android/filament/ColorGrading;)V
    .locals 4
    .param p1    # Lcom/google/android/filament/ColorGrading;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/ColorGrading;->x()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyColorGrading(JJ)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/filament/Engine;->k(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/ColorGrading;->w()V

    return-void
.end method

.method public B0(Lcom/google/android/filament/SkinningBuffer;)Z
    .locals 4
    .param p1    # Lcom/google/android/filament/SkinningBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/SkinningBuffer;->h()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nIsValidSkinningBuffer(JJ)Z

    move-result p1

    return p1
.end method

.method public C(I)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/g;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Engine;->nDestroyEntity(JI)V

    return-void
.end method

.method public C0(Lcom/google/android/filament/Skybox;)Z
    .locals 4
    .param p1    # Lcom/google/android/filament/Skybox;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Skybox;->l()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nIsValidSkybox(JJ)Z

    move-result p1

    return p1
.end method

.method public D(Lcom/google/android/filament/Fence;)V
    .locals 4
    .param p1    # Lcom/google/android/filament/Fence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Fence;->b()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyFence(JJ)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/filament/Engine;->k(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/Fence;->a()V

    return-void
.end method

.method public D0(Lcom/google/android/filament/Stream;)Z
    .locals 4
    .param p1    # Lcom/google/android/filament/Stream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Stream;->h()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nIsValidStream(JJ)Z

    move-result p1

    return p1
.end method

.method public E(Lcom/google/android/filament/IndexBuffer;)V
    .locals 4
    .param p1    # Lcom/google/android/filament/IndexBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/IndexBuffer;->h()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyIndexBuffer(JJ)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/filament/Engine;->k(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/IndexBuffer;->f()V

    return-void
.end method

.method public E0(Lcom/google/android/filament/SwapChain;)Z
    .locals 4
    .param p1    # Lcom/google/android/filament/SwapChain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/SwapChain;->b()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nIsValidSwapChain(JJ)Z

    move-result p1

    return p1
.end method

.method public F(Lcom/google/android/filament/IndirectLight;)V
    .locals 4
    .param p1    # Lcom/google/android/filament/IndirectLight;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/IndirectLight;->q()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyIndirectLight(JJ)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/filament/Engine;->k(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/IndirectLight;->j()V

    return-void
.end method

.method public F0(Lcom/google/android/filament/Texture;)Z
    .locals 4
    .param p1    # Lcom/google/android/filament/Texture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nIsValidTexture(JJ)Z

    move-result p1

    return p1
.end method

.method public G(Lcom/google/android/filament/InstanceBuffer;)V
    .locals 4
    .param p1    # Lcom/google/android/filament/InstanceBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/InstanceBuffer;->h()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyInstanceBuffer(JJ)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/filament/Engine;->k(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/InstanceBuffer;->f()V

    return-void
.end method

.method public G0(Lcom/google/android/filament/VertexBuffer;)Z
    .locals 4
    .param p1    # Lcom/google/android/filament/VertexBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/VertexBuffer;->j()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nIsValidVertexBuffer(JJ)Z

    move-result p1

    return p1
.end method

.method public H(Lcom/google/android/filament/Material;)V
    .locals 4
    .param p1    # Lcom/google/android/filament/Material;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Material;->m()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyMaterial(JJ)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/filament/Engine;->k(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/Material;->b()V

    return-void
.end method

.method public H0(Lcom/google/android/filament/View;)Z
    .locals 4
    .param p1    # Lcom/google/android/filament/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/View;->v()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nIsValidView(JJ)Z

    move-result p1

    return p1
.end method

.method public I(Lcom/google/android/filament/MaterialInstance;)V
    .locals 4
    .param p1    # Lcom/google/android/filament/MaterialInstance;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyMaterialInstance(JJ)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/filament/Engine;->k(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/MaterialInstance;->a()V

    return-void
.end method

.method public I0(Lcom/google/android/filament/Engine$d;)Lcom/google/android/filament/Engine$d;
    .locals 3
    .param p1    # Lcom/google/android/filament/Engine$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/google/android/filament/Engine;->h:[Lcom/google/android/filament/Engine$d;

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v1, v2, p1}, Lcom/google/android/filament/Engine;->nSetActiveFeatureLevel(JI)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public J(Lcom/google/android/filament/MorphTargetBuffer;)V
    .locals 4
    .param p1    # Lcom/google/android/filament/MorphTargetBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/MorphTargetBuffer;->k()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyMorphTargetBuffer(JJ)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/filament/Engine;->k(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/MorphTargetBuffer;->i()V

    return-void
.end method

.method public J0(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Engine;->nSetAutomaticInstancingEnabled(JZ)V

    return-void
.end method

.method public K(Lcom/google/android/filament/RenderTarget;)V
    .locals 4
    .param p1    # Lcom/google/android/filament/RenderTarget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/RenderTarget;->m()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyRenderTarget(JJ)Z

    invoke-virtual {p1}, Lcom/google/android/filament/RenderTarget;->i()V

    return-void
.end method

.method public K0(Ljava/lang/String;Z)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/Engine;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/Engine;->nSetFeatureFlag(JLjava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public L(Lcom/google/android/filament/Renderer;)V
    .locals 4
    .param p1    # Lcom/google/android/filament/Renderer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Renderer;->j()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyRenderer(JJ)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/filament/Engine;->k(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/Renderer;->b()V

    return-void
.end method

.method public L0(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Engine;->nSetPaused(JZ)V

    return-void
.end method

.method public M(Lcom/google/android/filament/Scene;)V
    .locals 4
    .param p1    # Lcom/google/android/filament/Scene;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Scene;->j()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyScene(JJ)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/filament/Engine;->k(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/Scene;->c()V

    return-void
.end method

.method public M0()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Engine;->nUnprotected(J)V

    return-void
.end method

.method public N(Lcom/google/android/filament/SkinningBuffer;)V
    .locals 4
    .param p1    # Lcom/google/android/filament/SkinningBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/SkinningBuffer;->h()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroySkinningBuffer(JJ)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/filament/Engine;->k(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/SkinningBuffer;->f()V

    return-void
.end method

.method public O(Lcom/google/android/filament/Skybox;)V
    .locals 4
    .param p1    # Lcom/google/android/filament/Skybox;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Skybox;->l()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroySkybox(JJ)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/filament/Engine;->k(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/Skybox;->i()V

    return-void
.end method

.method public P(Lcom/google/android/filament/Stream;)V
    .locals 4
    .param p1    # Lcom/google/android/filament/Stream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Stream;->h()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyStream(JJ)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/filament/Engine;->k(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/Stream;->g()V

    return-void
.end method

.method public Q(Lcom/google/android/filament/SwapChain;)V
    .locals 4
    .param p1    # Lcom/google/android/filament/SwapChain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/SwapChain;->b()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroySwapChain(JJ)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/filament/Engine;->k(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/SwapChain;->a()V

    return-void
.end method

.method public R(Lcom/google/android/filament/Texture;)V
    .locals 4
    .param p1    # Lcom/google/android/filament/Texture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyTexture(JJ)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/filament/Engine;->k(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/Texture;->o()V

    return-void
.end method

.method public S(Lcom/google/android/filament/VertexBuffer;)V
    .locals 4
    .param p1    # Lcom/google/android/filament/VertexBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/VertexBuffer;->j()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyVertexBuffer(JJ)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/filament/Engine;->k(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/VertexBuffer;->i()V

    return-void
.end method

.method public T(Lcom/google/android/filament/View;)V
    .locals 4
    .param p1    # Lcom/google/android/filament/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/View;->v()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nDestroyView(JJ)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/filament/Engine;->k(Z)V

    invoke-virtual {p1}, Lcom/google/android/filament/View;->b()V

    return-void
.end method

.method public U()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->j0()Lcom/google/android/filament/TransformManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/TransformManager;->r(Z)V

    return-void
.end method

.method public V()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Engine;->nFlush(J)V

    return-void
.end method

.method public W()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/filament/Engine;->X(J)Z

    return-void
.end method

.method public X(J)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/Engine;->nFlushAndWait(JJ)Z

    move-result p1

    return p1
.end method

.method public Y()Lcom/google/android/filament/Engine$d;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/google/android/filament/Engine;->h:[Lcom/google/android/filament/Engine$d;

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/Engine;->nGetActiveFeatureLevel(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public Z()Lcom/google/android/filament/Engine$a;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/google/android/filament/Engine;->g:[Lcom/google/android/filament/Engine$a;

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/Engine;->nGetBackend(J)J

    move-result-wide v1

    long-to-int v1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public a0(I)Lcom/google/android/filament/Camera;
    .locals 4
    .param p1    # I
        .annotation build Lcom/google/android/filament/g;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Engine;->nGetCameraComponent(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v2, Lcom/google/android/filament/Camera;

    invoke-direct {v2, v0, v1, p1}, Lcom/google/android/filament/Camera;-><init>(JI)V

    return-object v2
.end method

.method public b0()Lcom/google/android/filament/Engine$c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/Engine;->b:Lcom/google/android/filament/Engine$c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/filament/Engine$c;

    invoke-direct {v0}, Lcom/google/android/filament/Engine$c;-><init>()V

    iput-object v0, p0, Lcom/google/android/filament/Engine;->b:Lcom/google/android/filament/Engine$c;

    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/Engine;->b:Lcom/google/android/filament/Engine$c;

    return-object v0
.end method

.method public c0()Lcom/google/android/filament/EntityManager;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/Engine;->f:Lcom/google/android/filament/EntityManager;

    return-object v0
.end method

.method public d0(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/android/filament/Engine;->k0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/filament/Engine;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Engine;->nGetFeatureFlag(JLjava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The feature flag \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" doesn\'t exist"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e0()Lcom/google/android/filament/LightManager;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/Engine;->d:Lcom/google/android/filament/LightManager;

    return-object v0
.end method

.method public f0()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Engine;->nGetMaxAutomaticInstances(J)I

    move-result v0

    return v0
.end method

.method public g0()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Engine;->nGetMaxStereoscopicEyes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNativeJobSystem()J
    .locals 4
    .annotation build Lcom/google/android/filament/proguard/UsedByReflection;
        value = "MaterialBuilder.java"
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/Engine;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Engine;->nGetJobSystem(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling method on destroyed Engine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNativeObject()J
    .locals 4
    .annotation build Lcom/google/android/filament/proguard/UsedByReflection;
        value = "TextureHelper.java"
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/Engine;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling method on destroyed Engine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h0()Lcom/google/android/filament/RenderableManager;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/Engine;->e:Lcom/google/android/filament/RenderableManager;

    return-object v0
.end method

.method public i0()Lcom/google/android/filament/Engine$d;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/google/android/filament/Engine;->h:[Lcom/google/android/filament/Engine$d;

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/filament/Engine;->nGetSupportedFeatureLevel(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public j0()Lcom/google/android/filament/TransformManager;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/Engine;->c:Lcom/google/android/filament/TransformManager;

    return-object v0
.end method

.method public k0(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/Engine;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Engine;->nHasFeatureFlag(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final l()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/Engine;->a:J

    return-void
.end method

.method public l0()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Engine;->nHasUnrecoverableFailure(J)Z

    move-result v0

    return v0
.end method

.method public m(Lcom/google/android/filament/Material$c;Lcom/google/android/filament/Material;Lcom/google/android/filament/View;Lcom/google/android/filament/Engine$e;Lcom/google/android/filament/Engine$e;Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 11
    .param p1    # Lcom/google/android/filament/Material$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/Material;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/filament/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/filament/Engine$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/filament/Engine$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/filament/Material;->m()J

    move-result-wide v3

    invoke-virtual {p3}, Lcom/google/android/filament/View;->v()J

    move-result-wide v5

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v0 .. v10}, Lcom/google/android/filament/Engine;->nCompile(JIJJIILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void
.end method

.method public m0()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Engine;->nIsAutomaticInstancingEnabled(J)Z

    move-result v0

    return v0
.end method

.method public n0()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Engine;->nIsPaused(J)Z

    move-result v0

    return v0
.end method

.method public o0()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/Engine;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p0(Lcom/google/android/filament/ColorGrading;)Z
    .locals 4
    .param p1    # Lcom/google/android/filament/ColorGrading;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/ColorGrading;->x()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nIsValidColorGrading(JJ)Z

    move-result p1

    return p1
.end method

.method public q(I)Lcom/google/android/filament/Camera;
    .locals 4
    .param p1    # I
        .annotation build Lcom/google/android/filament/g;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Engine;->nCreateCamera(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/android/filament/Camera;

    invoke-direct {v2, v0, v1, p1}, Lcom/google/android/filament/Camera;-><init>(JI)V

    return-object v2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t create Camera"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q0(Lcom/google/android/filament/MaterialInstance;)Z
    .locals 4
    .param p1    # Lcom/google/android/filament/MaterialInstance;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nIsValidExpensiveMaterialInstance(JJ)Z

    move-result p1

    return p1
.end method

.method public r()Lcom/google/android/filament/Fence;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Engine;->nCreateFence(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/android/filament/Fence;

    invoke-direct {v2, v0, v1}, Lcom/google/android/filament/Fence;-><init>(J)V

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Couldn\'t create Fence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public r0(Lcom/google/android/filament/Fence;)Z
    .locals 4
    .param p1    # Lcom/google/android/filament/Fence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Fence;->b()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nIsValidFence(JJ)Z

    move-result p1

    return p1
.end method

.method public s()Lcom/google/android/filament/Renderer;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Engine;->nCreateRenderer(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/android/filament/Renderer;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/filament/Renderer;-><init>(Lcom/google/android/filament/Engine;J)V

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Couldn\'t create Renderer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public s0(Lcom/google/android/filament/IndexBuffer;)Z
    .locals 4
    .param p1    # Lcom/google/android/filament/IndexBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/IndexBuffer;->h()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nIsValidIndexBuffer(JJ)Z

    move-result p1

    return p1
.end method

.method public t()Lcom/google/android/filament/Scene;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Engine;->nCreateScene(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/android/filament/Scene;

    invoke-direct {v2, v0, v1}, Lcom/google/android/filament/Scene;-><init>(J)V

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Couldn\'t create Scene"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public t0(Lcom/google/android/filament/IndirectLight;)Z
    .locals 4
    .param p1    # Lcom/google/android/filament/IndirectLight;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/IndirectLight;->q()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nIsValidIndirectLight(JJ)Z

    move-result p1

    return p1
.end method

.method public u(IIJ)Lcom/google/android/filament/SwapChain;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/Engine;->nCreateSwapChainHeadless(JIIJ)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-eqz p3, :cond_0

    new-instance p3, Lcom/google/android/filament/SwapChain;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p2, p4}, Lcom/google/android/filament/SwapChain;-><init>(JLjava/lang/Object;)V

    return-object p3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Couldn\'t create SwapChain"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u0(Lcom/google/android/filament/InstanceBuffer;)Z
    .locals 4
    .param p1    # Lcom/google/android/filament/InstanceBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/InstanceBuffer;->h()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nIsValidInstanceBuffer(JJ)Z

    move-result p1

    return p1
.end method

.method public v(Ljava/lang/Object;)Lcom/google/android/filament/SwapChain;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/filament/Engine;->w(Ljava/lang/Object;J)Lcom/google/android/filament/SwapChain;

    move-result-object p1

    return-object p1
.end method

.method public v0(Lcom/google/android/filament/Material;)Z
    .locals 4
    .param p1    # Lcom/google/android/filament/Material;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Material;->m()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nIsValidMaterial(JJ)Z

    move-result p1

    return p1
.end method

.method public w(Ljava/lang/Object;J)Lcom/google/android/filament/SwapChain;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/google/android/filament/o;->a()Lcom/google/android/filament/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/filament/o;->j(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/Engine;->nCreateSwapChain(JLjava/lang/Object;J)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/filament/SwapChain;

    invoke-direct {v0, p2, p3, p1}, Lcom/google/android/filament/SwapChain;-><init>(JLjava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Couldn\'t create SwapChain"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid surface "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public w0(Lcom/google/android/filament/Material;Lcom/google/android/filament/MaterialInstance;)Z
    .locals 6
    .param p1    # Lcom/google/android/filament/Material;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Material;->m()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/Engine;->nIsValidMaterialInstance(JJJ)Z

    move-result p1

    return p1
.end method

.method public x(Lcom/google/android/filament/NativeSurface;J)Lcom/google/android/filament/SwapChain;
    .locals 6
    .param p1    # Lcom/google/android/filament/NativeSurface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/NativeSurface;->c()J

    move-result-wide v2

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/Engine;->nCreateSwapChainFromRawPointer(JJJ)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/filament/SwapChain;

    invoke-direct {v0, p2, p3, p1}, Lcom/google/android/filament/SwapChain;-><init>(JLjava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Couldn\'t create SwapChain"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public x0(Lcom/google/android/filament/MorphTargetBuffer;)Z
    .locals 4
    .param p1    # Lcom/google/android/filament/MorphTargetBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/MorphTargetBuffer;->k()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nIsValidMorphTargetBuffer(JJ)Z

    move-result p1

    return p1
.end method

.method public y()Lcom/google/android/filament/View;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Engine;->nCreateView(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/android/filament/View;

    invoke-direct {v2, v0, v1}, Lcom/google/android/filament/View;-><init>(J)V

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Couldn\'t create View"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public y0(Lcom/google/android/filament/RenderTarget;)Z
    .locals 4
    .param p1    # Lcom/google/android/filament/RenderTarget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/RenderTarget;->m()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nIsValidRenderTarget(JJ)Z

    move-result p1

    return p1
.end method

.method public z()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Engine;->nDestroyEngine(J)V

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->l()V

    return-void
.end method

.method public z0(Lcom/google/android/filament/Renderer;)Z
    .locals 4
    .param p1    # Lcom/google/android/filament/Renderer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Renderer;->j()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Engine;->nIsValidRenderer(JJ)Z

    move-result p1

    return p1
.end method
