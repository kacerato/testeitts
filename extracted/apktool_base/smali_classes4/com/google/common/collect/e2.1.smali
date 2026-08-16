.class public Lcom/google/common/collect/e2;
.super Lcom/google/common/collect/d2;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/d2<",
        "TK;>;"
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
    serializable = true
.end annotation


# static fields
.field public static final r:I = -0x2


# instance fields
.field public transient o:[J
    .annotation build Lv2/d;
    .end annotation
.end field

.field public transient p:I

.field public transient q:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/collect/e2;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/e2;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/d2;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/d2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/d2<",
            "TK;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/google/common/collect/d2;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/google/common/collect/d2;->D()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/e2;->o(IF)V

    .line 6
    invoke-virtual {p1}, Lcom/google/common/collect/d2;->f()I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/common/collect/d2;->j(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/google/common/collect/d2;->l(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/d2;->v(Ljava/lang/Object;I)I

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/common/collect/d2;->t(I)I

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static F()Lcom/google/common/collect/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/e2<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/e2;

    invoke-direct {v0}, Lcom/google/common/collect/e2;-><init>()V

    return-object v0
.end method

.method public static G(I)Lcom/google/common/collect/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/e2<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/e2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/e2;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final H(I)I
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/e2;->o:[J

    aget-wide v1, v0, p1

    const/16 p1, 0x20

    ushr-long v0, v1, p1

    long-to-int p1, v0

    return p1
.end method

.method public final I(I)I
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/e2;->o:[J

    aget-wide v1, v0, p1

    long-to-int p1, v1

    return p1
.end method

.method public final J(II)V
    .locals 5

    iget-object v0, p0, Lcom/google/common/collect/e2;->o:[J

    aget-wide v1, v0, p1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v3, p2

    const/16 p2, 0x20

    shl-long/2addr v3, p2

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    return-void
.end method

.method public final K(II)V
    .locals 1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    iput p2, p0, Lcom/google/common/collect/e2;->p:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/e2;->L(II)V

    :goto_0
    if-ne p2, v0, :cond_1

    iput p1, p0, Lcom/google/common/collect/e2;->q:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/google/common/collect/e2;->J(II)V

    :goto_1
    return-void
.end method

.method public final L(II)V
    .locals 7

    iget-object v0, p0, Lcom/google/common/collect/e2;->o:[J

    aget-wide v1, v0, p1

    const-wide v3, -0x100000000L

    and-long/2addr v1, v3

    int-to-long v3, p2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    return-void
.end method

.method public a()V
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/d2;->a()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/common/collect/e2;->p:I

    iput v0, p0, Lcom/google/common/collect/e2;->q:I

    return-void
.end method

.method public f()I
    .locals 2

    iget v0, p0, Lcom/google/common/collect/e2;->p:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public o(IF)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/d2;->o(IF)V

    const/4 p2, -0x2

    iput p2, p0, Lcom/google/common/collect/e2;->p:I

    iput p2, p0, Lcom/google/common/collect/e2;->q:I

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/common/collect/e2;->o:[J

    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method

.method public p(ILjava/lang/Object;II)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;II)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/common/collect/d2;->p(ILjava/lang/Object;II)V

    iget p2, p0, Lcom/google/common/collect/e2;->q:I

    invoke-virtual {p0, p2, p1}, Lcom/google/common/collect/e2;->K(II)V

    const/4 p2, -0x2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/e2;->K(II)V

    return-void
.end method

.method public q(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/common/collect/d2;->D()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/e2;->H(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/e2;->I(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/e2;->K(II)V

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/e2;->H(I)I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/google/common/collect/e2;->K(II)V

    invoke-virtual {p0, v0}, Lcom/google/common/collect/e2;->I(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/e2;->K(II)V

    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/d2;->q(I)V

    return-void
.end method

.method public t(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/e2;->I(I)I

    move-result p1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1
.end method

.method public u(II)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/d2;->D()I

    move-result v0

    if-ne p1, v0, :cond_0

    move p1, p2

    :cond_0
    return p1
.end method

.method public z(I)V
    .locals 4

    invoke-super {p0, p1}, Lcom/google/common/collect/d2;->z(I)V

    iget-object v0, p0, Lcom/google/common/collect/e2;->o:[J

    array-length v1, v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/e2;->o:[J

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    return-void
.end method
