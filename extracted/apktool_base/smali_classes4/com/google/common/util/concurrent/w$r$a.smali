.class public Lcom/google/common/util/concurrent/w$r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/w$r;->b(Lcom/google/common/util/concurrent/w$r$e;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/util/concurrent/w$r$e;

.field public final synthetic c:Lcom/google/common/util/concurrent/w$r;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/w$r;Lcom/google/common/util/concurrent/w$r$e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/w$r$a;->c:Lcom/google/common/util/concurrent/w$r;

    iput-object p2, p0, Lcom/google/common/util/concurrent/w$r$a;->b:Lcom/google/common/util/concurrent/w$r$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation runtime Lcom/google/common/util/concurrent/j0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/w$x;

    iget-object v1, p0, Lcom/google/common/util/concurrent/w$r$a;->c:Lcom/google/common/util/concurrent/w$r;

    iget-object v1, v1, Lcom/google/common/util/concurrent/w$r;->c:Lcom/google/common/collect/g1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/w$x;-><init>(Lcom/google/common/collect/g1;Lcom/google/common/util/concurrent/w$d;)V

    iget-object v1, p0, Lcom/google/common/util/concurrent/w$r$a;->b:Lcom/google/common/util/concurrent/w$r$e;

    iget-object v2, p0, Lcom/google/common/util/concurrent/w$r$a;->c:Lcom/google/common/util/concurrent/w$r;

    invoke-static {v2}, Lcom/google/common/util/concurrent/w$r;->a(Lcom/google/common/util/concurrent/w$r;)Lcom/google/common/util/concurrent/w$o;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/w$x;->a(Lcom/google/common/util/concurrent/w$x;Lcom/google/common/util/concurrent/w$r$e;Lcom/google/common/util/concurrent/w$o;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/w$r$a;->b:Lcom/google/common/util/concurrent/w$r$e;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
