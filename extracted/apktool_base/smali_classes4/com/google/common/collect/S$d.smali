.class public abstract Lcom/google/common/collect/S$d;
.super Lcom/google/common/collect/i1$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/i1$c<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final g:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/i1$c;-><init>()V

    iput p1, p0, Lcom/google/common/collect/S$d;->g:I

    return-void
.end method


# virtual methods
.method public N()Lcom/google/common/collect/e3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/S$d$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/S$d$a;-><init>(Lcom/google/common/collect/S$d;)V

    return-object v0
.end method

.method public O(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/S$d;->R()Lcom/google/common/collect/i1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/i1;->x()Lcom/google/common/collect/r1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/r1;->a()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract P(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method

.method public final Q()Z
    .locals 2

    iget v0, p0, Lcom/google/common/collect/S$d;->g:I

    invoke-virtual {p0}, Lcom/google/common/collect/S$d;->R()Lcom/google/common/collect/i1;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract R()Lcom/google/common/collect/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/i1<",
            "TK;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/S$d;->R()Lcom/google/common/collect/i1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/i1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/S$d;->P(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
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

    invoke-virtual {p0}, Lcom/google/common/collect/S$d;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/S$d;->R()Lcom/google/common/collect/i1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/i1;->x()Lcom/google/common/collect/r1;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/google/common/collect/i1$c;->p()Lcom/google/common/collect/r1;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/S$d;->g:I

    return v0
.end method
