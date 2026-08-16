.class public Lcl/k;
.super Lcl/h;
.source "SourceFile"


# instance fields
.field public final d:[B

.field public final e:[B


# direct methods
.method public constructor <init>(Lcl/i;[B)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcl/h;-><init>(ZLcl/i;)V

    array-length p1, p2

    add-int/lit8 p1, p1, -0x20

    invoke-static {p2, v0, p1}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1

    iput-object p1, p0, Lcl/k;->d:[B

    array-length p1, p2

    add-int/lit8 p1, p1, -0x20

    array-length v0, p2

    invoke-static {p2, p1, v0}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1

    iput-object p1, p0, Lcl/k;->e:[B

    return-void
.end method

.method public constructor <init>(Lcl/i;[B[B)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lcl/h;-><init>(ZLcl/i;)V

    invoke-static {p2}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lcl/k;->d:[B

    invoke-static {p3}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lcl/k;->e:[B

    return-void
.end method

.method public static e([B[B)[B
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public f()[B
    .locals 1

    invoke-virtual {p0}, Lcl/k;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public g()[B
    .locals 1

    iget-object v0, p0, Lcl/k;->e:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    iget-object v0, p0, Lcl/k;->d:[B

    iget-object v1, p0, Lcl/k;->e:[B

    invoke-static {v0, v1}, Lcl/k;->e([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public h()[B
    .locals 1

    iget-object v0, p0, Lcl/k;->d:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method
