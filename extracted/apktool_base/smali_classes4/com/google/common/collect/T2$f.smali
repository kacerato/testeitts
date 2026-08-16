.class public final Lcom/google/common/collect/T2$f;
.super Lcom/google/common/collect/T2$g;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/A2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/T2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
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
        "Lcom/google/common/collect/T2$g<",
        "TR;TC;TV;>;",
        "Lcom/google/common/collect/A2<",
        "TR;TC;TV;>;"
    }
.end annotation


# static fields
.field public static final d:J


# direct methods
.method public constructor <init>(Lcom/google/common/collect/A2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/A2<",
            "TR;+TC;+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/collect/T2$g;-><init>(Lcom/google/common/collect/S2;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic k0()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/T2$f;->o0()Lcom/google/common/collect/A2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m0()Lcom/google/common/collect/S2;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/T2$f;->o0()Lcom/google/common/collect/A2;

    move-result-object v0

    return-object v0
.end method

.method public o0()Lcom/google/common/collect/A2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/A2<",
            "TR;TC;TV;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/T2$g;->m0()Lcom/google/common/collect/S2;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/A2;

    return-object v0
.end method

.method public bridge synthetic u()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/T2$f;->u()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/util/SortedMap;
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

    .line 2
    invoke-static {}, Lcom/google/common/collect/T2;->a()Lw2/t;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/T2$f;->o0()Lcom/google/common/collect/A2;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/A2;->u()Ljava/util/SortedMap;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Q1;->D0(Ljava/util/SortedMap;Lw2/t;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic x()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/T2$f;->x()Ljava/util/SortedSet;

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
    invoke-virtual {p0}, Lcom/google/common/collect/T2$f;->o0()Lcom/google/common/collect/A2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/A2;->x()Ljava/util/SortedSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method
