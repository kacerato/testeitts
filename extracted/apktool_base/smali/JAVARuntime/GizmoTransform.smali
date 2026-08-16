.class public LJAVARuntime/GizmoTransform;
.super LJAVARuntime/GizmoElement;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Debug"
    }
.end annotation


# static fields
.field private static final ltMat4TL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient lastCalculatedPos:LJAVARuntime/Vector3;

.field private transient lastCalculatedRot:LJAVARuntime/Quaternion;

.field private transient lastCalculatedSca:LJAVARuntime/Vector3;

.field private transient matrix:[F

.field private transient position:LJAVARuntime/Vector3;

.field public final transient rotMatrix:[F

.field private transient rotation:LJAVARuntime/Quaternion;

.field private transient scale:LJAVARuntime/Vector3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LJAVARuntime/GizmoTransform$1;

    invoke-direct {v0}, LJAVARuntime/GizmoTransform$1;-><init>()V

    sput-object v0, LJAVARuntime/GizmoTransform;->ltMat4TL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, LJAVARuntime/GizmoElement;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    new-instance v0, LJAVARuntime/Vector3;

    invoke-direct {v0}, LJAVARuntime/Vector3;-><init>()V

    iput-object v0, p0, LJAVARuntime/GizmoTransform;->position:LJAVARuntime/Vector3;

    .line 4
    new-instance v0, LJAVARuntime/Quaternion;

    invoke-direct {v0}, LJAVARuntime/Quaternion;-><init>()V

    iput-object v0, p0, LJAVARuntime/GizmoTransform;->rotation:LJAVARuntime/Quaternion;

    .line 5
    new-instance v0, LJAVARuntime/Vector3;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LJAVARuntime/Vector3;-><init>(I)V

    iput-object v0, p0, LJAVARuntime/GizmoTransform;->scale:LJAVARuntime/Vector3;

    const/16 v0, 0x10

    .line 6
    new-array v0, v0, [F

    iput-object v0, p0, LJAVARuntime/GizmoTransform;->rotMatrix:[F

    .line 7
    new-instance v0, LJAVARuntime/Vector3;

    invoke-direct {v0}, LJAVARuntime/Vector3;-><init>()V

    iput-object v0, p0, LJAVARuntime/GizmoTransform;->lastCalculatedPos:LJAVARuntime/Vector3;

    .line 8
    new-instance v0, LJAVARuntime/Quaternion;

    invoke-direct {v0}, LJAVARuntime/Quaternion;-><init>()V

    iput-object v0, p0, LJAVARuntime/GizmoTransform;->lastCalculatedRot:LJAVARuntime/Quaternion;

    .line 9
    new-instance v0, LJAVARuntime/Vector3;

    invoke-direct {v0}, LJAVARuntime/Vector3;-><init>()V

    iput-object v0, p0, LJAVARuntime/GizmoTransform;->lastCalculatedSca:LJAVARuntime/Vector3;

    return-void
.end method

.method public constructor <init>(LJAVARuntime/Vector3;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vertex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, LJAVARuntime/GizmoElement;-><init>()V

    .line 11
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 12
    new-instance v0, LJAVARuntime/Vector3;

    invoke-direct {v0}, LJAVARuntime/Vector3;-><init>()V

    iput-object v0, p0, LJAVARuntime/GizmoTransform;->position:LJAVARuntime/Vector3;

    .line 13
    new-instance v0, LJAVARuntime/Quaternion;

    invoke-direct {v0}, LJAVARuntime/Quaternion;-><init>()V

    iput-object v0, p0, LJAVARuntime/GizmoTransform;->rotation:LJAVARuntime/Quaternion;

    .line 14
    new-instance v0, LJAVARuntime/Vector3;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LJAVARuntime/Vector3;-><init>(I)V

    iput-object v0, p0, LJAVARuntime/GizmoTransform;->scale:LJAVARuntime/Vector3;

    const/16 v0, 0x10

    .line 15
    new-array v0, v0, [F

    iput-object v0, p0, LJAVARuntime/GizmoTransform;->rotMatrix:[F

    .line 16
    new-instance v0, LJAVARuntime/Vector3;

    invoke-direct {v0}, LJAVARuntime/Vector3;-><init>()V

    iput-object v0, p0, LJAVARuntime/GizmoTransform;->lastCalculatedPos:LJAVARuntime/Vector3;

    .line 17
    new-instance v0, LJAVARuntime/Quaternion;

    invoke-direct {v0}, LJAVARuntime/Quaternion;-><init>()V

    iput-object v0, p0, LJAVARuntime/GizmoTransform;->lastCalculatedRot:LJAVARuntime/Quaternion;

    .line 18
    new-instance v0, LJAVARuntime/Vector3;

    invoke-direct {v0}, LJAVARuntime/Vector3;-><init>()V

    iput-object v0, p0, LJAVARuntime/GizmoTransform;->lastCalculatedSca:LJAVARuntime/Vector3;

    .line 19
    iput-object p1, p0, LJAVARuntime/GizmoTransform;->position:LJAVARuntime/Vector3;

    return-void
.end method

.method public constructor <init>(LJAVARuntime/Vector3;LJAVARuntime/Quaternion;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vertex",
            "rotation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "rotation"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, LJAVARuntime/GizmoElement;-><init>()V

    .line 21
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 22
    new-instance v0, LJAVARuntime/Vector3;

    invoke-direct {v0}, LJAVARuntime/Vector3;-><init>()V

    iput-object v0, p0, LJAVARuntime/GizmoTransform;->position:LJAVARuntime/Vector3;

    .line 23
    new-instance v0, LJAVARuntime/Quaternion;

    invoke-direct {v0}, LJAVARuntime/Quaternion;-><init>()V

    iput-object v0, p0, LJAVARuntime/GizmoTransform;->rotation:LJAVARuntime/Quaternion;

    .line 24
    new-instance v0, LJAVARuntime/Vector3;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LJAVARuntime/Vector3;-><init>(I)V

    iput-object v0, p0, LJAVARuntime/GizmoTransform;->scale:LJAVARuntime/Vector3;

    const/16 v0, 0x10

    .line 25
    new-array v0, v0, [F

    iput-object v0, p0, LJAVARuntime/GizmoTransform;->rotMatrix:[F

    .line 26
    new-instance v0, LJAVARuntime/Vector3;

    invoke-direct {v0}, LJAVARuntime/Vector3;-><init>()V

    iput-object v0, p0, LJAVARuntime/GizmoTransform;->lastCalculatedPos:LJAVARuntime/Vector3;

    .line 27
    new-instance v0, LJAVARuntime/Quaternion;

    invoke-direct {v0}, LJAVARuntime/Quaternion;-><init>()V

    iput-object v0, p0, LJAVARuntime/GizmoTransform;->lastCalculatedRot:LJAVARuntime/Quaternion;

    .line 28
    new-instance v0, LJAVARuntime/Vector3;

    invoke-direct {v0}, LJAVARuntime/Vector3;-><init>()V

    iput-object v0, p0, LJAVARuntime/GizmoTransform;->lastCalculatedSca:LJAVARuntime/Vector3;

    .line 29
    iput-object p1, p0, LJAVARuntime/GizmoTransform;->position:LJAVARuntime/Vector3;

    .line 30
    iput-object p2, p0, LJAVARuntime/GizmoTransform;->rotation:LJAVARuntime/Quaternion;

    return-void
.end method

.method public constructor <init>(LJAVARuntime/Vector3;LJAVARuntime/Quaternion;LJAVARuntime/Vector3;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vertex",
            "rotation",
            "scale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "rotation",
            "scale"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, LJAVARuntime/GizmoElement;-><init>()V

    .line 32
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 33
    new-instance v0, LJAVARuntime/Vector3;

    invoke-direct {v0}, LJAVARuntime/Vector3;-><init>()V

    iput-object v0, p0, LJAVARuntime/GizmoTransform;->position:LJAVARuntime/Vector3;

    .line 34
    new-instance v0, LJAVARuntime/Quaternion;

    invoke-direct {v0}, LJAVARuntime/Quaternion;-><init>()V

    iput-object v0, p0, LJAVARuntime/GizmoTransform;->rotation:LJAVARuntime/Quaternion;

    .line 35
    new-instance v0, LJAVARuntime/Vector3;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LJAVARuntime/Vector3;-><init>(I)V

    iput-object v0, p0, LJAVARuntime/GizmoTransform;->scale:LJAVARuntime/Vector3;

    const/16 v0, 0x10

    .line 36
    new-array v0, v0, [F

    iput-object v0, p0, LJAVARuntime/GizmoTransform;->rotMatrix:[F

    .line 37
    new-instance v0, LJAVARuntime/Vector3;

    invoke-direct {v0}, LJAVARuntime/Vector3;-><init>()V

    iput-object v0, p0, LJAVARuntime/GizmoTransform;->lastCalculatedPos:LJAVARuntime/Vector3;

    .line 38
    new-instance v0, LJAVARuntime/Quaternion;

    invoke-direct {v0}, LJAVARuntime/Quaternion;-><init>()V

    iput-object v0, p0, LJAVARuntime/GizmoTransform;->lastCalculatedRot:LJAVARuntime/Quaternion;

    .line 39
    new-instance v0, LJAVARuntime/Vector3;

    invoke-direct {v0}, LJAVARuntime/Vector3;-><init>()V

    iput-object v0, p0, LJAVARuntime/GizmoTransform;->lastCalculatedSca:LJAVARuntime/Vector3;

    .line 40
    iput-object p1, p0, LJAVARuntime/GizmoTransform;->position:LJAVARuntime/Vector3;

    .line 41
    iput-object p2, p0, LJAVARuntime/GizmoTransform;->rotation:LJAVARuntime/Quaternion;

    .line 42
    iput-object p3, p0, LJAVARuntime/GizmoTransform;->scale:LJAVARuntime/Vector3;

    return-void
.end method


# virtual methods
.method public getMatrix()[F
    .locals 5
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/GizmoTransform;->lastCalculatedPos:LJAVARuntime/Vector3;

    iget-object v1, p0, LJAVARuntime/GizmoTransform;->position:LJAVARuntime/Vector3;

    invoke-virtual {v0, v1}, LJAVARuntime/Vector3;->equals(LJAVARuntime/Vector3;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, LJAVARuntime/GizmoTransform;->lastCalculatedSca:LJAVARuntime/Vector3;

    iget-object v3, p0, LJAVARuntime/GizmoTransform;->scale:LJAVARuntime/Vector3;

    invoke-virtual {v0, v3}, LJAVARuntime/Vector3;->equals(LJAVARuntime/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LJAVARuntime/GizmoTransform;->lastCalculatedRot:LJAVARuntime/Quaternion;

    iget-object v3, p0, LJAVARuntime/GizmoTransform;->rotation:LJAVARuntime/Quaternion;

    invoke-virtual {v0, v3}, LJAVARuntime/Quaternion;->equals(LJAVARuntime/Quaternion;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, LJAVARuntime/GizmoTransform;->lastCalculatedPos:LJAVARuntime/Vector3;

    iget-object v4, p0, LJAVARuntime/GizmoTransform;->position:LJAVARuntime/Vector3;

    invoke-virtual {v3, v4}, LJAVARuntime/Vector3;->set(LJAVARuntime/Vector3;)V

    iget-object v3, p0, LJAVARuntime/GizmoTransform;->lastCalculatedRot:LJAVARuntime/Quaternion;

    iget-object v4, p0, LJAVARuntime/GizmoTransform;->rotation:LJAVARuntime/Quaternion;

    invoke-virtual {v3, v4}, LJAVARuntime/Quaternion;->set(LJAVARuntime/Quaternion;)V

    iget-object v3, p0, LJAVARuntime/GizmoTransform;->lastCalculatedSca:LJAVARuntime/Vector3;

    iget-object v4, p0, LJAVARuntime/GizmoTransform;->scale:LJAVARuntime/Vector3;

    invoke-virtual {v3, v4}, LJAVARuntime/Vector3;->set(LJAVARuntime/Vector3;)V

    iget-object v3, p0, LJAVARuntime/GizmoTransform;->matrix:[F

    if-nez v3, :cond_1

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, LJAVARuntime/GizmoTransform;->matrix:[F

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-eqz v2, :cond_2

    iget-object v0, p0, LJAVARuntime/GizmoTransform;->matrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, LJAVARuntime/GizmoTransform;->matrix:[F

    iget-object v2, p0, LJAVARuntime/GizmoTransform;->position:LJAVARuntime/Vector3;

    invoke-virtual {v2}, LJAVARuntime/Vector3;->getX()F

    move-result v2

    iget-object v3, p0, LJAVARuntime/GizmoTransform;->position:LJAVARuntime/Vector3;

    invoke-virtual {v3}, LJAVARuntime/Vector3;->getY()F

    move-result v3

    iget-object v4, p0, LJAVARuntime/GizmoTransform;->position:LJAVARuntime/Vector3;

    invoke-virtual {v4}, LJAVARuntime/Vector3;->getZ()F

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, p0, LJAVARuntime/GizmoTransform;->matrix:[F

    iget-object v1, p0, LJAVARuntime/GizmoTransform;->rotMatrix:[F

    iget-object v2, p0, LJAVARuntime/GizmoTransform;->rotation:LJAVARuntime/Quaternion;

    iget-object v2, v2, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {v0, v1, v2}, LNc/c;->k([F[FLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iget-object v0, p0, LJAVARuntime/GizmoTransform;->matrix:[F

    iget-object v1, p0, LJAVARuntime/GizmoTransform;->scale:LJAVARuntime/Vector3;

    iget-object v1, v1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0, v1}, LNc/c;->q([FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    :cond_2
    iget-object v0, p0, LJAVARuntime/GizmoTransform;->matrix:[F

    return-object v0
.end method

.method public getPosition()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/GizmoTransform;->position:LJAVARuntime/Vector3;

    invoke-virtual {v0}, LJAVARuntime/Vector3;->copy()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getPosition(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/GizmoTransform;->position:LJAVARuntime/Vector3;

    invoke-virtual {p1, v0}, LJAVARuntime/Vector3;->set(LJAVARuntime/Vector3;)V

    return-object p1
.end method

.method public getRotation()LJAVARuntime/Quaternion;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/GizmoTransform;->rotation:LJAVARuntime/Quaternion;

    invoke-virtual {v0}, LJAVARuntime/Quaternion;->copy()LJAVARuntime/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public getScale()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/GizmoTransform;->scale:LJAVARuntime/Vector3;

    invoke-virtual {v0}, LJAVARuntime/Vector3;->copy()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public setMatrix([F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "matrix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    sget-object v0, LJAVARuntime/GizmoTransform;->ltMat4TL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->y0([F)V

    iget-object p1, p0, LJAVARuntime/GizmoTransform;->position:LJAVARuntime/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->D1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, LJAVARuntime/GizmoTransform;->rotation:LJAVARuntime/Quaternion;

    iget-object p1, p1, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r1(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p1, p0, LJAVARuntime/GizmoTransform;->scale:LJAVARuntime/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->u1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public setPosition(F)V
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
    iget-object v0, p0, LJAVARuntime/GizmoTransform;->position:LJAVARuntime/Vector3;

    invoke-virtual {v0, p1}, LJAVARuntime/Vector3;->set(F)V

    return-void
.end method

.method public setPosition(FFF)V
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
    iget-object v0, p0, LJAVARuntime/GizmoTransform;->position:LJAVARuntime/Vector3;

    invoke-virtual {v0, p1, p2, p3}, LJAVARuntime/Vector3;->set(FFF)V

    return-void
.end method

.method public setPosition(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, LJAVARuntime/GizmoTransform;->position:LJAVARuntime/Vector3;

    invoke-virtual {v0, p1}, LJAVARuntime/Vector3;->set(LJAVARuntime/Vector3;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "position can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRotation(FFF)V
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
    iget-object v0, p0, LJAVARuntime/GizmoTransform;->rotation:LJAVARuntime/Quaternion;

    iget-object v0, v0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->v(FFF)V

    return-void
.end method

.method public setRotation(FFFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z",
            "w"
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
            "w"
        }
    .end annotation

    .line 4
    iget-object v0, p0, LJAVARuntime/GizmoTransform;->rotation:LJAVARuntime/Quaternion;

    iget-object v0, v0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->t0(FFFF)V

    return-void
.end method

.method public setRotation(LJAVARuntime/Quaternion;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "rotation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, LJAVARuntime/GizmoTransform;->rotation:LJAVARuntime/Quaternion;

    invoke-virtual {v0, p1}, LJAVARuntime/Quaternion;->set(LJAVARuntime/Quaternion;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "rotation can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setScale(F)V
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
    iget-object v0, p0, LJAVARuntime/GizmoTransform;->scale:LJAVARuntime/Vector3;

    invoke-virtual {v0, p1}, LJAVARuntime/Vector3;->set(F)V

    return-void
.end method

.method public setScale(FFF)V
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
    iget-object v0, p0, LJAVARuntime/GizmoTransform;->scale:LJAVARuntime/Vector3;

    invoke-virtual {v0, p1, p2, p3}, LJAVARuntime/Vector3;->set(FFF)V

    return-void
.end method

.method public setScale(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "scale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, LJAVARuntime/GizmoTransform;->scale:LJAVARuntime/Vector3;

    invoke-virtual {v0, p1}, LJAVARuntime/Vector3;->set(LJAVARuntime/Vector3;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "scale can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
