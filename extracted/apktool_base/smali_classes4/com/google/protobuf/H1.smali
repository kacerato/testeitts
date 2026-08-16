.class public final Lcom/google/protobuf/H1;
.super Lcom/google/protobuf/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/H1$d;,
        Lcom/google/protobuf/H1$c;,
        Lcom/google/protobuf/H1$b;
    }
.end annotation


# static fields
.field public static final p:[I

.field public static final q:J = 0x1L


# instance fields
.field public final k:I

.field public final l:Lcom/google/protobuf/x;

.field public final m:Lcom/google/protobuf/x;

.field public final n:I

.field public final o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2f

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/protobuf/H1;->p:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x5
        0x8
        0xd
        0x15
        0x22
        0x37
        0x59
        0x90
        0xe9
        0x179
        0x262
        0x3db
        0x63d
        0xa18
        0x1055
        0x1a6d
        0x2ac2
        0x452f
        0x6ff1
        0xb520
        0x12511
        0x1da31
        0x2ff42
        0x4d973
        0x7d8b5
        0xcb228
        0x148add
        0x213d05
        0x35c7e2
        0x5704e7
        0x8cccc9
        0xe3d1b0
        0x1709e79
        0x2547029
        0x3c50ea2
        0x6197ecb
        0x9de8d6d
        0xff80c38
        0x19d699a5
        0x29cea5dd
        0x43a53f82
        0x6d73e55f
        0x7fffffff
    .end array-data
.end method

.method public constructor <init>(Lcom/google/protobuf/x;Lcom/google/protobuf/x;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/x;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/H1;->l:Lcom/google/protobuf/x;

    .line 4
    iput-object p2, p0, Lcom/google/protobuf/H1;->m:Lcom/google/protobuf/x;

    .line 5
    invoke-virtual {p1}, Lcom/google/protobuf/x;->size()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/H1;->n:I

    .line 6
    invoke-virtual {p2}, Lcom/google/protobuf/x;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/H1;->k:I

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/x;->F()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/protobuf/x;->F()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/H1;->o:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/x;Lcom/google/protobuf/x;Lcom/google/protobuf/H1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/H1;-><init>(Lcom/google/protobuf/x;Lcom/google/protobuf/x;)V

    return-void
.end method

.method public static synthetic r0(Lcom/google/protobuf/H1;)Lcom/google/protobuf/x;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H1;->l:Lcom/google/protobuf/x;

    return-object p0
.end method

.method public static synthetic s0(Lcom/google/protobuf/H1;)Lcom/google/protobuf/x;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/H1;->m:Lcom/google/protobuf/x;

    return-object p0
.end method

.method public static t0(Lcom/google/protobuf/x;Lcom/google/protobuf/x;)Lcom/google/protobuf/x;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/x;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/x;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/x;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/protobuf/x;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x80

    if-ge v0, v1, :cond_2

    invoke-static {p0, p1}, Lcom/google/protobuf/H1;->u0(Lcom/google/protobuf/x;Lcom/google/protobuf/x;)Lcom/google/protobuf/x;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v2, p0, Lcom/google/protobuf/H1;

    if-eqz v2, :cond_4

    move-object v2, p0

    check-cast v2, Lcom/google/protobuf/H1;

    iget-object v3, v2, Lcom/google/protobuf/H1;->m:Lcom/google/protobuf/x;

    invoke-virtual {v3}, Lcom/google/protobuf/x;->size()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/protobuf/x;->size()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v1, :cond_3

    iget-object p0, v2, Lcom/google/protobuf/H1;->m:Lcom/google/protobuf/x;

    invoke-static {p0, p1}, Lcom/google/protobuf/H1;->u0(Lcom/google/protobuf/x;Lcom/google/protobuf/x;)Lcom/google/protobuf/x;

    move-result-object p0

    new-instance p1, Lcom/google/protobuf/H1;

    iget-object v0, v2, Lcom/google/protobuf/H1;->l:Lcom/google/protobuf/x;

    invoke-direct {p1, v0, p0}, Lcom/google/protobuf/H1;-><init>(Lcom/google/protobuf/x;Lcom/google/protobuf/x;)V

    return-object p1

    :cond_3
    iget-object v1, v2, Lcom/google/protobuf/H1;->l:Lcom/google/protobuf/x;

    invoke-virtual {v1}, Lcom/google/protobuf/x;->F()I

    move-result v1

    iget-object v3, v2, Lcom/google/protobuf/H1;->m:Lcom/google/protobuf/x;

    invoke-virtual {v3}, Lcom/google/protobuf/x;->F()I

    move-result v3

    if-le v1, v3, :cond_4

    invoke-virtual {v2}, Lcom/google/protobuf/H1;->F()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/x;->F()I

    move-result v3

    if-le v1, v3, :cond_4

    new-instance p0, Lcom/google/protobuf/H1;

    iget-object v0, v2, Lcom/google/protobuf/H1;->m:Lcom/google/protobuf/x;

    invoke-direct {p0, v0, p1}, Lcom/google/protobuf/H1;-><init>(Lcom/google/protobuf/x;Lcom/google/protobuf/x;)V

    new-instance p1, Lcom/google/protobuf/H1;

    iget-object v0, v2, Lcom/google/protobuf/H1;->l:Lcom/google/protobuf/x;

    invoke-direct {p1, v0, p0}, Lcom/google/protobuf/H1;-><init>(Lcom/google/protobuf/x;Lcom/google/protobuf/x;)V

    return-object p1

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/x;->F()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/x;->F()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/protobuf/H1;->w0(I)I

    move-result v1

    if-lt v0, v1, :cond_5

    new-instance v0, Lcom/google/protobuf/H1;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/H1;-><init>(Lcom/google/protobuf/x;Lcom/google/protobuf/x;)V

    return-object v0

    :cond_5
    new-instance v0, Lcom/google/protobuf/H1$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/H1$b;-><init>(Lcom/google/protobuf/H1$a;)V

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/H1$b;->a(Lcom/google/protobuf/H1$b;Lcom/google/protobuf/x;Lcom/google/protobuf/x;)Lcom/google/protobuf/x;

    move-result-object p0

    return-object p0
.end method

.method public static u0(Lcom/google/protobuf/x;Lcom/google/protobuf/x;)Lcom/google/protobuf/x;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/x;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/protobuf/x;->size()I

    move-result v1

    add-int v2, v0, v1

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3, v0}, Lcom/google/protobuf/x;->z([BIII)V

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/google/protobuf/x;->z([BIII)V

    invoke-static {v2}, Lcom/google/protobuf/x;->k0([B)Lcom/google/protobuf/x;

    move-result-object p0

    return-object p0
.end method

.method public static w0(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "depth"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H1;->p:[I

    array-length v1, v0

    if-lt p0, v1, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    aget p0, v0, p0

    return p0
.end method

.method public static x0(Lcom/google/protobuf/x;Lcom/google/protobuf/x;)Lcom/google/protobuf/H1;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/H1;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/H1;-><init>(Lcom/google/protobuf/x;Lcom/google/protobuf/x;)V

    return-object v0
.end method

.method private y0(Ljava/io/ObjectInputStream;)V
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

    const-string v0, "RopeByteStream instances are not to be serialized directly"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
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

    add-int v0, p2, p4

    iget v1, p0, Lcom/google/protobuf/H1;->n:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H1;->l:Lcom/google/protobuf/x;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/protobuf/x;->A([BIII)V

    goto :goto_0

    :cond_0
    if-lt p2, v1, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/H1;->m:Lcom/google/protobuf/x;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/protobuf/x;->A([BIII)V

    goto :goto_0

    :cond_1
    sub-int/2addr v1, p2

    iget-object v0, p0, Lcom/google/protobuf/H1;->l:Lcom/google/protobuf/x;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/protobuf/x;->A([BIII)V

    iget-object p2, p0, Lcom/google/protobuf/H1;->m:Lcom/google/protobuf/x;

    add-int/2addr p3, v1

    sub-int/2addr p4, v1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3, p4}, Lcom/google/protobuf/x;->A([BIII)V

    :goto_0
    return-void
.end method

.method public F()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H1;->o:I

    return v0
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

    iget v0, p0, Lcom/google/protobuf/H1;->n:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H1;->l:Lcom/google/protobuf/x;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/x;->H(I)B

    move-result p1

    return p1

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/H1;->m:Lcom/google/protobuf/x;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/google/protobuf/x;->H(I)B

    move-result p1

    return p1
.end method

.method public I()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/H1;->k:I

    iget v1, p0, Lcom/google/protobuf/H1;->o:I

    invoke-static {v1}, Lcom/google/protobuf/H1;->w0(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public J()Z
    .locals 4

    iget-object v0, p0, Lcom/google/protobuf/H1;->l:Lcom/google/protobuf/x;

    iget v1, p0, Lcom/google/protobuf/H1;->n:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/google/protobuf/x;->S(III)I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/H1;->m:Lcom/google/protobuf/x;

    invoke-virtual {v1}, Lcom/google/protobuf/x;->size()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/protobuf/x;->S(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public L()Lcom/google/protobuf/x$g;
    .locals 1

    new-instance v0, Lcom/google/protobuf/H1$a;

    invoke-direct {v0, p0}, Lcom/google/protobuf/H1$a;-><init>(Lcom/google/protobuf/H1;)V

    return-object v0
.end method

.method public N()Lcom/google/protobuf/C;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/H1;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/protobuf/C;->n(Ljava/lang/Iterable;Z)Lcom/google/protobuf/C;

    move-result-object v0

    return-object v0
.end method

.method public O()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lcom/google/protobuf/H1$d;

    invoke-direct {v0, p0}, Lcom/google/protobuf/H1$d;-><init>(Lcom/google/protobuf/H1;)V

    return-object v0
.end method

.method public R(III)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "h",
            "offset",
            "length"
        }
    .end annotation

    add-int v0, p2, p3

    iget v1, p0, Lcom/google/protobuf/H1;->n:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H1;->l:Lcom/google/protobuf/x;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/x;->R(III)I

    move-result p1

    return p1

    :cond_0
    if-lt p2, v1, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/H1;->m:Lcom/google/protobuf/x;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/x;->R(III)I

    move-result p1

    return p1

    :cond_1
    sub-int/2addr v1, p2

    iget-object v0, p0, Lcom/google/protobuf/H1;->l:Lcom/google/protobuf/x;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/protobuf/x;->R(III)I

    move-result p1

    iget-object p2, p0, Lcom/google/protobuf/H1;->m:Lcom/google/protobuf/x;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p2, p1, v0, p3}, Lcom/google/protobuf/x;->R(III)I

    move-result p1

    return p1
.end method

.method public S(III)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "state",
            "offset",
            "length"
        }
    .end annotation

    add-int v0, p2, p3

    iget v1, p0, Lcom/google/protobuf/H1;->n:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H1;->l:Lcom/google/protobuf/x;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/x;->S(III)I

    move-result p1

    return p1

    :cond_0
    if-lt p2, v1, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/H1;->m:Lcom/google/protobuf/x;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/x;->S(III)I

    move-result p1

    return p1

    :cond_1
    sub-int/2addr v1, p2

    iget-object v0, p0, Lcom/google/protobuf/H1;->l:Lcom/google/protobuf/x;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/protobuf/x;->S(III)I

    move-result p1

    iget-object p2, p0, Lcom/google/protobuf/H1;->m:Lcom/google/protobuf/x;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p2, p1, v0, p3}, Lcom/google/protobuf/x;->S(III)I

    move-result p1

    return p1
.end method

.method public a0(II)Lcom/google/protobuf/x;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "beginIndex",
            "endIndex"
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/H1;->k:I

    invoke-static {p1, p2, v0}, Lcom/google/protobuf/x;->l(III)I

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/google/protobuf/x;->g:Lcom/google/protobuf/x;

    return-object p1

    :cond_0
    iget v1, p0, Lcom/google/protobuf/H1;->k:I

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    iget v0, p0, Lcom/google/protobuf/H1;->n:I

    if-gt p2, v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/H1;->l:Lcom/google/protobuf/x;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/x;->a0(II)Lcom/google/protobuf/x;

    move-result-object p1

    return-object p1

    :cond_2
    if-lt p1, v0, :cond_3

    iget-object v1, p0, Lcom/google/protobuf/H1;->m:Lcom/google/protobuf/x;

    sub-int/2addr p1, v0

    sub-int/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Lcom/google/protobuf/x;->a0(II)Lcom/google/protobuf/x;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/H1;->l:Lcom/google/protobuf/x;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/x;->Z(I)Lcom/google/protobuf/x;

    move-result-object p1

    iget-object v0, p0, Lcom/google/protobuf/H1;->m:Lcom/google/protobuf/x;

    iget v1, p0, Lcom/google/protobuf/H1;->n:I

    sub-int/2addr p2, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/google/protobuf/x;->a0(II)Lcom/google/protobuf/x;

    move-result-object p2

    new-instance v0, Lcom/google/protobuf/H1;

    invoke-direct {v0, p1, p2}, Lcom/google/protobuf/H1;-><init>(Lcom/google/protobuf/x;Lcom/google/protobuf/x;)V

    return-object v0
.end method

.method public b()Ljava/nio/ByteBuffer;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/x;->b0()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/google/protobuf/H1$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/protobuf/H1$c;-><init>(Lcom/google/protobuf/x;Lcom/google/protobuf/H1$a;)V

    :goto_0
    invoke-virtual {v1}, Lcom/google/protobuf/H1$c;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/H1$c;->d()Lcom/google/protobuf/x$i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/x;->b()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/x;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/protobuf/x;

    iget v1, p0, Lcom/google/protobuf/H1;->k:I

    invoke-virtual {p1}, Lcom/google/protobuf/x;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/google/protobuf/H1;->k:I

    if-nez v1, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/x;->T()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/protobuf/x;->T()I

    move-result v1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eq v0, v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/protobuf/H1;->v0(Lcom/google/protobuf/x;)Z

    move-result p1

    return p1
.end method

.method public f0(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "charset"
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/protobuf/x;->b0()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/H1;->L()Lcom/google/protobuf/x$g;

    move-result-object v0

    return-object v0
.end method

.method public j(I)B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/H1;->k:I

    invoke-static {p1, v0}, Lcom/google/protobuf/x;->k(II)V

    invoke-virtual {p0, p1}, Lcom/google/protobuf/H1;->H(I)B

    move-result p1

    return p1
.end method

.method public m0(Lcom/google/protobuf/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H1;->l:Lcom/google/protobuf/x;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/x;->m0(Lcom/google/protobuf/w;)V

    iget-object v0, p0, Lcom/google/protobuf/H1;->m:Lcom/google/protobuf/x;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/x;->m0(Lcom/google/protobuf/w;)V

    return-void
.end method

.method public n0(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H1;->l:Lcom/google/protobuf/x;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/x;->n0(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/google/protobuf/H1;->m:Lcom/google/protobuf/x;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/x;->n0(Ljava/io/OutputStream;)V

    return-void
.end method

.method public p0(Ljava/io/OutputStream;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "sourceOffset",
            "numberToWrite"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p2, p3

    iget v1, p0, Lcom/google/protobuf/H1;->n:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/H1;->l:Lcom/google/protobuf/x;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/x;->p0(Ljava/io/OutputStream;II)V

    goto :goto_0

    :cond_0
    if-lt p2, v1, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/H1;->m:Lcom/google/protobuf/x;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/x;->p0(Ljava/io/OutputStream;II)V

    goto :goto_0

    :cond_1
    sub-int/2addr v1, p2

    iget-object v0, p0, Lcom/google/protobuf/H1;->l:Lcom/google/protobuf/x;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/protobuf/x;->p0(Ljava/io/OutputStream;II)V

    iget-object p2, p0, Lcom/google/protobuf/H1;->m:Lcom/google/protobuf/x;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p2, p1, v0, p3}, Lcom/google/protobuf/x;->p0(Ljava/io/OutputStream;II)V

    :goto_0
    return-void
.end method

.method public q0(Lcom/google/protobuf/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H1;->m:Lcom/google/protobuf/x;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/x;->q0(Lcom/google/protobuf/w;)V

    iget-object v0, p0, Lcom/google/protobuf/H1;->l:Lcom/google/protobuf/x;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/x;->q0(Lcom/google/protobuf/w;)V

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H1;->k:I

    return v0
.end method

.method public final v0(Lcom/google/protobuf/x;)Z
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/H1$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/H1$c;-><init>(Lcom/google/protobuf/x;Lcom/google/protobuf/H1$a;)V

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/x$i;

    new-instance v3, Lcom/google/protobuf/H1$c;

    invoke-direct {v3, p1, v1}, Lcom/google/protobuf/H1$c;-><init>(Lcom/google/protobuf/x;Lcom/google/protobuf/H1$a;)V

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/x$i;

    const/4 v1, 0x0

    move v4, v1

    move v5, v4

    move v6, v5

    :goto_0
    invoke-virtual {v2}, Lcom/google/protobuf/x;->size()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {p1}, Lcom/google/protobuf/x;->size()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-nez v4, :cond_0

    invoke-virtual {v2, p1, v5, v9}, Lcom/google/protobuf/x$i;->r0(Lcom/google/protobuf/x;II)Z

    move-result v10

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v2, v4, v9}, Lcom/google/protobuf/x$i;->r0(Lcom/google/protobuf/x;II)Z

    move-result v10

    :goto_1
    if-nez v10, :cond_1

    return v1

    :cond_1
    add-int/2addr v6, v9

    iget v10, p0, Lcom/google/protobuf/H1;->k:I

    if-lt v6, v10, :cond_3

    if-ne v6, v10, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_3
    if-ne v9, v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/x$i;

    move v4, v1

    goto :goto_2

    :cond_4
    add-int/2addr v4, v9

    :goto_2
    if-ne v9, v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/x$i;

    move v5, v1

    goto :goto_0

    :cond_5
    add-int/2addr v5, v9

    goto :goto_0
.end method

.method public x(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/H1;->l:Lcom/google/protobuf/x;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/x;->x(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/google/protobuf/H1;->m:Lcom/google/protobuf/x;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/x;->x(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public z0()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/x;->b0()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/x;->k0([B)Lcom/google/protobuf/x;

    move-result-object v0

    return-object v0
.end method
