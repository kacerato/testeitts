.class public final Lp2/p;
.super Lp2/j;
.source "SourceFile"


# instance fields
.field public final synthetic c:Landroid/os/IBinder;

.field public final synthetic d:Lp2/s;


# direct methods
.method public constructor <init>(Lp2/s;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lp2/p;->d:Lp2/s;

    iput-object p2, p0, Lp2/p;->c:Landroid/os/IBinder;

    invoke-direct {p0}, Lp2/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lp2/p;->d:Lp2/s;

    iget-object v0, v0, Lp2/s;->c:Lp2/t;

    iget-object v1, p0, Lp2/p;->c:Landroid/os/IBinder;

    invoke-static {v1}, Lp2/e;->k(Landroid/os/IBinder;)Lp2/f;

    move-result-object v1

    invoke-static {v0, v1}, Lp2/t;->k(Lp2/t;Landroid/os/IInterface;)V

    iget-object v0, p0, Lp2/p;->d:Lp2/s;

    iget-object v0, v0, Lp2/s;->c:Lp2/t;

    invoke-static {v0}, Lp2/t;->n(Lp2/t;)V

    iget-object v0, p0, Lp2/p;->d:Lp2/s;

    iget-object v0, v0, Lp2/s;->c:Lp2/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lp2/t;->j(Lp2/t;Z)V

    iget-object v0, p0, Lp2/p;->d:Lp2/s;

    iget-object v0, v0, Lp2/s;->c:Lp2/t;

    invoke-static {v0}, Lp2/t;->g(Lp2/t;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lp2/p;->d:Lp2/s;

    iget-object v0, v0, Lp2/s;->c:Lp2/t;

    invoke-static {v0}, Lp2/t;->g(Lp2/t;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
