.class public interface abstract Lcom/google/common/collect/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/m0;
.implements Lcom/google/common/collect/C2;


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/m0<",
        "TK;TV;>;",
        "Lcom/google/common/collect/C2<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lv2/b;
.end annotation


# virtual methods
.method public abstract o()Lcom/google/common/collect/C2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/C2<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic o()Lcom/google/common/collect/S1;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/common/collect/o0;->o()Lcom/google/common/collect/C2;

    move-result-object v0

    return-object v0
.end method
