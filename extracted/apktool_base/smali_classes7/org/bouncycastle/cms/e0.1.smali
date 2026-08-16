.class public Lorg/bouncycastle/cms/e0;
.super Lorg/bouncycastle/cms/F0;
.source "SourceFile"


# instance fields
.field public g:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/F0;-><init>(I)V

    iput-object p1, p0, Lorg/bouncycastle/cms/e0;->g:[B

    return-void
.end method


# virtual methods
.method public Z2(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/e0;->g:[B

    check-cast p1, [B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/cms/g0;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/cms/g0;

    invoke-virtual {p1}, Lorg/bouncycastle/cms/H0;->i()Lorg/bouncycastle/cms/F0;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/e0;->g:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cms/e0;

    iget-object v1, p0, Lorg/bouncycastle/cms/e0;->g:[B

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/e0;-><init>([B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/cms/e0;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lorg/bouncycastle/cms/e0;

    iget-object v0, p0, Lorg/bouncycastle/cms/e0;->g:[B

    iget-object p1, p1, Lorg/bouncycastle/cms/e0;->g:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/e0;->g:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->t0([B)I

    move-result v0

    return v0
.end method
