.class public final Lcom/google/common/cache/k$y;
.super Lcom/google/common/cache/k$w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "y"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/k$w<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public volatile f:J

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

.field public h:Lcom/google/common/cache/p;
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
.method public constructor <init>(Ljava/lang/Object;ILcom/google/common/cache/p;)V
    .locals 0
    .param p3    # Lcom/google/common/cache/p;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/cache/k$w;-><init>(Ljava/lang/Object;ILcom/google/common/cache/p;)V

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lcom/google/common/cache/k$y;->f:J

    invoke-static {}, Lcom/google/common/cache/k;->F()Lcom/google/common/cache/p;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/k$y;->g:Lcom/google/common/cache/p;

    invoke-static {}, Lcom/google/common/cache/k;->F()Lcom/google/common/cache/p;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/k$y;->h:Lcom/google/common/cache/p;

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

    iget-object v0, p0, Lcom/google/common/cache/k$y;->h:Lcom/google/common/cache/p;

    return-object v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lcom/google/common/cache/k$y;->f:J

    return-wide v0
.end method

.method public i(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/common/cache/k$y;->f:J

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

    iget-object v0, p0, Lcom/google/common/cache/k$y;->g:Lcom/google/common/cache/p;

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

    iput-object p1, p0, Lcom/google/common/cache/k$y;->g:Lcom/google/common/cache/p;

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

    iput-object p1, p0, Lcom/google/common/cache/k$y;->h:Lcom/google/common/cache/p;

    return-void
.end method
