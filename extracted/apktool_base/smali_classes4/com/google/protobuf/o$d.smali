.class public final Lcom/google/protobuf/o$d;
.super Lcom/google/protobuf/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public h:Ljava/nio/ByteBuffer;

.field public i:J

.field public j:J

.field public k:J


# direct methods
.method public constructor <init>(Lcom/google/protobuf/u;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "alloc",
            "chunkSize"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/protobuf/o;-><init>(Lcom/google/protobuf/u;ILcom/google/protobuf/o$a;)V

    invoke-direct {p0}, Lcom/google/protobuf/o$d;->c1()V

    return-void
.end method

.method public static synthetic Y0()Z
    .locals 1

    invoke-static {}, Lcom/google/protobuf/o$d;->b1()Z

    move-result v0

    return v0
.end method

.method private a1()I
    .locals 4

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->j:J

    iget-wide v2, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static b1()Z
    .locals 1

    invoke-static {}, Lcom/google/protobuf/x2;->V()Z

    move-result v0

    return v0
.end method

.method private c1()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o;->f0()Lcom/google/protobuf/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/o$d;->e1(Lcom/google/protobuf/e;)V

    return-void
.end method

.method private d1(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/o;->g0(I)Lcom/google/protobuf/e;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/o$d;->e1(Lcom/google/protobuf/e;)V

    return-void
.end method

.method private e1(Lcom/google/protobuf/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allocatedBuffer"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/e;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/e;->f()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/o$d;->b0()V

    iget-object v1, p0, Lcom/google/protobuf/o;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/protobuf/o$d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/protobuf/F0;->c(Ljava/nio/Buffer;I)V

    iget-object p1, p0, Lcom/google/protobuf/o$d;->h:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/protobuf/F0;->e(Ljava/nio/Buffer;I)V

    iget-object p1, p0, Lcom/google/protobuf/o$d;->h:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/google/protobuf/x2;->k(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/protobuf/o$d;->i:J

    iget-object p1, p0, Lcom/google/protobuf/o$d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/o$d;->j:J

    iput-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Allocator returned non-direct buffer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Allocated buffer does not have NIO buffer"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private f1()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o$d;->Z0()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private g1(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    ushr-int/lit8 v4, p1, 0x1c

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    ushr-int/lit8 v4, p1, 0x15

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    ushr-int/lit8 v4, p1, 0xe

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    ushr-int/lit8 v4, p1, 0x7

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/o$d;->k:J

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/x2;->e0(JB)V

    return-void
.end method

.method private h1(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    ushr-int/lit8 v4, p1, 0x15

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    ushr-int/lit8 v4, p1, 0xe

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    ushr-int/lit8 v4, p1, 0x7

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/o$d;->k:J

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/x2;->e0(JB)V

    return-void
.end method

.method private i1(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/o$d;->k:J

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/x2;->e0(JB)V

    return-void
.end method

.method private j1(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    ushr-int/lit8 v4, p1, 0xe

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    ushr-int/lit8 v4, p1, 0x7

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/o$d;->k:J

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/x2;->e0(JB)V

    return-void
.end method

.method private k1(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    ushr-int/lit8 v4, p1, 0x7

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/o$d;->k:J

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/x2;->e0(JB)V

    return-void
.end method

.method private l1(J)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x31

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x2a

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/o$d;->k:J

    and-long/2addr p1, v6

    or-long/2addr p1, v8

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/x2;->e0(JB)V

    return-void
.end method

.method private m1(J)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/o$d;->k:J

    and-long/2addr p1, v6

    or-long/2addr p1, v8

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/x2;->e0(JB)V

    return-void
.end method

.method private n1(J)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/o$d;->k:J

    and-long/2addr p1, v6

    or-long/2addr p1, v8

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/x2;->e0(JB)V

    return-void
.end method

.method private o1(J)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x38

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x31

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x2a

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/o$d;->k:J

    and-long/2addr p1, v6

    or-long/2addr p1, v8

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/x2;->e0(JB)V

    return-void
.end method

.method private p1(J)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/o$d;->k:J

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/x2;->e0(JB)V

    return-void
.end method

.method private q1(J)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x2a

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/o$d;->k:J

    and-long/2addr p1, v6

    or-long/2addr p1, v8

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/x2;->e0(JB)V

    return-void
.end method

.method private r1(J)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/o$d;->k:J

    and-long/2addr p1, v6

    or-long/2addr p1, v8

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/x2;->e0(JB)V

    return-void
.end method

.method private s1(J)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x3f

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x38

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x31

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x2a

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/o$d;->k:J

    and-long/2addr p1, v6

    or-long/2addr p1, v8

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/x2;->e0(JB)V

    return-void
.end method

.method private t1(J)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    long-to-int v4, p1

    ushr-int/lit8 v4, v4, 0xe

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/o$d;->k:J

    and-long/2addr p1, v6

    or-long/2addr p1, v8

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/x2;->e0(JB)V

    return-void
.end method

.method private u1(J)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/o$d;->k:J

    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/x2;->e0(JB)V

    return-void
.end method


# virtual methods
.method public A0(J)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x38

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x30

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x28

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x20

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x18

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x10

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    const/16 v4, 0x8

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/o$d;->k:J

    long-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/x2;->e0(JB)V

    return-void
.end method

.method public B(ILjava/lang/Object;Lcom/google/protobuf/L1;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value",
            "schema"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/o$d;->R0(II)V

    invoke-interface {p3, p2, p0}, Lcom/google/protobuf/L1;->J1(Ljava/lang/Object;Lcom/google/protobuf/C2;)V

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/o$d;->R0(II)V

    return-void
.end method

.method public F0(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/o$d;->W0(I)V

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/o$d;->X0(J)V

    :goto_0
    return-void
.end method

.method public I(ILjava/lang/Object;Lcom/google/protobuf/L1;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value",
            "schema"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/o$d;->c0()I

    move-result v0

    invoke-interface {p3, p2, p0}, Lcom/google/protobuf/L1;->J1(Ljava/lang/Object;Lcom/google/protobuf/C2;)V

    invoke-virtual {p0}, Lcom/google/protobuf/o$d;->c0()I

    move-result p2

    sub-int/2addr p2, v0

    const/16 p3, 0xa

    invoke-virtual {p0, p3}, Lcom/google/protobuf/o$d;->r0(I)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/o$d;->W0(I)V

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/o$d;->R0(II)V

    return-void
.end method

.method public K(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/o$d;->c0()I

    move-result v0

    invoke-static {}, Lcom/google/protobuf/z1;->a()Lcom/google/protobuf/z1;

    move-result-object v1

    invoke-virtual {v1, p2, p0}, Lcom/google/protobuf/z1;->k(Ljava/lang/Object;Lcom/google/protobuf/C2;)V

    invoke-virtual {p0}, Lcom/google/protobuf/o$d;->c0()I

    move-result p2

    sub-int/2addr p2, v0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/o$d;->r0(I)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/o$d;->W0(I)V

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/o$d;->R0(II)V

    return-void
.end method

.method public K0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->c1(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/o$d;->W0(I)V

    return-void
.end method

.method public N0(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->d1(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/o$d;->X0(J)V

    return-void
.end method

.method public O(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/o$d;->R0(II)V

    invoke-static {}, Lcom/google/protobuf/z1;->a()Lcom/google/protobuf/z1;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/z1;->k(Ljava/lang/Object;Lcom/google/protobuf/C2;)V

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/o$d;->R0(II)V

    return-void
.end method

.method public Q0(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/o$d;->r0(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/16 v1, 0x80

    const-wide/16 v2, 0x1

    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ge v4, v1, :cond_0

    iget-wide v5, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v1, v5, v2

    iput-wide v1, p0, Lcom/google/protobuf/o$d;->k:J

    int-to-byte v1, v4

    invoke-static {v5, v6, v1}, Lcom/google/protobuf/x2;->e0(JB)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    return-void

    :cond_1
    :goto_1
    if-ltz v0, :cond_8

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ge v5, v1, :cond_2

    iget-wide v6, p0, Lcom/google/protobuf/o$d;->k:J

    iget-wide v8, p0, Lcom/google/protobuf/o$d;->i:J

    cmp-long v8, v6, v8

    if-ltz v8, :cond_2

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/o$d;->k:J

    int-to-byte v5, v5

    invoke-static {v6, v7, v5}, Lcom/google/protobuf/x2;->e0(JB)V

    goto/16 :goto_2

    :cond_2
    const/16 v6, 0x800

    if-ge v5, v6, :cond_3

    iget-wide v6, p0, Lcom/google/protobuf/o$d;->k:J

    iget-wide v8, p0, Lcom/google/protobuf/o$d;->i:J

    cmp-long v8, v6, v8

    if-lez v8, :cond_3

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/o$d;->k:J

    and-int/lit8 v8, v5, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v6, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/o$d;->k:J

    ushr-int/lit8 v5, v5, 0x6

    or-int/lit16 v5, v5, 0x3c0

    int-to-byte v5, v5

    invoke-static {v6, v7, v5}, Lcom/google/protobuf/x2;->e0(JB)V

    goto/16 :goto_2

    :cond_3
    const v6, 0xd800

    if-lt v5, v6, :cond_4

    const v6, 0xdfff

    if-ge v6, v5, :cond_5

    :cond_4
    iget-wide v6, p0, Lcom/google/protobuf/o$d;->k:J

    iget-wide v8, p0, Lcom/google/protobuf/o$d;->i:J

    add-long/2addr v8, v2

    cmp-long v8, v6, v8

    if-lez v8, :cond_5

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/o$d;->k:J

    and-int/lit8 v8, v5, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v6, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/o$d;->k:J

    ushr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v6, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/o$d;->k:J

    ushr-int/lit8 v5, v5, 0xc

    or-int/lit16 v5, v5, 0x1e0

    int-to-byte v5, v5

    invoke-static {v6, v7, v5}, Lcom/google/protobuf/x2;->e0(JB)V

    goto :goto_2

    :cond_5
    iget-wide v6, p0, Lcom/google/protobuf/o$d;->k:J

    iget-wide v8, p0, Lcom/google/protobuf/o$d;->i:J

    const-wide/16 v10, 0x2

    add-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-lez v6, :cond_7

    if-eqz v0, :cond_6

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v7

    if-eqz v7, :cond_6

    add-int/lit8 v0, v0, -0x1

    invoke-static {v6, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    iget-wide v6, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/o$d;->k:J

    and-int/lit8 v8, v5, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v6, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/o$d;->k:J

    ushr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v6, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/o$d;->k:J

    ushr-int/lit8 v8, v5, 0xc

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v6, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/protobuf/o$d;->k:J

    ushr-int/lit8 v5, v5, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    invoke-static {v6, v7, v5}, Lcom/google/protobuf/x2;->e0(JB)V

    goto :goto_2

    :cond_6
    new-instance p1, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v1, v0, -0x1

    invoke-direct {p1, v1, v0}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw p1

    :cond_7
    invoke-virtual {p0, v0}, Lcom/google/protobuf/o$d;->r0(I)V

    add-int/lit8 v0, v0, 0x1

    :goto_2
    add-int/2addr v0, v4

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method public R0(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "wireType"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/google/protobuf/A2;->c(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/o$d;->W0(I)V

    return-void
.end method

.method public S(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/o$d;->r0(I)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/o$d;->K0(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/o$d;->R0(II)V

    return-void
.end method

.method public T(B)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/o$d;->k:J

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/x2;->e0(JB)V

    return-void
.end method

.method public U(Ljava/nio/ByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-direct {p0}, Lcom/google/protobuf/o$d;->f1()I

    move-result v1

    if-ge v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/protobuf/o$d;->d1(I)V

    :cond_0
    iget-wide v1, p0, Lcom/google/protobuf/o$d;->k:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/protobuf/o$d;->k:J

    iget-object v0, p0, Lcom/google/protobuf/o$d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/google/protobuf/o$d;->Z0()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/F0;->e(Ljava/nio/Buffer;I)V

    iget-object v0, p0, Lcom/google/protobuf/o$d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public V([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "offset",
            "length"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/o$d;->f1()I

    move-result v0

    if-ge v0, p3, :cond_0

    invoke-direct {p0, p3}, Lcom/google/protobuf/o$d;->d1(I)V

    :cond_0
    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    iget-object v0, p0, Lcom/google/protobuf/o$d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/google/protobuf/o$d;->Z0()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/F0;->e(Ljava/nio/Buffer;I)V

    iget-object v0, p0, Lcom/google/protobuf/o$d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public W(Ljava/nio/ByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-direct {p0}, Lcom/google/protobuf/o$d;->f1()I

    move-result v1

    if-ge v1, v0, :cond_0

    iget v1, p0, Lcom/google/protobuf/o;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/o;->d:I

    iget-object v0, p0, Lcom/google/protobuf/o;->c:Ljava/util/ArrayDeque;

    invoke-static {p1}, Lcom/google/protobuf/e;->j(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/protobuf/o$d;->c1()V

    return-void

    :cond_0
    iget-wide v1, p0, Lcom/google/protobuf/o$d;->k:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/protobuf/o$d;->k:J

    iget-object v0, p0, Lcom/google/protobuf/o$d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/google/protobuf/o$d;->Z0()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/F0;->e(Ljava/nio/Buffer;I)V

    iget-object v0, p0, Lcom/google/protobuf/o$d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public W0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/protobuf/o$d;->i1(I)V

    goto :goto_0

    :cond_0
    and-int/lit16 v0, p1, -0x4000

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/protobuf/o$d;->k1(I)V

    goto :goto_0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p1

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/google/protobuf/o$d;->j1(I)V

    goto :goto_0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p1

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/google/protobuf/o$d;->h1(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/google/protobuf/o$d;->g1(I)V

    :goto_0
    return-void
.end method

.method public X([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "offset",
            "length"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/o$d;->f1()I

    move-result v0

    if-ge v0, p3, :cond_0

    iget v0, p0, Lcom/google/protobuf/o;->d:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/protobuf/o;->d:I

    iget-object v0, p0, Lcom/google/protobuf/o;->c:Ljava/util/ArrayDeque;

    invoke-static {p1, p2, p3}, Lcom/google/protobuf/e;->l([BII)Lcom/google/protobuf/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/protobuf/o$d;->c1()V

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    iget-object v0, p0, Lcom/google/protobuf/o$d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/google/protobuf/o$d;->Z0()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/F0;->e(Ljava/nio/Buffer;I)V

    iget-object v0, p0, Lcom/google/protobuf/o$d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public X0(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/google/protobuf/o;->Y(J)B

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/o$d;->s1(J)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/o$d;->o1(J)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/o$d;->l1(J)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/o$d;->q1(J)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/o$d;->r1(J)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/o$d;->m1(J)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/o$d;->n1(J)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/o$d;->t1(J)V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/o$d;->u1(J)V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/o$d;->p1(J)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final Z0()I
    .locals 4

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    iget-wide v2, p0, Lcom/google/protobuf/o$d;->i:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public b0()V
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/o$d;->h:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/protobuf/o;->d:I

    invoke-direct {p0}, Lcom/google/protobuf/o$d;->a1()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/o;->d:I

    iget-object v0, p0, Lcom/google/protobuf/o$d;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/google/protobuf/o$d;->Z0()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/F0;->e(Ljava/nio/Buffer;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/o$d;->h:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    iput-wide v0, p0, Lcom/google/protobuf/o$d;->j:J

    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/google/protobuf/o$d;->r0(I)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/o$d;->x0(I)V

    const/4 p2, 0x5

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/o$d;->R0(II)V

    return-void
.end method

.method public c0()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/o;->d:I

    invoke-direct {p0}, Lcom/google/protobuf/o$d;->a1()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public e(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/o$d;->c0()I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/google/protobuf/o$d;->Q0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/protobuf/o$d;->c0()I

    move-result p2

    sub-int/2addr p2, v0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/o$d;->r0(I)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/o$d;->W0(I)V

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/o$d;->R0(II)V

    return-void
.end method

.method public f(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/google/protobuf/o$d;->r0(I)V

    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/o$d;->X0(J)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/o$d;->R0(II)V

    return-void
.end method

.method public h(ILcom/google/protobuf/x;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2, p0}, Lcom/google/protobuf/x;->q0(Lcom/google/protobuf/w;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/o$d;->r0(I)V

    invoke-virtual {p2}, Lcom/google/protobuf/x;->size()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/protobuf/o$d;->W0(I)V

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/o$d;->R0(II)V

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public i(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/google/protobuf/o$d;->r0(I)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/o$d;->F0(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/o$d;->R0(II)V

    return-void
.end method

.method public l(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/google/protobuf/o$d;->r0(I)V

    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/o$d;->N0(J)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/o$d;->R0(II)V

    return-void
.end method

.method public m(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/protobuf/o$d;->r0(I)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/o$d;->W0(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/o$d;->R0(II)V

    return-void
.end method

.method public o(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/google/protobuf/o$d;->r0(I)V

    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/o$d;->A0(J)V

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/o$d;->R0(II)V

    return-void
.end method

.method public q(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/protobuf/o$d;->r0(I)V

    int-to-byte p2, p2

    invoke-virtual {p0, p2}, Lcom/google/protobuf/o$d;->T(B)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/o$d;->R0(II)V

    return-void
.end method

.method public r0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/o$d;->f1()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/protobuf/o$d;->d1(I)V

    :cond_0
    return-void
.end method

.method public s(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fieldNumber"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/o$d;->R0(II)V

    return-void
.end method

.method public s0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/o$d;->T(B)V

    return-void
.end method

.method public v(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fieldNumber"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/o$d;->R0(II)V

    return-void
.end method

.method public x0(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    shr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/protobuf/o$d;->k:J

    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/x2;->e0(JB)V

    iget-wide v0, p0, Lcom/google/protobuf/o$d;->k:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/protobuf/o$d;->k:J

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/x2;->e0(JB)V

    return-void
.end method
