.class public Lcom/google/protobuf/e$b;
.super Lcom/google/protobuf/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/e;->m([BII)Lcom/google/protobuf/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:[B

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public constructor <init>([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$bytes",
            "val$offset",
            "val$length"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/e$b;->b:[B

    iput p2, p0, Lcom/google/protobuf/e$b;->c:I

    iput p3, p0, Lcom/google/protobuf/e$b;->d:I

    invoke-direct {p0}, Lcom/google/protobuf/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/e$b;->b:[B

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/e$b;->c:I

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/e$b;->d:I

    return v0
.end method

.method public f()Ljava/nio/ByteBuffer;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/e$b;->a:I

    return v0
.end method

.method public h(I)Lcom/google/protobuf/e;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/protobuf/e$b;->d:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/google/protobuf/e$b;->a:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/e$b;->d:I

    iget v1, p0, Lcom/google/protobuf/e$b;->a:I

    sub-int/2addr v0, v1

    return v0
.end method
