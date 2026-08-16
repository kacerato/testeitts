.class public final LJAVARuntime/Point2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Vector"
    }
.end annotation


# instance fields
.field public transient vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 8
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    .line 9
    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->m0(LJAVARuntime/Point2;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 12
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>(II)V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    .line 13
    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->m0(LJAVARuntime/Point2;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector2"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, LJAVARuntime/Point2;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/g;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/g;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector2"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->m0(LJAVARuntime/Point2;)V

    :cond_0
    return-void
.end method

.method public static inspectorController()LP8/h;
    .locals 3
    .annotation runtime LH6/g;
    .end annotation

    new-instance v0, LP8/h;

    new-instance v1, LJAVARuntime/Point2$1;

    const-class v2, LJAVARuntime/Point2;

    invoke-direct {v1, v2}, LJAVARuntime/Point2$1;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1}, LP8/h;-><init>(LP8/i;)V

    return-object v0
.end method

.method public static zero()LJAVARuntime/Point2;
    .locals 1

    new-instance v0, LJAVARuntime/Point2;

    invoke-direct {v0}, LJAVARuntime/Point2;-><init>()V

    return-object v0
.end method


# virtual methods
.method public blend(II)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "blend"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "blend"
        }
    .end annotation

    .line 5
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    .line 6
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->l(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    return-void
.end method

.method public blend(III)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "blend"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "blend"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    .line 4
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->m(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    return-void
.end method

.method public blend(LJAVARuntime/Point2;I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "point2",
            "blend"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vector3",
            "blend"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    .line 2
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    iget-object p1, p1, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->n(Lcom/itsmagic/engine/Engines/Engine/Vector/g;F)Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    return-void
.end method

.method public copy()LJAVARuntime/Point2;
    .locals 2

    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    :cond_0
    new-instance v0, LJAVARuntime/Point2;

    iget-object v1, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->o()Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    move-result-object v1

    invoke-direct {v0, v1}, LJAVARuntime/Point2;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/g;)V

    return-object v0
.end method

.method public cross(II)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    .line 4
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->q(II)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public cross(LJAVARuntime/Point2;)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "point2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    .line 2
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    iget-object p1, p1, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->r(Lcom/itsmagic/engine/Engines/Engine/Vector/g;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public distance(LJAVARuntime/Point2;)F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "point2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector3"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    :cond_0
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    iget-object p1, p1, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->s(Lcom/itsmagic/engine/Engines/Engine/Vector/g;)F

    move-result p1

    return p1
.end method

.method public div(I)LJAVARuntime/Point2;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 4
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    .line 5
    :cond_0
    new-instance v0, LJAVARuntime/Point2;

    iget-object v1, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->u(I)Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point2;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/g;)V

    return-object v0
.end method

.method public div(II)LJAVARuntime/Point2;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    .line 3
    :cond_0
    new-instance v0, LJAVARuntime/Point2;

    iget-object v1, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-virtual {v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->v(II)Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point2;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/g;)V

    return-object v0
.end method

.method public div(LJAVARuntime/Point2;)LJAVARuntime/Point2;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    new-instance v0, LJAVARuntime/Point2;

    iget-object v1, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    iget-object p1, p1, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->w(Lcom/itsmagic/engine/Engines/Engine/Vector/g;)Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point2;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/g;)V

    return-object v0
.end method

.method public dot(I)F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 5
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    .line 6
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->B(I)F

    move-result p1

    return p1
.end method

.method public dot(II)F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    .line 4
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->C(II)F

    move-result p1

    return p1
.end method

.method public dot(LJAVARuntime/Point2;)F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "point2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector3"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    .line 2
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    iget-object p1, p1, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->D(Lcom/itsmagic/engine/Engines/Engine/Vector/g;)F

    move-result p1

    return p1
.end method

.method public equals(I)Z
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 5
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    .line 6
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->E(I)Z

    move-result p1

    return p1
.end method

.method public equals(II)Z
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    .line 4
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->F(II)Z

    move-result p1

    return p1
.end method

.method public equals(LJAVARuntime/Point2;)Z
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "point2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    iget-object p1, p1, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->G(Lcom/itsmagic/engine/Engines/Engine/Vector/g;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getX()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    :cond_0
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->b:I

    return v0
.end method

.method public getY()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    :cond_0
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->c:I

    return v0
.end method

.method public length()F
    .locals 1

    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    :cond_0
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->J()F

    move-result v0

    return v0
.end method

.method public lerp(II)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "speed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "speed"
        }
    .end annotation

    .line 5
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    .line 6
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->N(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    return-void
.end method

.method public lerp(III)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "speed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "speed"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    .line 4
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->O(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    return-void
.end method

.method public lerp(LJAVARuntime/Point2;I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "point2",
            "speed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vector3",
            "speed"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    .line 2
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    iget-object p1, p1, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->P(Lcom/itsmagic/engine/Engines/Engine/Vector/g;F)Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    return-void
.end method

.method public lerpInSeconds(II)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "speed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "speed"
        }
    .end annotation

    .line 4
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    .line 5
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-static {}, LK8/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->N(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    return-void
.end method

.method public lerpInSeconds(III)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "speed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "speed"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    .line 3
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-static {}, LK8/d;->b()F

    move-result v1

    mul-float/2addr p3, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->O(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    return-void
.end method

.method public lerpInSeconds(LJAVARuntime/Point2;I)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "point2",
            "speed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vector3",
            "speed"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    iget-object p1, p1, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    int-to-float p2, p2

    invoke-static {}, LK8/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->P(Lcom/itsmagic/engine/Engines/Engine/Vector/g;F)Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    return-void
.end method

.method public mul(I)LJAVARuntime/Point2;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 5
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    .line 6
    :cond_0
    new-instance v0, LJAVARuntime/Point2;

    iget-object v1, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->Q(I)Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point2;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/g;)V

    return-object v0
.end method

.method public mul(II)LJAVARuntime/Point2;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    .line 4
    :cond_0
    new-instance v0, LJAVARuntime/Point2;

    iget-object v1, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-virtual {v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->S(II)Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point2;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/g;)V

    return-object v0
.end method

.method public mul(LJAVARuntime/Point2;)LJAVARuntime/Point2;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    .line 2
    :cond_0
    new-instance v0, LJAVARuntime/Point2;

    iget-object v1, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    iget-object p1, p1, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->T(Lcom/itsmagic/engine/Engines/Engine/Vector/g;)Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point2;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/g;)V

    return-object v0
.end method

.method public normalize()LJAVARuntime/Point2;
    .locals 2

    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    :cond_0
    new-instance v0, LJAVARuntime/Point2;

    iget-object v1, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->o()Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->Y()Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    move-result-object v1

    invoke-direct {v0, v1}, LJAVARuntime/Point2;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/g;)V

    return-object v0
.end method

.method public normalizeLocal()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    :cond_0
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->Z()Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    return-void
.end method

.method public set(I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 7
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    .line 8
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->i0(I)Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    return-void
.end method

.method public set(II)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 5
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    .line 6
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->j0(II)Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    return-void
.end method

.method public set(LJAVARuntime/Point2;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "point2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector3"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    .line 2
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    iget-object p1, p1, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->k0(Lcom/itsmagic/engine/Engines/Engine/Vector/g;)Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    return-void
.end method

.method public set(LJAVARuntime/Vector2;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vector2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector3"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    .line 4
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->l0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    return-void
.end method

.method public setX(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    :cond_0
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->b:I

    return-void
.end method

.method public setY(I)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    :cond_0
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->c:I

    return-void
.end method

.method public sqrDistance(LJAVARuntime/Point2;)F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "point2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector3"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    :cond_0
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    iget-object p1, p1, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->p0(Lcom/itsmagic/engine/Engines/Engine/Vector/g;)F

    move-result p1

    return p1
.end method

.method public sqrLength()F
    .locals 1

    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    :cond_0
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->sqrtLength()F

    move-result v0

    return v0
.end method

.method public sub(I)LJAVARuntime/Point2;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 5
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    .line 6
    :cond_0
    new-instance v0, LJAVARuntime/Point2;

    iget-object v1, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->a0(I)Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point2;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/g;)V

    return-object v0
.end method

.method public sub(II)LJAVARuntime/Point2;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    .line 4
    :cond_0
    new-instance v0, LJAVARuntime/Point2;

    iget-object v1, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-virtual {v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->b0(II)Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point2;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/g;)V

    return-object v0
.end method

.method public sub(LJAVARuntime/Point2;)LJAVARuntime/Point2;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    .line 2
    :cond_0
    new-instance v0, LJAVARuntime/Point2;

    iget-object v1, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    iget-object p1, p1, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->c0(Lcom/itsmagic/engine/Engines/Engine/Vector/g;)Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point2;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/g;)V

    return-object v0
.end method

.method public sum(I)LJAVARuntime/Point2;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 5
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    .line 6
    :cond_0
    new-instance v0, LJAVARuntime/Point2;

    iget-object v1, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->d(I)Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point2;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/g;)V

    return-object v0
.end method

.method public sum(II)LJAVARuntime/Point2;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    .line 4
    :cond_0
    new-instance v0, LJAVARuntime/Point2;

    iget-object v1, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-virtual {v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->e(II)Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point2;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/g;)V

    return-object v0
.end method

.method public sum(LJAVARuntime/Point2;)LJAVARuntime/Point2;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    .line 2
    :cond_0
    new-instance v0, LJAVARuntime/Point2;

    iget-object v1, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    iget-object p1, p1, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->f(Lcom/itsmagic/engine/Engines/Engine/Vector/g;)Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point2;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/g;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/g;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LJAVARuntime/Point2;->vector2:Lcom/itsmagic/engine/Engines/Engine/Vector/g;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/g;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
