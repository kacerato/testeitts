.class public Lfc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lfc/d;

.field public static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static c:J

.field public static final d:Lfc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfc/d;

    invoke-direct {v0}, Lfc/d;-><init>()V

    sput-object v0, Lfc/a;->a:Lfc/d;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lfc/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    sput-wide v0, Lfc/a;->c:J

    new-instance v0, Lfc/b;

    invoke-direct {v0}, Lfc/b;-><init>()V

    sput-object v0, Lfc/a;->d:Lfc/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lfc/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quadImage"
        }
    .end annotation

    invoke-static {}, LK8/a;->G()V

    sget-object v0, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lfc/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, LK8/a;->r()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-wide v0, Lfc/a;->c:J

    sget-wide v2, LK8/a;->t:J

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Current frame data already binded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "FSQ was locked but not unlock previous frame"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current frame data already binded: illegal thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v0, Lfc/a;->a:Lfc/d;

    invoke-virtual {v0, p0}, Lfc/d;->a(Lfc/b;)V

    return-void
.end method

.method public static b()V
    .locals 2

    sget-object v0, Lfc/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static c()V
    .locals 1

    sget-object v0, Lfc/a;->a:Lfc/d;

    invoke-virtual {v0}, Lfc/d;->h()V

    return-void
.end method

.method public static d()V
    .locals 3

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lfc/a;->a:Lfc/d;

    invoke-virtual {v0}, Lfc/d;->e()V

    return-void

    :cond_0
    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FSQ Preparation"

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-wide v1, LK8/a;->t:J

    sput-wide v1, Lfc/a;->c:J

    sget-object v1, Lfc/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v1, Lfc/a;->d:Lfc/b;

    const v2, -0xf423f

    invoke-virtual {v1, v2}, Lfc/b;->j(I)V

    sget-object v2, Lyb/b;->i:Lub/p;

    invoke-virtual {v1, v2}, Lfc/b;->l(Lub/p;)V

    sget-object v2, Lfc/a;->a:Lfc/d;

    invoke-virtual {v2, v1}, Lfc/d;->a(Lfc/b;)V

    invoke-virtual {v2}, Lfc/d;->j()V

    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    return-void
.end method

.method public static e()V
    .locals 2

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lfc/a;->a:Lfc/d;

    invoke-virtual {v0}, Lfc/d;->e()V

    sget-object v0, Lfc/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_0
    sget-object v0, Lfc/a;->a:Lfc/d;

    invoke-virtual {v0}, Lfc/d;->k()V

    sget-object v0, Lfc/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static f()V
    .locals 2

    sget-object v0, Lfc/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not unlock this frame"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static g(II)V
    .locals 1
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

    sget-object v0, Lfc/a;->a:Lfc/d;

    invoke-virtual {v0, p0, p1}, Lfc/d;->o(II)V

    return-void
.end method
