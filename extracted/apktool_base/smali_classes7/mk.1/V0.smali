.class public Lmk/V0;
.super Ljk/e$b;
.source "SourceFile"


# static fields
.field public static final s:I = 0x6

.field public static final t:[Ljk/f;

.field public static final u:Lmk/S0;

.field public static final v:Lmk/S0;


# instance fields
.field public r:Lmk/W0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lmk/S0;

    sget-object v1, Ljk/d;->b:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lmk/S0;-><init>(Ljava/math/BigInteger;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljk/f;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    sput-object v2, Lmk/V0;->t:[Ljk/f;

    new-instance v0, Lmk/S0;

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "02F40E7E2221F295DE297117B7F3D62F5C6A97FFCB8CEFF1CD6BA8CE4A9A18AD84FFABBD8EFA59332BE7AD6756A66E294AFD185A78FF12AA520E4DE739BACA0C7FFEFF7F2955727A"

    invoke-static {v3}, Lem/h;->d(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v0, v2}, Lmk/S0;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lmk/V0;->u:Lmk/S0;

    invoke-virtual {v0}, Lmk/S0;->o()Ljk/f;

    move-result-object v0

    check-cast v0, Lmk/S0;

    sput-object v0, Lmk/V0;->v:Lmk/S0;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x5

    const/16 v1, 0xa

    const/16 v2, 0x23b

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3, v0, v1}, Ljk/e$b;-><init>(IIII)V

    new-instance v0, Lmk/W0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lmk/W0;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    iput-object v0, p0, Lmk/V0;->r:Lmk/W0;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmk/V0;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object v0

    iput-object v0, p0, Ljk/e;->b:Ljk/f;

    sget-object v0, Lmk/V0;->u:Lmk/S0;

    iput-object v0, p0, Ljk/e;->c:Ljk/f;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE661CE18FF55987308059B186823851EC7DD9CA1161DE93D5174D66E8382E9BB2FE84E47"

    invoke-static {v1}, Lem/h;->d(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Ljk/e;->d:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Ljk/e;->e:Ljava/math/BigInteger;

    const/4 v0, 0x6

    iput v0, p0, Ljk/e;->f:I

    return-void
.end method

.method public static synthetic R()[Ljk/f;
    .locals 1

    sget-object v0, Lmk/V0;->t:[Ljk/f;

    return-object v0
.end method


# virtual methods
.method public J(I)Z
    .locals 1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public P()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public S()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public T()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public U()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public V()I
    .locals 1

    const/16 v0, 0x23b

    return v0
.end method

.method public W()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljk/e;
    .locals 1

    new-instance v0, Lmk/V0;

    invoke-direct {v0}, Lmk/V0;-><init>()V

    return-object v0
.end method

.method public g([Ljk/i;II)Ljk/g;
    .locals 6

    mul-int/lit8 v0, p3, 0x12

    new-array v0, v0, [J

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p3, :cond_0

    add-int v4, p2, v2

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljk/i;->n()Ljk/f;

    move-result-object v5

    check-cast v5, Lmk/S0;

    iget-object v5, v5, Lmk/S0;->g:[J

    invoke-static {v5, v1, v0, v3}, Lsk/n;->a([JI[JI)V

    add-int/lit8 v5, v3, 0x9

    invoke-virtual {v4}, Ljk/i;->o()Ljk/f;

    move-result-object v4

    check-cast v4, Lmk/S0;

    iget-object v4, v4, Lmk/S0;->g:[J

    invoke-static {v4, v1, v0, v5}, Lsk/n;->a([JI[JI)V

    add-int/lit8 v3, v3, 0x12

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lmk/V0$a;

    invoke-direct {p1, p0, p3, v0}, Lmk/V0$a;-><init>(Lmk/V0;I[J)V

    return-object p1
.end method

.method public j(Ljk/f;Ljk/f;)Ljk/i;
    .locals 1

    new-instance v0, Lmk/W0;

    invoke-direct {v0, p0, p1, p2}, Lmk/W0;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    return-object v0
.end method

.method public k(Ljk/f;Ljk/f;[Ljk/f;)Ljk/i;
    .locals 1

    new-instance v0, Lmk/W0;

    invoke-direct {v0, p0, p1, p2, p3}, Lmk/W0;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

    return-object v0
.end method

.method public o(Ljava/math/BigInteger;)Ljk/f;
    .locals 1

    new-instance v0, Lmk/S0;

    invoke-direct {v0, p1}, Lmk/S0;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public w()I
    .locals 1

    const/16 v0, 0x23b

    return v0
.end method

.method public x()Ljk/i;
    .locals 1

    iget-object v0, p0, Lmk/V0;->r:Lmk/W0;

    return-object v0
.end method
