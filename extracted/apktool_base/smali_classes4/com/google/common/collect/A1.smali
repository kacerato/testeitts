.class public abstract Lcom/google/common/collect/A1;
.super Lcom/google/common/collect/r1;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/r1<",
        "TE;>;"
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/r1;-><init>()V

    return-void
.end method


# virtual methods
.method public b([Ljava/lang/Object;I)I
    .locals 1
    .annotation build Lv2/c;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/r1;->a()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/g1;->b([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public i()Lcom/google/common/collect/e3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/r1;->a()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/g1;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/A1;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public x()Lcom/google/common/collect/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/A1$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/A1$a;-><init>(Lcom/google/common/collect/A1;)V

    return-object v0
.end method
