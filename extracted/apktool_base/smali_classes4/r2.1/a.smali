.class public Lr2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo2/b;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lo2/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr2/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Lv1/k;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv1/k<",
            "Lo2/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr2/a;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {v0, v2}, Lo2/a;->d(Landroid/app/PendingIntent;Z)Lo2/a;

    move-result-object v0

    iput-object v0, p0, Lr2/a;->b:Lo2/a;

    invoke-static {v0}, Lv1/n;->g(Ljava/lang/Object;)Lv1/k;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/app/Activity;Lo2/a;)Lv1/k;
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lo2/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lo2/a;",
            ")",
            "Lv1/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lr2/a;->b:Lo2/a;

    if-eq p2, p1, :cond_0

    new-instance p1, Lcom/google/android/play/core/review/ReviewException;

    const/4 p2, -0x2

    invoke-direct {p1, p2}, Lcom/google/android/play/core/review/ReviewException;-><init>(I)V

    invoke-static {p1}, Lv1/n;->f(Ljava/lang/Exception;)Lv1/k;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Lv1/n;->g(Ljava/lang/Object;)Lv1/k;

    move-result-object p1

    return-object p1
.end method
