.class public abstract LWd/O;
.super LWd/c0;
.source "SourceFile"


# static fields
.field public static final t:J = 0x1L


# instance fields
.field public transient q:[I

.field public r:I

.field public s:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, LWd/c0;-><init>()V

    .line 2
    sget v0, LVd/a;->g:I

    iput v0, p0, LWd/O;->r:I

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, LWd/O;->q:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 4
    invoke-direct {p0, p1}, LWd/c0;-><init>(I)V

    .line 5
    sget p1, LVd/a;->g:I

    iput p1, p0, LWd/O;->r:I

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, LWd/O;->q:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, LWd/c0;-><init>(IF)V

    .line 8
    sget p1, LVd/a;->g:I

    iput p1, p0, LWd/O;->r:I

    if-eqz p1, :cond_0

    .line 9
    iget-object p2, p0, LWd/O;->q:[I

    invoke-static {p2, p1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, LWd/c0;-><init>(IF)V

    .line 11
    iput p3, p0, LWd/O;->r:I

    if-eqz p3, :cond_0

    .line 12
    iget-object p1, p0, LWd/O;->q:[I

    invoke-static {p1, p3}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public U0(Lhe/S;)Z
    .locals 5

    iget-object v0, p0, LWd/c0;->l:[B

    iget-object v1, p0, LWd/O;->q:[I

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x1

    if-lez v2, :cond_1

    aget-byte v2, v0, v3

    if-ne v2, v4, :cond_0

    aget v2, v1, v3

    invoke-interface {p1, v2}, Lhe/S;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    return v4
.end method

.method public contains(I)Z
    .locals 0

    invoke-virtual {p0, p1}, LWd/O;->mf(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hf(I)V
    .locals 2

    iget-object v0, p0, LWd/O;->q:[I

    iget v1, p0, LWd/O;->r:I

    aput v1, v0, p1

    invoke-super {p0, p1}, LWd/c0;->hf(I)V

    return-void
.end method

.method public i()I
    .locals 1

    iget v0, p0, LWd/O;->r:I

    return v0
.end method

.method public jf(I)I
    .locals 1

    invoke-super {p0, p1}, LWd/c0;->jf(I)I

    move-result p1

    new-array v0, p1, [I

    iput-object v0, p0, LWd/O;->q:[I

    return p1
.end method

.method public mf(I)I
    .locals 5

    iget-object v0, p0, LWd/c0;->l:[B

    iget-object v1, p0, LWd/O;->q:[I

    array-length v2, v0

    invoke-static {p1}, LVd/b;->d(I)I

    move-result v3

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    rem-int v2, v3, v2

    aget-byte v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    aget v1, v1, v2

    if-ne v1, p1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, p1, v2, v3, v0}, LWd/O;->nf(IIIB)I

    move-result p1

    return p1
.end method

.method public nf(IIIB)I
    .locals 4

    iget-object p4, p0, LWd/O;->q:[I

    array-length p4, p4

    add-int/lit8 v0, p4, -0x2

    rem-int/2addr p3, v0

    add-int/lit8 p3, p3, 0x1

    move v0, p2

    :cond_0
    sub-int/2addr v0, p3

    if-gez v0, :cond_1

    add-int/2addr v0, p4

    :cond_1
    iget-object v1, p0, LWd/c0;->l:[B

    aget-byte v1, v1, v0

    const/4 v2, -0x1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, LWd/O;->q:[I

    aget v3, v3, v0

    if-ne p1, v3, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    return v0

    :cond_3
    if-ne v0, p2, :cond_0

    return v2
.end method

.method public of(I)I
    .locals 5

    invoke-static {p1}, LVd/b;->d(I)I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iget-object v1, p0, LWd/c0;->l:[B

    array-length v2, v1

    rem-int v2, v0, v2

    aget-byte v1, v1, v2

    const/4 v3, 0x0

    iput-boolean v3, p0, LWd/O;->s:Z

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iput-boolean v3, p0, LWd/O;->s:Z

    invoke-virtual {p0, v2, p1}, LWd/O;->pf(II)V

    return v2

    :cond_0
    if-ne v1, v3, :cond_1

    iget-object v4, p0, LWd/O;->q:[I

    aget v4, v4, v2

    if-ne v4, p1, :cond_1

    neg-int p1, v2

    sub-int/2addr p1, v3

    return p1

    :cond_1
    invoke-virtual {p0, p1, v2, v0, v1}, LWd/O;->qf(IIIB)I

    move-result p1

    return p1
.end method

.method public pf(II)V
    .locals 1

    iget-object v0, p0, LWd/O;->q:[I

    aput p2, v0, p1

    iget-object p2, p0, LWd/c0;->l:[B

    const/4 v0, 0x1

    aput-byte v0, p2, p1

    return-void
.end method

.method public qf(IIIB)I
    .locals 6

    iget-object v0, p0, LWd/O;->q:[I

    array-length v0, v0

    add-int/lit8 v1, v0, -0x2

    rem-int/2addr p3, v1

    const/4 v1, 0x1

    add-int/2addr p3, v1

    const/4 v2, -0x1

    move v4, p2

    move v3, v2

    :cond_0
    const/4 v5, 0x2

    if-ne p4, v5, :cond_1

    if-ne v3, v2, :cond_1

    move v3, v4

    :cond_1
    sub-int/2addr v4, p3

    if-gez v4, :cond_2

    add-int/2addr v4, v0

    :cond_2
    iget-object p4, p0, LWd/c0;->l:[B

    aget-byte p4, p4, v4

    if-nez p4, :cond_4

    if-eq v3, v2, :cond_3

    invoke-virtual {p0, v3, p1}, LWd/O;->pf(II)V

    return v3

    :cond_3
    iput-boolean v1, p0, LWd/O;->s:Z

    invoke-virtual {p0, v4, p1}, LWd/O;->pf(II)V

    return v4

    :cond_4
    if-ne p4, v1, :cond_5

    iget-object v5, p0, LWd/O;->q:[I

    aget v5, v5, v4

    if-ne v5, p1, :cond_5

    neg-int p1, v4

    sub-int/2addr p1, v1

    return p1

    :cond_5
    if-ne v4, p2, :cond_0

    if-eq v3, v2, :cond_6

    invoke-virtual {p0, v3, p1}, LWd/O;->pf(II)V

    return v3

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No free or removed slots available. Key set full?!!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
