.class public Lbl/g;
.super Lbl/d;
.source "SourceFile"


# instance fields
.field public final d:[B

.field public final e:[B


# direct methods
.method public constructor <init>(Lbl/e;[B)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lbl/d;-><init>(ZLbl/e;)V

    const/16 p1, 0x20

    invoke-static {p2, v0, p1}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v0

    iput-object v0, p0, Lbl/g;->d:[B

    array-length v0, p2

    invoke-static {p2, p1, v0}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1

    iput-object p1, p0, Lbl/g;->e:[B

    return-void
.end method

.method public constructor <init>(Lbl/e;[B[B)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lbl/d;-><init>(ZLbl/e;)V

    invoke-static {p2}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lbl/g;->d:[B

    invoke-static {p3}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lbl/g;->e:[B

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

    iget-object v0, p0, Lbl/g;->d:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public g()[B
    .locals 1

    iget-object v0, p0, Lbl/g;->e:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    iget-object v0, p0, Lbl/g;->d:[B

    iget-object v1, p0, Lbl/g;->e:[B

    invoke-static {v0, v1}, Lbl/g;->e([B[B)[B

    move-result-object v0

    return-object v0
.end method
