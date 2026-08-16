.class public Lkk/a;
.super Ljk/e$c;
.source "SourceFile"


# static fields
.field public static final r:Ljava/math/BigInteger;

.field public static final s:Ljava/math/BigInteger;

.field public static final t:Ljava/math/BigInteger;

.field public static final u:I = 0x4

.field public static final v:[Ljk/f;


# instance fields
.field public q:Lkk/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Lkk/c;->h:Ljava/math/BigInteger;

    sput-object v0, Lkk/a;->r:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA984914A144"

    invoke-static {v1}, Lem/h;->d(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lkk/a;->s:Ljava/math/BigInteger;

    new-instance v1, Ljava/math/BigInteger;

    const-string v3, "7B425ED097B425ED097B425ED097B425ED097B425ED097B4260B5E9C7710C864"

    invoke-static {v3}, Lem/h;->d(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v1, Lkk/a;->t:Ljava/math/BigInteger;

    new-instance v1, Lkk/c;

    sget-object v3, Ljk/d;->b:Ljava/math/BigInteger;

    invoke-direct {v1, v3}, Lkk/c;-><init>(Ljava/math/BigInteger;)V

    new-instance v3, Lkk/c;

    invoke-direct {v3, v0}, Lkk/c;-><init>(Ljava/math/BigInteger;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljk/f;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    aput-object v3, v0, v2

    sput-object v0, Lkk/a;->v:[Ljk/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget-object v0, Lkk/a;->r:Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Ljk/e$c;-><init>(Ljava/math/BigInteger;)V

    new-instance v0, Lkk/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lkk/d;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    iput-object v0, p0, Lkk/a;->q:Lkk/d;

    sget-object v0, Lkk/a;->s:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lkk/a;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object v0

    iput-object v0, p0, Ljk/e;->b:Ljk/f;

    sget-object v0, Lkk/a;->t:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lkk/a;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object v0

    iput-object v0, p0, Ljk/e;->c:Ljk/f;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1000000000000000000000000000000014DEF9DEA2F79CD65812631A5CF5D3ED"

    invoke-static {v1}, Lem/h;->d(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Ljk/e;->d:Ljava/math/BigInteger;

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Ljk/e;->e:Ljava/math/BigInteger;

    const/4 v0, 0x4

    iput v0, p0, Ljk/e;->f:I

    return-void
.end method

.method public static synthetic N()[Ljk/f;
    .locals 1

    sget-object v0, Lkk/a;->v:[Ljk/f;

    return-object v0
.end method


# virtual methods
.method public H(Ljava/security/SecureRandom;)Ljk/f;
    .locals 1

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v0

    invoke-static {p1, v0}, Lkk/b;->m(Ljava/security/SecureRandom;[I)V

    new-instance p1, Lkk/c;

    invoke-direct {p1, v0}, Lkk/c;-><init>([I)V

    return-object p1
.end method

.method public I(Ljava/security/SecureRandom;)Ljk/f;
    .locals 1

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v0

    invoke-static {p1, v0}, Lkk/b;->n(Ljava/security/SecureRandom;[I)V

    new-instance p1, Lkk/c;

    invoke-direct {p1, v0}, Lkk/c;-><init>([I)V

    return-object p1
.end method

.method public J(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public O()Ljava/math/BigInteger;
    .locals 1

    sget-object v0, Lkk/a;->r:Ljava/math/BigInteger;

    return-object v0
.end method

.method public e()Ljk/e;
    .locals 1

    new-instance v0, Lkk/a;

    invoke-direct {v0}, Lkk/a;-><init>()V

    return-object v0
.end method

.method public g([Ljk/i;II)Ljk/g;
    .locals 6

    mul-int/lit8 v0, p3, 0x10

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

    check-cast v5, Lkk/c;

    iget-object v5, v5, Lkk/c;->g:[I

    invoke-static {v5, v1, v0, v3}, Lsk/i;->i([II[II)V

    add-int/lit8 v5, v3, 0x8

    invoke-virtual {v4}, Ljk/i;->o()Ljk/f;

    move-result-object v4

    check-cast v4, Lkk/c;

    iget-object v4, v4, Lkk/c;->g:[I

    invoke-static {v4, v1, v0, v5}, Lsk/i;->i([II[II)V

    add-int/lit8 v3, v3, 0x10

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lkk/a$a;

    invoke-direct {p1, p0, p3, v0}, Lkk/a$a;-><init>(Lkk/a;I[I)V

    return-object p1
.end method

.method public j(Ljk/f;Ljk/f;)Ljk/i;
    .locals 1

    new-instance v0, Lkk/d;

    invoke-direct {v0, p0, p1, p2}, Lkk/d;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    return-object v0
.end method

.method public k(Ljk/f;Ljk/f;[Ljk/f;)Ljk/i;
    .locals 1

    new-instance v0, Lkk/d;

    invoke-direct {v0, p0, p1, p2, p3}, Lkk/d;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

    return-object v0
.end method

.method public o(Ljava/math/BigInteger;)Ljk/f;
    .locals 1

    new-instance v0, Lkk/c;

    invoke-direct {v0, p1}, Lkk/c;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public w()I
    .locals 1

    sget-object v0, Lkk/a;->r:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public x()Ljk/i;
    .locals 1

    iget-object v0, p0, Lkk/a;->q:Lkk/d;

    return-object v0
.end method
