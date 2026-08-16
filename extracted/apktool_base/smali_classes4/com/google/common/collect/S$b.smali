.class public final Lcom/google/common/collect/S$b;
.super Lcom/google/common/collect/S$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/S$d<",
        "TR;TV;>;"
    }
.end annotation


# instance fields
.field public final h:I

.field public final synthetic i:Lcom/google/common/collect/S;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/S;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/S$b;->i:Lcom/google/common/collect/S;

    invoke-static {p1}, Lcom/google/common/collect/S;->S(Lcom/google/common/collect/S;)[I

    move-result-object p1

    aget p1, p1, p2

    invoke-direct {p0, p1}, Lcom/google/common/collect/S$d;-><init>(I)V

    iput p2, p0, Lcom/google/common/collect/S$b;->h:I

    return-void
.end method


# virtual methods
.method public P(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/S$b;->i:Lcom/google/common/collect/S;

    invoke-static {v0}, Lcom/google/common/collect/S;->R(Lcom/google/common/collect/S;)[[Ljava/lang/Object;

    move-result-object v0

    aget-object p1, v0, p1

    iget v0, p0, Lcom/google/common/collect/S$b;->h:I

    aget-object p1, p1, v0

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

    iget-object v0, p0, Lcom/google/common/collect/S$b;->i:Lcom/google/common/collect/S;

    invoke-static {v0}, Lcom/google/common/collect/S;->T(Lcom/google/common/collect/S;)Lcom/google/common/collect/i1;

    move-result-object v0

    return-object v0
.end method

.method public v()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
