.class public final LJAVARuntime/Quaternion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/MulOperator;
.implements LJAVARuntime/MulEqualOperator;
.implements LJAVARuntime/EqualsComparator;
.implements LJAVARuntime/JsonSerializer;


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Vector"
    }
.end annotation


# instance fields
.field public transient instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
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
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    .line 8
    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->F0(LJAVARuntime/Quaternion;)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "w",
            "x",
            "y",
            "z"
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
            "w",
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 11
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>(FFFF)V

    iput-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    .line 12
    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->F0(LJAVARuntime/Quaternion;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    .line 4
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->F0(LJAVARuntime/Quaternion;)V

    return-void
.end method

.method public static angleAxis(FFFF)LJAVARuntime/Quaternion;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "angle",
            "x",
            "y",
            "z"
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
            "angle",
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    .line 9
    invoke-static {p1, p2, p3, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->l(FFFF)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->i0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    .line 10
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object p0

    return-object p0
.end method

.method public static angleAxis(FLJAVARuntime/Vector3;)LJAVARuntime/Quaternion;
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "angle",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "angle",
            "value"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    .line 2
    iget-object v1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 3
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    iget-object v2, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 4
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 5
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    .line 6
    invoke-static {v1, v2, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->l(FFFF)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->i0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    .line 7
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object p0

    return-object p0
.end method

.method public static createFromEuler(FFF)LJAVARuntime/Quaternion;
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
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    .line 6
    invoke-virtual {v0, p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->v(FFF)V

    .line 7
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object p0

    return-object p0
.end method

.method public static createFromEuler(LJAVARuntime/Vector3;)LJAVARuntime/Quaternion;
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

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    .line 2
    iget-object p0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->w(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 3
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "value cant be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromEuler(FFF)LJAVARuntime/Quaternion;
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
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    .line 6
    invoke-virtual {v0, p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->v(FFF)V

    .line 7
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object p0

    return-object p0
.end method

.method public static fromEuler(LJAVARuntime/Vector3;)LJAVARuntime/Quaternion;
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

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    .line 2
    iget-object p0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->w(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 3
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "value cant be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isNull(Ljava/lang/Object;)Z
    .locals 0
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

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lookAt(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/Quaternion;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "from",
            "to"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "to"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    .line 2
    iget-object p0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Z(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 3
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "to vector can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "from vector can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static lookAt(LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/Quaternion;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "from",
            "to",
            "up"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "from",
            "to",
            "up"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 6
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    .line 7
    iget-object p0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->a0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 8
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "up vector can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "to vector can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "from vector can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static lookRotation(LJAVARuntime/Vector3;)LJAVARuntime/Quaternion;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "forward"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forward"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    .line 2
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iget-object p0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Z(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 3
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "forward cant be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static lookRotation(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/Quaternion;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "forward",
            "upwards"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forward",
            "upwards"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    .line 6
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iget-object p0, p0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->a0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 7
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "upwards cant be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "forward cant be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static slerp(LJAVARuntime/Quaternion;LJAVARuntime/Quaternion;F)LJAVARuntime/Quaternion;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "b",
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
            "a",
            "b",
            "t"
        }
    .end annotation

    .line 4
    iget-object p0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p1, p1, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->H0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;F)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object p0

    return-object p0
.end method

.method public static zero()LJAVARuntime/Quaternion;
    .locals 1

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->X0()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(FFFF)LJAVARuntime/Quaternion;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "w",
            "x",
            "y",
            "z"
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
            "w",
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, LJAVARuntime/Quaternion;->mul(FFFF)LJAVARuntime/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public add(LJAVARuntime/Quaternion;)LJAVARuntime/Quaternion;
    .locals 0
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
    invoke-virtual {p0, p1}, LJAVARuntime/Quaternion;->mul(LJAVARuntime/Quaternion;)LJAVARuntime/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public blend(LJAVARuntime/Quaternion;F)LJAVARuntime/Quaternion;
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
            "quaternion",
            "blend"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p1, p1, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->e(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;F)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blendLocal(LJAVARuntime/Quaternion;F)V
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
            "quaternion",
            "blend"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p1, p1, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->f(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;F)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public copy()LJAVARuntime/Quaternion;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->j()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public deserializeLocal(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->F0(LJAVARuntime/Quaternion;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object v1, p1, v0

    invoke-static {v1}, LNc/b;->u1(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v2, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setFromIndex(FI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public equals(F)Z
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

    .line 3
    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/c;->a(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;F)Z

    move-result p1

    return p1
.end method

.method public equals(FFFF)Z
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "w",
            "x",
            "y",
            "z"
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
            "w",
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/c;->b(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;FFFF)Z

    move-result p1

    return p1
.end method

.method public equals(LJAVARuntime/Quaternion;)Z
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
            "quaternion"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p1, p1, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/c;->c(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
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
            "otherObject"
        }
    .end annotation

    .line 4
    instance-of v0, p1, LJAVARuntime/Quaternion;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, LJAVARuntime/Quaternion;

    .line 6
    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p1, p1, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/c;->c(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Z

    move-result p1

    return p1

    .line 7
    :cond_0
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator == is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Quaternion;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getQW()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v0

    return v0
.end method

.method public getQX()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v0

    return v0
.end method

.method public getQY()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v0

    return v0
.end method

.method public getQZ()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->D()F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->E()F

    move-result v0

    return v0
.end method

.method public getZ()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->F()F

    move-result v0

    return v0
.end method

.method public increment(FFF)V
    .locals 0
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
            "eulerX",
            "eulerY",
            "eulerZ"
        }
    .end annotation

    invoke-static {p1, p2, p3}, LJAVARuntime/Quaternion;->fromEuler(FFF)LJAVARuntime/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, LJAVARuntime/Quaternion;->mulLocal(LJAVARuntime/Quaternion;)V

    return-void
.end method

.method public localLookTo(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "direction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->U(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "to vector can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public localLookTo(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "from",
            "to"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "to"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 3
    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Z(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "to vector can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "from vector can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lookTo(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "direction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->U(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "to vector can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lookTo(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "from",
            "to"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "to"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 3
    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Z(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "to vector can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "from vector can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lookTo(LJAVARuntime/Vector3;LJAVARuntime/Vector3;LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "from",
            "to",
            "up"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "from",
            "to",
            "up"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 6
    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p3, p3, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->a0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "up vector can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "to vector can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "from vector can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lookToLocal(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "direction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->U(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "to vector can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lookToLocal(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "from",
            "to"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "to"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 3
    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Z(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "to vector can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "from vector can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lookToLocal(LJAVARuntime/Vector3;LJAVARuntime/Vector3;ZZ)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "from",
            "to"
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
            "from",
            "to",
            "yaw",
            "pitch"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 8
    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->c0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ZZ)V

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "to vector can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "from vector can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lookToLocal(LJAVARuntime/Vector3;ZZ)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "direction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "direction",
            "yaw",
            "pitch"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->d0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ZZ)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "to vector can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public mul(FFFF)LJAVARuntime/Quaternion;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "w",
            "x",
            "y",
            "z"
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
            "w",
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 4
    new-instance v0, LJAVARuntime/Quaternion;

    invoke-direct {v0}, LJAVARuntime/Quaternion;-><init>()V

    .line 5
    invoke-virtual {v0, p0}, LJAVARuntime/Quaternion;->set(LJAVARuntime/Quaternion;)V

    .line 6
    invoke-virtual {v0, p1, p2, p3, p4}, LJAVARuntime/Quaternion;->mulLocal(FFFF)V

    return-object v0
.end method

.method public mul(LJAVARuntime/Quaternion;)LJAVARuntime/Quaternion;
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
    new-instance v0, LJAVARuntime/Quaternion;

    invoke-direct {v0}, LJAVARuntime/Quaternion;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, LJAVARuntime/Quaternion;->set(LJAVARuntime/Quaternion;)V

    .line 3
    invoke-virtual {v0, p1}, LJAVARuntime/Quaternion;->mulLocal(LJAVARuntime/Quaternion;)V

    return-object v0
.end method

.method public mul(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
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
            "otherObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 7
    new-instance v0, LJAVARuntime/Quaternion;

    invoke-direct {v0}, LJAVARuntime/Quaternion;-><init>()V

    .line 8
    invoke-virtual {v0, p0}, LJAVARuntime/Quaternion;->set(LJAVARuntime/Quaternion;)V

    .line 9
    instance-of v1, p1, LJAVARuntime/Quaternion;

    if-eqz v1, :cond_0

    .line 10
    check-cast p1, LJAVARuntime/Quaternion;

    .line 11
    invoke-virtual {v0, p1}, LJAVARuntime/Quaternion;->mulLocal(LJAVARuntime/Quaternion;)V

    return-object v0

    .line 12
    :cond_0
    instance-of v1, p1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    if-eqz v1, :cond_1

    .line 13
    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    .line 14
    iget-object v1, v0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->i0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    return-object v0

    .line 15
    :cond_1
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator * is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Quaternion;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mulEqual(Ljava/lang/Object;)V
    .locals 3
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
            "otherObject"
        }
    .end annotation

    instance-of v0, p1, LJAVARuntime/Quaternion;

    if-eqz v0, :cond_0

    check-cast p1, LJAVARuntime/Quaternion;

    invoke-virtual {p0, p1}, LJAVARuntime/Quaternion;->mulLocal(LJAVARuntime/Quaternion;)V

    return-void

    :cond_0
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator *= is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Quaternion;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mulLocal(FFFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "w",
            "x",
            "y",
            "z"
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
            "w",
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->h0(FFFF)V

    return-void
.end method

.method public mulLocal(LJAVARuntime/Quaternion;)V
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
    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p1, p1, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->i0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    return-void
.end method

.method public multiply(FFFF)LJAVARuntime/Quaternion;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "w",
            "x",
            "y",
            "z"
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
            "w",
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 4
    new-instance v0, LJAVARuntime/Quaternion;

    invoke-direct {v0}, LJAVARuntime/Quaternion;-><init>()V

    .line 5
    invoke-virtual {v0, p0}, LJAVARuntime/Quaternion;->set(LJAVARuntime/Quaternion;)V

    .line 6
    invoke-virtual {v0, p1, p2, p3, p4}, LJAVARuntime/Quaternion;->mulLocal(FFFF)V

    return-object v0
.end method

.method public multiply(LJAVARuntime/Quaternion;)LJAVARuntime/Quaternion;
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
    new-instance v0, LJAVARuntime/Quaternion;

    invoke-direct {v0}, LJAVARuntime/Quaternion;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, LJAVARuntime/Quaternion;->set(LJAVARuntime/Quaternion;)V

    .line 3
    invoke-virtual {v0, p1}, LJAVARuntime/Quaternion;->mulLocal(LJAVARuntime/Quaternion;)V

    return-object v0
.end method

.method public normalize()LJAVARuntime/Quaternion;
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iget-object v1, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->u0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->l0()Z

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public normalizeLocal()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->l0()Z

    return-void
.end method

.method public notEquals(Ljava/lang/Object;)Z
    .locals 3
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
            "otherObject"
        }
    .end annotation

    instance-of v0, p1, LJAVARuntime/Quaternion;

    if-eqz v0, :cond_0

    check-cast p1, LJAVARuntime/Quaternion;

    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p1, p1, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/c;->c(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    new-instance v0, LJAVARuntime/IllegalOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The operator != is undefined for the type(s) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, LJAVARuntime/Quaternion;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/IllegalOperatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pointerEquals(Ljava/lang/Object;)Z
    .locals 0
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
            "otherObject"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public rotateVector(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
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
            "vector3"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->s0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "vector can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rotateVector(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vector3",
            "out"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 3
    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->r0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p2

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out vector can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "vector can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public selfLookTo(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "direction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->U(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "to vector can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public selfLookTo(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "from",
            "to"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "to"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 3
    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Z(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "to vector can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "from vector can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public serializeToString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public set(F)V
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

    .line 3
    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1, p1, p1, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->t0(FFFF)V

    return-void
.end method

.method public set(FFFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "w",
            "x",
            "y",
            "z"
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
            "w",
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->t0(FFFF)V

    return-void
.end method

.method public set(LJAVARuntime/Quaternion;)V
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
            "quaternion"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p1, p1, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->u0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    return-void
.end method

.method public setFromEuler(FFF)V
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

    .line 1
    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->v(FFF)V

    return-void
.end method

.method public setFromEuler(LJAVARuntime/Vector3;)V
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

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->w(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value cant be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIdentity()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->C0()V

    return-void
.end method

.method public setQW(F)V
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

    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    return-void
.end method

.method public setQX(F)V
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

    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    return-void
.end method

.method public setQY(F)V
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

    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    return-void
.end method

.method public setQZ(F)V
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

    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    return-void
.end method

.method public setX(F)V
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

    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->x0(F)V

    return-void
.end method

.method public setY(F)V
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

    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->y0(F)V

    return-void
.end method

.method public setZ(F)V
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

    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->z0(F)V

    return-void
.end method

.method public slerp(LJAVARuntime/Quaternion;F)LJAVARuntime/Quaternion;
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
            "b",
            "t"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    .line 2
    iget-object v1, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p1, p1, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->J0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;F)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    .line 3
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public slerpLocal(LJAVARuntime/Quaternion;F)V
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
            "b",
            "t"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p1, p1, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;F)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    return-void
.end method

.method public slerpLocal(LJAVARuntime/Quaternion;LJAVARuntime/Quaternion;F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "b",
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
            "a",
            "b",
            "t"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p1, p1, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p2, p2, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->J0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;F)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    return-void
.end method

.method public sum(FFFF)LJAVARuntime/Quaternion;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "w",
            "x",
            "y",
            "z"
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
            "w",
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, LJAVARuntime/Quaternion;->mul(FFFF)LJAVARuntime/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public sum(LJAVARuntime/Quaternion;)LJAVARuntime/Quaternion;
    .locals 0
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
    invoke-virtual {p0, p1}, LJAVARuntime/Quaternion;->mul(LJAVARuntime/Quaternion;)LJAVARuntime/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public sumLocal(FFFF)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "w",
            "x",
            "y",
            "z"
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
            "w",
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, LJAVARuntime/Quaternion;->mulLocal(FFFF)V

    return-void
.end method

.method public sumLocal(LJAVARuntime/Quaternion;)V
    .locals 0
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
    invoke-virtual {p0, p1}, LJAVARuntime/Quaternion;->mulLocal(LJAVARuntime/Quaternion;)V

    return-void
.end method

.method public toEuler()LJAVARuntime/Vector3;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->B()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method
