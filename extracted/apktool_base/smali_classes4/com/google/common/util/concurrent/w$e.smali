.class public Lcom/google/common/util/concurrent/w$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/w;-><init>(Lcom/google/common/util/concurrent/w$p;Ljava/util/concurrent/Executor;)V
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
.field public final synthetic b:Lcom/google/common/util/concurrent/w$p;

.field public final synthetic c:Lcom/google/common/util/concurrent/w;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w$p;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/w$e;->c:Lcom/google/common/util/concurrent/w;

    iput-object p2, p0, Lcom/google/common/util/concurrent/w$e;->b:Lcom/google/common/util/concurrent/w$p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
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

    iget-object v0, p0, Lcom/google/common/util/concurrent/w$e;->b:Lcom/google/common/util/concurrent/w$p;

    iget-object v1, p0, Lcom/google/common/util/concurrent/w$e;->c:Lcom/google/common/util/concurrent/w;

    invoke-static {v1}, Lcom/google/common/util/concurrent/w;->f(Lcom/google/common/util/concurrent/w;)Lcom/google/common/util/concurrent/w$o;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/util/concurrent/w$o;->a(Lcom/google/common/util/concurrent/w$o;)Lcom/google/common/util/concurrent/w$w;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/w$p;->a(Lcom/google/common/util/concurrent/w$w;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/w$e;->b:Lcom/google/common/util/concurrent/w$p;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
