.class public final Lp2/n;
.super Lp2/j;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lp2/t;


# direct methods
.method public constructor <init>(Lp2/t;)V
    .locals 0

    iput-object p1, p0, Lp2/n;->c:Lp2/t;

    invoke-direct {p0}, Lp2/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lp2/n;->c:Lp2/t;

    invoke-static {v0}, Lp2/t;->d(Lp2/t;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lp2/t;->f(Lp2/t;)Lp2/i;

    move-result-object v0

    const-string v1, "Unbind from service."

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lp2/i;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lp2/n;->c:Lp2/t;

    invoke-static {v0}, Lp2/t;->a(Lp2/t;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Lp2/t;->b(Lp2/t;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lp2/n;->c:Lp2/t;

    invoke-static {v0, v2}, Lp2/t;->j(Lp2/t;Z)V

    iget-object v0, p0, Lp2/n;->c:Lp2/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lp2/t;->k(Lp2/t;Landroid/os/IInterface;)V

    iget-object v0, p0, Lp2/n;->c:Lp2/t;

    invoke-static {v0, v1}, Lp2/t;->i(Lp2/t;Landroid/content/ServiceConnection;)V

    :cond_0
    iget-object v0, p0, Lp2/n;->c:Lp2/t;

    invoke-static {v0}, Lp2/t;->l(Lp2/t;)V

    return-void
.end method
