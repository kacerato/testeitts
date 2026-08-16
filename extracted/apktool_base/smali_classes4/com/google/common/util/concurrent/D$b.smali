.class public Lcom/google/common/util/concurrent/D$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/D;->g(Lcom/google/common/util/concurrent/l;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/l<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/util/concurrent/D$d;

.field public final synthetic b:Lcom/google/common/util/concurrent/l;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/D;Lcom/google/common/util/concurrent/D$d;Lcom/google/common/util/concurrent/l;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/util/concurrent/D$b;->a:Lcom/google/common/util/concurrent/D$d;

    iput-object p3, p0, Lcom/google/common/util/concurrent/D$b;->b:Lcom/google/common/util/concurrent/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/google/common/util/concurrent/Z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/Z<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/D$b;->a:Lcom/google/common/util/concurrent/D$d;

    invoke-static {v0}, Lcom/google/common/util/concurrent/D$d;->a(Lcom/google/common/util/concurrent/D$d;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/util/concurrent/Q;->k()Lcom/google/common/util/concurrent/Z;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/D$b;->b:Lcom/google/common/util/concurrent/l;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/l;->call()Lcom/google/common/util/concurrent/Z;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/D$b;->b:Lcom/google/common/util/concurrent/l;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
