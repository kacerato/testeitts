.class public LPi/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/String; = "HPKE-v1"


# instance fields
.field public final a:LOi/x;

.field public final b:I


# direct methods
.method public constructor <init>(S)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    new-instance p1, LIi/O;

    invoke-direct {p1}, LIi/O;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid kdf id"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, LIi/M;

    invoke-direct {p1}, LIi/M;-><init>()V

    goto :goto_0

    :cond_2
    new-instance p1, LIi/L;

    invoke-direct {p1}, LIi/L;-><init>()V

    :goto_0
    new-instance v0, LOi/x;

    invoke-direct {v0, p1}, LOi/x;-><init>(LBi/y;)V

    iput-object v0, p0, LPi/c;->a:LOi/x;

    invoke-interface {p1}, LBi/y;->f()I

    move-result p1

    iput p1, p0, LPi/c;->b:I

    return-void
.end method


# virtual methods
.method public a([B[BI)[B
    .locals 1

    const/high16 v0, 0x10000

    if-gt p3, v0, :cond_0

    iget-object v0, p0, LPi/c;->a:LOi/x;

    invoke-static {p1, p2}, LXi/g0;->f([B[B)LXi/g0;

    move-result-object p1

    invoke-virtual {v0, p1}, LOi/x;->c(LBi/x;)V

    new-array p1, p3, [B

    iget-object p2, p0, LPi/c;->a:LOi/x;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3}, LOi/x;->a([BII)I

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Expand length cannot be larger than 2^16"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b([B[B)[B
    .locals 1

    if-nez p1, :cond_0

    iget p1, p0, LPi/c;->b:I

    new-array p1, p1, [B

    :cond_0
    iget-object v0, p0, LPi/c;->a:LOi/x;

    invoke-virtual {v0, p1, p2}, LOi/x;->f([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public c([B[BLjava/lang/String;[BI)[B
    .locals 2

    const/high16 v0, 0x10000

    if-gt p5, v0, :cond_0

    int-to-short v0, p5

    invoke-static {v0}, Lorg/bouncycastle/util/p;->Q(S)[B

    move-result-object v0

    const-string v1, "HPKE-v1"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-static {v0, v1, p2, p3}, Lorg/bouncycastle/util/a;->D([B[B[B[B)[B

    move-result-object p2

    iget-object p3, p0, LPi/c;->a:LOi/x;

    invoke-static {p2, p4}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object p2

    invoke-static {p1, p2}, LXi/g0;->f([B[B)LXi/g0;

    move-result-object p1

    invoke-virtual {p3, p1}, LOi/x;->c(LBi/x;)V

    new-array p1, p5, [B

    iget-object p2, p0, LPi/c;->a:LOi/x;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p5}, LOi/x;->a([BII)I

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Expand length cannot be larger than 2^16"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d([B[BLjava/lang/String;[B)[B
    .locals 1

    if-nez p1, :cond_0

    iget p1, p0, LPi/c;->b:I

    new-array p1, p1, [B

    :cond_0
    const-string v0, "HPKE-v1"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-static {v0, p2, p3, p4}, Lorg/bouncycastle/util/a;->D([B[B[B[B)[B

    move-result-object p2

    iget-object p3, p0, LPi/c;->a:LOi/x;

    invoke-virtual {p3, p1, p2}, LOi/x;->f([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public e()I
    .locals 1

    iget v0, p0, LPi/c;->b:I

    return v0
.end method
