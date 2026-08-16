.class public final LJAVARuntime/Point3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Vector"
    }
.end annotation


# instance fields
.field public transient vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 7
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 8
    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d0(LJAVARuntime/Point3;)V

    return-void
.end method

.method public constructor <init>(I)V
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

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 11
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>(I)V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 12
    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d0(LJAVARuntime/Point3;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 15
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>(III)V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 16
    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d0(LJAVARuntime/Point3;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)V
    .locals 0
    .annotation runtime LH6/g;
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d0(LJAVARuntime/Point3;)V

    :cond_0
    return-void
.end method

.method public static inspectorController()LP8/h;
    .locals 3
    .annotation runtime LH6/g;
    .end annotation

    new-instance v0, LP8/h;

    new-instance v1, LJAVARuntime/Point3$1;

    const-class v2, LJAVARuntime/Point3;

    invoke-direct {v1, v2}, LJAVARuntime/Point3$1;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1}, LP8/h;-><init>(LP8/i;)V

    return-object v0
.end method

.method public static zero()LJAVARuntime/Point3;
    .locals 1

    new-instance v0, LJAVARuntime/Point3;

    invoke-direct {v0}, LJAVARuntime/Point3;-><init>()V

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
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 6
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->l(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    return-void
.end method

.method public blend(IIII)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z",
            "blend"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "blend"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 4
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->m(FFFF)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    return-void
.end method

.method public blend(LJAVARuntime/Point3;I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value",
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
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 2
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->n(Lcom/itsmagic/engine/Engines/Engine/Vector/h;F)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    return-void
.end method

.method public copy()LJAVARuntime/Point3;
    .locals 2

    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    :cond_0
    new-instance v0, LJAVARuntime/Point3;

    iget-object v1, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->o()Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object v1

    invoke-direct {v0, v1}, LJAVARuntime/Point3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)V

    return-object v0
.end method

.method public cross(III)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 4
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->q(III)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public cross(LJAVARuntime/Point3;)LJAVARuntime/Vector3;
    .locals 1
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
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 2
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->r(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public distance(LJAVARuntime/Point3;)F
    .locals 1
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
            "vector3"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->s(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)F

    move-result p1

    return p1
.end method

.method public div(I)LJAVARuntime/Point3;
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
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 5
    :cond_0
    new-instance v0, LJAVARuntime/Point3;

    iget-object v1, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->u(I)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)V

    return-object v0
.end method

.method public div(III)LJAVARuntime/Point3;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 3
    :cond_0
    new-instance v0, LJAVARuntime/Point3;

    iget-object v1, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v1, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->v(III)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)V

    return-object v0
.end method

.method public div(LJAVARuntime/Point3;)LJAVARuntime/Point3;
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
    new-instance v0, LJAVARuntime/Point3;

    iget-object v1, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->w(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)V

    return-object v0
.end method

.method public divLocal(F)V
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

    .line 4
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->x(F)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    return-void
.end method

.method public divLocal(FFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->y(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    return-void
.end method

.method public divLocal(LJAVARuntime/Point3;)V
    .locals 1
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

    .line 2
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->z(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    return-void
.end method

.method public divLocal(LJAVARuntime/Vector3;)V
    .locals 1
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
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->A(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    return-void
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
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 6
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->D(I)F

    move-result p1

    return p1
.end method

.method public dot(III)F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 4
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->E(III)F

    move-result p1

    return p1
.end method

.method public dot(LJAVARuntime/Point3;)F
    .locals 1
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
            "vector3"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 2
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->F(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)F

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
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 6
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->G(I)Z

    move-result p1

    return p1
.end method

.method public equals(III)Z
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 4
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->H(III)Z

    move-result p1

    return p1
.end method

.method public equals(LJAVARuntime/Point3;)Z
    .locals 1
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
            "vector"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->I(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)Z

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

    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->J()I

    move-result v0

    return v0
.end method

.method public getY()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->K()I

    move-result v0

    return v0
.end method

.method public getZ()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->L()I

    move-result v0

    return v0
.end method

.method public length()F
    .locals 1

    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->lengthF()F

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
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 6
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->N(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    return-void
.end method

.method public lerp(IIII)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z",
            "speed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "speed"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 4
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->O(FFFF)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    return-void
.end method

.method public lerp(LJAVARuntime/Point3;I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value",
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
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 2
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->P(Lcom/itsmagic/engine/Engines/Engine/Vector/h;F)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

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
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 5
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-static {}, LK8/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->N(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    return-void
.end method

.method public lerpInSeconds(IIII)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z",
            "speed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "speed"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 3
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-static {}, LK8/d;->b()F

    move-result v1

    mul-float/2addr p4, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->O(FFFF)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    return-void
.end method

.method public lerpInSeconds(LJAVARuntime/Point3;I)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value",
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
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    int-to-float p2, p2

    invoke-static {}, LK8/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->P(Lcom/itsmagic/engine/Engines/Engine/Vector/h;F)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    return-void
.end method

.method public mul(I)LJAVARuntime/Point3;
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
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 6
    :cond_0
    new-instance v0, LJAVARuntime/Point3;

    iget-object v1, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->Q(I)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)V

    return-object v0
.end method

.method public mul(III)LJAVARuntime/Point3;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 4
    :cond_0
    new-instance v0, LJAVARuntime/Point3;

    iget-object v1, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v1, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->S(III)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)V

    return-object v0
.end method

.method public mul(LJAVARuntime/Point3;)LJAVARuntime/Point3;
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
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 2
    :cond_0
    new-instance v0, LJAVARuntime/Point3;

    iget-object v1, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->T(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)V

    return-object v0
.end method

.method public mulLocal(F)V
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
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 6
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->U(F)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    return-void
.end method

.method public mulLocal(FFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 4
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->V(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    return-void
.end method

.method public mulLocal(LJAVARuntime/Point3;)V
    .locals 1
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

    .line 2
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->W(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    return-void
.end method

.method public mulLocal(LJAVARuntime/Vector3;)V
    .locals 1
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
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->X(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    return-void
.end method

.method public normalize()LJAVARuntime/Point3;
    .locals 2

    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    :cond_0
    new-instance v0, LJAVARuntime/Point3;

    iget-object v1, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->o()Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->Y()Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object v1

    invoke-direct {v0, v1}, LJAVARuntime/Point3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)V

    return-object v0
.end method

.method public normalizeLocal()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->Z()Lcom/itsmagic/engine/Engines/Engine/Vector/h;

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

    .line 5
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 6
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->a0(I)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    return-void
.end method

.method public set(III)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 4
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->b0(III)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    return-void
.end method

.method public set(LJAVARuntime/Point3;)V
    .locals 1
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
            "vector3"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 2
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->c0(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

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

    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->e0(I)I

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

    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->f0(I)I

    return-void
.end method

.method public setZ(I)V
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

    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->g0(I)I

    return-void
.end method

.method public sqrDistance(LJAVARuntime/Point3;)F
    .locals 1
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
            "vector3"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->h0(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)F

    move-result p1

    return p1
.end method

.method public sqrLength()F
    .locals 1

    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->sqrtLength()F

    move-result v0

    return v0
.end method

.method public sub(I)LJAVARuntime/Point3;
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
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 6
    :cond_0
    new-instance v0, LJAVARuntime/Point3;

    iget-object v1, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->i0(I)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)V

    return-object v0
.end method

.method public sub(III)LJAVARuntime/Point3;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 4
    :cond_0
    new-instance v0, LJAVARuntime/Point3;

    iget-object v1, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v1, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->j0(III)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)V

    return-object v0
.end method

.method public sub(LJAVARuntime/Point3;)LJAVARuntime/Point3;
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
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 2
    :cond_0
    new-instance v0, LJAVARuntime/Point3;

    iget-object v1, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->k0(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)V

    return-object v0
.end method

.method public subLocal(F)V
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
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 8
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->l0(F)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    return-void
.end method

.method public subLocal(FFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 5
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 6
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->m0(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    return-void
.end method

.method public subLocal(LJAVARuntime/Point3;)V
    .locals 1
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

    .line 3
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 4
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->n0(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    return-void
.end method

.method public subLocal(LJAVARuntime/Vector3;)V
    .locals 1
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
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 2
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->o0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    return-void
.end method

.method public sum(I)LJAVARuntime/Point3;
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
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 6
    :cond_0
    new-instance v0, LJAVARuntime/Point3;

    iget-object v1, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->d(I)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)V

    return-object v0
.end method

.method public sum(III)LJAVARuntime/Point3;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 4
    :cond_0
    new-instance v0, LJAVARuntime/Point3;

    iget-object v1, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v1, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->e(III)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)V

    return-object v0
.end method

.method public sum(LJAVARuntime/Point3;)LJAVARuntime/Point3;
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
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 2
    :cond_0
    new-instance v0, LJAVARuntime/Point3;

    iget-object v1, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->f(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)V

    return-object v0
.end method

.method public sumLocal(F)V
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
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 8
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->h(F)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    return-void
.end method

.method public sumLocal(FFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
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
            "z"
        }
    .end annotation

    .line 5
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 6
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->i(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    return-void
.end method

.method public sumLocal(LJAVARuntime/Point3;)V
    .locals 1
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

    .line 3
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 4
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->j(Lcom/itsmagic/engine/Engines/Engine/Vector/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    return-void
.end method

.method public sumLocal(LJAVARuntime/Vector3;)V
    .locals 1
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
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    .line 2
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->k(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->J()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->K()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LJAVARuntime/Point3;->vector:Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->L()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
