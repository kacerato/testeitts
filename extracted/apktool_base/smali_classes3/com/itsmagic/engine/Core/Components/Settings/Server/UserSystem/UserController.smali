.class public Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$g;
    }
.end annotation


# static fields
.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LI8/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adm:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public b:J

.field public c:LI8/d;

.field private cloudSyncPlan:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private coins:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private createdAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private firebaseUID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private funds:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private isGoogle:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private level:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private logged:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private partner:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private removeAds:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private requireUserActionToLoginNext:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private upXp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private usedSeconds:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private userID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private username:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private xp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->token:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->b:J

    return-void
.end method

.method public constructor <init>(LI8/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controlListener"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->token:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->b:J

    .line 7
    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->c:LI8/d;

    return-void
.end method

.method public static N()Z
    .locals 3

    sget-object v0, LW7/b;->f:LC8/a;

    iget-object v1, v0, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->Q()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, v0, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->L()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v0, v0, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->L()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ITsMagic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    return v2
.end method

.method public static P()Z
    .locals 3

    sget-object v0, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, LW7/b;->f:LC8/a;

    iget-object v2, v0, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->Q()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->L()Ljava/lang/String;

    move-result-object v0

    const-string v2, "javabuilder"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public static U()Z
    .locals 3

    sget-object v0, LW7/b;->f:LC8/a;

    iget-object v1, v0, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->Q()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v0, v0, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->T()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v2
.end method

.method public static W()V
    .locals 0

    invoke-static {}, LN5/a;->E1()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method

.method public static Y(LI8/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->d:Ljava/util/List;

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
.end method

.method public static Z(Landroid/content/Context;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    sget-object p0, LW7/b;->f:LC8/a;

    iget-object p0, p0, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->Q()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->W()V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->coins:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->coins:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic c(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->X()V

    return-void
.end method

.method public static synthetic d(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->upXp:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic e(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->usedSeconds:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic f(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->cloudSyncPlan:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic g(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->username:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic h(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->isGoogle:Z

    return p0
.end method

.method public static synthetic i(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->isGoogle:Z

    return p1
.end method

.method public static synthetic j(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->token:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic k(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->partner:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic l(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->adm:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic m(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->firebaseUID:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic n(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->funds:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic o(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->createdAt:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic p(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->removeAds:Z

    return p1
.end method

.method public static synthetic q(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->level:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic r(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->xp:Ljava/lang/String;

    return-object p1
.end method

.method public static u(LI8/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->d:Ljava/util/List;

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
.end method

.method public static w()Z
    .locals 3

    sget-object v0, LW7/b;->f:LC8/a;

    iget-object v1, v0, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->Q()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v0, v0, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->T()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->funds:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->funds:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->funds:Ljava/lang/String;

    invoke-static {v0, v1}, LNc/b;->x1(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    if-lez v1, :cond_1

    int-to-float v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-static {v0}, LNc/b;->t0(F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->firebaseUID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->firebaseUID:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->firebaseUID:Ljava/lang/String;

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->funds:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "0"

    iput-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->funds:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->funds:Ljava/lang/String;

    return-object v0
.end method

.method public D(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    iget-wide v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->b:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->b:J

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->b:J

    sub-long/2addr v0, v2

    long-to-float p1, v0

    const v0, 0x4e6e6b28    # 1.0E9f

    div-float/2addr p1, v0

    const/high16 v0, 0x41700000    # 15.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->j0()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->b:J

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->coins:Ljava/lang/String;

    return-object p1
.end method

.method public E()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->level:Ljava/lang/String;

    invoke-static {v0}, LNc/b;->w1(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->partner:Ljava/lang/String;

    return-object v0
.end method

.method public G(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$f;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$f;-><init>(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;Landroid/content/Context;)V

    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->token:Ljava/lang/String;

    return-object v0
.end method

.method public I()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->upXp:Ljava/lang/String;

    invoke-static {v0}, LNc/b;->w1(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public J()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->usedSeconds:Ljava/lang/String;

    return-object v0
.end method

.method public K()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public L()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->username:Ljava/lang/String;

    return-object v0
.end method

.method public M()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->xp:Ljava/lang/String;

    invoke-static {v0}, LNc/b;->w1(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public O()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->isGoogle:Z

    return v0
.end method

.method public Q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->logged:Z

    return v0
.end method

.method public R()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->removeAds:Z

    return v0
.end method

.method public S()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->requireUserActionToLoginNext:Z

    return v0
.end method

.method public T()Z
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->Q()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->partner:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public V()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$e;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$e;-><init>(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->logged:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->userID:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->token:Ljava/lang/String;

    const-string v1, "0"

    iput-object v1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->coins:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->partner:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->firebaseUID:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->isGoogle:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->username:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->adm:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->a0(Z)V

    sget-object v0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->d:Ljava/util/List;

    monitor-enter v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LI8/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2}, LI8/a;->update()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final X()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->a0(Z)V

    sget-object v0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->d:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LI8/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v2}, LI8/a;->update()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public a0(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "saveAsync"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->c:LI8/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, LI8/d;->a(Z)V

    :cond_0
    return-void
.end method

.method public b0(LI8/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controlListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->c:LI8/d;

    return-void
.end method

.method public c0(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "firebaseUID"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->firebaseUID:Ljava/lang/String;

    return-void
.end method

.method public d0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "google"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->isGoogle:Z

    return-void
.end method

.method public e0(ZLandroid/content/Context;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "logged",
            "context",
            "saveAsync"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->logged:Z

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->D(Landroid/content/Context;)Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->a0(Z)V

    return-void
.end method

.method public f0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requireUserActionToLoginNext"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->requireUserActionToLoginNext:Z

    return-void
.end method

.method public g0(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->token:Ljava/lang/String;

    return-void
.end method

.method public h0(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userID"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->userID:Ljava/lang/String;

    return-void
.end method

.method public i0(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "username"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->username:Ljava/lang/String;

    return-void
.end method

.method public j0()V
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->username:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->k0(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$g;)V

    :cond_0
    return-void
.end method

.method public k0(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$g;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updateListener"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->Q()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$g;->a()V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Led/c;

    new-instance v2, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;

    invoke-direct {v2, p0, p1, v0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$c;-><init>(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$g;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Led/c;-><init>(Lhd/d;)V

    new-instance p1, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$d;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$d;-><init>(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;)V

    sget-object v2, LW7/b;->f:LC8/a;

    iget-object v2, v2, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->G(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v2, Lhd/e;

    const-string v3, "backend/view/users/configs/"

    const-string v4, "updateUserInfo.php"

    invoke-static {v3, v4}, LH8/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1, v0}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Led/c;->d(Lhd/e;)V

    return-void
.end method

.method public s(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->coins:Ljava/lang/String;

    invoke-static {v0}, LNc/b;->w1(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->coins:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->X()V

    return-void
.end method

.method public v(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->s(I)V

    new-instance v0, Led/c;

    new-instance v1, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$a;

    invoke-direct {v1, p0, p1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$a;-><init>(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Led/c;-><init>(Lhd/d;)V

    new-instance v1, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$b;-><init>(Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;)V

    sget-object v2, LW7/b;->f:LC8/a;

    iget-object v3, v2, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    invoke-virtual {v3, p1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->G(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v3, Lhd/e;

    iget-object v2, v2, LC8/a;->c:LH8/a;

    const-string v2, "backend/view/users/configs/"

    const-string v4, "addRewardedEarn.php"

    invoke-static {v2, v4}, LH8/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v1, p1}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Led/c;->d(Lhd/e;)V

    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->adm:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->adm:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->adm:Ljava/lang/String;

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->cloudSyncPlan:Ljava/lang/String;

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->coins:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "0"

    iput-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->coins:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->coins:Ljava/lang/String;

    return-object v0
.end method
