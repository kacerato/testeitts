.class public final Lp2/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic c:Lp2/t;


# direct methods
.method public synthetic constructor <init>(Lp2/t;Lp2/r;)V
    .locals 0

    iput-object p1, p0, Lp2/s;->c:Lp2/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lp2/s;->c:Lp2/t;

    invoke-static {v0}, Lp2/t;->f(Lp2/t;)Lp2/i;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "ServiceConnectionImpl.onServiceConnected(%s)"

    invoke-virtual {v0, v1, p1}, Lp2/i;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lp2/s;->c:Lp2/t;

    new-instance v0, Lp2/p;

    invoke-direct {v0, p0, p2}, Lp2/p;-><init>(Lp2/s;Landroid/os/IBinder;)V

    invoke-virtual {p1}, Lp2/t;->c()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lp2/s;->c:Lp2/t;

    invoke-static {v0}, Lp2/t;->f(Lp2/t;)Lp2/i;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "ServiceConnectionImpl.onServiceDisconnected(%s)"

    invoke-virtual {v0, v1, p1}, Lp2/i;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lp2/s;->c:Lp2/t;

    new-instance v0, Lp2/q;

    invoke-direct {v0, p0}, Lp2/q;-><init>(Lp2/s;)V

    invoke-virtual {p1}, Lp2/t;->c()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
