.class public Lt9/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt9/c;->i()V
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

    iput-object p1, p0, Lt9/c$e;->b:Lt9/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lt9/c$e;->b:Lt9/c;

    invoke-static {v0}, Lt9/c;->z(Lt9/c;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt9/c$e;->b:Lt9/c;

    invoke-static {v0}, Lt9/c;->z(Lt9/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lt9/c$e;->b:Lt9/c;

    invoke-static {v1}, Lt9/c;->B(Lt9/c;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
