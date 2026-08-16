.class public Lcom/android/tools/r8/dex/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/w5;

.field public final b:Lcom/android/tools/r8/internal/Hz;

.field public final c:Lcom/android/tools/r8/internal/Hz;

.field public final d:Lcom/android/tools/r8/graph/Z0;

.field public e:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/Z0;Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/dex/u;->d:Lcom/android/tools/r8/graph/Z0;

    iput-object p2, p0, Lcom/android/tools/r8/dex/u;->a:Lcom/android/tools/r8/graph/w5;

    iput-object p3, p0, Lcom/android/tools/r8/dex/u;->b:Lcom/android/tools/r8/internal/Hz;

    iput-object p4, p0, Lcom/android/tools/r8/dex/u;->c:Lcom/android/tools/r8/internal/Hz;

    invoke-interface {p1}, Lcom/android/tools/r8/graph/Z0;->h0()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/dex/u;->e:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/dex/u;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/tools/r8/dex/u;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/dex/u;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/dex/u;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/dex/u;->e:Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method public a()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/dex/u;->d:Lcom/android/tools/r8/graph/Z0;

    iget-object v1, p0, Lcom/android/tools/r8/dex/u;->a:Lcom/android/tools/r8/graph/w5;

    iget-object v2, p0, Lcom/android/tools/r8/dex/u;->b:Lcom/android/tools/r8/internal/Hz;

    iget-object v3, p0, Lcom/android/tools/r8/dex/u;->c:Lcom/android/tools/r8/internal/Hz;

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/tools/r8/graph/Z0;->a(Lcom/android/tools/r8/dex/u;Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/dex/u;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/dex/u;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public final b(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/dex/u;->a(I)V

    iget-object v0, p0, Lcom/android/tools/r8/dex/u;->e:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final c(I)V
    .locals 3

    invoke-static {p1}, Lcom/android/tools/r8/internal/BR;->b(I)[B

    move-result-object p1

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/dex/u;->a(I)V

    iget-object v0, p0, Lcom/android/tools/r8/dex/u;->e:Ljava/nio/ByteBuffer;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method
