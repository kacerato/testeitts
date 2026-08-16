.class public Lcom/google/common/collect/q1$a;
.super Lcom/google/common/collect/g1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/q1;->B(Lcom/google/common/collect/j2;)Lcom/google/common/collect/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/g1<",
        "Lcom/google/common/collect/j2<",
        "TC;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Lcom/google/common/collect/j2;

.field public final synthetic g:Lcom/google/common/collect/q1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/q1;IILcom/google/common/collect/j2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/q1$a;->g:Lcom/google/common/collect/q1;

    iput p2, p0, Lcom/google/common/collect/q1$a;->d:I

    iput p3, p0, Lcom/google/common/collect/q1$a;->e:I

    iput-object p4, p0, Lcom/google/common/collect/q1$a;->f:Lcom/google/common/collect/j2;

    invoke-direct {p0}, Lcom/google/common/collect/g1;-><init>()V

    return-void
.end method


# virtual methods
.method public Q(I)Lcom/google/common/collect/j2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/collect/q1$a;->d:I

    invoke-static {p1, v0}, Lw2/H;->C(II)I

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/google/common/collect/q1$a;->d:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/q1$a;->g:Lcom/google/common/collect/q1;

    invoke-static {v0}, Lcom/google/common/collect/q1;->q(Lcom/google/common/collect/q1;)Lcom/google/common/collect/g1;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/q1$a;->e:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/j2;

    return-object p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/q1$a;->g:Lcom/google/common/collect/q1;

    invoke-static {v0}, Lcom/google/common/collect/q1;->q(Lcom/google/common/collect/q1;)Lcom/google/common/collect/g1;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/q1$a;->e:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/j2;

    iget-object v0, p0, Lcom/google/common/collect/q1$a;->f:Lcom/google/common/collect/j2;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/j2;->s(Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/q1$a;->Q(I)Lcom/google/common/collect/j2;

    move-result-object p1

    return-object p1
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/q1$a;->d:I

    return v0
.end method
