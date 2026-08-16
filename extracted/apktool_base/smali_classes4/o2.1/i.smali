.class public final Lo2/i;
.super Lp2/j;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lv1/l;

.field public final synthetic d:Lo2/l;


# direct methods
.method public constructor <init>(Lo2/l;Lv1/l;Lv1/l;)V
    .locals 0

    iput-object p1, p0, Lo2/i;->d:Lo2/l;

    iput-object p3, p0, Lo2/i;->c:Lv1/l;

    invoke-direct {p0, p2}, Lp2/j;-><init>(Lv1/l;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lo2/i;->d:Lo2/l;

    iget-object v0, v0, Lo2/l;->a:Lp2/t;

    invoke-virtual {v0}, Lp2/t;->e()Landroid/os/IInterface;

    move-result-object v0

    iget-object v1, p0, Lo2/i;->d:Lo2/l;

    invoke-static {v1}, Lo2/l;->c(Lo2/l;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lo2/m;->a()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lo2/k;

    iget-object v4, p0, Lo2/i;->d:Lo2/l;

    iget-object v5, p0, Lo2/i;->c:Lv1/l;

    invoke-static {v4}, Lo2/l;->c(Lo2/l;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lo2/k;-><init>(Lo2/l;Lv1/l;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lp2/f;->M(Ljava/lang/String;Landroid/os/Bundle;Lp2/h;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lo2/l;->b()Lp2/i;

    move-result-object v1

    iget-object v2, p0, Lo2/i;->d:Lo2/l;

    invoke-static {v2}, Lo2/l;->c(Lo2/l;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "error requesting in-app review for %s"

    invoke-virtual {v1, v0, v3, v2}, Lp2/i;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lo2/i;->c:Lv1/l;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lv1/l;->d(Ljava/lang/Exception;)Z

    return-void
.end method
