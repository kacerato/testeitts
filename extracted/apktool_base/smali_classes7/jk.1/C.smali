.class public Ljk/C;
.super Ljk/b;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "bc_wtnaf"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljk/b;-><init>()V

    return-void
.end method

.method public static d(Ljk/i$b;[B)Ljk/i$b;
    .locals 6

    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v0

    check-cast v0, Ljk/e$b;

    invoke-virtual {v0}, Ljk/e;->p()Ljk/f;

    move-result-object v1

    invoke-virtual {v1}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    new-instance v2, Ljk/C$a;

    invoke-direct {v2, p0, v1}, Ljk/C$a;-><init>(Ljk/i$b;B)V

    const-string v1, "bc_wtnaf"

    invoke-virtual {v0, p0, v1, v2}, Ljk/e;->G(Ljk/i;Ljava/lang/String;Ljk/p;)Ljk/q;

    move-result-object v0

    check-cast v0, Ljk/D;

    invoke-virtual {v0}, Ljk/D;->a()[Ljk/i$b;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Ljk/i$b;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljk/i;->A()Ljk/i;

    move-result-object v4

    check-cast v4, Ljk/i$b;

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object p0

    invoke-virtual {p0}, Ljk/e;->x()Ljk/i;

    move-result-object p0

    check-cast p0, Ljk/i$b;

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    move v4, v2

    :goto_1
    if-ltz v3, :cond_3

    add-int/lit8 v4, v4, 0x1

    aget-byte v5, p1, v3

    if-eqz v5, :cond_2

    invoke-virtual {p0, v4}, Ljk/i$b;->P(I)Ljk/i$b;

    move-result-object p0

    if-lez v5, :cond_1

    ushr-int/lit8 v4, v5, 0x1

    aget-object v4, v0, v4

    goto :goto_2

    :cond_1
    neg-int v4, v5

    ushr-int/lit8 v4, v4, 0x1

    aget-object v4, v1, v4

    :goto_2
    invoke-virtual {p0, v4}, Ljk/i;->a(Ljk/i;)Ljk/i;

    move-result-object p0

    check-cast p0, Ljk/i$b;

    move v4, v2

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    if-lez v4, :cond_4

    invoke-virtual {p0, v4}, Ljk/i$b;->P(I)Ljk/i$b;

    move-result-object p0

    :cond_4
    return-object p0
.end method


# virtual methods
.method public c(Ljk/i;Ljava/math/BigInteger;)Ljk/i;
    .locals 4

    instance-of v0, p1, Ljk/i$b;

    if-eqz v0, :cond_0

    check-cast p1, Ljk/i$b;

    invoke-virtual {p1}, Ljk/i;->i()Ljk/e;

    move-result-object v0

    check-cast v0, Ljk/e$b;

    invoke-virtual {v0}, Ljk/e;->p()Ljk/f;

    move-result-object v1

    invoke-virtual {v1}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-static {v1}, Ljk/x;->c(I)B

    move-result v2

    const/16 v3, 0xa

    invoke-static {v0, p2, v1, v2, v3}, Ljk/x;->p(Ljk/e$b;Ljava/math/BigInteger;BBB)Ljk/E;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v1, v2}, Ljk/C;->e(Ljk/i$b;Ljk/E;BB)Ljk/i$b;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only ECPoint.AbstractF2m can be used in WTauNafMultiplier"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Ljk/i$b;Ljk/E;BB)Ljk/i$b;
    .locals 2

    if-nez p3, :cond_0

    sget-object p3, Ljk/x;->e:[Ljk/E;

    goto :goto_0

    :cond_0
    sget-object p3, Ljk/x;->g:[Ljk/E;

    :goto_0
    const/4 v0, 0x4

    invoke-static {p4, v0}, Ljk/x;->j(BI)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-static {p4, p2, v0, v1, p3}, Ljk/x;->t(BLjk/E;II[Ljk/E;)[B

    move-result-object p2

    invoke-static {p1, p2}, Ljk/C;->d(Ljk/i$b;[B)Ljk/i$b;

    move-result-object p1

    return-object p1
.end method
