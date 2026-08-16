.class public Lcom/google/android/filament/utils/Manipulator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/utils/Manipulator$d;,
        Lcom/google/android/filament/utils/Manipulator$c;,
        Lcom/google/android/filament/utils/Manipulator$a;,
        Lcom/google/android/filament/utils/Manipulator$b;
    }
.end annotation


# static fields
.field public static final b:[Lcom/google/android/filament/utils/Manipulator$d;


# instance fields
.field public final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/filament/utils/Manipulator$d;->values()[Lcom/google/android/filament/utils/Manipulator$d;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/utils/Manipulator;->b:[Lcom/google/android/filament/utils/Manipulator$d;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/google/android/filament/utils/Manipulator;->a:J

    return-void
.end method

.method public synthetic constructor <init>(JLn0/n;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/filament/utils/Manipulator;-><init>(J)V

    return-void
.end method

.method public static bridge synthetic a(JI)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->nBuilderBuild(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic b(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->nBuilderFarPlane(JF)V

    return-void
.end method

.method public static bridge synthetic c(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->nBuilderFlightMaxMoveSpeed(JF)V

    return-void
.end method

.method public static bridge synthetic d(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->nBuilderFlightMoveDamping(JF)V

    return-void
.end method

.method public static bridge synthetic e(JFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/utils/Manipulator;->nBuilderFlightPanSpeed(JFF)V

    return-void
.end method

.method public static bridge synthetic f(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->nBuilderFlightSpeedSteps(JI)V

    return-void
.end method

.method public static bridge synthetic g(JFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/utils/Manipulator;->nBuilderFlightStartOrientation(JFF)V

    return-void
.end method

.method public static bridge synthetic h(JFFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/utils/Manipulator;->nBuilderFlightStartPosition(JFFF)V

    return-void
.end method

.method public static bridge synthetic i(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->nBuilderFovDegrees(JF)V

    return-void
.end method

.method public static bridge synthetic j(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->nBuilderFovDirection(JI)V

    return-void
.end method

.method public static bridge synthetic k(JFFFF)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/filament/utils/Manipulator;->nBuilderGroundPlane(JFFFF)V

    return-void
.end method

.method public static bridge synthetic l(JFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/utils/Manipulator;->nBuilderMapExtent(JFF)V

    return-void
.end method

.method public static bridge synthetic m(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->nBuilderMapMinDistance(JF)V

    return-void
.end method

.method public static bridge synthetic n(JFFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/utils/Manipulator;->nBuilderOrbitHomePosition(JFFF)V

    return-void
.end method

.method private static native nBuilderBuild(JI)J
.end method

.method private static native nBuilderFarPlane(JF)V
.end method

.method private static native nBuilderFlightMaxMoveSpeed(JF)V
.end method

.method private static native nBuilderFlightMoveDamping(JF)V
.end method

.method private static native nBuilderFlightPanSpeed(JFF)V
.end method

.method private static native nBuilderFlightSpeedSteps(JI)V
.end method

.method private static native nBuilderFlightStartOrientation(JFF)V
.end method

.method private static native nBuilderFlightStartPosition(JFFF)V
.end method

.method private static native nBuilderFovDegrees(JF)V
.end method

.method private static native nBuilderFovDirection(JI)V
.end method

.method private static native nBuilderGroundPlane(JFFFF)V
.end method

.method private static native nBuilderMapExtent(JFF)V
.end method

.method private static native nBuilderMapMinDistance(JF)V
.end method

.method private static native nBuilderOrbitHomePosition(JFFF)V
.end method

.method private static native nBuilderOrbitSpeed(JFF)V
.end method

.method private static native nBuilderPanning(JLjava/lang/Boolean;)V
.end method

.method private static native nBuilderTargetPosition(JFFF)V
.end method

.method private static native nBuilderUpVector(JFFF)V
.end method

.method private static native nBuilderViewport(JII)V
.end method

.method private static native nBuilderZoomSpeed(JF)V
.end method

.method private static native nCreateBuilder()J
.end method

.method private static native nDestroyBuilder(J)V
.end method

.method private static native nDestroyManipulator(J)V
.end method

.method private static native nGetCurrentBookmark(J)J
.end method

.method private static native nGetHomeBookmark(J)J
.end method

.method private static native nGetLookAtDouble(J[D[D[D)V
.end method

.method private static native nGetLookAtFloat(J[F[F[F)V
.end method

.method private static native nGetMode(J)I
.end method

.method private static native nGrabBegin(JIIZ)V
.end method

.method private static native nGrabEnd(J)V
.end method

.method private static native nGrabUpdate(JII)V
.end method

.method private static native nJumpToBookmark(JJ)V
.end method

.method private static native nKeyDown(JI)V
.end method

.method private static native nKeyUp(JI)V
.end method

.method private static native nRaycast(JII[F)V
.end method

.method private static native nScroll(JIIF)V
.end method

.method private static native nSetViewport(JII)V
.end method

.method private static native nUpdate(JF)V
.end method

.method public static bridge synthetic o(JFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/utils/Manipulator;->nBuilderOrbitSpeed(JFF)V

    return-void
.end method

.method public static bridge synthetic p(JLjava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->nBuilderPanning(JLjava/lang/Boolean;)V

    return-void
.end method

.method public static bridge synthetic q(JFFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/utils/Manipulator;->nBuilderTargetPosition(JFFF)V

    return-void
.end method

.method public static bridge synthetic r(JFFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/filament/utils/Manipulator;->nBuilderUpVector(JFFF)V

    return-void
.end method

.method public static bridge synthetic s(JII)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/filament/utils/Manipulator;->nBuilderViewport(JII)V

    return-void
.end method

.method public static bridge synthetic t(JF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->nBuilderZoomSpeed(JF)V

    return-void
.end method

.method public static bridge synthetic u()J
    .locals 2

    invoke-static {}, Lcom/google/android/filament/utils/Manipulator;->nCreateBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic v(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/filament/utils/Manipulator;->nDestroyBuilder(J)V

    return-void
.end method


# virtual methods
.method public A()Lcom/google/android/filament/utils/Manipulator$d;
    .locals 3

    sget-object v0, Lcom/google/android/filament/utils/Manipulator;->b:[Lcom/google/android/filament/utils/Manipulator$d;

    iget-wide v1, p0, Lcom/google/android/filament/utils/Manipulator;->a:J

    invoke-static {v1, v2}, Lcom/google/android/filament/utils/Manipulator;->nGetMode(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public B(IIZ)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator;->a:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/utils/Manipulator;->nGrabBegin(JIIZ)V

    return-void
.end method

.method public C()V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/utils/Manipulator;->nGrabEnd(J)V

    return-void
.end method

.method public D(II)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->nGrabUpdate(JII)V

    return-void
.end method

.method public E(Lcom/google/android/filament/utils/Bookmark;)V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator;->a:J

    invoke-virtual {p1}, Lcom/google/android/filament/utils/Bookmark;->a()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/utils/Manipulator;->nJumpToBookmark(JJ)V

    return-void
.end method

.method public F(Lcom/google/android/filament/utils/Manipulator$c;)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator;->a:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/utils/Manipulator;->nKeyDown(JI)V

    return-void
.end method

.method public G(Lcom/google/android/filament/utils/Manipulator$c;)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator;->a:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/utils/Manipulator;->nKeyUp(JI)V

    return-void
.end method

.method public H(II)[F
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/Size;
        min = 0x3L
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget-wide v1, p0, Lcom/google/android/filament/utils/Manipulator;->a:J

    invoke-static {v1, v2, p1, p2, v0}, Lcom/google/android/filament/utils/Manipulator;->nRaycast(JII[F)V

    return-object v0
.end method

.method public I(IIF)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator;->a:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/utils/Manipulator;->nScroll(JIIF)V

    return-void
.end method

.method public J(II)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/filament/utils/Manipulator;->nSetViewport(JII)V

    return-void
.end method

.method public K(F)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/utils/Manipulator;->nUpdate(JF)V

    return-void
.end method

.method public finalize()V
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/utils/Manipulator;->nDestroyManipulator(J)V

    return-void
.end method

.method public w()Lcom/google/android/filament/utils/Bookmark;
    .locals 3

    new-instance v0, Lcom/google/android/filament/utils/Bookmark;

    iget-wide v1, p0, Lcom/google/android/filament/utils/Manipulator;->a:J

    invoke-static {v1, v2}, Lcom/google/android/filament/utils/Manipulator;->nGetCurrentBookmark(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bookmark;-><init>(J)V

    return-object v0
.end method

.method public x()Lcom/google/android/filament/utils/Bookmark;
    .locals 3

    new-instance v0, Lcom/google/android/filament/utils/Bookmark;

    iget-wide v1, p0, Lcom/google/android/filament/utils/Manipulator;->a:J

    invoke-static {v1, v2}, Lcom/google/android/filament/utils/Manipulator;->nGetHomeBookmark(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/filament/utils/Bookmark;-><init>(J)V

    return-object v0
.end method

.method public y([D[D[D)V
    .locals 2
    .param p1    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x3L
        .end annotation
    .end param
    .param p2    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x3L
        .end annotation
    .end param
    .param p3    # [D
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x3L
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator;->a:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/utils/Manipulator;->nGetLookAtDouble(J[D[D[D)V

    return-void
.end method

.method public z([F[F[F)V
    .locals 2
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x3L
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x3L
        .end annotation
    .end param
    .param p3    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x3L
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/google/android/filament/utils/Manipulator;->a:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/filament/utils/Manipulator;->nGetLookAtFloat(J[F[F[F)V

    return-void
.end method
