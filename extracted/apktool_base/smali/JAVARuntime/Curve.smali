.class public final LJAVARuntime/Curve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Vector"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/Curve$WrapMode;
    }
.end annotation


# instance fields
.field public transient instance:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 6
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LJAVARuntime/Curve;->instance:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;)V
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
    iput-object p1, p0, LJAVARuntime/Curve;->instance:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    return-void
.end method

.method public static genericInterface()LP8/l;
    .locals 3
    .annotation runtime LH6/g;
    .end annotation

    new-instance v0, LP8/l;

    new-instance v1, LJAVARuntime/Curve$1;

    const-class v2, LJAVARuntime/Curve;

    invoke-direct {v1, v2}, LJAVARuntime/Curve$1;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1}, LP8/l;-><init>(LP8/m;)V

    return-object v0
.end method

.method public static inspectorController()LP8/h;
    .locals 3
    .annotation runtime LH6/g;
    .end annotation

    new-instance v0, LP8/h;

    new-instance v1, LJAVARuntime/Curve$2;

    const-class v2, LJAVARuntime/Curve;

    invoke-direct {v1, v2}, LJAVARuntime/Curve$2;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1}, LP8/h;-><init>(LP8/i;)V

    return-object v0
.end method


# virtual methods
.method public addPoint(FF)V
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

    iget-object v0, p0, LJAVARuntime/Curve;->instance:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    return-void
.end method

.method public apply()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/Curve;->instance:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->apply()V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/Curve;->instance:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->clear()V

    return-void
.end method

.method public evaluate(F)F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    invoke-static {p1}, LNc/b;->I(F)F

    move-result p1

    iget-object v0, p0, LJAVARuntime/Curve;->instance:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->p(F)F

    move-result p1

    return p1
.end method

.method public fromJson(Ljava/lang/String;)LJAVARuntime/Curve;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "json"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->s(Ljava/lang/String;Landroid/content/Context;)Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->J()LJAVARuntime/Curve;

    move-result-object p1

    return-object p1
.end method

.method public getWrapMode()LJAVARuntime/Curve$WrapMode;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Curve;->instance:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->u()Lcom/itsmagic/engine/Engines/Engine/Curve/Curve$a;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->l(Lcom/itsmagic/engine/Engines/Engine/Curve/Curve$a;)LJAVARuntime/Curve$WrapMode;

    move-result-object v0

    return-object v0
.end method

.method public pointAt(I)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "idx"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    .line 1
    new-instance v0, LJAVARuntime/Vector2;

    invoke-direct {v0}, LJAVARuntime/Vector2;-><init>()V

    invoke-virtual {p0, p1, v0}, LJAVARuntime/Curve;->pointAt(ILJAVARuntime/Vector2;)LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public pointAt(ILJAVARuntime/Vector2;)LJAVARuntime/Vector2;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "idx",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "idx",
            "out"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p0, LJAVARuntime/Curve;->instance:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    iget-object p2, p2, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->A(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K0()LJAVARuntime/Vector2;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Out vector2 can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pointsCount()I
    .locals 1

    iget-object v0, p0, LJAVARuntime/Curve;->instance:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->B()I

    move-result v0

    return v0
.end method

.method public setPoint(IFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "idx",
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "idx",
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Curve;->instance:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->F(IFF)V

    return-void
.end method

.method public setWrapMode(LJAVARuntime/Curve$WrapMode;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "wrapMode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wrapMode"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Curve;->instance:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->m(LJAVARuntime/Curve$WrapMode;)Lcom/itsmagic/engine/Engines/Engine/Curve/Curve$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->G(Lcom/itsmagic/engine/Engines/Engine/Curve/Curve$a;)V

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LJAVARuntime/Curve;->instance:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->K(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
