.class public LL4/a$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LL4/a;->y1(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lq7/a;

.field public final synthetic c:LL4/a;


# direct methods
.method public constructor <init>(LL4/a;Lq7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$loading"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LL4/a$m;->c:LL4/a;

    iput-object p2, p0, LL4/a$m;->b:Lq7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LL4/a$m;->c:LL4/a;

    invoke-static {v1}, LL4/a;->r1(LL4/a;)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    move-result-object v1

    iget-object v2, p0, LL4/a$m;->c:LL4/a;

    invoke-static {v2}, LL4/a;->s1(LL4/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/a;->b(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v1, p0, LL4/a$m;->b:Lq7/a;

    invoke-virtual {v1}, Lq7/a;->p1()V

    iget-object v1, p0, LL4/a$m;->c:LL4/a;

    invoke-static {v1}, LL4/a;->t1(LL4/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to prepare texture:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LN7/c;->v0(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iget-object v2, p0, LL4/a$m;->b:Lq7/a;

    invoke-virtual {v2}, Lq7/a;->p1()V

    iget-object v2, p0, LL4/a$m;->c:LL4/a;

    invoke-static {v2}, LL4/a;->t1(LL4/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method
