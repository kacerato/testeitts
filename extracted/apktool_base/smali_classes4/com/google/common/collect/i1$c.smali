.class public abstract Lcom/google/common/collect/i1$c;
.super Lcom/google/common/collect/i1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/i1<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/i1;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract N()Lcom/google/common/collect/e3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/i1;->s()Lcom/google/common/collect/r1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/i1;->x()Lcom/google/common/collect/r1;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/google/common/collect/r1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r1<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/i1$c$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/i1$c$a;-><init>(Lcom/google/common/collect/i1$c;)V

    return-object v0
.end method

.method public p()Lcom/google/common/collect/r1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r1<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/k1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/k1;-><init>(Lcom/google/common/collect/i1;)V

    return-object v0
.end method

.method public q()Lcom/google/common/collect/c1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/c1<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/l1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/l1;-><init>(Lcom/google/common/collect/i1;)V

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/i1;->L()Lcom/google/common/collect/c1;

    move-result-object v0

    return-object v0
.end method
