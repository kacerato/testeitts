.class public Lcom/google/common/cache/k$r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/cache/k$r;->B(Ljava/lang/Object;ILcom/google/common/cache/k$m;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:Lcom/google/common/cache/k$m;

.field public final synthetic e:Lcom/google/common/util/concurrent/Z;

.field public final synthetic f:Lcom/google/common/cache/k$r;


# direct methods
.method public constructor <init>(Lcom/google/common/cache/k$r;Ljava/lang/Object;ILcom/google/common/cache/k$m;Lcom/google/common/util/concurrent/Z;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/cache/k$r$a;->f:Lcom/google/common/cache/k$r;

    iput-object p2, p0, Lcom/google/common/cache/k$r$a;->b:Ljava/lang/Object;

    iput p3, p0, Lcom/google/common/cache/k$r$a;->c:I

    iput-object p4, p0, Lcom/google/common/cache/k$r$a;->d:Lcom/google/common/cache/k$m;

    iput-object p5, p0, Lcom/google/common/cache/k$r$a;->e:Lcom/google/common/util/concurrent/Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/k$r$a;->f:Lcom/google/common/cache/k$r;

    iget-object v1, p0, Lcom/google/common/cache/k$r$a;->b:Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/cache/k$r$a;->c:I

    iget-object v3, p0, Lcom/google/common/cache/k$r$a;->d:Lcom/google/common/cache/k$m;

    iget-object v4, p0, Lcom/google/common/cache/k$r$a;->e:Lcom/google/common/util/concurrent/Z;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/cache/k$r;->s(Ljava/lang/Object;ILcom/google/common/cache/k$m;Lcom/google/common/util/concurrent/Z;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/common/cache/k;->C:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception thrown during refresh"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/google/common/cache/k$r$a;->d:Lcom/google/common/cache/k$m;

    invoke-virtual {v1, v0}, Lcom/google/common/cache/k$m;->k(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
