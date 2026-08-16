.class public Lorg/bouncycastle/pqc/crypto/lms/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/bouncycastle/pqc/crypto/lms/j;

.field public final b:[B

.field public final c:I

.field public final d:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/lms/j;[BI[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/k;->a:Lorg/bouncycastle/pqc/crypto/lms/j;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/k;->b:[B

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/lms/k;->c:I

    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/lms/k;->d:[B

    return-void
.end method


# virtual methods
.method public a()Lorg/bouncycastle/pqc/crypto/lms/D;
    .locals 4

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/D;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/k;->b:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/k;->d:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/lms/k;->a:Lorg/bouncycastle/pqc/crypto/lms/j;

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/lms/b;->c(Lorg/bouncycastle/pqc/crypto/lms/j;)LBi/y;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/lms/D;-><init>([B[BLBi/y;)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/k;->c:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/D;->i(I)V

    return-object v0
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/k;->b:[B

    return-object v0
.end method

.method public c()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/k;->d:[B

    return-object v0
.end method

.method public d()Lorg/bouncycastle/pqc/crypto/lms/j;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/k;->a:Lorg/bouncycastle/pqc/crypto/lms/j;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/k;->c:I

    return v0
.end method

.method public f(Lorg/bouncycastle/pqc/crypto/lms/A;[[B)Lorg/bouncycastle/pqc/crypto/lms/o;
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/k;->a:Lorg/bouncycastle/pqc/crypto/lms/j;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/j;->d()I

    move-result v0

    new-array v5, v0, [B

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/k;->a()Lorg/bouncycastle/pqc/crypto/lms/D;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/D;->h(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Lorg/bouncycastle/pqc/crypto/lms/D;->a([BZ)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/k;->a:Lorg/bouncycastle/pqc/crypto/lms/j;

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/lms/b;->c(Lorg/bouncycastle/pqc/crypto/lms/j;)LBi/y;

    move-result-object v4

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/k;->b()[B

    move-result-object v0

    invoke-static {v0, v4}, Lorg/bouncycastle/pqc/crypto/lms/C;->b([BLBi/y;)V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/k;->e()I

    move-result v0

    invoke-static {v0, v4}, Lorg/bouncycastle/pqc/crypto/lms/C;->e(ILBi/y;)V

    const/16 v0, -0x7e7f

    invoke-static {v0, v4}, Lorg/bouncycastle/pqc/crypto/lms/C;->d(SLBi/y;)V

    invoke-static {v5, v4}, Lorg/bouncycastle/pqc/crypto/lms/C;->b([BLBi/y;)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/o;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/lms/o;-><init>(Lorg/bouncycastle/pqc/crypto/lms/k;Lorg/bouncycastle/pqc/crypto/lms/A;LBi/y;[B[[B)V

    return-object v0
.end method
