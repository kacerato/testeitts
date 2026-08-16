.class public Lcom/google/android/filament/Camera;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Camera$b;,
        Lcom/google/android/filament/Camera$a;
    }
.end annotation


# instance fields
.field public a:J

.field public final b:I
    .annotation build Lcom/google/android/filament/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JI)V
    .locals 0
    .param p3    # I
        .annotation build Lcom/google/android/filament/g;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/filament/Camera;->a:J

    iput p3, p0, Lcom/google/android/filament/Camera;->b:I

    return-void
.end method

.method public static b(DD)D
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/Camera;->nComputeEffectiveFocalLength(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static c(DD)D
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/Camera;->nComputeEffectiveFov(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static native nComputeEffectiveFocalLength(DD)D
.end method

.method private static native nComputeEffectiveFov(DD)D
.end method

.method private static native nGetAperture(J)F
.end method

.method private static native nGetCullingFar(J)D
.end method

.method private static native nGetCullingProjectionMatrix(J[D)V
.end method

.method private static native nGetFieldOfViewInDegrees(JI)D
.end method

.method private static native nGetFocalLength(J)D
.end method

.method private static native nGetFocusDistance(J)F
.end method

.method private static native nGetForwardVector(J[F)V
.end method

.method private static native nGetLeftVector(J[F)V
.end method

.method private static native nGetModelMatrix(J[F)V
.end method

.method private static native nGetModelMatrixFp64(J[D)V
.end method

.method private static native nGetNear(J)D
.end method

.method private static native nGetPosition(J[F)V
.end method

.method private static native nGetProjectionMatrix(J[D)V
.end method

.method private static native nGetScaling(J[D)V
.end method

.method private static native nGetSensitivity(J)F
.end method

.method private static native nGetShift(J[D)V
.end method

.method private static native nGetShutterSpeed(J)F
.end method

.method private static native nGetUpVector(J[F)V
.end method

.method private static native nGetViewMatrix(J[F)V
.end method

.method private static native nGetViewMatrixFp64(J[D)V
.end method

.method private static native nLookAt(JDDDDDDDDD)V
.end method

.method private static native nSetCustomEyeProjection(J[DI[DDD)V
.end method

.method private static native nSetCustomProjection(J[D[DDD)V
.end method

.method private static native nSetExposure(JFFF)V
.end method

.method private static native nSetEyeModelMatrix(JI[D)V
.end method

.method private static native nSetFocusDistance(JF)V
.end method

.method private static native nSetLensProjection(JDDDD)V
.end method

.method private static native nSetModelMatrix(J[F)V
.end method

.method private static native nSetModelMatrixFp64(J[D)V
.end method

.method private static native nSetProjection(JIDDDDDD)V
.end method

.method private static native nSetProjectionFov(JDDDDI)V
.end method

.method private static native nSetScaling(JDD)V
.end method

.method private static native nSetShift(JDD)V
.end method


# virtual methods
.method public A([DI[DDD)V
    .locals 9
    .param p1    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x10L
        .end annotation
    .end param

    invoke-static {p3}, Lcom/google/android/filament/c;->n([D)V

    move-object v2, p1

    array-length v0, v2

    mul-int/lit8 v1, p2, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-wide v7, p6

    invoke-static/range {v0 .. v8}, Lcom/google/android/filament/Camera;->nSetCustomEyeProjection(J[DI[DDD)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inProjection array too small for the given count"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public B([DDD)V
    .locals 8
    .param p1    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x10L
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/android/filament/c;->n([D)V

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    move-object v2, p1

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Lcom/google/android/filament/Camera;->nSetCustomProjection(J[D[DDD)V

    return-void
.end method

.method public C([D[DDD)V
    .locals 8
    .param p1    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x10L
        .end annotation
    .end param
    .param p2    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x10L
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/android/filament/c;->n([D)V

    invoke-static {p2}, Lcom/google/android/filament/c;->n([D)V

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-static/range {v0 .. v7}, Lcom/google/android/filament/Camera;->nSetCustomProjection(J[D[DDD)V

    return-void
.end method

.method public D(F)V
    .locals 2

    const/high16 v0, 0x42c80000    # 100.0f

    const/high16 v1, 0x3f800000    # 1.0f

    div-float p1, v1, p1

    mul-float/2addr p1, v0

    const v0, 0x3f99999a    # 1.2f

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/filament/Camera;->E(FFF)V

    return-void
.end method

.method public E(FFF)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/Camera;->nSetExposure(JFFF)V

    return-void
.end method

.method public F(I[D)V
    .locals 2
    .param p2    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x10L
        .end annotation
    .end param

    invoke-static {p2}, Lcom/google/android/filament/c;->n([D)V

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/Camera;->nSetEyeModelMatrix(JI[D)V

    return-void
.end method

.method public G(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Camera;->nSetFocusDistance(JF)V

    return-void
.end method

.method public H(DDDD)V
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move-wide/from16 v8, p7

    invoke-static/range {v0 .. v9}, Lcom/google/android/filament/Camera;->nSetLensProjection(JDDDD)V

    return-void
.end method

.method public I([D)V
    .locals 2
    .param p1    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x10L
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/android/filament/c;->l([D)V

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Camera;->nSetModelMatrixFp64(J[D)V

    return-void
.end method

.method public J([F)V
    .locals 2
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x10L
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/android/filament/c;->p([F)V

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Camera;->nSetModelMatrix(J[F)V

    return-void
.end method

.method public K(DDDDLcom/google/android/filament/Camera$a;)V
    .locals 11
    .param p9    # Lcom/google/android/filament/Camera$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-static/range {v0 .. v10}, Lcom/google/android/filament/Camera;->nSetProjectionFov(JDDDDI)V

    return-void
.end method

.method public L(Lcom/google/android/filament/Camera$b;DDDDDD)V
    .locals 15
    .param p1    # Lcom/google/android/filament/Camera$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    invoke-static/range {v0 .. v14}, Lcom/google/android/filament/Camera;->nSetProjection(JIDDDDDD)V

    return-void
.end method

.method public M(DD)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/Camera;->nSetScaling(JDD)V

    return-void
.end method

.method public N([D)V
    .locals 4
    .param p1    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x4L
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/google/android/filament/c;->c([D)V

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    const/4 v2, 0x1

    aget-wide v2, p1, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/filament/Camera;->M(DD)V

    return-void
.end method

.method public O(DD)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/Camera;->nSetShift(JDD)V

    return-void
.end method

.method public a()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/Camera;->a:J

    return-void
.end method

.method public d()F
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Camera;->nGetAperture(J)F

    move-result v0

    return v0
.end method

.method public e()F
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Camera;->nGetCullingFar(J)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public f([D)[D
    .locals 2
    .param p1    # [D
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x10L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        min = 0x10L
    .end annotation

    invoke-static {p1}, Lcom/google/android/filament/c;->m([D)[D

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Camera;->nGetCullingProjectionMatrix(J[D)V

    return-object p1
.end method

.method public g()I
    .locals 1
    .annotation build Lcom/google/android/filament/g;
    .end annotation

    iget v0, p0, Lcom/google/android/filament/Camera;->b:I

    return v0
.end method

.method public h(Lcom/google/android/filament/Camera$a;)D
    .locals 2
    .param p1    # Lcom/google/android/filament/Camera$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Camera;->nGetFieldOfViewInDegrees(JI)D

    move-result-wide v0

    return-wide v0
.end method

.method public i()D
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Camera;->nGetFocalLength(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public j()F
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Camera;->nGetFocusDistance(J)F

    move-result v0

    return v0
.end method

.method public k([F)[F
    .locals 2
    .param p1    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x3L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        min = 0x3L
    .end annotation

    invoke-static {p1}, Lcom/google/android/filament/c;->e([F)[F

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Camera;->nGetForwardVector(J[F)V

    return-object p1
.end method

.method public l([F)[F
    .locals 2
    .param p1    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x3L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        min = 0x3L
    .end annotation

    invoke-static {p1}, Lcom/google/android/filament/c;->e([F)[F

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Camera;->nGetLeftVector(J[F)V

    return-object p1
.end method

.method public m([D)[D
    .locals 2
    .param p1    # [D
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x10L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        min = 0x10L
    .end annotation

    invoke-static {p1}, Lcom/google/android/filament/c;->k([D)[D

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Camera;->nGetModelMatrixFp64(J[D)V

    return-object p1
.end method

.method public n([F)[F
    .locals 2
    .param p1    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x10L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        min = 0x10L
    .end annotation

    invoke-static {p1}, Lcom/google/android/filament/c;->o([F)[F

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Camera;->nGetModelMatrix(J[F)V

    return-object p1
.end method

.method public o()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/Camera;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling method on destroyed Camera"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public p()F
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Camera;->nGetNear(J)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public q([F)[F
    .locals 2
    .param p1    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x3L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        min = 0x3L
    .end annotation

    invoke-static {p1}, Lcom/google/android/filament/c;->e([F)[F

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Camera;->nGetPosition(J[F)V

    return-object p1
.end method

.method public r([D)[D
    .locals 2
    .param p1    # [D
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x10L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        min = 0x10L
    .end annotation

    invoke-static {p1}, Lcom/google/android/filament/c;->m([D)[D

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Camera;->nGetProjectionMatrix(J[D)V

    return-object p1
.end method

.method public s([D)[D
    .locals 2
    .param p1    # [D
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

    invoke-static {p1}, Lcom/google/android/filament/c;->b([D)[D

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Camera;->nGetScaling(J[D)V

    return-object p1
.end method

.method public t()F
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Camera;->nGetSensitivity(J)F

    move-result v0

    return v0
.end method

.method public u([D)[D
    .locals 2
    .param p1    # [D
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

    invoke-static {p1}, Lcom/google/android/filament/c;->a([D)[D

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Camera;->nGetShift(J[D)V

    return-object p1
.end method

.method public v()F
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Camera;->nGetShutterSpeed(J)F

    move-result v0

    return v0
.end method

.method public w([F)[F
    .locals 2
    .param p1    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x3L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        min = 0x3L
    .end annotation

    invoke-static {p1}, Lcom/google/android/filament/c;->e([F)[F

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Camera;->nGetUpVector(J[F)V

    return-object p1
.end method

.method public x([D)[D
    .locals 2
    .param p1    # [D
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x10L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        min = 0x10L
    .end annotation

    invoke-static {p1}, Lcom/google/android/filament/c;->k([D)[D

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Camera;->nGetViewMatrixFp64(J[D)V

    return-object p1
.end method

.method public y([F)[F
    .locals 2
    .param p1    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x10L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        min = 0x10L
    .end annotation

    invoke-static {p1}, Lcom/google/android/filament/c;->o([F)[F

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Camera;->nGetViewMatrix(J[F)V

    return-object p1
.end method

.method public z(DDDDDDDDD)V
    .locals 20

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    move-wide/from16 v18, p17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/Camera;->o()J

    move-result-wide v0

    invoke-static/range {v0 .. v19}, Lcom/google/android/filament/Camera;->nLookAt(JDDDDDDDDD)V

    return-void
.end method
