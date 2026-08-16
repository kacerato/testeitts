.class public Lcom/google/common/collect/Q1$w$a;
.super Lcom/google/common/collect/Q1$E;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Q1$w;->navigableKeySet()Ljava/util/NavigableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Q1$E<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/collect/Q1$w;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Q1$w;Ljava/util/NavigableMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/Q1$w$a;->c:Lcom/google/common/collect/Q1$w;

    invoke-direct {p0, p2}, Lcom/google/common/collect/Q1$E;-><init>(Ljava/util/NavigableMap;)V

    return-void
.end method


# virtual methods
.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Q1$w$a;->c:Lcom/google/common/collect/Q1$w;

    invoke-static {v0}, Lcom/google/common/collect/Q1$w;->k(Lcom/google/common/collect/Q1$w;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Q1$w$a;->c:Lcom/google/common/collect/Q1$w;

    invoke-static {v1}, Lcom/google/common/collect/Q1$w;->j(Lcom/google/common/collect/Q1$w;)Lw2/I;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/Q1$v;->l(Ljava/util/Map;Lw2/I;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Q1$w$a;->c:Lcom/google/common/collect/Q1$w;

    invoke-static {v0}, Lcom/google/common/collect/Q1$w;->k(Lcom/google/common/collect/Q1$w;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Q1$w$a;->c:Lcom/google/common/collect/Q1$w;

    invoke-static {v1}, Lcom/google/common/collect/Q1$w;->j(Lcom/google/common/collect/Q1$w;)Lw2/I;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/Q1$v;->m(Ljava/util/Map;Lw2/I;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method
