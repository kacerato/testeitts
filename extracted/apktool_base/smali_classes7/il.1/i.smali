.class public Lil/i;
.super Lil/e;
.source "SourceFile"


# instance fields
.field public final d:[B


# direct methods
.method public constructor <init>(Lil/g;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lil/e;-><init>(ZLil/g;)V

    invoke-static {p2}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lil/i;->d:[B

    return-void
.end method


# virtual methods
.method public e()[B
    .locals 1

    iget-object v0, p0, Lil/i;->d:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    invoke-virtual {p0}, Lil/i;->e()[B

    move-result-object v0

    return-object v0
.end method
