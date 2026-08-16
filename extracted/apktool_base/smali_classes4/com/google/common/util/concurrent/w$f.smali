.class public Lcom/google/common/util/concurrent/w$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/w;-><init>(Lcom/google/common/util/concurrent/w$m;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/l<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/util/concurrent/w$m;

.field public final synthetic b:Lcom/google/common/util/concurrent/w;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w$m;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/w$f;->b:Lcom/google/common/util/concurrent/w;

    iput-object p2, p0, Lcom/google/common/util/concurrent/w$f;->a:Lcom/google/common/util/concurrent/w$m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/google/common/util/concurrent/Z;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/Z<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/w$o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/w$o;-><init>(Lcom/google/common/util/concurrent/w$d;)V

    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/w$f;->a:Lcom/google/common/util/concurrent/w$m;

    invoke-static {v0}, Lcom/google/common/util/concurrent/w$o;->a(Lcom/google/common/util/concurrent/w$o;)Lcom/google/common/util/concurrent/w$w;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/common/util/concurrent/w$m;->a(Lcom/google/common/util/concurrent/w$w;)Lcom/google/common/util/concurrent/w;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/w$f;->b:Lcom/google/common/util/concurrent/w;

    invoke-static {v2}, Lcom/google/common/util/concurrent/w;->f(Lcom/google/common/util/concurrent/w;)Lcom/google/common/util/concurrent/w$o;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/w;->c(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w$o;)V

    invoke-static {v1}, Lcom/google/common/util/concurrent/w;->a(Lcom/google/common/util/concurrent/w;)Lcom/google/common/util/concurrent/F;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/google/common/util/concurrent/w$f;->b:Lcom/google/common/util/concurrent/w;

    invoke-static {v2}, Lcom/google/common/util/concurrent/w;->f(Lcom/google/common/util/concurrent/w;)Lcom/google/common/util/concurrent/w$o;

    move-result-object v2

    invoke-static {}, Lcom/google/common/util/concurrent/g0;->c()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/common/util/concurrent/w$o;->b(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/w$f;->b:Lcom/google/common/util/concurrent/w;

    invoke-static {v2}, Lcom/google/common/util/concurrent/w;->f(Lcom/google/common/util/concurrent/w;)Lcom/google/common/util/concurrent/w$o;

    move-result-object v2

    invoke-static {}, Lcom/google/common/util/concurrent/g0;->c()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/common/util/concurrent/w$o;->b(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/w$f;->a:Lcom/google/common/util/concurrent/w$m;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
