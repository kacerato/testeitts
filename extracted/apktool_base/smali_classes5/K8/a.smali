.class public abstract LK8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public static final B:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public static final C:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public static final D:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public static final E:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field public static final F:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field public static final G:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

.field public static final H:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

.field public static final I:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public static J:LJAVARuntime/GizmoObject; = null

.field public static final K:LIc/N;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LIc/N<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field public static final L:LIc/N;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LIc/N<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field public static final M:LIc/N;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LIc/N<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile N:Lcom/itsmagic/engine/Engines/Engine/World/World; = null

.field public static final O:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final P:LIc/a;

.field public static final Q:Ljava/lang/Runnable;

.field public static final a:I = 0x1

.field public static final b:I = 0x1

.field public static final c:I = 0xa

.field public static final d:I = 0x1

.field public static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:LO9/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LO9/a$b<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">;"
        }
    .end annotation
.end field

.field public static l:I

.field public static m:I

.field public static final n:LY9/c;

.field public static final o:LCc/c;

.field public static final p:Ljava/lang/Object;

.field public static q:Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

.field public static final r:LO8/b;

.field public static s:I

.field public static t:J

.field public static u:J

.field public static v:I

.field public static w:I

.field public static final x:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static y:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public static final z:[F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LK8/a$a;

    invoke-direct {v0}, LK8/a$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->h(Lx8/b;)V

    new-instance v0, LK8/a$b;

    invoke-direct {v0}, LK8/a$b;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/World/a;->g(LLb/j;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    sput-object v0, LK8/a;->e:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    sput-object v0, LK8/a;->f:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    sput-object v0, LK8/a;->g:Ljava/util/List;

    new-instance v0, Ljava/util/IdentityHashMap;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LK8/a;->h:Ljava/util/Set;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, LK8/a;->i:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    sput-object v0, LK8/a;->j:Ljava/util/List;

    new-instance v0, LK8/a$f;

    invoke-direct {v0}, LK8/a$f;-><init>()V

    sput-object v0, LK8/a;->k:LO9/a$b;

    const/4 v0, 0x0

    sput v0, LK8/a;->l:I

    new-instance v1, LY9/c;

    invoke-direct {v1}, LY9/c;-><init>()V

    sput-object v1, LK8/a;->n:LY9/c;

    new-instance v1, LCc/c;

    invoke-direct {v1}, LCc/c;-><init>()V

    sput-object v1, LK8/a;->o:LCc/c;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, LK8/a;->p:Ljava/lang/Object;

    new-instance v1, LO8/b;

    invoke-direct {v1}, LO8/b;-><init>()V

    sput-object v1, LK8/a;->r:LO8/b;

    sput v0, LK8/a;->v:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, LK8/a;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, LK8/a;->z:[F

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    sput-object v0, LK8/a;->A:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    sput-object v0, LK8/a;->B:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    sput-object v0, LK8/a;->C:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    sput-object v0, LK8/a;->D:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    sput-object v0, LK8/a;->E:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    sput-object v0, LK8/a;->F:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;-><init>()V

    sput-object v0, LK8/a;->G:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;-><init>()V

    sput-object v0, LK8/a;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0xd6

    const/16 v2, 0x8a

    const/16 v3, 0xff

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    sput-object v0, LK8/a;->I:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, LIc/N;

    invoke-direct {v0}, LIc/N;-><init>()V

    sput-object v0, LK8/a;->K:LIc/N;

    new-instance v0, LIc/N;

    invoke-direct {v0}, LIc/N;-><init>()V

    sput-object v0, LK8/a;->L:LIc/N;

    new-instance v0, LIc/N;

    invoke-direct {v0}, LIc/N;-><init>()V

    sput-object v0, LK8/a;->M:LIc/N;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, LK8/a;->O:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, LIc/a;

    const/4 v1, 0x1

    const-string v2, "updateLatch"

    invoke-direct {v0, v1, v2}, LIc/a;-><init>(ILjava/lang/String;)V

    sput-object v0, LK8/a;->P:LIc/a;

    new-instance v0, LK8/a$g;

    invoke-direct {v0}, LK8/a$g;-><init>()V

    sput-object v0, LK8/a;->Q:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A()V
    .locals 1

    sget-object v0, LK8/a;->k:LO9/a$b;

    invoke-static {v0}, LR8/f;->o(LO9/a$b;)V

    return-void
.end method

.method public static B(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    if-eqz p0, :cond_0

    sget-object v0, LK8/a;->g:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "runnable can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static C(Lcom/itsmagic/engine/Engines/Engine/World/World;J)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "world",
            "frameCount"
        }
    .end annotation

    invoke-static {}, LR8/f;->y()I

    move-result p0

    invoke-static {}, Lp6/d;->E1()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Update ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    sget v0, LK8/a;->l:I

    add-int/2addr v0, p0

    sput v0, LK8/a;->l:I

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_5

    :try_start_0
    invoke-static {v0}, LR8/f;->x(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v2}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Lo6/a;->M1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_5

    :cond_1
    const-wide/16 v3, 0x0

    :goto_2
    invoke-static {}, Lp6/d;->E1()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->R0()Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":REPEAT at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->P0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v5

    goto :goto_3

    :cond_2
    move-object v5, p2

    :goto_3
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Y0()Z

    move-result v7

    invoke-virtual {v1, v6, v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    goto :goto_4

    :cond_3
    iget-object v6, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Y0()Z

    move-result v7

    invoke-virtual {v1, v6, v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->disabledPreUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    :goto_4
    invoke-static {v5}, Lp6/d;->J1(Lp6/g;)V

    if-eqz v2, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-static {v1, v5, v6}, Lo6/a;->L1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    invoke-static {p1}, Lp6/d;->J1(Lp6/g;)V

    return-void
.end method

.method public static D(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ghost"
        }
    .end annotation

    new-instance v0, LK8/a$i;

    invoke-direct {v0, p0}, LK8/a$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {v0}, LK8/a;->B(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static E(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObjects"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v1}, LK8/a;->D(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static F()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, LK8/a;->K:LIc/N;

    invoke-virtual {v1}, LIc/N;->b()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Call from engine thread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static G()V
    .locals 2

    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Call from render thread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static H(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    invoke-static {}, LQb/a;->d()V

    sget-object v0, LK8/a;->i:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static I(Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, LK8/a;->K:LIc/N;

    invoke-virtual {v1}, LIc/N;->b()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    sget-object v0, LK8/a;->g:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "runnable can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static J(Lob/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, LK8/a;->K:LIc/N;

    invoke-virtual {v1}, LIc/N;->b()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lob/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, LK8/a;->g:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "runnable can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static K()V
    .locals 2

    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Sync ops"

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, LJAVARuntime/Thread;->update()V

    invoke-static {}, Lca/c;->E()V

    invoke-static {}, LM9/i;->e()V

    invoke-static {}, Lpb/a;->M()V

    sget-object v1, LK8/a;->r:LO8/b;

    invoke-virtual {v1}, LO8/b;->e()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->update()V

    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    return-void
.end method

.method public static L(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ghost"
        }
    .end annotation

    new-instance v0, LK8/a$h;

    invoke-direct {v0, p0}, LK8/a$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {v0}, LK8/a;->B(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static M(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObjects"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, LK8/a;->L(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static N()V
    .locals 0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->surfaceDestroyed()V

    return-void
.end method

.method public static O()V
    .locals 2

    sget-object v0, LK8/a;->p:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, LK8/a;->q:Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    invoke-static {}, LVb/a;->K()V

    new-instance v1, LK8/a$c;

    invoke-direct {v1}, LK8/a$c;-><init>()V

    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static P(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->updateOnSelectedHierarchy()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-static {v1}, LK8/a;->P(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static Q(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->updateOnUnselectedHierarchy()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-static {v1}, LK8/a;->Q(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    .locals 0

    invoke-static {p0}, LK8/a;->f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, LK8/a;->A()V

    return-void
.end method

.method public static synthetic c()LIc/a;
    .locals 1

    sget-object v0, LK8/a;->P:LIc/a;

    return-object v0
.end method

.method public static synthetic d()Ljava/util/List;
    .locals 1

    sget-object v0, LK8/a;->j:Ljava/util/List;

    return-object v0
.end method

.method public static e()V
    .locals 1

    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "After render"

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, LP9/a;->a()V

    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    invoke-static {}, LOb/a;->a()V

    invoke-static {}, LUb/a;->d()V

    invoke-static {}, Lrc/a;->A()V

    invoke-static {}, Lfc/a;->f()V

    return-void
.end method

.method public static f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lo6/a;->M1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-static {}, Lp6/d;->E1()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->R0()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":PARALLEL at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->P0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v4}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->parallelUpdate()V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->parallelDisabledUpdate()V

    :cond_3
    :goto_2
    invoke-static {v3}, Lp6/d;->J1(Lp6/g;)V

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {p0, v3, v4}, Lo6/a;->K1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;J)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/TextOutputActivity;->h(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    return-void
.end method

.method public static g(FLjava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seconds",
            "r"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lob/b;

    new-instance v1, LK8/a$e;

    invoke-direct {v1, p1}, LK8/a$e;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {v0, v1, p0}, Lob/b;-><init>(Lob/b$a;F)V

    invoke-static {v0}, LK8/a;->J(Lob/b;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "runnable can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(ILjava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "frames",
            "r"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lob/b;

    new-instance v1, LK8/a$d;

    invoke-direct {v1, p1}, LK8/a$d;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {v0, v1, p0}, Lob/b;-><init>(Lob/b$a;I)V

    invoke-static {v0}, LK8/a;->J(Lob/b;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "runnable can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static i(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    invoke-static {p0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0, v0}, Lgb/b;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZZ)Lgb/b;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    sget-object v1, LK8/a;->F:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p0(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    sget-object p0, LK8/a;->G:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    iget-object v2, v0, Lgb/b;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->xn:F

    iget-object v2, v0, Lgb/b;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->yn:F

    iget-object v2, v0, Lgb/b;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->zn:F

    iget-object v2, v0, Lgb/b;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x:F

    iget-object v2, v0, Lgb/b;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y:F

    iget-object v0, v0, Lgb/b;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->z:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->xn:F

    add-float/2addr v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cx:F

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y:F

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->yn:F

    add-float/2addr v6, v5

    mul-float/2addr v6, v4

    iput v6, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cy:F

    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->zn:F

    add-float/2addr v7, v0

    mul-float/2addr v7, v4

    iput v7, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cz:F

    sub-float/2addr v2, v3

    sub-float/2addr v5, v6

    sub-float/2addr v0, v7

    mul-float/2addr v2, v2

    mul-float/2addr v5, v5

    add-float/2addr v2, v5

    mul-float/2addr v0, v0

    add-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->radius:F

    sget-object v0, LK8/a;->z:[F

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o([F)[F

    move-result-object v1

    sget-object v2, LK8/a;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-virtual {p0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->e([FLcom/itsmagic/engine/Engines/Engine/Vector/AABB;)V

    sget-object p0, LK8/a;->A:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->A(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    sget-object v1, LK8/a;->B:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->v(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    sget-object v2, LK8/a;->C:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    add-float/2addr v3, v5

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v5

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    add-float/2addr v5, v6

    mul-float/2addr v5, v4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v6

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v7

    add-float/2addr v6, v7

    mul-float/2addr v6, v4

    invoke-virtual {v2, v3, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    sget-object v3, LK8/a;->D:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p0

    sub-float/2addr v1, p0

    invoke-virtual {v3, v4, v5, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    sget-object p0, LK8/a;->J:LJAVARuntime/GizmoObject;

    if-nez p0, :cond_2

    new-instance p0, LJAVARuntime/GizmoObject;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CUBE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->E1(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;LFb/a;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v1

    invoke-direct {p0, v1}, LJAVARuntime/GizmoObject;-><init>(LJAVARuntime/Vertex;)V

    sput-object p0, LK8/a;->J:LJAVARuntime/GizmoObject;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, LJAVARuntime/GizmoElement;->setEnableLight(Z)V

    sget-object p0, LK8/a;->J:LJAVARuntime/GizmoObject;

    sget-object v1, LK8/a;->I:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0()LJAVARuntime/Color;

    move-result-object v1

    invoke-virtual {p0, v1}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    sget-object p0, LK8/a;->J:LJAVARuntime/GizmoObject;

    sget-object v1, LJAVARuntime/GizmoElement$RenderMode;->WireFrame:LJAVARuntime/GizmoElement$RenderMode;

    invoke-virtual {p0, v1}, LJAVARuntime/GizmoObject;->setRenderMode(LJAVARuntime/GizmoElement$RenderMode;)V

    :cond_2
    sget-object p0, LK8/a;->E:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p0, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->a1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o([F)[F

    sget-object p0, LK8/a;->J:LJAVARuntime/GizmoObject;

    invoke-virtual {p0, v0}, LJAVARuntime/GizmoTransform;->setMatrix([F)V

    sget-object p0, LK8/a;->J:LJAVARuntime/GizmoObject;

    invoke-static {p0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static j()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, LK8/a;->M:LIc/N;

    invoke-virtual {v1}, LIc/N;->b()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity$a;->BIG:Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity$a;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity;->d(Lcom/itsmagic/engine/Engines/Engine/Threading/ThreadAffinity$a;)Z

    invoke-virtual {v1, v0}, LIc/N;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public static k()I
    .locals 1

    sget v0, LK8/a;->v:I

    return v0
.end method

.method public static l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;
    .locals 1

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LK8/a;->m(Landroid/content/Context;)Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v0

    return-object v0
.end method

.method public static m(Landroid/content/Context;)Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    sget-object v0, LK8/a;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->d0()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, LK8/a;->q:Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :try_start_1
    const-string v1, "_PROJECT/settings.config"

    invoke-static {v1, p0}, LX7/a;->s(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    sput-object p0, LK8/a;->q:Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Failed to load game settings: json is empty"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;-><init>()V

    sput-object p0, LK8/a;->q:Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Failed to load game settings"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;-><init>()V

    sput-object p0, LK8/a;->q:Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    :goto_1
    sget-object p0, LK8/a;->q:Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->i()V

    :cond_1
    sget-object p0, LK8/a;->q:Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    monitor-exit v0

    return-object p0

    :cond_2
    sget-object p0, LK8/a;->q:Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    if-nez p0, :cond_3

    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;-><init>()V

    sput-object p0, LK8/a;->q:Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    :cond_3
    sget-object p0, LK8/a;->q:Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    monitor-exit v0

    return-object p0

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static n()V
    .locals 2

    sget-object v0, LK8/a;->K:LIc/N;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, LIc/N;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public static o(Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    if-eqz p0, :cond_0

    sget-object v0, LK8/a;->g:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lob/a;

    invoke-direct {v1, p0}, Lob/a;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "runnable can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static p(Lob/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    if-eqz p0, :cond_0

    sget-object v0, LK8/a;->g:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lob/a;

    invoke-direct {v1, p0}, Lob/a;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "runnable can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static q()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, LK8/a;->K:LIc/N;

    invoke-virtual {v1}, LIc/N;->b()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_1

    sget-object v1, LK8/a;->L:LIc/N;

    invoke-virtual {v1}, LIc/N;->b()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, LK8/a;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static r()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, LK8/a;->K:LIc/N;

    invoke-virtual {v1}, LIc/N;->b()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static s()Z
    .locals 1

    sget-object v0, LK8/a;->K:LIc/N;

    invoke-virtual {v0}, LIc/N;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static t()V
    .locals 1

    invoke-static {}, Lyb/b;->p()V

    invoke-static {}, Lwb/c;->i()V

    invoke-static {}, LFb/c;->v()V

    invoke-static {}, Lca/c;->A()V

    invoke-static {}, LOb/a;->b()V

    invoke-static {}, Lab/c;->m()V

    invoke-static {}, Ltb/b;->d()V

    invoke-static {}, Lda/h;->m()V

    const/4 v0, -0x1

    sput v0, LK8/a;->s:I

    return-void
.end method

.method public static u(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-static {}, LNc/d;->c()I

    move-result p0

    :goto_0
    sget v0, LK8/a;->s:I

    if-ne p0, v0, :cond_0

    invoke-static {}, LNc/d;->c()I

    move-result p0

    goto :goto_0

    :cond_0
    sput p0, LK8/a;->s:I

    return-void
.end method

.method public static v()V
    .locals 6

    sget-object v0, LK8/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    sget-object v2, LK8/a;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_1
    sget-object v0, LK8/a;->N:Lcom/itsmagic/engine/Engines/Engine/World/World;

    invoke-static {}, Lp6/d;->E1()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const-string v2, "Graphics render"

    invoke-static {v2}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    invoke-static {}, Lp6/d;->E1()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "Components draw frame"

    invoke-static {v4}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v3

    :goto_2
    invoke-static {}, LR8/f;->m()I

    move-result v5

    if-ge v1, v5, :cond_4

    invoke-static {v1}, LR8/f;->l(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDrawFrame()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-static {v4}, Lp6/d;->J1(Lp6/g;)V

    invoke-static {}, Lp6/d;->E1()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Render"

    invoke-static {v1}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v3

    :cond_5
    invoke-static {v0}, LOb/a;->f(Lcom/itsmagic/engine/Engines/Engine/World/World;)V

    invoke-static {}, LP9/a;->t()V

    invoke-static {}, Lfc/a;->e()V

    invoke-static {v3}, Lp6/d;->J1(Lp6/g;)V

    invoke-static {v2}, Lp6/d;->J1(Lp6/g;)V

    return-void
.end method

.method public static w()V
    .locals 0

    invoke-static {}, Lfc/a;->b()V

    return-void
.end method

.method public static x(Landroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-static {}, LK8/a;->j()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    sput-object v0, LK8/a;->N:Lcom/itsmagic/engine/Engines/Engine/World/World;

    const/4 v1, 0x0

    sput v1, LK8/a;->l:I

    sput v1, LK8/a;->m:I

    sget-wide v2, LK8/a;->t:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    sput v1, LK8/a;->w:I

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->z()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    sget v2, LK8/a;->w:I

    add-int/2addr v2, v3

    sput v2, LK8/a;->w:I

    :cond_1
    sget-object v2, LK8/a;->p:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v6, LK8/a;->q:Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    if-eqz v6, :cond_2

    invoke-virtual {v6, v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->l(Lcom/itsmagic/engine/Engines/Engine/World/World;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_d

    :cond_2
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lc8/b;->j()Z

    move-result v2

    const-wide/16 v6, 0x1

    if-eqz v2, :cond_3

    sget-wide v4, LK8/a;->u:J

    add-long/2addr v4, v6

    sput-wide v4, LK8/a;->u:J

    goto :goto_1

    :cond_3
    sput-wide v4, LK8/a;->u:J

    :goto_1
    invoke-static {}, Lp6/d;->E1()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    const-string v2, "input pre update"

    invoke-static {v2}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v4

    :goto_2
    invoke-static {p0}, Lrc/a;->B(Landroid/content/Context;)V

    invoke-static {v2}, Lp6/d;->J1(Lp6/g;)V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/b;->j()V

    invoke-static {}, Lp6/d;->E1()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "Waiting threads"

    invoke-static {p0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object p0

    goto :goto_3

    :cond_5
    move-object p0, v4

    :goto_3
    sget-object v2, LK8/a;->o:LCc/c;

    invoke-virtual {v2}, LCc/c;->k()V

    sget-object v5, LK8/a;->O:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, LK8/a;->P:LIc/a;

    invoke-virtual {v5}, LIc/a;->a()Z

    :cond_6
    invoke-static {p0}, Lp6/d;->J1(Lp6/g;)V

    invoke-static {}, Lp6/d;->E1()Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "Physics resync"

    invoke-static {p0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object p0

    goto :goto_4

    :cond_7
    move-object p0, v4

    :goto_4
    invoke-virtual {v2}, LCc/c;->i()V

    invoke-static {p0}, Lp6/d;->J1(Lp6/g;)V

    invoke-static {v0}, LCc/d;->c(Lcom/itsmagic/engine/Engines/Engine/World/World;)V

    sget p0, LK8/a;->v:I

    add-int/2addr p0, v3

    sput p0, LK8/a;->v:I

    sget-wide v8, LK8/a;->t:J

    add-long/2addr v8, v6

    sput-wide v8, LK8/a;->t:J

    invoke-static {}, LZ9/a;->a()V

    invoke-static {}, LZ9/a;->b()V

    invoke-static {}, Lp6/d;->E1()Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "transform flush"

    invoke-static {p0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object p0

    goto :goto_5

    :cond_8
    move-object p0, v4

    :goto_5
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/TransformUpdateController;->j()I

    move-result v2

    sput v2, LK8/a;->m:I

    if-eqz p0, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lp6/g;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lp6/g;->k(Ljava/lang/String;)V

    :cond_9
    invoke-static {p0}, Lp6/d;->J1(Lp6/g;)V

    invoke-static {}, Lp6/d;->E1()Z

    move-result p0

    if-eqz p0, :cond_a

    const-string p0, "frame runnables"

    invoke-static {p0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object p0

    goto :goto_6

    :cond_a
    move-object p0, v4

    :goto_6
    sget-object v5, LK8/a;->g:Ljava/util/List;

    monitor-enter v5

    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    move v2, v1

    :goto_7
    sget-object v6, LK8/a;->g:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_c

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lob/a;

    if-eqz v7, :cond_b

    check-cast v6, Lob/a;

    iget-object v6, v6, Lob/a;->a:Ljava/lang/Object;

    sget-object v7, LK8/a;->h:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :catchall_1
    move-exception p0

    goto/16 :goto_c

    :cond_b
    sget-object v7, LK8/a;->e:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_c
    invoke-interface {v6}, Ljava/util/List;->clear()V

    :cond_d
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object v2, LK8/a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e

    sget-object v5, LK8/a;->e:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_e
    sget-object v2, LK8/a;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    move v2, v1

    :goto_9
    sget-object v5, LK8/a;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_14

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/Runnable;

    if-eqz v6, :cond_11

    sget-object v6, LK8/a;->h:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    goto :goto_b

    :cond_f
    check-cast v5, Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    :cond_10
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_11
    instance-of v6, v5, Lob/b;

    if-eqz v6, :cond_13

    sget-object v6, LK8/a;->h:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_b

    :cond_12
    check-cast v5, Lob/b;

    invoke-virtual {v5}, Lob/b;->f()Z

    move-result v6

    if-eqz v6, :cond_10

    sget-object v6, LK8/a;->f:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_13
    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_14
    invoke-interface {v5}, Ljava/util/List;->clear()V

    move v1, v2

    :cond_15
    sget-object v2, LK8/a;->h:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    if-eqz p0, :cond_16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lp6/g;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lp6/g;->k(Ljava/lang/String;)V

    :cond_16
    invoke-static {}, LR8/d;->c()V

    invoke-static {p0}, Lp6/d;->J1(Lp6/g;)V

    sget-wide v1, LK8/a;->t:J

    invoke-static {v0, v1, v2}, LK8/a;->C(Lcom/itsmagic/engine/Engines/Engine/World/World;J)V

    sget-object p0, LK8/a;->y:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v1, LW7/b;->i:La8/a;

    iget-object v2, v1, La8/a;->a:La8/b;

    iget-object v2, v2, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eq p0, v2, :cond_17

    sget-object p0, LK8/a;->y:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p0, :cond_17

    invoke-static {p0}, LK8/a;->Q(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    sput-object v4, LK8/a;->y:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :cond_17
    iget-object p0, v1, La8/a;->a:La8/b;

    iget-object p0, p0, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->F0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p0

    invoke-static {p0}, LK8/a;->P(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object p0, v1, La8/a;->a:La8/b;

    iget-object p0, p0, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p0}, LK8/a;->i(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object p0, v1, La8/a;->a:La8/b;

    iget-object p0, p0, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sput-object p0, LK8/a;->y:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :cond_18
    if-eqz v0, :cond_19

    sget p0, LK8/a;->w:I

    if-lt p0, v3, :cond_19

    sget-object p0, LK8/a;->o:LCc/c;

    invoke-virtual {p0, v0}, LCc/c;->j(Lcom/itsmagic/engine/Engines/Engine/World/World;)V

    :cond_19
    sget-object p0, LK8/a;->P:LIc/a;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/Phaser;->bulkRegister(I)I

    sget-object p0, LK8/a;->O:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object p0, LK8/a;->Q:Ljava/lang/Runnable;

    invoke-static {p0}, LO9/b;->d(Ljava/lang/Runnable;)V

    invoke-static {}, LW7/b;->m()V

    invoke-static {}, LK8/a;->K()V

    invoke-static {}, Lp6/d;->E1()Z

    move-result p0

    if-eqz p0, :cond_1a

    const-string p0, "Graphics pre render"

    invoke-static {p0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v4

    :cond_1a
    sget-object p0, LK8/a;->q:Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    invoke-static {p0}, LPb/a;->e(Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;)V

    invoke-static {v0}, LOb/a;->e(Lcom/itsmagic/engine/Engines/Engine/World/World;)V

    invoke-static {}, Lfc/a;->d()V

    invoke-static {v4}, Lp6/d;->J1(Lp6/g;)V

    return-void

    :goto_c
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_d
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static y(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    invoke-static {p0, p1}, LOb/a;->c(II)V

    invoke-static {p0, p1}, LK8/c;->c(II)V

    return-void
.end method

.method public static z(Landroid/view/SurfaceView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surfaceView"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    const-string v0, "GL-Thread"

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lb9/c;->h(Landroid/content/Context;)V

    invoke-static {}, Lrc/a;->o()V

    invoke-static {}, LOb/a;->d()V

    invoke-static {}, LP9/a;->p()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->P()V

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    sget-object p0, LK8/a;->o:LCc/c;

    invoke-virtual {p0}, LCc/c;->g()V

    invoke-static {}, LVb/a;->L()V

    return-void
.end method
