.class public interface abstract Lcom/google/common/collect/A2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/S2;


# annotations
.annotation runtime Lcom/google/common/collect/X;
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
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/S2<",
        "TR;TC;TV;>;"
    }
.end annotation

.annotation build Lv2/b;
.end annotation


# virtual methods
.method public bridge synthetic u()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/common/collect/A2;->u()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public abstract u()Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation
.end method

.method public bridge synthetic x()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/common/collect/A2;->x()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public abstract x()Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TR;>;"
        }
    .end annotation
.end method
