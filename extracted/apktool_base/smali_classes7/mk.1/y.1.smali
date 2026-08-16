.class public Lmk/y;
.super Ljk/f$b;
.source "SourceFile"


# static fields
.field public static final h:Ljava/math/BigInteger;

.field public static final i:[I


# instance fields
.field public g:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE56D"

    invoke-static {v1}, Lem/h;->d(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lmk/y;->h:Ljava/math/BigInteger;

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmk/y;->i:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x33bfd202
        -0x23052ecd
        0x2287624a
        -0x3c7ee458
        -0x57aaa704
        0x1eaef5d7
        -0x7120eab4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljk/f$b;-><init>()V

    invoke-static {}, Lsk/h;->k()[I

    move-result-object v0

    iput-object v0, p0, Lmk/y;->g:[I

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljk/f$b;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lmk/y;->h:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {p1}, Lmk/x;->d(Ljava/math/BigInteger;)[I

    move-result-object p1

    iput-object p1, p0, Lmk/y;->g:[I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "x value invalid for SecP224K1FieldElement"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljk/f$b;-><init>()V

    iput-object p1, p0, Lmk/y;->g:[I

    return-void
.end method


# virtual methods
.method public a(Ljk/f;)Ljk/f;
    .locals 2

    invoke-static {}, Lsk/h;->k()[I

    move-result-object v0

    iget-object v1, p0, Lmk/y;->g:[I

    check-cast p1, Lmk/y;

    iget-object p1, p1, Lmk/y;->g:[I

    invoke-static {v1, p1, v0}, Lmk/x;->a([I[I[I)V

    new-instance p1, Lmk/y;

    invoke-direct {p1, v0}, Lmk/y;-><init>([I)V

    return-object p1
.end method

.method public b()Ljk/f;
    .locals 2

    invoke-static {}, Lsk/h;->k()[I

    move-result-object v0

    iget-object v1, p0, Lmk/y;->g:[I

    invoke-static {v1, v0}, Lmk/x;->c([I[I)V

    new-instance v1, Lmk/y;

    invoke-direct {v1, v0}, Lmk/y;-><init>([I)V

    return-object v1
.end method

.method public d(Ljk/f;)Ljk/f;
    .locals 1

    invoke-static {}, Lsk/h;->k()[I

    move-result-object v0

    check-cast p1, Lmk/y;

    iget-object p1, p1, Lmk/y;->g:[I

    invoke-static {p1, v0}, Lmk/x;->f([I[I)V

    iget-object p1, p0, Lmk/y;->g:[I

    invoke-static {v0, p1, v0}, Lmk/x;->h([I[I[I)V

    new-instance p1, Lmk/y;

    invoke-direct {p1, v0}, Lmk/y;-><init>([I)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lmk/y;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lmk/y;

    iget-object v0, p0, Lmk/y;->g:[I

    iget-object p1, p1, Lmk/y;->g:[I

    invoke-static {v0, p1}, Lsk/h;->n([I[I)Z

    move-result p1

    return p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "SecP224K1Field"

    return-object v0
.end method

.method public g()I
    .locals 1

    sget-object v0, Lmk/y;->h:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public h()Ljk/f;
    .locals 2

    invoke-static {}, Lsk/h;->k()[I

    move-result-object v0

    iget-object v1, p0, Lmk/y;->g:[I

    invoke-static {v1, v0}, Lmk/x;->f([I[I)V

    new-instance v1, Lmk/y;

    invoke-direct {v1, v0}, Lmk/y;-><init>([I)V

    return-object v1
.end method

.method public hashCode()I
    .locals 4

    sget-object v0, Lmk/y;->h:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lmk/y;->g:[I

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/util/a;->x0([III)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lmk/y;->g:[I

    invoke-static {v0}, Lsk/h;->s([I)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lmk/y;->g:[I

    invoke-static {v0}, Lsk/h;->t([I)Z

    move-result v0

    return v0
.end method

.method public k(Ljk/f;)Ljk/f;
    .locals 2

    invoke-static {}, Lsk/h;->k()[I

    move-result-object v0

    iget-object v1, p0, Lmk/y;->g:[I

    check-cast p1, Lmk/y;

    iget-object p1, p1, Lmk/y;->g:[I

    invoke-static {v1, p1, v0}, Lmk/x;->h([I[I[I)V

    new-instance p1, Lmk/y;

    invoke-direct {p1, v0}, Lmk/y;-><init>([I)V

    return-object p1
.end method

.method public n()Ljk/f;
    .locals 2

    invoke-static {}, Lsk/h;->k()[I

    move-result-object v0

    iget-object v1, p0, Lmk/y;->g:[I

    invoke-static {v1, v0}, Lmk/x;->j([I[I)V

    new-instance v1, Lmk/y;

    invoke-direct {v1, v0}, Lmk/y;-><init>([I)V

    return-object v1
.end method

.method public o()Ljk/f;
    .locals 9

    iget-object v0, p0, Lmk/y;->g:[I

    invoke-static {v0}, Lsk/h;->t([I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lsk/h;->s([I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lsk/h;->k()[I

    move-result-object v1

    invoke-static {v0, v1}, Lmk/x;->o([I[I)V

    invoke-static {v1, v0, v1}, Lmk/x;->h([I[I[I)V

    invoke-static {v1, v1}, Lmk/x;->o([I[I)V

    invoke-static {v1, v0, v1}, Lmk/x;->h([I[I[I)V

    invoke-static {}, Lsk/h;->k()[I

    move-result-object v2

    invoke-static {v1, v2}, Lmk/x;->o([I[I)V

    invoke-static {v2, v0, v2}, Lmk/x;->h([I[I[I)V

    invoke-static {}, Lsk/h;->k()[I

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v2, v4, v3}, Lmk/x;->p([II[I)V

    invoke-static {v3, v2, v3}, Lmk/x;->h([I[I[I)V

    invoke-static {}, Lsk/h;->k()[I

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v3, v6, v5}, Lmk/x;->p([II[I)V

    invoke-static {v5, v1, v5}, Lmk/x;->h([I[I[I)V

    const/16 v7, 0x8

    invoke-static {v5, v7, v5}, Lmk/x;->p([II[I)V

    invoke-static {v5, v3, v5}, Lmk/x;->h([I[I[I)V

    invoke-static {v5, v4, v3}, Lmk/x;->p([II[I)V

    invoke-static {v3, v2, v3}, Lmk/x;->h([I[I[I)V

    const/16 v7, 0x13

    invoke-static {v3, v7, v2}, Lmk/x;->p([II[I)V

    invoke-static {v2, v5, v2}, Lmk/x;->h([I[I[I)V

    invoke-static {}, Lsk/h;->k()[I

    move-result-object v7

    const/16 v8, 0x2a

    invoke-static {v2, v8, v7}, Lmk/x;->p([II[I)V

    invoke-static {v7, v2, v7}, Lmk/x;->h([I[I[I)V

    const/16 v8, 0x17

    invoke-static {v7, v8, v2}, Lmk/x;->p([II[I)V

    invoke-static {v2, v3, v2}, Lmk/x;->h([I[I[I)V

    const/16 v8, 0x54

    invoke-static {v2, v8, v3}, Lmk/x;->p([II[I)V

    invoke-static {v3, v7, v3}, Lmk/x;->h([I[I[I)V

    const/16 v2, 0x14

    invoke-static {v3, v2, v3}, Lmk/x;->p([II[I)V

    invoke-static {v3, v5, v3}, Lmk/x;->h([I[I[I)V

    invoke-static {v3, v6, v3}, Lmk/x;->p([II[I)V

    invoke-static {v3, v0, v3}, Lmk/x;->h([I[I[I)V

    const/4 v2, 0x2

    invoke-static {v3, v2, v3}, Lmk/x;->p([II[I)V

    invoke-static {v3, v0, v3}, Lmk/x;->h([I[I[I)V

    invoke-static {v3, v4, v3}, Lmk/x;->p([II[I)V

    invoke-static {v3, v1, v3}, Lmk/x;->h([I[I[I)V

    invoke-static {v3, v3}, Lmk/x;->o([I[I)V

    invoke-static {v3, v7}, Lmk/x;->o([I[I)V

    invoke-static {v0, v7}, Lsk/h;->n([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lmk/y;

    invoke-direct {v0, v3}, Lmk/y;-><init>([I)V

    return-object v0

    :cond_1
    sget-object v1, Lmk/y;->i:[I

    invoke-static {v3, v1, v3}, Lmk/x;->h([I[I[I)V

    invoke-static {v3, v7}, Lmk/x;->o([I[I)V

    invoke-static {v0, v7}, Lsk/h;->n([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lmk/y;

    invoke-direct {v0, v3}, Lmk/y;-><init>([I)V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0

    :cond_3
    :goto_0
    return-object p0
.end method

.method public p()Ljk/f;
    .locals 2

    invoke-static {}, Lsk/h;->k()[I

    move-result-object v0

    iget-object v1, p0, Lmk/y;->g:[I

    invoke-static {v1, v0}, Lmk/x;->o([I[I)V

    new-instance v1, Lmk/y;

    invoke-direct {v1, v0}, Lmk/y;-><init>([I)V

    return-object v1
.end method

.method public t(Ljk/f;)Ljk/f;
    .locals 2

    invoke-static {}, Lsk/h;->k()[I

    move-result-object v0

    iget-object v1, p0, Lmk/y;->g:[I

    check-cast p1, Lmk/y;

    iget-object p1, p1, Lmk/y;->g:[I

    invoke-static {v1, p1, v0}, Lmk/x;->q([I[I[I)V

    new-instance p1, Lmk/y;

    invoke-direct {p1, v0}, Lmk/y;-><init>([I)V

    return-object p1
.end method

.method public u()Z
    .locals 3

    iget-object v0, p0, Lmk/y;->g:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsk/h;->p([II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public v()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lmk/y;->g:[I

    invoke-static {v0}, Lsk/h;->N([I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
