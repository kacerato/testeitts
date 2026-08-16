.class public Lorg/bouncycastle/cms/m0;
.super Lorg/bouncycastle/cms/F0;
.source "SourceFile"


# instance fields
.field public g:Lxi/d;


# direct methods
.method public constructor <init>(Lfi/d;Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/cms/m0;-><init>(Lfi/d;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lfi/d;Ljava/math/BigInteger;[B)V
    .locals 1

    .line 2
    new-instance v0, Lxi/d;

    invoke-direct {v0, p1, p2, p3}, Lxi/d;-><init>(Lfi/d;Ljava/math/BigInteger;[B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/m0;-><init>(Lxi/d;)V

    return-void
.end method

.method public constructor <init>(Lxi/d;)V
    .locals 1

    const/4 v0, 0x2

    .line 3
    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/F0;-><init>(I)V

    iput-object p1, p0, Lorg/bouncycastle/cms/m0;->g:Lxi/d;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 4
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lorg/bouncycastle/cms/m0;-><init>(Lfi/d;Ljava/math/BigInteger;[B)V

    return-void
.end method


# virtual methods
.method public Z2(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/cms/o0;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/cms/o0;

    invoke-virtual {p1}, Lorg/bouncycastle/cms/H0;->i()Lorg/bouncycastle/cms/F0;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/m0;->g:Lxi/d;

    invoke-virtual {v0, p1}, Lxi/d;->Z2(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b()Lfi/d;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/m0;->g:Lxi/d;

    invoke-virtual {v0}, Lxi/d;->b()Lfi/d;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/m0;->g:Lxi/d;

    invoke-virtual {v0}, Lxi/d;->c()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cms/m0;

    iget-object v1, p0, Lorg/bouncycastle/cms/m0;->g:Lxi/d;

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/m0;-><init>(Lxi/d;)V

    return-object v0
.end method

.method public d()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/m0;->g:Lxi/d;

    invoke-virtual {v0}, Lxi/d;->d()[B

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/cms/m0;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lorg/bouncycastle/cms/m0;

    iget-object v0, p0, Lorg/bouncycastle/cms/m0;->g:Lxi/d;

    iget-object p1, p1, Lorg/bouncycastle/cms/m0;->g:Lxi/d;

    invoke-virtual {v0, p1}, Lxi/d;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/m0;->g:Lxi/d;

    invoke-virtual {v0}, Lxi/d;->hashCode()I

    move-result v0

    return v0
.end method
