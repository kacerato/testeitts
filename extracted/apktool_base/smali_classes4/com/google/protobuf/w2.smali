.class public final Lcom/google/protobuf/w2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/x;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/x;->j0(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/x;

    move-result-object p0

    return-object p0
.end method

.method public static b([B)Lcom/google/protobuf/x;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/x;->k0([B)Lcom/google/protobuf/x;

    move-result-object p0

    return-object p0
.end method

.method public static c([BII)Lcom/google/protobuf/x;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "offset",
            "length"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/x;->l0([BII)Lcom/google/protobuf/x;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/google/protobuf/x;Lcom/google/protobuf/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bytes",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/x;->m0(Lcom/google/protobuf/w;)V

    return-void
.end method
