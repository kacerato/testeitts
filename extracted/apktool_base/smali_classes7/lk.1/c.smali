.class public Llk/c;
.super Ljk/f$b;
.source "SourceFile"


# static fields
.field public static final h:Ljava/math/BigInteger;


# instance fields
.field public g:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFF"

    invoke-static {v1}, Lem/h;->d(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Llk/c;->h:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljk/f$b;-><init>()V

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v0

    iput-object v0, p0, Llk/c;->g:[I

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

    sget-object v0, Llk/c;->h:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {p1}, Llk/b;->e(Ljava/math/BigInteger;)[I

    move-result-object p1

    iput-object p1, p0, Llk/c;->g:[I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "x value invalid for SM2P256V1FieldElement"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljk/f$b;-><init>()V

    iput-object p1, p0, Llk/c;->g:[I

    return-void
.end method


# virtual methods
.method public a(Ljk/f;)Ljk/f;
    .locals 2

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v0

    iget-object v1, p0, Llk/c;->g:[I

    check-cast p1, Llk/c;

    iget-object p1, p1, Llk/c;->g:[I

    invoke-static {v1, p1, v0}, Llk/b;->a([I[I[I)V

    new-instance p1, Llk/c;

    invoke-direct {p1, v0}, Llk/c;-><init>([I)V

    return-object p1
.end method

.method public b()Ljk/f;
    .locals 2

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v0

    iget-object v1, p0, Llk/c;->g:[I

    invoke-static {v1, v0}, Llk/b;->c([I[I)V

    new-instance v1, Llk/c;

    invoke-direct {v1, v0}, Llk/c;-><init>([I)V

    return-object v1
.end method

.method public d(Ljk/f;)Ljk/f;
    .locals 1

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v0

    check-cast p1, Llk/c;

    iget-object p1, p1, Llk/c;->g:[I

    invoke-static {p1, v0}, Llk/b;->g([I[I)V

    iget-object p1, p0, Llk/c;->g:[I

    invoke-static {v0, p1, v0}, Llk/b;->i([I[I[I)V

    new-instance p1, Llk/c;

    invoke-direct {p1, v0}, Llk/c;-><init>([I)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Llk/c;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Llk/c;

    iget-object v0, p0, Llk/c;->g:[I

    iget-object p1, p1, Llk/c;->g:[I

    invoke-static {v0, p1}, Lsk/i;->r([I[I)Z

    move-result p1

    return p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "SM2P256V1Field"

    return-object v0
.end method

.method public g()I
    .locals 1

    sget-object v0, Llk/c;->h:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public h()Ljk/f;
    .locals 2

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v0

    iget-object v1, p0, Llk/c;->g:[I

    invoke-static {v1, v0}, Llk/b;->g([I[I)V

    new-instance v1, Llk/c;

    invoke-direct {v1, v0}, Llk/c;-><init>([I)V

    return-object v1
.end method

.method public hashCode()I
    .locals 4

    sget-object v0, Llk/c;->h:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Llk/c;->g:[I

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/util/a;->x0([III)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Llk/c;->g:[I

    invoke-static {v0}, Lsk/i;->y([I)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Llk/c;->g:[I

    invoke-static {v0}, Lsk/i;->A([I)Z

    move-result v0

    return v0
.end method

.method public k(Ljk/f;)Ljk/f;
    .locals 2

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v0

    iget-object v1, p0, Llk/c;->g:[I

    check-cast p1, Llk/c;

    iget-object p1, p1, Llk/c;->g:[I

    invoke-static {v1, p1, v0}, Llk/b;->i([I[I[I)V

    new-instance p1, Llk/c;

    invoke-direct {p1, v0}, Llk/c;-><init>([I)V

    return-object p1
.end method

.method public n()Ljk/f;
    .locals 2

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v0

    iget-object v1, p0, Llk/c;->g:[I

    invoke-static {v1, v0}, Llk/b;->k([I[I)V

    new-instance v1, Llk/c;

    invoke-direct {v1, v0}, Llk/c;-><init>([I)V

    return-object v1
.end method

.method public o()Ljk/f;
    .locals 7

    iget-object v0, p0, Llk/c;->g:[I

    invoke-static {v0}, Lsk/i;->A([I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lsk/i;->y([I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lsk/i;->m()[I

    move-result-object v1

    invoke-static {v0, v1}, Llk/b;->p([I[I)V

    invoke-static {v1, v0, v1}, Llk/b;->i([I[I[I)V

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v1, v3, v2}, Llk/b;->q([II[I)V

    invoke-static {v2, v1, v2}, Llk/b;->i([I[I[I)V

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v4

    invoke-static {v2, v3, v4}, Llk/b;->q([II[I)V

    invoke-static {v4, v1, v4}, Llk/b;->i([I[I[I)V

    const/4 v3, 0x6

    invoke-static {v4, v3, v1}, Llk/b;->q([II[I)V

    invoke-static {v1, v4, v1}, Llk/b;->i([I[I[I)V

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v5

    const/16 v6, 0xc

    invoke-static {v1, v6, v5}, Llk/b;->q([II[I)V

    invoke-static {v5, v1, v5}, Llk/b;->i([I[I[I)V

    invoke-static {v5, v3, v1}, Llk/b;->q([II[I)V

    invoke-static {v1, v4, v1}, Llk/b;->i([I[I[I)V

    invoke-static {v1, v4}, Llk/b;->p([I[I)V

    invoke-static {v4, v0, v4}, Llk/b;->i([I[I[I)V

    const/16 v3, 0x1f

    invoke-static {v4, v3, v5}, Llk/b;->q([II[I)V

    invoke-static {v5, v4, v1}, Llk/b;->i([I[I[I)V

    const/16 v3, 0x20

    invoke-static {v5, v3, v5}, Llk/b;->q([II[I)V

    invoke-static {v5, v1, v5}, Llk/b;->i([I[I[I)V

    const/16 v4, 0x3e

    invoke-static {v5, v4, v5}, Llk/b;->q([II[I)V

    invoke-static {v5, v1, v5}, Llk/b;->i([I[I[I)V

    const/4 v1, 0x4

    invoke-static {v5, v1, v5}, Llk/b;->q([II[I)V

    invoke-static {v5, v2, v5}, Llk/b;->i([I[I[I)V

    invoke-static {v5, v3, v5}, Llk/b;->q([II[I)V

    invoke-static {v5, v0, v5}, Llk/b;->i([I[I[I)V

    invoke-static {v5, v4, v5}, Llk/b;->q([II[I)V

    invoke-static {v5, v2}, Llk/b;->p([I[I)V

    invoke-static {v0, v2}, Lsk/i;->r([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Llk/c;

    invoke-direct {v0, v5}, Llk/c;-><init>([I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public p()Ljk/f;
    .locals 2

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v0

    iget-object v1, p0, Llk/c;->g:[I

    invoke-static {v1, v0}, Llk/b;->p([I[I)V

    new-instance v1, Llk/c;

    invoke-direct {v1, v0}, Llk/c;-><init>([I)V

    return-object v1
.end method

.method public t(Ljk/f;)Ljk/f;
    .locals 2

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v0

    iget-object v1, p0, Llk/c;->g:[I

    check-cast p1, Llk/c;

    iget-object p1, p1, Llk/c;->g:[I

    invoke-static {v1, p1, v0}, Llk/b;->s([I[I[I)V

    new-instance p1, Llk/c;

    invoke-direct {p1, v0}, Llk/c;-><init>([I)V

    return-object p1
.end method

.method public u()Z
    .locals 3

    iget-object v0, p0, Llk/c;->g:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsk/i;->v([II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public v()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Llk/c;->g:[I

    invoke-static {v0}, Lsk/i;->Y([I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
