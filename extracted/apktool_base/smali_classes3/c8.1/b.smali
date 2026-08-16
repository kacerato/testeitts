.class public Lc8/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/b$f;
    }
.end annotation


# static fields
.field public static volatile a:Z = false

.field public static volatile b:Z = false

.field public static volatile c:Z = false

.field public static volatile d:Z

.field public static volatile e:Z

.field public static volatile f:Z

.field public static volatile g:Z

.field public static volatile h:Ljava/lang/String;

.field public static final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc8/b$f;",
            ">;"
        }
    .end annotation
.end field

.field public static l:Lc8/a;

.field public static final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc8/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lc8/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lc8/b;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, Lc8/b;->k:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lc8/b;->m:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0

    invoke-static {p0}, Lc8/b;->n(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public static synthetic b()Ljava/util/List;
    .locals 1

    sget-object v0, Lc8/b;->m:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0

    invoke-static {p0}, Lc8/b;->s(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public static synthetic d()Ljava/util/List;
    .locals 1

    sget-object v0, Lc8/b;->k:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic e()V
    .locals 0

    invoke-static {}, Lc8/b;->v()V

    return-void
.end method

.method public static synthetic f()V
    .locals 0

    invoke-static {}, Lc8/b;->p()V

    return-void
.end method

.method public static g(Lc8/b$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callbacks"
        }
    .end annotation

    if-eqz p0, :cond_0

    sget-object v0, Lc8/b;->k:Ljava/util/List;

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

    const-string v0, "callback can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h()V
    .locals 1

    new-instance v0, Lc8/b$b;

    invoke-direct {v0}, Lc8/b$b;-><init>()V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static i()Z
    .locals 1

    sget-boolean v0, Lc8/b;->b:Z

    return v0
.end method

.method public static j()Z
    .locals 1

    sget-boolean v0, Lc8/b;->a:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lc8/b;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static k()Z
    .locals 1

    sget-boolean v0, Lc8/b;->a:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lc8/b;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static l()Z
    .locals 1

    sget-boolean v0, Lc8/b;->a:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lc8/b;->b:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lc8/b;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static m(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string p0, "GAME_PAUSED"

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/c;->a(Ljava/lang/String;)Z

    const/4 p0, 0x1

    sput-boolean p0, Lc8/b;->d:Z

    const/4 v0, 0x0

    sput-boolean v0, Lc8/b;->e:Z

    sput-boolean p0, Lc8/b;->f:Z

    sput-boolean p0, Lc8/b;->g:Z

    sget-object p0, Lc8/b;->l:Lc8/a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lc8/a;->a()V

    :cond_0
    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    sget-object v1, Lc8/b;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/d;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lc8/d;->a()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v1, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static n(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->beforeGameStarts()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    invoke-static {v2}, Lc8/b;->n(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static o()V
    .locals 1

    sget-boolean v0, Lc8/b;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc8/b;->u(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    sget-boolean v0, Lc8/b;->a:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lc8/b;->d:Z

    if-nez v0, :cond_1

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc8/b;->u(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static p()V
    .locals 1

    new-instance v0, Lc8/b$e;

    invoke-direct {v0}, Lc8/b$e;-><init>()V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static q(Lc8/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    sget-object v0, Lc8/b;->m:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static r(Lc8/b$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callbacks"
        }
    .end annotation

    if-eqz p0, :cond_0

    sget-object v0, Lc8/b;->k:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

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

    const-string v0, "callback can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static s(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onGameStarted()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    invoke-static {v2}, Lc8/b;->s(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static t(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    sget-boolean v0, Lc8/b;->a:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lc8/b;->b:Z

    if-nez v0, :cond_0

    sget-object v0, LW7/b;->h:Lb8/f;

    new-instance v1, Lc8/b$a;

    invoke-direct {v1}, Lc8/b$a;-><init>()V

    invoke-virtual {v0, p0, v1}, Lb8/f;->f(Landroid/app/Activity;Lb8/g;)V

    :cond_0
    return-void
.end method

.method public static u(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-static {}, LN7/c;->o0()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->A()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Please wait for the world to finish loading"

    invoke-static {p0}, LN7/c;->v0(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    const-string p0, "GAME_STOPPED"

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/c;->a(Ljava/lang/String;)Z

    const/4 p0, 0x1

    sput-boolean p0, Lc8/b;->d:Z

    const/4 v0, 0x0

    sput-boolean v0, Lc8/b;->e:Z

    sput-boolean p0, Lc8/b;->f:Z

    sput-boolean v0, Lc8/b;->g:Z

    sput-boolean v0, Lc8/b;->c:Z

    new-instance p0, Lc8/b$c;

    invoke-direct {p0}, Lc8/b$c;-><init>()V

    invoke-static {p0}, LK8/a;->I(Ljava/lang/Runnable;)V

    invoke-static {}, LIc/i;->u()V

    sget-object p0, Lc8/b;->l:Lc8/a;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lc8/a;->c()V

    :cond_1
    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    move v1, v0

    :goto_0
    sget-object v2, Lc8/b;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/d;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lc8/d;->c()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v2, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p0}, Ljava/util/List;->clear()V

    sget-object p0, Lc8/b;->k:Ljava/util/List;

    monitor-enter p0

    :goto_1
    :try_start_0
    sget-object v1, Lc8/b;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/b$f;

    invoke-interface {v1}, Lc8/b$f;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_4
    monitor-exit p0

    :goto_2
    return-void

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static v()V
    .locals 1

    new-instance v0, Lc8/b$d;

    invoke-direct {v0}, Lc8/b$d;-><init>()V

    invoke-static {v0}, LK8/a;->B(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static w(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string p0, "GAME_UNPAUSED"

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/c;->a(Ljava/lang/String;)Z

    const/4 p0, 0x1

    sput-boolean p0, Lc8/b;->d:Z

    sput-boolean p0, Lc8/b;->e:Z

    sput-boolean p0, Lc8/b;->f:Z

    const/4 p0, 0x0

    sput-boolean p0, Lc8/b;->g:Z

    sget-object v0, Lc8/b;->l:Lc8/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc8/a;->b()V

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    sget-object v1, Lc8/b;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_2

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/d;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lc8/d;->d()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
