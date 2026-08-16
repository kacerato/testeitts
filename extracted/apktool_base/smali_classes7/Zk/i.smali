.class public LZk/i;
.super LZk/f;
.source "SourceFile"


# instance fields
.field public d:[B


# direct methods
.method public constructor <init>(LZk/g;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, LZk/f;-><init>(ZLZk/g;)V

    invoke-static {p2}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LZk/i;->d:[B

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, LZk/i;->d:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method
