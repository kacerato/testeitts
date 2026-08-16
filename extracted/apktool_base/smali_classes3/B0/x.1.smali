.class public final LB0/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:I

.field public final synthetic d:Landroidx/activity/result/ActivityResultLauncher;

.field public final synthetic e:LB0/h;


# direct methods
.method public constructor <init>(LB0/h;Landroid/app/Activity;ILandroidx/activity/result/ActivityResultLauncher;)V
    .locals 0

    iput-object p1, p0, LB0/x;->e:LB0/h;

    iput-object p2, p0, LB0/x;->b:Landroid/app/Activity;

    iput p3, p0, LB0/x;->c:I

    iput-object p4, p0, LB0/x;->d:Landroidx/activity/result/ActivityResultLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, LB0/x;->e:LB0/h;

    iget-object p2, p0, LB0/x;->b:Landroid/app/Activity;

    iget v0, p0, LB0/x;->c:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, LB0/h;->f(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p2, Landroidx/activity/result/IntentSenderRequest$Builder;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/activity/result/IntentSenderRequest$Builder;-><init>(Landroid/content/IntentSender;)V

    invoke-virtual {p2}, Landroidx/activity/result/IntentSenderRequest$Builder;->build()Landroidx/activity/result/IntentSenderRequest;

    move-result-object p1

    iget-object p2, p0, LB0/x;->d:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method
