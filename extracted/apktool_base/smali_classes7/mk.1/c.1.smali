.class public Lmk/c;
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

    const-string v1, "FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFF"

    invoke-static {v1}, Lem/h;->d(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lmk/c;->h:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljk/f$b;-><init>()V

    invoke-static {}, Lsk/e;->j()[I

    move-result-object v0

    iput-object v0, p0, Lmk/c;->g:[I

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

    sget-object v0, Lmk/c;->h:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {p1}, Lmk/b;->e(Ljava/math/BigInteger;)[I

    move-result-object p1

    iput-object p1, p0, Lmk/c;->g:[I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "x value invalid for SecP128R1FieldElement"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljk/f$b;-><init>()V

    iput-object p1, p0, Lmk/c;->g:[I

    return-void
.end method


# virtual methods
.method public a(Ljk/f;)Ljk/f;
    .locals 2

    invoke-static {}, Lsk/e;->j()[I

    move-result-object v0

    iget-object v1, p0, Lmk/c;->g:[I

    check-cast p1, Lmk/c;

    iget-object p1, p1, Lmk/c;->g:[I

    invoke-static {v1, p1, v0}, Lmk/b;->a([I[I[I)V

    new-instance p1, Lmk/c;

    invoke-direct {p1, v0}, Lmk/c;-><init>([I)V

    return-object p1
.end method

.method public b()Ljk/f;
    .locals 2

    invoke-static {}, Lsk/e;->j()[I

    move-result-object v0

    iget-object v1, p0, Lmk/c;->g:[I

    invoke-static {v1, v0}, Lmk/b;->c([I[I)V

    new-instance v1, Lmk/c;

    invoke-direct {v1, v0}, Lmk/c;-><init>([I)V

    return-object v1
.end method

.method public d(Ljk/f;)Ljk/f;
    .locals 1

    invoke-static {}, Lsk/e;->j()[I

    move-result-object v0

    check-cast p1, Lmk/c;

    iget-object p1, p1, Lmk/c;->g:[I

    invoke-static {p1, v0}, Lmk/b;->g([I[I)V

    iget-object p1, p0, Lmk/c;->g:[I

    invoke-static {v0, p1, v0}, Lmk/b;->i([I[I[I)V

    new-instance p1, Lmk/c;

    invoke-direct {p1, v0}, Lmk/c;-><init>([I)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lmk/c;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lmk/c;

    iget-object v0, p0, Lmk/c;->g:[I

    iget-object p1, p1, Lmk/c;->g:[I

    invoke-static {v0, p1}, Lsk/e;->o([I[I)Z

    move-result p1

    return p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "SecP128R1Field"

    return-object v0
.end method

.method public g()I
    .locals 1

    sget-object v0, Lmk/c;->h:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public h()Ljk/f;
    .locals 2

    invoke-static {}, Lsk/e;->j()[I

    move-result-object v0

    iget-object v1, p0, Lmk/c;->g:[I

    invoke-static {v1, v0}, Lmk/b;->g([I[I)V

    new-instance v1, Lmk/c;

    invoke-direct {v1, v0}, Lmk/c;-><init>([I)V

    return-object v1
.end method

.method public hashCode()I
    .locals 4

    sget-object v0, Lmk/c;->h:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lmk/c;->g:[I

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/util/a;->x0([III)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lmk/c;->g:[I

    invoke-static {v0}, Lsk/e;->v([I)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lmk/c;->g:[I

    invoke-static {v0}, Lsk/e;->x([I)Z

    move-result v0

    return v0
.end method

.method public k(Ljk/f;)Ljk/f;
    .locals 2

    invoke-static {}, Lsk/e;->j()[I

    move-result-object v0

    iget-object v1, p0, Lmk/c;->g:[I

    check-cast p1, Lmk/c;

    iget-object p1, p1, Lmk/c;->g:[I

    invoke-static {v1, p1, v0}, Lmk/b;->i([I[I[I)V

    new-instance p1, Lmk/c;

    invoke-direct {p1, v0}, Lmk/c;-><init>([I)V

    return-object p1
.end method

.method public n()Ljk/f;
    .locals 2

    invoke-static {}, Lsk/e;->j()[I

    move-result-object v0

    iget-object v1, p0, Lmk/c;->g:[I

    invoke-static {v1, v0}, Lmk/b;->k([I[I)V

    new-instance v1, Lmk/c;

    invoke-direct {v1, v0}, Lmk/c;-><init>([I)V

    return-object v1
.end method

.method public o()Ljk/f;
    .locals 6

    iget-object v0, p0, Lmk/c;->g:[I

    invoke-static {v0}, Lsk/e;->x([I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lsk/e;->v([I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lsk/e;->j()[I

    move-result-object v1

    invoke-static {v0, v1}, Lmk/b;->p([I[I)V

    invoke-static {v1, v0, v1}, Lmk/b;->i([I[I[I)V

    invoke-static {}, Lsk/e;->j()[I

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v1, v3, v2}, Lmk/b;->q([II[I)V

    invoke-static {v2, v1, v2}, Lmk/b;->i([I[I[I)V

    invoke-static {}, Lsk/e;->j()[I

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v2, v5, v4}, Lmk/b;->q([II[I)V

    invoke-static {v4, v2, v4}, Lmk/b;->i([I[I[I)V

    invoke-static {v4, v3, v2}, Lmk/b;->q([II[I)V

    invoke-static {v2, v1, v2}, Lmk/b;->i([I[I[I)V

    const/16 v3, 0xa

    invoke-static {v2, v3, v1}, Lmk/b;->q([II[I)V

    invoke-static {v1, v2, v1}, Lmk/b;->i([I[I[I)V

    invoke-static {v1, v3, v4}, Lmk/b;->q([II[I)V

    invoke-static {v4, v2, v4}, Lmk/b;->i([I[I[I)V

    invoke-static {v4, v2}, Lmk/b;->p([I[I)V

    invoke-static {v2, v0, v2}, Lmk/b;->i([I[I[I)V

    const/16 v1, 0x5f

    invoke-static {v2, v1, v2}, Lmk/b;->q([II[I)V

    invoke-static {v2, v4}, Lmk/b;->p([I[I)V

    invoke-static {v0, v4}, Lsk/e;->o([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lmk/c;

    invoke-direct {v0, v2}, Lmk/c;-><init>([I)V

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

    invoke-static {}, Lsk/e;->j()[I

    move-result-object v0

    iget-object v1, p0, Lmk/c;->g:[I

    invoke-static {v1, v0}, Lmk/b;->p([I[I)V

    new-instance v1, Lmk/c;

    invoke-direct {v1, v0}, Lmk/c;-><init>([I)V

    return-object v1
.end method

.method public t(Ljk/f;)Ljk/f;
    .locals 2

    invoke-static {}, Lsk/e;->j()[I

    move-result-object v0

    iget-object v1, p0, Lmk/c;->g:[I

    check-cast p1, Lmk/c;

    iget-object p1, p1, Lmk/c;->g:[I

    invoke-static {v1, p1, v0}, Lmk/b;->s([I[I[I)V

    new-instance p1, Lmk/c;

    invoke-direct {p1, v0}, Lmk/c;-><init>([I)V

    return-object p1
.end method

.method public u()Z
    .locals 3

    iget-object v0, p0, Lmk/c;->g:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsk/e;->s([II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public v()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lmk/c;->g:[I

    invoke-static {v0}, Lsk/e;->R([I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
