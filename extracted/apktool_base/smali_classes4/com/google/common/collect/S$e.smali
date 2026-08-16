.class public final Lcom/google/common/collect/S$e;
.super Lcom/google/common/collect/S$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/S$d<",
        "TC;TV;>;"
    }
.end annotation


# instance fields
.field public final h:I

.field public final synthetic i:Lcom/google/common/collect/S;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/S;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/S$e;->i:Lcom/google/common/collect/S;

    invoke-static {p1}, Lcom/google/common/collect/S;->O(Lcom/google/common/collect/S;)[I

    move-result-object p1

    aget p1, p1, p2

    invoke-direct {p0, p1}, Lcom/google/common/collect/S$d;-><init>(I)V

    iput p2, p0, Lcom/google/common/collect/S$e;->h:I

    return-void
.end method


# virtual methods
.method public P(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/S$e;->i:Lcom/google/common/collect/S;

    invoke-static {v0}, Lcom/google/common/collect/S;->R(Lcom/google/common/collect/S;)[[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/S$e;->h:I

    aget-object v0, v0, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public R()Lcom/google/common/collect/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/i1<",
            "TC;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/S$e;->i:Lcom/google/common/collect/S;

    invoke-static {v0}, Lcom/google/common/collect/S;->P(Lcom/google/common/collect/S;)Lcom/google/common/collect/i1;

    move-result-object v0

    return-object v0
.end method

.method public v()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
