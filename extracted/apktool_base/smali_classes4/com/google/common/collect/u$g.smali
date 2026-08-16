.class public Lcom/google/common/collect/u$g;
.super Lcom/google/common/collect/u$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/u$d<",
        "TC;TV;>;"
    }
.end annotation


# instance fields
.field public final c:I

.field public final synthetic d:Lcom/google/common/collect/u;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/u;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/u$g;->d:Lcom/google/common/collect/u;

    invoke-static {p1}, Lcom/google/common/collect/u;->k(Lcom/google/common/collect/u;)Lcom/google/common/collect/i1;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/u$d;-><init>(Lcom/google/common/collect/i1;Lcom/google/common/collect/u$a;)V

    iput p2, p0, Lcom/google/common/collect/u$g;->c:I

    return-void
.end method


# virtual methods
.method public i()Ljava/lang/String;
    .locals 1

    const-string v0, "Column"

    return-object v0
.end method

.method public j(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u$g;->d:Lcom/google/common/collect/u;

    iget v1, p0, Lcom/google/common/collect/u$g;->c:I

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/u;->m(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public k(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u$g;->d:Lcom/google/common/collect/u;

    iget v1, p0, Lcom/google/common/collect/u$g;->c:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/common/collect/u;->C(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
