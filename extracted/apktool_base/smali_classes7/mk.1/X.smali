.class public Lmk/X;
.super Ljk/e$b;
.source "SourceFile"


# static fields
.field public static final s:I = 0x6

.field public static final t:[Ljk/f;


# instance fields
.field public r:Lmk/Y;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lmk/W;

    sget-object v1, Ljk/d;->b:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lmk/W;-><init>(Ljava/math/BigInteger;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljk/f;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lmk/X;->t:[Ljk/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x9

    const/4 v1, 0x0

    const/16 v2, 0x71

    invoke-direct {p0, v2, v0, v1, v1}, Ljk/e$b;-><init>(IIII)V

    new-instance v0, Lmk/Y;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lmk/Y;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    iput-object v0, p0, Lmk/X;->r:Lmk/Y;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "003088250CA6E7C7FE649CE85820F7"

    invoke-static {v1}, Lem/h;->d(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lmk/X;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object v0

    iput-object v0, p0, Ljk/e;->b:Ljk/f;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "00E8BEE4D3E2260744188BE0E9C723"

    invoke-static {v1}, Lem/h;->d(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lmk/X;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object v0

    iput-object v0, p0, Ljk/e;->c:Ljk/f;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "0100000000000000D9CCEC8A39E56F"

    invoke-static {v1}, Lem/h;->d(Ljava/lang/String;)[B

    move-result-object v1

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

    sget-object v0, Lmk/X;->t:[Ljk/f;

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

    const/16 v0, 0x9

    return v0
.end method

.method public T()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public U()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public V()I
    .locals 1

    const/16 v0, 0x71

    return v0
.end method

.method public W()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()Ljk/e;
    .locals 1

    new-instance v0, Lmk/X;

    invoke-direct {v0}, Lmk/X;-><init>()V

    return-object v0
.end method

.method public g([Ljk/i;II)Ljk/g;
    .locals 6

    mul-int/lit8 v0, p3, 0x4

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

    check-cast v5, Lmk/W;

    iget-object v5, v5, Lmk/W;->g:[J

    invoke-static {v5, v1, v0, v3}, Lsk/e;->h([JI[JI)V

    add-int/lit8 v5, v3, 0x2

    invoke-virtual {v4}, Ljk/i;->o()Ljk/f;

    move-result-object v4

    check-cast v4, Lmk/W;

    iget-object v4, v4, Lmk/W;->g:[J

    invoke-static {v4, v1, v0, v5}, Lsk/e;->h([JI[JI)V

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lmk/X$a;

    invoke-direct {p1, p0, p3, v0}, Lmk/X$a;-><init>(Lmk/X;I[J)V

    return-object p1
.end method

.method public j(Ljk/f;Ljk/f;)Ljk/i;
    .locals 1

    new-instance v0, Lmk/Y;

    invoke-direct {v0, p0, p1, p2}, Lmk/Y;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    return-object v0
.end method

.method public k(Ljk/f;Ljk/f;[Ljk/f;)Ljk/i;
    .locals 1

    new-instance v0, Lmk/Y;

    invoke-direct {v0, p0, p1, p2, p3}, Lmk/Y;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

    return-object v0
.end method

.method public o(Ljava/math/BigInteger;)Ljk/f;
    .locals 1

    new-instance v0, Lmk/W;

    invoke-direct {v0, p1}, Lmk/W;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public w()I
    .locals 1

    const/16 v0, 0x71

    return v0
.end method

.method public x()Ljk/i;
    .locals 1

    iget-object v0, p0, Lmk/X;->r:Lmk/Y;

    return-object v0
.end method
