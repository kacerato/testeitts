.class public Lo2/j;
.super Lp2/g;
.source "SourceFile"


# instance fields
.field public final e:Lp2/i;

.field public final f:Lv1/l;

.field public final synthetic g:Lo2/l;


# direct methods
.method public constructor <init>(Lo2/l;Lp2/i;Lv1/l;)V
    .locals 0

    iput-object p1, p0, Lo2/j;->g:Lo2/l;

    invoke-direct {p0}, Lp2/g;-><init>()V

    iput-object p2, p0, Lo2/j;->e:Lp2/i;

    iput-object p3, p0, Lo2/j;->f:Lv1/l;

    return-void
.end method


# virtual methods
.method public l(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Lo2/j;->g:Lo2/l;

    iget-object p1, p1, Lo2/l;->a:Lp2/t;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo2/j;->f:Lv1/l;

    invoke-virtual {p1, v0}, Lp2/t;->r(Lv1/l;)V

    :cond_0
    iget-object p1, p0, Lo2/j;->e:Lp2/i;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onGetLaunchReviewFlowInfo"

    invoke-virtual {p1, v1, v0}, Lp2/i;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
