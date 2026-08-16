.class public Lcom/google/common/collect/P2;
.super Lcom/google/common/collect/Q2;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/A2;


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/P2$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Q2<",
        "TR;TC;TV;>;",
        "Lcom/google/common/collect/A2<",
        "TR;TC;TV;>;"
    }
.end annotation

.annotation build Lv2/b;
.end annotation


# static fields
.field public static final j:J


# direct methods
.method public constructor <init>(Ljava/util/SortedMap;Lw2/Q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;",
            "Lw2/Q<",
            "+",
            "Ljava/util/Map<",
            "TC;TV;>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Q2;-><init>(Ljava/util/Map;Lw2/Q;)V

    return-void
.end method

.method public static synthetic p(Lcom/google/common/collect/P2;)Ljava/util/SortedMap;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/P2;->r()Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic l()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/P2;->q()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/P2$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/P2$b;-><init>(Lcom/google/common/collect/P2;Lcom/google/common/collect/P2$a;)V

    return-object v0
.end method

.method public final r()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Q2;->d:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public bridge synthetic u()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/P2;->u()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/google/common/collect/Q2;->u()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public bridge synthetic x()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/P2;->x()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TR;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/P2;->u()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method
