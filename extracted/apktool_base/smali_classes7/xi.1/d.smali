.class public Lxi/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/r;


# instance fields
.field public b:[B

.field public c:Lfi/d;

.field public d:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lfi/d;Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lxi/d;-><init>(Lfi/d;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lfi/d;Ljava/math/BigInteger;[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxi/d;->c:Lfi/d;

    iput-object p2, p0, Lxi/d;->d:Ljava/math/BigInteger;

    iput-object p3, p0, Lxi/d;->b:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, v0, p1}, Lxi/d;-><init>(Lfi/d;Ljava/math/BigInteger;[B)V

    return-void
.end method


# virtual methods
.method public Z2(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lli/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Lli/h;

    invoke-virtual {p0}, Lxi/d;->c()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Luh/z;

    invoke-virtual {p1}, Lli/h;->x()Lhi/q;

    move-result-object p1

    invoke-direct {v0, p1}, Luh/z;-><init>(Lhi/q;)V

    invoke-virtual {v0}, Luh/z;->v()Lfi/d;

    move-result-object p1

    iget-object v2, p0, Lxi/d;->c:Lfi/d;

    invoke-virtual {p1, v2}, Lfi/d;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Luh/z;->x()Loh/s;

    move-result-object p1

    iget-object v0, p0, Lxi/d;->d:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Loh/s;->L(Ljava/math/BigInteger;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lxi/d;->b:[B

    if-eqz v0, :cond_4

    sget-object v0, Lhi/B;->f:Loh/x;

    invoke-virtual {p1, v0}, Lli/h;->b(Loh/x;)Lhi/B;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lxi/d;->b:[B

    invoke-virtual {p1}, Lli/h;->m()Lhi/h0;

    move-result-object p1

    invoke-static {p1}, Lxi/a;->a(Lhi/h0;)[B

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p1

    return p1

    :cond_2
    invoke-virtual {v0}, Lhi/B;->A()Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    iget-object v0, p0, Lxi/d;->b:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p1

    return p1

    :cond_3
    instance-of v0, p1, [B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lxi/d;->b:[B

    check-cast p1, [B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p1

    return p1

    :cond_4
    return v1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()Lfi/d;
    .locals 1

    iget-object v0, p0, Lxi/d;->c:Lfi/d;

    return-object v0
.end method

.method public c()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lxi/d;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lxi/d;

    iget-object v1, p0, Lxi/d;->c:Lfi/d;

    iget-object v2, p0, Lxi/d;->d:Ljava/math/BigInteger;

    iget-object v3, p0, Lxi/d;->b:[B

    invoke-direct {v0, v1, v2, v3}, Lxi/d;-><init>(Lfi/d;Ljava/math/BigInteger;[B)V

    return-object v0
.end method

.method public d()[B
    .locals 1

    iget-object v0, p0, Lxi/d;->b:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lxi/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lxi/d;

    iget-object v0, p0, Lxi/d;->b:[B

    iget-object v2, p1, Lxi/d;->b:[B

    invoke-static {v0, v2}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lxi/d;->d:Ljava/math/BigInteger;

    iget-object v2, p1, Lxi/d;->d:Ljava/math/BigInteger;

    invoke-virtual {p0, v0, v2}, Lxi/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lxi/d;->c:Lfi/d;

    iget-object p1, p1, Lxi/d;->c:Lfi/d;

    invoke-virtual {p0, v0, p1}, Lxi/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lxi/d;->b:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->t0([B)I

    move-result v0

    iget-object v1, p0, Lxi/d;->d:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lxi/d;->c:Lfi/d;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lfi/d;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_1
    return v0
.end method
