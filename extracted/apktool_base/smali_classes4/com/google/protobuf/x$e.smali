.class public final Lcom/google/protobuf/x$e;
.super Lcom/google/protobuf/x$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final p:J = 0x1L


# instance fields
.field public final n:I

.field public final o:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "offset",
            "length"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/protobuf/x$j;-><init>([B)V

    add-int v0, p2, p3

    array-length p1, p1

    invoke-static {p2, v0, p1}, Lcom/google/protobuf/x;->l(III)I

    iput p2, p0, Lcom/google/protobuf/x$e;->n:I

    iput p3, p0, Lcom/google/protobuf/x$e;->o:I

    return-void
.end method


# virtual methods
.method public A([BIII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "sourceOffset",
            "targetOffset",
            "numberToCopy"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/x$j;->l:[B

    invoke-virtual {p0}, Lcom/google/protobuf/x$e;->s0()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {v0, v1, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public H(I)B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/x$j;->l:[B

    iget v1, p0, Lcom/google/protobuf/x$e;->n:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public j(I)B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/x$e;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/protobuf/x;->k(II)V

    iget-object v0, p0, Lcom/google/protobuf/x$j;->l:[B

    iget v1, p0, Lcom/google/protobuf/x$e;->n:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public s0()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/x$e;->n:I

    return v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/x$e;->o:I

    return v0
.end method

.method public final t0(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "BoundedByteStream instances are not to be serialized directly"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u0()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/x;->b0()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/x;->k0([B)Lcom/google/protobuf/x;

    move-result-object v0

    return-object v0
.end method
