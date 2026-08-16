.class public final LB0/y;
.super Lg1/u;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field public final b:Landroid/content/Context;

.field public final synthetic c:LB0/h;


# direct methods
.method public constructor <init>(LB0/h;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, LB0/y;->c:LB0/h;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lg1/u;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LB0/y;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Don\'t know how to handle this message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GoogleApiAvailability"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, LB0/y;->c:LB0/h;

    iget-object v0, p0, LB0/y;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, LB0/h;->j(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, LB0/h;->o(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LB0/y;->c:LB0/h;

    iget-object v1, p0, LB0/y;->b:Landroid/content/Context;

    invoke-virtual {p1, v1, v0}, LB0/h;->D(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method
