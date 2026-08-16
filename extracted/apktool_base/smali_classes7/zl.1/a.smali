.class public Lzl/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/k;
.implements Ljava/security/PublicKey;


# static fields
.field public static final e:J = 0x1L


# instance fields
.field public b:[B

.field public c:LPl/f;

.field public d:LPl/f;


# direct methods
.method public constructor <init>(LPl/h;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, LPl/h;->e()[B

    move-result-object v0

    invoke-virtual {p1}, LPl/d;->d()LPl/f;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lzl/a;-><init>([BLPl/f;)V

    return-void
.end method

.method public constructor <init>([BLPl/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lzl/a;->c:LPl/f;

    iput-object p1, p0, Lzl/a;->b:[B

    return-void
.end method


# virtual methods
.method public a()LPl/f;
    .locals 1

    iget-object v0, p0, Lzl/a;->c:LPl/f;

    return-object v0
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lzl/a;->b:[B

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "GMSS"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 7

    new-instance v0, Lhi/b;

    sget-object v1, LXk/m;->g:Loh/x;

    new-instance v2, LXk/n;

    iget-object v3, p0, Lzl/a;->c:LPl/f;

    invoke-virtual {v3}, LPl/f;->c()I

    move-result v3

    iget-object v4, p0, Lzl/a;->c:LPl/f;

    invoke-virtual {v4}, LPl/f;->a()[I

    move-result-object v4

    iget-object v5, p0, Lzl/a;->c:LPl/f;

    invoke-virtual {v5}, LPl/f;->d()[I

    move-result-object v5

    iget-object v6, p0, Lzl/a;->c:LPl/f;

    invoke-virtual {v6}, LPl/f;->b()[I

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, LXk/n;-><init>(I[I[I[I)V

    invoke-virtual {v2}, LXk/n;->r()Loh/B;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    new-instance v1, LXk/f;

    iget-object v2, p0, Lzl/a;->b:[B

    invoke-direct {v1, v2}, LXk/f;-><init>([B)V

    invoke-static {v0, v1}, LMl/e;->e(Lhi/b;Loh/g;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "X.509"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GMSS public key : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lzl/a;->b:[B

    invoke-static {v2}, Lem/h;->h([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nHeight of Trees: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lzl/a;->c:LPl/f;

    invoke-virtual {v2}, LPl/f;->a()[I

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Layer "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lzl/a;->c:LPl/f;

    invoke-virtual {v0}, LPl/f;->a()[I

    move-result-object v0

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " WinternitzParameter: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lzl/a;->c:LPl/f;

    invoke-virtual {v0}, LPl/f;->d()[I

    move-result-object v0

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " K: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lzl/a;->c:LPl/f;

    invoke-virtual {v0}, LPl/f;->b()[I

    move-result-object v0

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
