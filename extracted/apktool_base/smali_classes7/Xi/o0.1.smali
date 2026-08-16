.class public LXi/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/k;


# instance fields
.field public b:[B


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, LXi/o0;->b:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, LXi/o0;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2

    .line 3
    invoke-direct {p0, p3}, LXi/o0;-><init>(I)V

    iget-object v0, p0, LXi/o0;->b:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public a([BII)V
    .locals 2

    iget-object v0, p0, LXi/o0;->b:[B

    array-length v1, v0

    if-ne v1, p3, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "len"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, LXi/o0;->b:[B

    return-object v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, LXi/o0;->b:[B

    array-length v0, v0

    return v0
.end method

.method public d()LXi/o0;
    .locals 3

    new-instance v0, LXi/o0;

    iget-object v1, p0, LXi/o0;->b:[B

    array-length v1, v1

    invoke-direct {v0, v1}, LXi/o0;-><init>(I)V

    iget-object v1, p0, LXi/o0;->b:[B

    iget-object v2, v0, LXi/o0;->b:[B

    invoke-static {v1, v2}, Lorg/bouncycastle/util/a;->M0([B[B)V

    return-object v0
.end method
