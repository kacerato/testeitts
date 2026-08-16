.class public final Lo2/k;
.super Lo2/j;
.source "SourceFile"


# instance fields
.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo2/l;Lv1/l;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lp2/i;

    const-string v1, "OnRequestInstallCallback"

    invoke-direct {v0, v1}, Lp2/i;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2}, Lo2/j;-><init>(Lo2/l;Lp2/i;Lv1/l;)V

    iput-object p3, p0, Lo2/k;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final l(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-super {p0, p1}, Lo2/j;->l(Landroid/os/Bundle;)V

    const-string v0, "confirmation_intent"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    const-string v1, "is_review_no_op"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object v1, p0, Lo2/j;->f:Lv1/l;

    new-instance v2, Lo2/d;

    invoke-direct {v2, v0, p1}, Lo2/d;-><init>(Landroid/app/PendingIntent;Z)V

    invoke-virtual {v1, v2}, Lv1/l;->e(Ljava/lang/Object;)Z

    return-void
.end method
