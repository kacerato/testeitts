.class public Lcom/google/protobuf/e$a;
.super Lcom/google/protobuf/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/e;->j(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$buffer"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/e$a;->a:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/protobuf/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/e$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/e$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/e$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/e$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    return v0
.end method

.method public f()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/e$a;->a:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/e$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    return v0
.end method

.method public h(I)Lcom/google/protobuf/e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/e$a;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0, p1}, Lcom/google/protobuf/F0;->e(Ljava/nio/Buffer;I)V

    return-object p0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/e$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    return v0
.end method
