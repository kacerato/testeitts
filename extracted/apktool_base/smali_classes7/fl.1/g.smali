.class public Lfl/g;
.super Lfl/e;
.source "SourceFile"


# instance fields
.field public final d:[B


# direct methods
.method public constructor <init>(Lfl/f;[B)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lfl/e;-><init>(ZLfl/f;)V

    array-length p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lfl/g;->d:[B

    array-length v1, p1

    invoke-static {p2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lfl/g;->d:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method
