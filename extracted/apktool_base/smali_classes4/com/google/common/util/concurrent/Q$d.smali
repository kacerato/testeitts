.class public final Lcom/google/common/util/concurrent/Q$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final c:Lcom/google/common/util/concurrent/P;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/P<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;Lcom/google/common/util/concurrent/P;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Lcom/google/common/util/concurrent/P<",
            "-TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/Q$d;->b:Ljava/util/concurrent/Future;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Q$d;->c:Lcom/google/common/util/concurrent/P;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/Q$d;->b:Ljava/util/concurrent/Future;

    instance-of v1, v0, LG2/a;

    if-eqz v1, :cond_0

    check-cast v0, LG2/a;

    invoke-static {v0}, LG2/b;->a(LG2/a;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/common/util/concurrent/Q$d;->c:Lcom/google/common/util/concurrent/P;

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/P;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Q$d;->b:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Q;->h(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/common/util/concurrent/Q$d;->c:Lcom/google/common/util/concurrent/P;

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/P;->b(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1

    :goto_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/Q$d;->c:Lcom/google/common/util/concurrent/P;

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/P;->a(Ljava/lang/Throwable;)V

    return-void

    :goto_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/Q$d;->c:Lcom/google/common/util/concurrent/P;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/P;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lw2/z;->c(Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/Q$d;->c:Lcom/google/common/util/concurrent/P;

    invoke-virtual {v0, v1}, Lw2/z$b;->s(Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    invoke-virtual {v0}, Lw2/z$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
