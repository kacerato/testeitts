.class public Lt9/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt9/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lt9/c;


# direct methods
.method public constructor <init>(Lt9/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lt9/c$a;->b:Lt9/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lt9/c$a;->b:Lt9/c;

    invoke-static {v0}, Lt9/c;->r(Lt9/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lt9/c$a;->b:Lt9/c;

    invoke-static {v0}, Lt9/c;->t(Lt9/c;)Z

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lt9/c$a;->b:Lt9/c;

    invoke-static {v0, v2, v3}, Lt9/c;->w(Lt9/c;J)J

    iget-object v0, p0, Lt9/c$a;->b:Lt9/c;

    invoke-static {v0}, Lt9/c;->x(Lt9/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt9/c$a;->b:Lt9/c;

    invoke-static {v0, v1}, Lt9/c;->s(Lt9/c;Z)Z

    iget-object v0, p0, Lt9/c$a;->b:Lt9/c;

    invoke-virtual {v0}, Lt9/c;->p()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lt9/c$a;->b:Lt9/c;

    invoke-virtual {v0}, Lt9/c;->q()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lt9/c$a;->b:Lt9/c;

    invoke-static {v0, v2, v3}, Lt9/c;->w(Lt9/c;J)J

    iget-object v0, p0, Lt9/c$a;->b:Lt9/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lt9/c;->y(Lt9/c;J)J

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lt9/c$a$a;

    invoke-direct {v2, p0}, Lt9/c$a$a;-><init>(Lt9/c$a;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lt9/c$a;->b:Lt9/c;

    invoke-static {v0}, Lt9/c;->x(Lt9/c;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lt9/c$a;->b:Lt9/c;

    invoke-static {v0, v1}, Lt9/c;->u(Lt9/c;Z)Z

    :cond_2
    :goto_0
    return-void
.end method
