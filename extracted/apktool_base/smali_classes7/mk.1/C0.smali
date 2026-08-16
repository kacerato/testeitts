.class public Lmk/C0;
.super Ljk/f$a;
.source "SourceFile"


# instance fields
.field public g:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljk/f$a;-><init>()V

    invoke-static {}, Lsk/i;->n()[J

    move-result-object v0

    iput-object v0, p0, Lmk/C0;->g:[J

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljk/f$a;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xef

    if-gt v0, v1, :cond_0

    invoke-static {p1}, Lmk/B0;->e(Ljava/math/BigInteger;)[J

    move-result-object p1

    iput-object p1, p0, Lmk/C0;->g:[J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "x value invalid for SecT239FieldElement"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([J)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljk/f$a;-><init>()V

    iput-object p1, p0, Lmk/C0;->g:[J

    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public B()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public C()I
    .locals 1

    const/16 v0, 0xef

    return v0
.end method

.method public D()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public a(Ljk/f;)Ljk/f;
    .locals 2

    invoke-static {}, Lsk/i;->n()[J

    move-result-object v0

    iget-object v1, p0, Lmk/C0;->g:[J

    check-cast p1, Lmk/C0;

    iget-object p1, p1, Lmk/C0;->g:[J

    invoke-static {v1, p1, v0}, Lmk/B0;->a([J[J[J)V

    new-instance p1, Lmk/C0;

    invoke-direct {p1, v0}, Lmk/C0;-><init>([J)V

    return-object p1
.end method

.method public b()Ljk/f;
    .locals 2

    invoke-static {}, Lsk/i;->n()[J

    move-result-object v0

    iget-object v1, p0, Lmk/C0;->g:[J

    invoke-static {v1, v0}, Lmk/B0;->c([J[J)V

    new-instance v1, Lmk/C0;

    invoke-direct {v1, v0}, Lmk/C0;-><init>([J)V

    return-object v1
.end method

.method public d(Ljk/f;)Ljk/f;
    .locals 0

    invoke-virtual {p1}, Ljk/f;->h()Ljk/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmk/C0;->k(Ljk/f;)Ljk/f;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lmk/C0;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lmk/C0;

    iget-object v0, p0, Lmk/C0;->g:[J

    iget-object p1, p1, Lmk/C0;->g:[J

    invoke-static {v0, p1}, Lsk/i;->s([J[J)Z

    move-result p1

    return p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "SecT239Field"

    return-object v0
.end method

.method public g()I
    .locals 1

    const/16 v0, 0xef

    return v0
.end method

.method public h()Ljk/f;
    .locals 2

    invoke-static {}, Lsk/i;->n()[J

    move-result-object v0

    iget-object v1, p0, Lmk/C0;->g:[J

    invoke-static {v1, v0}, Lmk/B0;->l([J[J)V

    new-instance v1, Lmk/C0;

    invoke-direct {v1, v0}, Lmk/C0;-><init>([J)V

    return-object v1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lmk/C0;->g:[J

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/a;->z0([JII)I

    move-result v0

    const v1, 0x16caffe

    xor-int/2addr v0, v1

    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lmk/C0;->g:[J

    invoke-static {v0}, Lsk/i;->z([J)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lmk/C0;->g:[J

    invoke-static {v0}, Lsk/i;->B([J)Z

    move-result v0

    return v0
.end method

.method public k(Ljk/f;)Ljk/f;
    .locals 2

    invoke-static {}, Lsk/i;->n()[J

    move-result-object v0

    iget-object v1, p0, Lmk/C0;->g:[J

    check-cast p1, Lmk/C0;

    iget-object p1, p1, Lmk/C0;->g:[J

    invoke-static {v1, p1, v0}, Lmk/B0;->m([J[J[J)V

    new-instance p1, Lmk/C0;

    invoke-direct {p1, v0}, Lmk/C0;-><init>([J)V

    return-object p1
.end method

.method public l(Ljk/f;Ljk/f;Ljk/f;)Ljk/f;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lmk/C0;->m(Ljk/f;Ljk/f;Ljk/f;)Ljk/f;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljk/f;Ljk/f;Ljk/f;)Ljk/f;
    .locals 2

    iget-object v0, p0, Lmk/C0;->g:[J

    check-cast p1, Lmk/C0;

    iget-object p1, p1, Lmk/C0;->g:[J

    check-cast p2, Lmk/C0;

    iget-object p2, p2, Lmk/C0;->g:[J

    check-cast p3, Lmk/C0;

    iget-object p3, p3, Lmk/C0;->g:[J

    invoke-static {}, Lsk/i;->p()[J

    move-result-object v1

    invoke-static {v0, p1, v1}, Lmk/B0;->n([J[J[J)V

    invoke-static {p2, p3, v1}, Lmk/B0;->n([J[J[J)V

    invoke-static {}, Lsk/i;->n()[J

    move-result-object p1

    invoke-static {v1, p1}, Lmk/B0;->o([J[J)V

    new-instance p2, Lmk/C0;

    invoke-direct {p2, p1}, Lmk/C0;-><init>([J)V

    return-object p2
.end method

.method public n()Ljk/f;
    .locals 0

    return-object p0
.end method

.method public o()Ljk/f;
    .locals 2

    invoke-static {}, Lsk/i;->n()[J

    move-result-object v0

    iget-object v1, p0, Lmk/C0;->g:[J

    invoke-static {v1, v0}, Lmk/B0;->q([J[J)V

    new-instance v1, Lmk/C0;

    invoke-direct {v1, v0}, Lmk/C0;-><init>([J)V

    return-object v1
.end method

.method public p()Ljk/f;
    .locals 2

    invoke-static {}, Lsk/i;->n()[J

    move-result-object v0

    iget-object v1, p0, Lmk/C0;->g:[J

    invoke-static {v1, v0}, Lmk/B0;->r([J[J)V

    new-instance v1, Lmk/C0;

    invoke-direct {v1, v0}, Lmk/C0;-><init>([J)V

    return-object v1
.end method

.method public q(Ljk/f;Ljk/f;)Ljk/f;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lmk/C0;->r(Ljk/f;Ljk/f;)Ljk/f;

    move-result-object p1

    return-object p1
.end method

.method public r(Ljk/f;Ljk/f;)Ljk/f;
    .locals 2

    iget-object v0, p0, Lmk/C0;->g:[J

    check-cast p1, Lmk/C0;

    iget-object p1, p1, Lmk/C0;->g:[J

    check-cast p2, Lmk/C0;

    iget-object p2, p2, Lmk/C0;->g:[J

    invoke-static {}, Lsk/i;->p()[J

    move-result-object v1

    invoke-static {v0, v1}, Lmk/B0;->s([J[J)V

    invoke-static {p1, p2, v1}, Lmk/B0;->n([J[J[J)V

    invoke-static {}, Lsk/i;->n()[J

    move-result-object p1

    invoke-static {v1, p1}, Lmk/B0;->o([J[J)V

    new-instance p2, Lmk/C0;

    invoke-direct {p2, p1}, Lmk/C0;-><init>([J)V

    return-object p2
.end method

.method public s(I)Ljk/f;
    .locals 2

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lsk/i;->n()[J

    move-result-object v0

    iget-object v1, p0, Lmk/C0;->g:[J

    invoke-static {v1, p1, v0}, Lmk/B0;->t([JI[J)V

    new-instance p1, Lmk/C0;

    invoke-direct {p1, v0}, Lmk/C0;-><init>([J)V

    return-object p1
.end method

.method public t(Ljk/f;)Ljk/f;
    .locals 0

    invoke-virtual {p0, p1}, Lmk/C0;->a(Ljk/f;)Ljk/f;

    move-result-object p1

    return-object p1
.end method

.method public u()Z
    .locals 6

    iget-object v0, p0, Lmk/C0;->g:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public v()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lmk/C0;->g:[J

    invoke-static {v0}, Lsk/i;->Z([J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public w()Ljk/f;
    .locals 2

    invoke-static {}, Lsk/i;->n()[J

    move-result-object v0

    iget-object v1, p0, Lmk/C0;->g:[J

    invoke-static {v1, v0}, Lmk/B0;->f([J[J)V

    new-instance v1, Lmk/C0;

    invoke-direct {v1, v0}, Lmk/C0;-><init>([J)V

    return-object v1
.end method

.method public x()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public y()I
    .locals 1

    iget-object v0, p0, Lmk/C0;->g:[J

    invoke-static {v0}, Lmk/B0;->u([J)I

    move-result v0

    return v0
.end method

.method public z()I
    .locals 1

    const/16 v0, 0x9e

    return v0
.end method
