.class public LB/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ljava/lang/String; = "GifHeaderParser"

.field public static final f:I = 0xff

.field public static final g:I = 0x2c

.field public static final h:I = 0x21

.field public static final i:I = 0x3b

.field public static final j:I = 0xf9

.field public static final k:I = 0xff

.field public static final l:I = 0xfe

.field public static final m:I = 0x1

.field public static final n:I = 0x1c

.field public static final o:I = 0x2

.field public static final p:I = 0x1

.field public static final q:I = 0x80

.field public static final r:I = 0x40

.field public static final s:I = 0x7

.field public static final t:I = 0x80

.field public static final u:I = 0x7

.field public static final v:I = 0x2

.field public static final w:I = 0xa

.field public static final x:I = 0x100


# instance fields
.field public final a:[B

.field public b:Ljava/nio/ByteBuffer;

.field public c:LB/c;

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, LB/d;->a:[B

    const/4 v0, 0x0

    iput v0, p0, LB/d;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LB/d;->b:Ljava/nio/ByteBuffer;

    iput-object v0, p0, LB/d;->c:LB/c;

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, LB/d;->c:LB/c;

    iget v0, v0, LB/c;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 2

    invoke-virtual {p0}, LB/d;->l()V

    invoke-virtual {p0}, LB/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, LB/d;->j(I)V

    :cond_0
    iget-object v0, p0, LB/d;->c:LB/c;

    iget v0, v0, LB/c;->c:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public d()LB/c;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LB/d;->b:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, LB/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LB/d;->c:LB/c;

    return-object v0

    :cond_0
    invoke-virtual {p0}, LB/d;->l()V

    invoke-virtual {p0}, LB/d;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, LB/d;->i()V

    iget-object v0, p0, LB/d;->c:LB/c;

    iget v1, v0, LB/c;->c:I

    if-gez v1, :cond_1

    const/4 v1, 0x1

    iput v1, v0, LB/c;->b:I

    :cond_1
    iget-object v0, p0, LB/d;->c:LB/c;

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setData() before parseHeader()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()I
    .locals 2

    :try_start_0
    iget-object v0, p0, LB/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :catch_0
    iget-object v0, p0, LB/d;->c:LB/c;

    const/4 v1, 0x1

    iput v1, v0, LB/c;->b:I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f()V
    .locals 8

    iget-object v0, p0, LB/d;->c:LB/c;

    iget-object v0, v0, LB/c;->d:LB/b;

    invoke-virtual {p0}, LB/d;->o()I

    move-result v1

    iput v1, v0, LB/b;->a:I

    iget-object v0, p0, LB/d;->c:LB/c;

    iget-object v0, v0, LB/c;->d:LB/b;

    invoke-virtual {p0}, LB/d;->o()I

    move-result v1

    iput v1, v0, LB/b;->b:I

    iget-object v0, p0, LB/d;->c:LB/c;

    iget-object v0, v0, LB/c;->d:LB/b;

    invoke-virtual {p0}, LB/d;->o()I

    move-result v1

    iput v1, v0, LB/b;->c:I

    iget-object v0, p0, LB/d;->c:LB/c;

    iget-object v0, v0, LB/c;->d:LB/b;

    invoke-virtual {p0}, LB/d;->o()I

    move-result v1

    iput v1, v0, LB/b;->d:I

    invoke-virtual {p0}, LB/d;->e()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    and-int/lit8 v4, v0, 0x7

    add-int/2addr v4, v3

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    iget-object v5, p0, LB/d;->c:LB/c;

    iget-object v5, v5, LB/c;->d:LB/b;

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, v5, LB/b;->e:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, v4}, LB/d;->h(I)[I

    move-result-object v0

    iput-object v0, v5, LB/b;->k:[I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-object v0, v5, LB/b;->k:[I

    :goto_1
    iget-object v0, p0, LB/d;->c:LB/c;

    iget-object v0, v0, LB/c;->d:LB/b;

    iget-object v1, p0, LB/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    iput v1, v0, LB/b;->j:I

    invoke-virtual {p0}, LB/d;->t()V

    invoke-virtual {p0}, LB/d;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, LB/d;->c:LB/c;

    iget v1, v0, LB/c;->c:I

    add-int/2addr v1, v3

    iput v1, v0, LB/c;->c:I

    iget-object v1, v0, LB/c;->e:Ljava/util/List;

    iget-object v0, v0, LB/c;->d:LB/b;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final g()V
    .locals 6

    invoke-virtual {p0}, LB/d;->e()I

    move-result v0

    iput v0, p0, LB/d;->d:I

    if-lez v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget v1, p0, LB/d;->d:I

    if-ge v0, v1, :cond_1

    sub-int/2addr v1, v0

    iget-object v2, p0, LB/d;->b:Ljava/nio/ByteBuffer;

    iget-object v3, p0, LB/d;->a:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x3

    const-string v4, "GifHeaderParser"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error Reading Block n: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " count: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " blockSize: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LB/d;->d:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v0, p0, LB/d;->c:LB/c;

    const/4 v1, 0x1

    iput v1, v0, LB/c;->b:I

    :cond_1
    return-void
.end method

.method public final h(I)[I
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    mul-int/lit8 v0, p1, 0x3

    new-array v0, v0, [B

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, LB/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x100

    new-array v1, v2, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, p1, :cond_1

    add-int/lit8 v4, v3, 0x1

    aget-byte v5, v0, v3

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v3, 0x2

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v3, 0x3

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v2, 0x1

    shl-int/lit8 v5, v5, 0x10

    const/high16 v8, -0x1000000

    or-int/2addr v5, v8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v6

    aput v4, v1, v2
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v7

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "GifHeaderParser"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Format Error Reading Color Table"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object p1, p0, LB/d;->c:LB/c;

    const/4 v0, 0x1

    iput v0, p1, LB/c;->b:I

    :cond_1
    return-object v1
.end method

.method public final i()V
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, LB/d;->j(I)V

    return-void
.end method

.method public final j(I)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-nez v1, :cond_a

    invoke-virtual {p0}, LB/d;->b()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, LB/d;->c:LB/c;

    iget v2, v2, LB/c;->c:I

    if-gt v2, p1, :cond_a

    invoke-virtual {p0}, LB/d;->e()I

    move-result v2

    const/16 v3, 0x21

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_0

    iget-object v2, p0, LB/d;->c:LB/c;

    iput v4, v2, LB/c;->b:I

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    iget-object v2, p0, LB/d;->c:LB/c;

    iget-object v3, v2, LB/c;->d:LB/b;

    if-nez v3, :cond_2

    new-instance v3, LB/b;

    invoke-direct {v3}, LB/b;-><init>()V

    iput-object v3, v2, LB/c;->d:LB/b;

    :cond_2
    invoke-virtual {p0}, LB/d;->f()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, LB/d;->e()I

    move-result v2

    if-eq v2, v4, :cond_9

    const/16 v3, 0xf9

    if-eq v2, v3, :cond_8

    const/16 v3, 0xfe

    if-eq v2, v3, :cond_7

    const/16 v3, 0xff

    if-eq v2, v3, :cond_4

    invoke-virtual {p0}, LB/d;->s()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, LB/d;->g()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v0

    :goto_1
    const/16 v4, 0xb

    if-ge v3, v4, :cond_5

    iget-object v4, p0, LB/d;->a:[B

    aget-byte v4, v4, v3

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NETSCAPE2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, LB/d;->n()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, LB/d;->s()V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, LB/d;->s()V

    goto :goto_0

    :cond_8
    iget-object v2, p0, LB/d;->c:LB/c;

    new-instance v3, LB/b;

    invoke-direct {v3}, LB/b;-><init>()V

    iput-object v3, v2, LB/c;->d:LB/b;

    invoke-virtual {p0}, LB/d;->k()V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, LB/d;->s()V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public final k()V
    .locals 5

    invoke-virtual {p0}, LB/d;->e()I

    invoke-virtual {p0}, LB/d;->e()I

    move-result v0

    iget-object v1, p0, LB/d;->c:LB/c;

    iget-object v1, v1, LB/c;->d:LB/b;

    and-int/lit8 v2, v0, 0x1c

    const/4 v3, 0x2

    shr-int/2addr v2, v3

    iput v2, v1, LB/b;->g:I

    const/4 v4, 0x1

    if-nez v2, :cond_0

    iput v4, v1, LB/b;->g:I

    :cond_0
    and-int/2addr v0, v4

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, v1, LB/b;->f:Z

    invoke-virtual {p0}, LB/d;->o()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v3, :cond_2

    move v0, v1

    :cond_2
    iget-object v2, p0, LB/d;->c:LB/c;

    iget-object v2, v2, LB/c;->d:LB/b;

    mul-int/2addr v0, v1

    iput v0, v2, LB/b;->i:I

    invoke-virtual {p0}, LB/d;->e()I

    move-result v0

    iput v0, v2, LB/b;->h:I

    invoke-virtual {p0}, LB/d;->e()I

    return-void
.end method

.method public final l()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, LB/d;->e()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GIF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LB/d;->c:LB/c;

    const/4 v1, 0x1

    iput v1, v0, LB/c;->b:I

    return-void

    :cond_1
    invoke-virtual {p0}, LB/d;->m()V

    iget-object v0, p0, LB/d;->c:LB/c;

    iget-boolean v0, v0, LB/c;->h:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, LB/d;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LB/d;->c:LB/c;

    iget v1, v0, LB/c;->i:I

    invoke-virtual {p0, v1}, LB/d;->h(I)[I

    move-result-object v1

    iput-object v1, v0, LB/c;->a:[I

    iget-object v0, p0, LB/d;->c:LB/c;

    iget-object v1, v0, LB/c;->a:[I

    iget v2, v0, LB/c;->j:I

    aget v1, v1, v2

    iput v1, v0, LB/c;->l:I

    :cond_2
    return-void
.end method

.method public final m()V
    .locals 6

    iget-object v0, p0, LB/d;->c:LB/c;

    invoke-virtual {p0}, LB/d;->o()I

    move-result v1

    iput v1, v0, LB/c;->f:I

    iget-object v0, p0, LB/d;->c:LB/c;

    invoke-virtual {p0}, LB/d;->o()I

    move-result v1

    iput v1, v0, LB/c;->g:I

    invoke-virtual {p0}, LB/d;->e()I

    move-result v0

    iget-object v1, p0, LB/d;->c:LB/c;

    and-int/lit16 v2, v0, 0x80

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, LB/c;->h:Z

    and-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    int-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, LB/c;->i:I

    iget-object v0, p0, LB/d;->c:LB/c;

    invoke-virtual {p0}, LB/d;->e()I

    move-result v1

    iput v1, v0, LB/c;->j:I

    iget-object v0, p0, LB/d;->c:LB/c;

    invoke-virtual {p0}, LB/d;->e()I

    move-result v1

    iput v1, v0, LB/c;->k:I

    return-void
.end method

.method public final n()V
    .locals 3

    :cond_0
    invoke-virtual {p0}, LB/d;->g()V

    iget-object v0, p0, LB/d;->a:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, LB/d;->c:LB/c;

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iput v0, v2, LB/c;->m:I

    :cond_1
    iget v0, p0, LB/d;->d:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, LB/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method

.method public final o()I
    .locals 1

    iget-object v0, p0, LB/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public final p()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, LB/d;->b:Ljava/nio/ByteBuffer;

    iget-object v0, p0, LB/d;->a:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    new-instance v0, LB/c;

    invoke-direct {v0}, LB/c;-><init>()V

    iput-object v0, p0, LB/d;->c:LB/c;

    iput v1, p0, LB/d;->d:I

    return-void
.end method

.method public q(Ljava/nio/ByteBuffer;)LB/d;
    .locals 1
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, LB/d;->p()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, LB/d;->b:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, LB/d;->b:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public r([B)LB/d;
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, LB/d;->q(Ljava/nio/ByteBuffer;)LB/d;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, LB/d;->b:Ljava/nio/ByteBuffer;

    iget-object p1, p0, LB/d;->c:LB/c;

    const/4 v0, 0x2

    iput v0, p1, LB/c;->b:I

    :goto_0
    return-object p0
.end method

.method public final s()V
    .locals 3

    :cond_0
    invoke-virtual {p0}, LB/d;->e()I

    move-result v0

    iget-object v1, p0, LB/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, LB/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, LB/d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-gtz v0, :cond_0

    return-void
.end method

.method public final t()V
    .locals 0

    invoke-virtual {p0}, LB/d;->e()I

    invoke-virtual {p0}, LB/d;->s()V

    return-void
.end method
