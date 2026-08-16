.class public Lcom/google/common/cache/k$e$a;
.super Lcom/google/common/cache/k$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/k$d<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public b:Lcom/google/common/cache/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/p<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lq3/i;
    .end annotation
.end field

.field public c:Lcom/google/common/cache/p;
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
.method public constructor <init>(Lcom/google/common/cache/k$e;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/cache/k$d;-><init>()V

    iput-object p0, p0, Lcom/google/common/cache/k$e$a;->b:Lcom/google/common/cache/p;

    iput-object p0, p0, Lcom/google/common/cache/k$e$a;->c:Lcom/google/common/cache/p;

    return-void
.end method


# virtual methods
.method public c(Lcom/google/common/cache/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/cache/k$e$a;->c:Lcom/google/common/cache/p;

    return-void
.end method

.method public h(J)V
    .locals 0

    return-void
.end method

.method public j()Lcom/google/common/cache/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$e$a;->c:Lcom/google/common/cache/p;

    return-object v0
.end method

.method public o()Lcom/google/common/cache/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$e$a;->b:Lcom/google/common/cache/p;

    return-object v0
.end method

.method public q()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public r(Lcom/google/common/cache/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/cache/k$e$a;->b:Lcom/google/common/cache/p;

    return-void
.end method
