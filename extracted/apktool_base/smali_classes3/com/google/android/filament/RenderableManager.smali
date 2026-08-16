.class public Lcom/google/android/filament/RenderableManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/RenderableManager$b;,
        Lcom/google/android/filament/RenderableManager$a;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "Filament"

.field public static final c:[Lcom/google/android/filament/VertexBuffer$c;


# instance fields
.field public a:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/filament/VertexBuffer$c;->values()[Lcom/google/android/filament/VertexBuffer$c;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/RenderableManager;->c:[Lcom/google/android/filament/VertexBuffer$c;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/filament/RenderableManager;->a:J

    return-void
.end method

.method public static bridge synthetic A(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/RenderableManager;->nBuilderSkinning(JI)V

    return-void
.end method

.method public static bridge synthetic B(JILjava/nio/Buffer;I)I
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/RenderableManager;->nBuilderSkinningBones(JILjava/nio/Buffer;I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic C(JJII)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/filament/RenderableManager;->nBuilderSkinningBuffer(JJII)V

    return-void
.end method

.method public static bridge synthetic D(I)J
    .locals 2

    invoke-static {p0}, Lcom/google/android/filament/RenderableManager;->nCreateBuilder(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic E(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/RenderableManager;->nDestroyBuilder(J)V

    return-void
.end method

.method public static bridge synthetic a(JII)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/RenderableManager;->nBuilderBlendOrder(JII)V

    return-void
.end method

.method public static bridge synthetic b(JFFFFFF)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/google/android/filament/RenderableManager;->nBuilderBoundingBox(JFFFFFF)V

    return-void
.end method

.method public static bridge synthetic c(JJI)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/RenderableManager;->nBuilderBuild(JJI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/RenderableManager;->nBuilderCastShadows(JZ)V

    return-void
.end method

.method public static bridge synthetic e(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/RenderableManager;->nBuilderChannel(JI)V

    return-void
.end method

.method public static bridge synthetic f(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/RenderableManager;->nBuilderCulling(JZ)V

    return-void
.end method

.method public static bridge synthetic g(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/RenderableManager;->nBuilderEnableSkinningBuffers(JZ)V

    return-void
.end method

.method public static bridge synthetic h(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/RenderableManager;->nBuilderFog(JZ)V

    return-void
.end method

.method public static bridge synthetic i(JIIJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/filament/RenderableManager;->nBuilderGeometry(JIIJ)V

    return-void
.end method

.method public static bridge synthetic j(JIIJII)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/google/android/filament/RenderableManager;->nBuilderGeometry(JIIJII)V

    return-void
.end method

.method public static bridge synthetic k(JIIJJ)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/google/android/filament/RenderableManager;->nBuilderGeometry(JIIJJ)V

    return-void
.end method

.method public static bridge synthetic l(JIIJJII)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/google/android/filament/RenderableManager;->nBuilderGeometry(JIIJJII)V

    return-void
.end method

.method public static bridge synthetic m(JIIJJIIII)V
    .locals 0

    invoke-static/range {p0 .. p11}, Lcom/google/android/filament/RenderableManager;->nBuilderGeometry(JIIJJIIII)V

    return-void
.end method

.method public static bridge synthetic n(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/RenderableManager;->nBuilderGeometryType(JI)V

    return-void
.end method

.method private static native nBuilderBlendOrder(JII)V
.end method

.method private static native nBuilderBoundingBox(JFFFFFF)V
.end method

.method private static native nBuilderBuild(JJI)Z
.end method

.method private static native nBuilderCastShadows(JZ)V
.end method

.method private static native nBuilderChannel(JI)V
.end method

.method private static native nBuilderCulling(JZ)V
.end method

.method private static native nBuilderEnableSkinningBuffers(JZ)V
.end method

.method private static native nBuilderFog(JZ)V
.end method

.method private static native nBuilderGeometry(JIIJ)V
.end method

.method private static native nBuilderGeometry(JIIJII)V
.end method

.method private static native nBuilderGeometry(JIIJJ)V
.end method

.method private static native nBuilderGeometry(JIIJJII)V
.end method

.method private static native nBuilderGeometry(JIIJJIIII)V
.end method

.method private static native nBuilderGeometryType(JI)V
.end method

.method private static native nBuilderGlobalBlendOrderEnabled(JIZ)V
.end method

.method private static native nBuilderInstances(JI)V
.end method

.method private static native nBuilderInstancesWithBuffer(JIJ)V
.end method

.method private static native nBuilderLayerMask(JII)V
.end method

.method private static native nBuilderLightChannel(JIZ)V
.end method

.method private static native nBuilderMaterial(JIJ)V
.end method

.method private static native nBuilderMorphing(JI)V
.end method

.method private static native nBuilderMorphingStandard(JJ)V
.end method

.method private static native nBuilderPriority(JI)V
.end method

.method private static native nBuilderReceiveShadows(JZ)V
.end method

.method private static native nBuilderScreenSpaceContactShadows(JZ)V
.end method

.method private static native nBuilderSetMorphTargetBufferOffsetAt(JIII)V
.end method

.method private static native nBuilderSkinning(JI)V
.end method

.method private static native nBuilderSkinningBones(JILjava/nio/Buffer;I)I
.end method

.method private static native nBuilderSkinningBuffer(JJII)V
.end method

.method private static native nClearMaterialInstanceAt(JII)V
.end method

.method private static native nCreateBuilder(I)J
.end method

.method private static native nDestroy(JI)V
.end method

.method private static native nDestroyBuilder(J)V
.end method

.method private static native nGetAxisAlignedBoundingBox(JI[F[F)V
.end method

.method private static native nGetBlendOrderAt(JII)I
.end method

.method private static native nGetChannel(JI)I
.end method

.method private static native nGetEnabledAttributesAt(JII)I
.end method

.method private static native nGetFogEnabled(JI)Z
.end method

.method private static native nGetInstance(JI)I
.end method

.method private static native nGetInstanceCount(JI)I
.end method

.method private static native nGetLightChannel(JII)Z
.end method

.method private static native nGetMaterialInstanceAt(JII)J
.end method

.method private static native nGetMorphTargetCount(JI)I
.end method

.method private static native nGetPrimitiveCount(JI)I
.end method

.method private static native nGetPriority(JI)I
.end method

.method private static native nHasComponent(JI)Z
.end method

.method private static native nIsCullingEnabled(JI)Z
.end method

.method private static native nIsGlobalBlendOrderEnabledAt(JII)Z
.end method

.method private static native nIsScreenSpaceContactShadowsEnabled(JI)Z
.end method

.method private static native nIsShadowCaster(JI)Z
.end method

.method private static native nIsShadowReceiver(JI)Z
.end method

.method private static native nSetAxisAlignedBoundingBox(JIFFFFFF)V
.end method

.method private static native nSetBlendOrderAt(JIII)V
.end method

.method private static native nSetBonesAsMatrices(JILjava/nio/Buffer;III)I
.end method

.method private static native nSetBonesAsQuaternions(JILjava/nio/Buffer;III)I
.end method

.method private static native nSetCastShadows(JIZ)V
.end method

.method private static native nSetChannel(JII)V
.end method

.method private static native nSetCulling(JIZ)V
.end method

.method private static native nSetFogEnabled(JIZ)V
.end method

.method private static native nSetGeometryAt(JIIIJII)V
.end method

.method private static native nSetGeometryAt(JIIIJJII)V
.end method

.method private static native nSetGlobalBlendOrderEnabledAt(JIIZ)V
.end method

.method private static native nSetLayerMask(JIII)V
.end method

.method private static native nSetLightChannel(JIIZ)V
.end method

.method private static native nSetMaterialInstanceAt(JIIJ)V
.end method

.method private static native nSetMorphTargetBufferOffsetAt(JIIIJI)V
.end method

.method private static native nSetMorphWeights(JI[FI)V
.end method

.method private static native nSetPriority(JII)V
.end method

.method private static native nSetReceiveShadows(JIZ)V
.end method

.method private static native nSetScreenSpaceContactShadows(JIZ)V
.end method

.method private static native nSetSkinningBuffer(JIJII)V
.end method

.method public static bridge synthetic o(JIZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/RenderableManager;->nBuilderGlobalBlendOrderEnabled(JIZ)V

    return-void
.end method

.method public static bridge synthetic p(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/RenderableManager;->nBuilderInstances(JI)V

    return-void
.end method

.method public static bridge synthetic q(JIJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/RenderableManager;->nBuilderInstancesWithBuffer(JIJ)V

    return-void
.end method

.method public static bridge synthetic r(JII)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/RenderableManager;->nBuilderLayerMask(JII)V

    return-void
.end method

.method public static bridge synthetic s(JIZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/RenderableManager;->nBuilderLightChannel(JIZ)V

    return-void
.end method

.method public static bridge synthetic t(JIJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/RenderableManager;->nBuilderMaterial(JIJ)V

    return-void
.end method

.method public static bridge synthetic u(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/RenderableManager;->nBuilderMorphing(JI)V

    return-void
.end method

.method public static bridge synthetic v(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/RenderableManager;->nBuilderMorphingStandard(JJ)V

    return-void
.end method

.method public static bridge synthetic w(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/RenderableManager;->nBuilderPriority(JI)V

    return-void
.end method

.method public static bridge synthetic x(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/RenderableManager;->nBuilderReceiveShadows(JZ)V

    return-void
.end method

.method public static bridge synthetic y(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/RenderableManager;->nBuilderScreenSpaceContactShadows(JZ)V

    return-void
.end method

.method public static bridge synthetic z(JIII)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/RenderableManager;->nBuilderSetMorphTargetBufferOffsetAt(JIII)V

    return-void
.end method


# virtual methods
.method public F(II)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->nClearMaterialInstanceAt(JII)V

    return-void
.end method

.method public G(I)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/g;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->nDestroy(JI)V

    return-void
.end method

.method public H(ILcom/google/android/filament/Box;)Lcom/google/android/filament/Box;
    .locals 4
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/Box;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p2, :cond_0

    new-instance p2, Lcom/google/android/filament/Box;

    invoke-direct {p2}, Lcom/google/android/filament/Box;-><init>()V

    :cond_0
    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-virtual {p2}, Lcom/google/android/filament/Box;->a()[F

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/filament/Box;->b()[F

    move-result-object v3

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/android/filament/RenderableManager;->nGetAxisAlignedBoundingBox(JI[F[F)V

    return-object p2
.end method

.method public I(II)I
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->nGetBlendOrderAt(JII)I

    move-result p1

    return p1
.end method

.method public J(I)I
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->nGetChannel(JI)I

    move-result p1

    return p1
.end method

.method public K(II)Ljava/util/Set;
    .locals 3
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Set<",
            "Lcom/google/android/filament/VertexBuffer$c;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->nGetEnabledAttributesAt(JII)I

    move-result p1

    const-class p2, Lcom/google/android/filament/VertexBuffer$c;

    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    sget-object v0, Lcom/google/android/filament/RenderableManager;->c:[Lcom/google/android/filament/VertexBuffer$c;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    shl-int/2addr v2, v1

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    aget-object v2, v0, v1

    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public L(I)Z
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->nGetFogEnabled(JI)Z

    move-result p1

    return p1
.end method

.method public M(I)I
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/g;
        .end annotation
    .end param
    .annotation build Lcom/google/android/filament/h;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->nGetInstance(JI)I

    move-result p1

    return p1
.end method

.method public N(I)I
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->nGetInstanceCount(JI)I

    move-result p1

    return p1
.end method

.method public O(II)Z
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

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->nGetLightChannel(JII)Z

    move-result p1

    return p1
.end method

.method public P(II)Lcom/google/android/filament/MaterialInstance;
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->nGetMaterialInstanceAt(JII)J

    move-result-wide p1

    new-instance v0, Lcom/google/android/filament/MaterialInstance;

    invoke-direct {v0, p1, p2}, Lcom/google/android/filament/MaterialInstance;-><init>(J)V

    return-object v0
.end method

.method public Q(I)I
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->nGetMorphTargetCount(JI)I

    move-result p1

    return p1
.end method

.method public R()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    return-wide v0
.end method

.method public S(I)I
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->nGetPrimitiveCount(JI)I

    move-result p1

    return p1
.end method

.method public T(I)I
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->nGetPriority(JI)I

    move-result p1

    return p1
.end method

.method public U(I)Z
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/g;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->nHasComponent(JI)Z

    move-result p1

    return p1
.end method

.method public V(I)Z
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->nIsCullingEnabled(JI)Z

    move-result p1

    return p1
.end method

.method public W(II)Z
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->nIsGlobalBlendOrderEnabledAt(JII)Z

    move-result p1

    return p1
.end method

.method public X(I)Z
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->nIsScreenSpaceContactShadowsEnabled(JI)Z

    move-result p1

    return p1
.end method

.method public Y(I)Z
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->nIsShadowCaster(JI)Z

    move-result p1

    return p1
.end method

.method public Z(I)Z
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/RenderableManager;->nIsShadowReceiver(JI)Z

    move-result p1

    return p1
.end method

.method public a0(ILcom/google/android/filament/Box;)V
    .locals 11
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/Box;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-virtual {p2}, Lcom/google/android/filament/Box;->a()[F

    move-result-object v2

    const/4 v3, 0x0

    aget v4, v2, v3

    invoke-virtual {p2}, Lcom/google/android/filament/Box;->a()[F

    move-result-object v2

    const/4 v5, 0x1

    aget v6, v2, v5

    invoke-virtual {p2}, Lcom/google/android/filament/Box;->a()[F

    move-result-object v2

    const/4 v7, 0x2

    aget v8, v2, v7

    invoke-virtual {p2}, Lcom/google/android/filament/Box;->b()[F

    move-result-object v2

    aget v9, v2, v3

    invoke-virtual {p2}, Lcom/google/android/filament/Box;->b()[F

    move-result-object v2

    aget v10, v2, v5

    invoke-virtual {p2}, Lcom/google/android/filament/Box;->b()[F

    move-result-object p2

    aget p2, p2, v7

    move v2, p1

    move v3, v4

    move v4, v6

    move v5, v8

    move v6, v9

    move v7, v10

    move v8, p2

    invoke-static/range {v0 .. v8}, Lcom/google/android/filament/RenderableManager;->nSetAxisAlignedBoundingBox(JIFFFFFF)V

    return-void
.end method

.method public b0(III)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
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
            to = 0xffffL
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/RenderableManager;->nSetBlendOrderAt(JIII)V

    return-void
.end method

.method public c0(ILjava/nio/Buffer;II)V
    .locals 7
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param
    .param p2    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    move v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/RenderableManager;->nSetBonesAsMatrices(JILjava/nio/Buffer;III)I

    move-result p1

    if-ltz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p1
.end method

.method public d0(ILjava/nio/Buffer;II)V
    .locals 7
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param
    .param p2    # Ljava/nio/Buffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    move v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/RenderableManager;->nSetBonesAsQuaternions(JILjava/nio/Buffer;III)I

    move-result p1

    if-ltz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw p1
.end method

.method public e0(IZ)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->nSetCastShadows(JIZ)V

    return-void
.end method

.method public f0(II)V
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

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->nSetChannel(JII)V

    return-void
.end method

.method public g0(IZ)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->nSetCulling(JIZ)V

    return-void
.end method

.method public h0(IZ)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->nSetFogEnabled(JIZ)V

    return-void
.end method

.method public i0(IILcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/VertexBuffer;)V
    .locals 9
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # Lcom/google/android/filament/RenderableManager$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/filament/VertexBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-virtual {p3}, Lcom/google/android/filament/RenderableManager$b;->b()I

    move-result v4

    invoke-virtual {p4}, Lcom/google/android/filament/VertexBuffer;->j()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-virtual {p4}, Lcom/google/android/filament/VertexBuffer;->k()I

    move-result v8

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v8}, Lcom/google/android/filament/RenderableManager;->nSetGeometryAt(JIIIJII)V

    return-void
.end method

.method public j0(IILcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/VertexBuffer;II)V
    .locals 9
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # Lcom/google/android/filament/RenderableManager$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/filament/VertexBuffer;
        .annotation build Landroidx/annotation/NonNull;
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

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-virtual {p3}, Lcom/google/android/filament/RenderableManager$b;->b()I

    move-result v4

    invoke-virtual {p4}, Lcom/google/android/filament/VertexBuffer;->j()J

    move-result-wide v5

    move v2, p1

    move v3, p2

    move v7, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lcom/google/android/filament/RenderableManager;->nSetGeometryAt(JIIIJII)V

    return-void
.end method

.method public k0(IILcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/VertexBuffer;Lcom/google/android/filament/IndexBuffer;)V
    .locals 12
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # Lcom/google/android/filament/RenderableManager$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/filament/VertexBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/filament/IndexBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    iget-wide v1, v0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-virtual {p3}, Lcom/google/android/filament/RenderableManager$b;->b()I

    move-result v5

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/filament/VertexBuffer;->j()J

    move-result-wide v6

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/filament/IndexBuffer;->h()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/filament/IndexBuffer;->g()I

    move-result v11

    move v3, p1

    move v4, p2

    invoke-static/range {v1 .. v11}, Lcom/google/android/filament/RenderableManager;->nSetGeometryAt(JIIIJJII)V

    return-void
.end method

.method public l0(IILcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/VertexBuffer;Lcom/google/android/filament/IndexBuffer;II)V
    .locals 12
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # Lcom/google/android/filament/RenderableManager$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/filament/VertexBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/filament/IndexBuffer;
        .annotation build Landroidx/annotation/NonNull;
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

    move-object v0, p0

    iget-wide v1, v0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-virtual {p3}, Lcom/google/android/filament/RenderableManager$b;->b()I

    move-result v5

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/filament/VertexBuffer;->j()J

    move-result-wide v6

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/filament/IndexBuffer;->h()J

    move-result-wide v8

    move v3, p1

    move v4, p2

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v1 .. v11}, Lcom/google/android/filament/RenderableManager;->nSetGeometryAt(JIIIJJII)V

    return-void
.end method

.method public m0(IIZ)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/RenderableManager;->nSetGlobalBlendOrderEnabledAt(JIIZ)V

    return-void
.end method

.method public n0(III)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/RenderableManager;->nSetLayerMask(JIII)V

    return-void
.end method

.method public o0(IIZ)V
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

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/RenderableManager;->nSetLightChannel(JIIZ)V

    return-void
.end method

.method public p0(IILcom/google/android/filament/MaterialInstance;)V
    .locals 8
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # Lcom/google/android/filament/MaterialInstance;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p3}, Lcom/google/android/filament/MaterialInstance;->j()Lcom/google/android/filament/Material;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/Material;->u()I

    move-result v0

    iget-wide v1, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v1, v2, p1, p2}, Lcom/google/android/filament/RenderableManager;->nGetEnabledAttributesAt(JII)I

    move-result v1

    and-int/2addr v1, v0

    if-eq v1, v0, :cond_0

    invoke-static {}, Lcom/google/android/filament/o;->a()Lcom/google/android/filament/o;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaterialInstanceAt() on primitive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " of Renderable at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": declared attributes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/filament/RenderableManager;->K(II)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " do no satisfy required attributes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/filament/MaterialInstance;->j()Lcom/google/android/filament/Material;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/filament/Material;->t()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/o;->k(Ljava/lang/String;)V

    :cond_0
    iget-wide v2, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-virtual {p3}, Lcom/google/android/filament/MaterialInstance;->l()J

    move-result-wide v6

    move v4, p1

    move v5, p2

    invoke-static/range {v2 .. v7}, Lcom/google/android/filament/RenderableManager;->nSetMaterialInstanceAt(JIIJ)V

    return-void
.end method

.method public q0(IIII)V
    .locals 8
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
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

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    const-wide/16 v5, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/google/android/filament/RenderableManager;->nSetMorphTargetBufferOffsetAt(JIIIJI)V

    return-void
.end method

.method public r0(I[FI)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/RenderableManager;->nSetMorphWeights(JI[FI)V

    return-void
.end method

.method public s0(II)V
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

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->nSetPriority(JII)V

    return-void
.end method

.method public t0(IZ)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->nSetReceiveShadows(JIZ)V

    return-void
.end method

.method public u0(IZ)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/RenderableManager;->nSetScreenSpaceContactShadows(JIZ)V

    return-void
.end method

.method public v0(ILcom/google/android/filament/SkinningBuffer;II)V
    .locals 7
    .param p1    # I
        .annotation build Lcom/google/android/filament/h;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/filament/SkinningBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/RenderableManager;->a:J

    invoke-virtual {p2}, Lcom/google/android/filament/SkinningBuffer;->h()J

    move-result-wide v3

    move v2, p1

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/filament/RenderableManager;->nSetSkinningBuffer(JIJII)V

    return-void
.end method
