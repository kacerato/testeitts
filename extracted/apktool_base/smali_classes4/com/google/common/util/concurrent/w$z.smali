.class public final Lcom/google/common/util/concurrent/w$z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "z"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/common/util/concurrent/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/w<",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/w<",
            "+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/w;

    iput-object p1, p0, Lcom/google/common/util/concurrent/w$z;->a:Lcom/google/common/util/concurrent/w;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/w$z;->a:Lcom/google/common/util/concurrent/w;

    invoke-static {v0}, Lcom/google/common/util/concurrent/w;->b(Lcom/google/common/util/concurrent/w;)V

    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/util/concurrent/j0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/w$z;->a:Lcom/google/common/util/concurrent/w;

    invoke-static {v0}, Lcom/google/common/util/concurrent/w;->a(Lcom/google/common/util/concurrent/w;)Lcom/google/common/util/concurrent/F;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Q;->h(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
