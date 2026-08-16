.class public Lz2/b;
.super Lz2/f;
.source "SourceFile"


# annotations
.annotation runtime Lz2/e;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    invoke-static {}, Lz2/d;->c()Lz2/d;

    move-result-object v0

    sget-object v1, Lz2/f$a;->a:Lz2/f$a;

    invoke-direct {p0, p1, p2, v0, v1}, Lz2/f;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lz2/d;Lz2/l;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 3
    invoke-static {}, Lz2/d;->c()Lz2/d;

    move-result-object v0

    sget-object v1, Lz2/f$a;->a:Lz2/f$a;

    const-string v2, "default"

    invoke-direct {p0, v2, p1, v0, v1}, Lz2/f;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lz2/d;Lz2/l;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lz2/l;)V
    .locals 2

    .line 2
    const-string v0, "default"

    invoke-static {}, Lz2/d;->c()Lz2/d;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1, p2}, Lz2/f;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lz2/d;Lz2/l;)V

    return-void
.end method
