.class public Lcom/google/common/collect/n2$c;
.super Lcom/google/common/collect/Z0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/n2;->x()Lcom/google/common/collect/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Z0<",
        "TC;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/google/common/collect/n2;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/n2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/n2$c;->d:Lcom/google/common/collect/n2;

    invoke-direct {p0}, Lcom/google/common/collect/Z0;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic Q()Lcom/google/common/collect/c1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/n2$c;->R()Lcom/google/common/collect/x1;

    move-result-object v0

    return-object v0
.end method

.method public R()Lcom/google/common/collect/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/x1<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n2$c;->d:Lcom/google/common/collect/n2;

    return-object v0
.end method

.method public S(I)Ljava/lang/Comparable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TC;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/Z0;->size()I

    move-result v0

    invoke-static {p1, v0}, Lw2/H;->C(II)I

    iget-object v0, p0, Lcom/google/common/collect/n2$c;->d:Lcom/google/common/collect/n2;

    iget-object v1, v0, Lcom/google/common/collect/O;->i:Lcom/google/common/collect/W;

    invoke-virtual {v0}, Lcom/google/common/collect/n2;->X0()Ljava/lang/Comparable;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/common/collect/W;->h(Ljava/lang/Comparable;J)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/n2$c;->S(I)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method
