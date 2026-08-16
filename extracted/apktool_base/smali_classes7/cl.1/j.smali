.class public Lcl/j;
.super Lcl/h;
.source "SourceFile"


# instance fields
.field public final d:[B

.field public final e:[B

.field public final f:[B

.field public final g:[B

.field public final h:[B


# direct methods
.method public constructor <init>(Lcl/i;[B)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Lcl/h;-><init>(ZLcl/i;)V

    invoke-virtual {p1}, Lcl/i;->a()Lcl/b;

    move-result-object p1

    invoke-virtual {p1}, Lcl/b;->m()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcl/j;->d:[B

    invoke-virtual {p1}, Lcl/b;->m()I

    move-result v0

    invoke-virtual {p1}, Lcl/b;->l()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x20

    invoke-static {p2, v0, v1}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v1

    iput-object v1, p0, Lcl/j;->g:[B

    invoke-virtual {p1}, Lcl/b;->l()I

    move-result p1

    add-int/lit8 p1, p1, -0x20

    add-int/2addr v0, p1

    add-int/lit8 p1, v0, 0x20

    invoke-static {p2, v0, p1}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v1

    iput-object v1, p0, Lcl/j;->h:[B

    add-int/lit8 v1, v0, 0x40

    invoke-static {p2, p1, v1}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1

    iput-object p1, p0, Lcl/j;->e:[B

    add-int/lit8 v0, v0, 0x60

    invoke-static {p2, v1, v0}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1

    iput-object p1, p0, Lcl/j;->f:[B

    return-void
.end method

.method public constructor <init>(Lcl/i;[B[B[B[B[B)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lcl/h;-><init>(ZLcl/i;)V

    invoke-static {p2}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lcl/j;->d:[B

    invoke-static {p3}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lcl/j;->e:[B

    invoke-static {p4}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lcl/j;->f:[B

    invoke-static {p5}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lcl/j;->g:[B

    invoke-static {p6}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lcl/j;->h:[B

    return-void
.end method


# virtual methods
.method public e()[B
    .locals 1

    iget-object v0, p0, Lcl/j;->e:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public f()[B
    .locals 1

    iget-object v0, p0, Lcl/j;->f:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public g()[B
    .locals 1

    invoke-virtual {p0}, Lcl/j;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 5

    iget-object v0, p0, Lcl/j;->d:[B

    iget-object v1, p0, Lcl/j;->g:[B

    iget-object v2, p0, Lcl/j;->h:[B

    iget-object v3, p0, Lcl/j;->e:[B

    iget-object v4, p0, Lcl/j;->f:[B

    filled-new-array {v0, v1, v2, v3, v4}, [[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->E([[B)[B

    move-result-object v0

    return-object v0
.end method

.method public h()[B
    .locals 2

    iget-object v0, p0, Lcl/j;->g:[B

    iget-object v1, p0, Lcl/j;->h:[B

    invoke-static {v0, v1}, Lcl/k;->e([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public i()Lcl/k;
    .locals 4

    new-instance v0, Lcl/k;

    invoke-virtual {p0}, Lcl/h;->d()Lcl/i;

    move-result-object v1

    iget-object v2, p0, Lcl/j;->g:[B

    iget-object v3, p0, Lcl/j;->h:[B

    invoke-direct {v0, v1, v2, v3}, Lcl/k;-><init>(Lcl/i;[B[B)V

    return-object v0
.end method

.method public j()[B
    .locals 1

    iget-object v0, p0, Lcl/j;->h:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public k()[B
    .locals 1

    iget-object v0, p0, Lcl/j;->d:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public l()[B
    .locals 1

    iget-object v0, p0, Lcl/j;->g:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method
