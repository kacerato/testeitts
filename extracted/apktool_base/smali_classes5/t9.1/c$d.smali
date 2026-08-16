.class public Lt9/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt9/c;->p()V
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

    iput-object p1, p0, Lt9/c$d;->b:Lt9/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lt9/c$d;->b:Lt9/c;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1}, Lt9/c;->A(Lt9/c;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v0, p0, Lt9/c$d;->b:Lt9/c;

    invoke-static {v0}, Lt9/c;->z(Lt9/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lt9/c$d;->b:Lt9/c;

    invoke-static {v1}, Lt9/c;->B(Lt9/c;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lt9/c$d;->b:Lt9/c;

    invoke-static {v2}, Lt9/c;->C(Lt9/c;)J

    move-result-wide v2

    iget-object v4, p0, Lt9/c$d;->b:Lt9/c;

    invoke-static {v4}, Lt9/c;->v(Lt9/c;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
