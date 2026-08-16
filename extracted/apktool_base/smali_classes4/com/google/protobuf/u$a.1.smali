.class public Lcom/google/protobuf/u$a;
.super Lcom/google/protobuf/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/protobuf/e;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/e;->j(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/e;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lcom/google/protobuf/e;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    new-array p1, p1, [B

    invoke-static {p1}, Lcom/google/protobuf/e;->k([B)Lcom/google/protobuf/e;

    move-result-object p1

    return-object p1
.end method
