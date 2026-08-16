.class public Ldl/n;
.super Ldl/k;
.source "SourceFile"


# instance fields
.field public final d:[B

.field public final e:[B

.field public final f:[B

.field public final g:[B


# direct methods
.method public constructor <init>(Ldl/m;[B[B[B[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Ldl/k;-><init>(ZLdl/m;)V

    invoke-static {p2}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Ldl/n;->e:[B

    invoke-static {p3}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Ldl/n;->f:[B

    invoke-static {p4}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Ldl/n;->g:[B

    invoke-static {p5}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Ldl/n;->d:[B

    return-void
.end method


# virtual methods
.method public e()[B
    .locals 1

    iget-object v0, p0, Ldl/n;->f:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public f()[B
    .locals 1

    iget-object v0, p0, Ldl/n;->d:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public g()[B
    .locals 1

    iget-object v0, p0, Ldl/n;->g:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 3

    iget-object v0, p0, Ldl/n;->e:[B

    iget-object v1, p0, Ldl/n;->f:[B

    iget-object v2, p0, Ldl/n;->g:[B

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/a;->C([B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public h()[B
    .locals 1

    iget-object v0, p0, Ldl/n;->e:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method
