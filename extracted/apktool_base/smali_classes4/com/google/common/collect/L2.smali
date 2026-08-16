.class public interface abstract Lcom/google/common/collect/L2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/V1;


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/V1<",
        "TE;>;"
    }
.end annotation

.annotation build Lv2/c;
.end annotation


# virtual methods
.method public bridge synthetic S1()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/common/collect/L2;->S1()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public abstract S1()Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation
.end method
