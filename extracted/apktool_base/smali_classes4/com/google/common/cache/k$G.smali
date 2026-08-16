.class public final Lcom/google/common/cache/k$G;
.super Lcom/google/common/cache/k$E;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "G"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/k$E<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public volatile e:J

.field public f:Lcom/google/common/cache/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/p<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lq3/i;
    .end annotation
.end field

.field public g:Lcom/google/common/cache/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/p<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lq3/i;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/p;)V
    .locals 0
    .param p4    # Lcom/google/common/cache/p;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/cache/k$E;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/p;)V

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lcom/google/common/cache/k$G;->e:J

    invoke-static {}, Lcom/google/common/cache/k;->F()Lcom/google/common/cache/p;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/k$G;->f:Lcom/google/common/cache/p;

    invoke-static {}, Lcom/google/common/cache/k;->F()Lcom/google/common/cache/p;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/k$G;->g:Lcom/google/common/cache/p;

    return-void
.end method


# virtual methods
.method public d()Lcom/google/common/cache/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$G;->g:Lcom/google/common/cache/p;

    return-object v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lcom/google/common/cache/k$G;->e:J

    return-wide v0
.end method

.method public i(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/common/cache/k$G;->e:J

    return-void
.end method

.method public k()Lcom/google/common/cache/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$G;->f:Lcom/google/common/cache/p;

    return-object v0
.end method

.method public s(Lcom/google/common/cache/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/cache/k$G;->f:Lcom/google/common/cache/p;

    return-void
.end method

.method public u(Lcom/google/common/cache/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/cache/k$G;->g:Lcom/google/common/cache/p;

    return-void
.end method
