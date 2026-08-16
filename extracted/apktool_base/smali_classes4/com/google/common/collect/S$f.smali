.class public final Lcom/google/common/collect/S$f;
.super Lcom/google/common/collect/S$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/S$d<",
        "TR;",
        "Lcom/google/common/collect/i1<",
        "TC;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lcom/google/common/collect/S;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/S;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/S$f;->h:Lcom/google/common/collect/S;

    .line 3
    invoke-static {p1}, Lcom/google/common/collect/S;->O(Lcom/google/common/collect/S;)[I

    move-result-object p1

    array-length p1, p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/S$d;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/S;Lcom/google/common/collect/S$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/S$f;-><init>(Lcom/google/common/collect/S;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic P(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/S$f;->T(I)Lcom/google/common/collect/i1;

    move-result-object p1

    return-object p1
.end method

.method public R()Lcom/google/common/collect/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/i1<",
            "TR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/S$f;->h:Lcom/google/common/collect/S;

    invoke-static {v0}, Lcom/google/common/collect/S;->T(Lcom/google/common/collect/S;)Lcom/google/common/collect/i1;

    move-result-object v0

    return-object v0
.end method

.method public T(I)Lcom/google/common/collect/i1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/i1<",
            "TC;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/S$e;

    iget-object v1, p0, Lcom/google/common/collect/S$f;->h:Lcom/google/common/collect/S;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/S$e;-><init>(Lcom/google/common/collect/S;I)V

    return-object v0
.end method

.method public v()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
