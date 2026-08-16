.class public Lcom/google/common/collect/G;
.super Lcom/google/common/collect/D;
.source "SourceFile"


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
        "Lcom/google/common/collect/D<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lv2/c;
.end annotation


# static fields
.field public static final r:I = -0x2


# instance fields
.field public transient n:[J
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation build Lv2/d;
    .end annotation
.end field

.field public transient o:I

.field public transient p:I

.field public final q:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/collect/G;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/G;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/common/collect/D;-><init>(I)V

    .line 4
    iput-boolean p2, p0, Lcom/google/common/collect/G;->q:Z

    return-void
.end method

.method public static g0()Lcom/google/common/collect/G;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/G<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/G;

    invoke-direct {v0}, Lcom/google/common/collect/G;-><init>()V

    return-object v0
.end method

.method public static h0(I)Lcom/google/common/collect/G;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/G<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/G;

    invoke-direct {v0, p0}, Lcom/google/common/collect/G;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public C()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/G;->o:I

    return v0
.end method

.method public D(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/G;->j0(I)J

    move-result-wide v0

    long-to-int p1, v0

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public I(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/D;->I(I)V

    const/4 p1, -0x2

    iput p1, p0, Lcom/google/common/collect/G;->o:I

    iput p1, p0, Lcom/google/common/collect/G;->p:I

    return-void
.end method

.method public J(ILjava/lang/Object;Ljava/lang/Object;II)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;II)V"
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Lcom/google/common/collect/D;->J(ILjava/lang/Object;Ljava/lang/Object;II)V

    iget p2, p0, Lcom/google/common/collect/G;->p:I

    invoke-virtual {p0, p2, p1}, Lcom/google/common/collect/G;->n0(II)V

    const/4 p2, -0x2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/G;->n0(II)V

    return-void
.end method

.method public M(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/D;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/D;->M(II)V

    invoke-virtual {p0, p1}, Lcom/google/common/collect/G;->i0(I)I

    move-result p2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/G;->D(I)I

    move-result v1

    invoke-virtual {p0, p2, v1}, Lcom/google/common/collect/G;->n0(II)V

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/G;->i0(I)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/google/common/collect/G;->n0(II)V

    invoke-virtual {p0, v0}, Lcom/google/common/collect/G;->D(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/G;->n0(II)V

    :cond_0
    const-wide/16 p1, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/common/collect/G;->l0(IJ)V

    return-void
.end method

.method public V(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/common/collect/D;->V(I)V

    invoke-virtual {p0}, Lcom/google/common/collect/G;->k0()[J

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/G;->n:[J

    return-void
.end method

.method public clear()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/common/collect/D;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x2

    iput v0, p0, Lcom/google/common/collect/G;->o:I

    iput v0, p0, Lcom/google/common/collect/G;->p:I

    iget-object v0, p0, Lcom/google/common/collect/G;->n:[J

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/D;->size()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    :cond_1
    invoke-super {p0}, Lcom/google/common/collect/D;->clear()V

    return-void
.end method

.method public final i0(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/G;->j0(I)J

    move-result-wide v0

    const/16 p1, 0x20

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public final j0(I)J
    .locals 3

    invoke-virtual {p0}, Lcom/google/common/collect/G;->k0()[J

    move-result-object v0

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public final k0()[J
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/G;->n:[J

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, [J

    return-object v0
.end method

.method public final l0(IJ)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/G;->k0()[J

    move-result-object v0

    aput-wide p2, v0, p1

    return-void
.end method

.method public final m0(II)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/common/collect/G;->j0(I)J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 p2, p2, 0x1

    int-to-long v2, p2

    const/16 p2, 0x20

    shl-long/2addr v2, p2

    or-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/collect/G;->l0(IJ)V

    return-void
.end method

.method public final n0(II)V
    .locals 1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    iput p2, p0, Lcom/google/common/collect/G;->o:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/G;->o0(II)V

    :goto_0
    if-ne p2, v0, :cond_1

    iput p1, p0, Lcom/google/common/collect/G;->p:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/google/common/collect/G;->m0(II)V

    :goto_1
    return-void
.end method

.method public o(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/common/collect/G;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/G;->i0(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/G;->D(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/G;->n0(II)V

    iget v0, p0, Lcom/google/common/collect/G;->p:I

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/G;->n0(II)V

    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/G;->n0(II)V

    invoke-virtual {p0}, Lcom/google/common/collect/D;->F()V

    :cond_0
    return-void
.end method

.method public final o0(II)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/google/common/collect/G;->j0(I)J

    move-result-wide v0

    const-wide v2, -0x100000000L

    and-long/2addr v0, v2

    add-int/lit8 p2, p2, 0x1

    int-to-long v2, p2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/collect/G;->l0(IJ)V

    return-void
.end method

.method public p(II)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/D;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    move p1, p2

    :cond_0
    return p1
.end method

.method public q()I
    .locals 2

    invoke-super {p0}, Lcom/google/common/collect/D;->q()I

    move-result v0

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/common/collect/G;->n:[J

    return v0
.end method

.method public r()Ljava/util/Map;
    .locals 2
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/D;->r()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/G;->n:[J

    return-object v0
.end method

.method public v(I)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f800000    # 1.0f

    iget-boolean v2, p0, Lcom/google/common/collect/G;->q:Z

    invoke-direct {v0, p1, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-object v0
.end method
