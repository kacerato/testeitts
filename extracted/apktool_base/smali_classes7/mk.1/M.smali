.class public Lmk/M;
.super Ljk/e$c;
.source "SourceFile"


# static fields
.field public static final r:Ljava/math/BigInteger;

.field public static final s:I = 0x2

.field public static final t:[Ljk/f;


# instance fields
.field public q:Lmk/P;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lmk/O;->h:Ljava/math/BigInteger;

    sput-object v0, Lmk/M;->r:Ljava/math/BigInteger;

    new-instance v0, Lmk/O;

    sget-object v1, Ljk/d;->b:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lmk/O;-><init>(Ljava/math/BigInteger;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljk/f;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lmk/M;->t:[Ljk/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget-object v0, Lmk/M;->r:Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Ljk/e$c;-><init>(Ljava/math/BigInteger;)V

    new-instance v0, Lmk/P;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lmk/P;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    iput-object v0, p0, Lmk/M;->q:Lmk/P;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFC"

    invoke-static {v1}, Lem/h;->d(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lmk/M;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object v0

    iput-object v0, p0, Ljk/e;->b:Ljk/f;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "B3312FA7E23EE7E4988E056BE3F82D19181D9C6EFE8141120314088F5013875AC656398D8A2ED19D2A85C8EDD3EC2AEF"

    invoke-static {v1}, Lem/h;->d(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lmk/M;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object v0

    iput-object v0, p0, Ljk/e;->c:Ljk/f;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7634D81F4372DDF581A0DB248B0A77AECEC196ACCC52973"

    invoke-static {v1}, Lem/h;->d(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Ljk/e;->d:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Ljk/e;->e:Ljava/math/BigInteger;

    const/4 v0, 0x2

    iput v0, p0, Ljk/e;->f:I

    return-void
.end method

.method public static synthetic N()[Ljk/f;
    .locals 1

    sget-object v0, Lmk/M;->t:[Ljk/f;

    return-object v0
.end method


# virtual methods
.method public H(Ljava/security/SecureRandom;)Ljk/f;
    .locals 1

    const/16 v0, 0xc

    invoke-static {v0}, Lsk/o;->E(I)[I

    move-result-object v0

    invoke-static {p1, v0}, Lmk/N;->l(Ljava/security/SecureRandom;[I)V

    new-instance p1, Lmk/O;

    invoke-direct {p1, v0}, Lmk/O;-><init>([I)V

    return-object p1
.end method

.method public I(Ljava/security/SecureRandom;)Ljk/f;
    .locals 1

    const/16 v0, 0xc

    invoke-static {v0}, Lsk/o;->E(I)[I

    move-result-object v0

    invoke-static {p1, v0}, Lmk/N;->m(Ljava/security/SecureRandom;[I)V

    new-instance p1, Lmk/O;

    invoke-direct {p1, v0}, Lmk/O;-><init>([I)V

    return-object p1
.end method

.method public J(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public O()Ljava/math/BigInteger;
    .locals 1

    sget-object v0, Lmk/M;->r:Ljava/math/BigInteger;

    return-object v0
.end method

.method public e()Ljk/e;
    .locals 1

    new-instance v0, Lmk/M;

    invoke-direct {v0}, Lmk/M;-><init>()V

    return-object v0
.end method

.method public g([Ljk/i;II)Ljk/g;
    .locals 7

    mul-int/lit8 v0, p3, 0x18

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p3, :cond_0

    add-int v4, p2, v2

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljk/i;->n()Ljk/f;

    move-result-object v5

    check-cast v5, Lmk/O;

    iget-object v5, v5, Lmk/O;->g:[I

    const/16 v6, 0xc

    invoke-static {v6, v5, v1, v0, v3}, Lsk/o;->y(I[II[II)V

    add-int/lit8 v5, v3, 0xc

    invoke-virtual {v4}, Ljk/i;->o()Ljk/f;

    move-result-object v4

    check-cast v4, Lmk/O;

    iget-object v4, v4, Lmk/O;->g:[I

    invoke-static {v6, v4, v1, v0, v5}, Lsk/o;->y(I[II[II)V

    add-int/lit8 v3, v3, 0x18

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lmk/M$a;

    invoke-direct {p1, p0, p3, v0}, Lmk/M$a;-><init>(Lmk/M;I[I)V

    return-object p1
.end method

.method public j(Ljk/f;Ljk/f;)Ljk/i;
    .locals 1

    new-instance v0, Lmk/P;

    invoke-direct {v0, p0, p1, p2}, Lmk/P;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    return-object v0
.end method

.method public k(Ljk/f;Ljk/f;[Ljk/f;)Ljk/i;
    .locals 1

    new-instance v0, Lmk/P;

    invoke-direct {v0, p0, p1, p2, p3}, Lmk/P;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

    return-object v0
.end method

.method public o(Ljava/math/BigInteger;)Ljk/f;
    .locals 1

    new-instance v0, Lmk/O;

    invoke-direct {v0, p1}, Lmk/O;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public w()I
    .locals 1

    sget-object v0, Lmk/M;->r:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public x()Ljk/i;
    .locals 1

    iget-object v0, p0, Lmk/M;->q:Lmk/P;

    return-object v0
.end method
