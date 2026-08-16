.class public final Lcom/google/protobuf/C$d;
.super Lcom/google/protobuf/C;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/C$d$a;,
        Lcom/google/protobuf/C$d$b;
    }
.end annotation


# instance fields
.field public final i:Ljava/io/InputStream;

.field public final j:[B

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:Lcom/google/protobuf/C$d$a;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "input",
            "bufferSize"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/protobuf/C;-><init>(Lcom/google/protobuf/C$a;)V

    const v1, 0x7fffffff

    .line 3
    iput v1, p0, Lcom/google/protobuf/C$d;->p:I

    .line 4
    iput-object v0, p0, Lcom/google/protobuf/C$d;->q:Lcom/google/protobuf/C$d$a;

    .line 5
    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/google/protobuf/D0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Lcom/google/protobuf/C$d;->i:Ljava/io/InputStream;

    .line 7
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/google/protobuf/C$d;->j:[B

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/google/protobuf/C$d;->k:I

    .line 9
    iput p1, p0, Lcom/google/protobuf/C$d;->m:I

    .line 10
    iput p1, p0, Lcom/google/protobuf/C$d;->o:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/InputStream;ILcom/google/protobuf/C$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/C$d;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method private A0()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/C$d;->j:[B

    iget v2, p0, Lcom/google/protobuf/C$d;->m:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/protobuf/C$d;->m:I

    aget-byte v1, v1, v2

    if-ltz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private B0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->K()B

    move-result v1

    if-ltz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public static synthetic n0(Lcom/google/protobuf/C$d;)I
    .locals 0

    iget p0, p0, Lcom/google/protobuf/C$d;->m:I

    return p0
.end method

.method public static synthetic o0(Lcom/google/protobuf/C$d;)[B
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/C$d;->j:[B

    return-object p0
.end method

.method public static p0(Ljava/io/InputStream;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setThrownFromInputStream()V

    throw p0
.end method

.method public static q0(Ljava/io/InputStream;[BII)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "data",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setThrownFromInputStream()V

    throw p0
.end method

.method private v0()V
    .locals 3

    iget v0, p0, Lcom/google/protobuf/C$d;->k:I

    iget v1, p0, Lcom/google/protobuf/C$d;->l:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/C$d;->k:I

    iget v1, p0, Lcom/google/protobuf/C$d;->o:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/google/protobuf/C$d;->p:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/C$d;->l:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/C$d;->k:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/C$d;->l:I

    :goto_0
    return-void
.end method

.method public static x0(Ljava/io/InputStream;J)J
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setThrownFromInputStream()V

    throw p0
.end method

.method private z0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/C$d;->k:I

    iget v1, p0, Lcom/google/protobuf/C$d;->m:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/C$d;->A0()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/C$d;->B0()V

    :goto_0
    return-void
.end method


# virtual methods
.method public A()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->O()I

    move-result v0

    return v0
.end method

.method public B()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->M()I

    move-result v0

    return v0
.end method

.method public C()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->N()J

    move-result-wide v0

    return-wide v0
.end method

.method public final C0(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/C$d;->m:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/google/protobuf/C$d;->k:I

    if-le v1, v2, :cond_8

    iget v1, p0, Lcom/google/protobuf/C;->c:I

    iget v2, p0, Lcom/google/protobuf/C$d;->o:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    const/4 v3, 0x0

    if-le p1, v1, :cond_0

    return v3

    :cond_0
    add-int/2addr v2, v0

    add-int/2addr v2, p1

    iget v0, p0, Lcom/google/protobuf/C$d;->p:I

    if-le v2, v0, :cond_1

    return v3

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/C$d;->q:Lcom/google/protobuf/C$d$a;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/protobuf/C$d$a;->a()V

    :cond_2
    iget v0, p0, Lcom/google/protobuf/C$d;->m:I

    if-lez v0, :cond_4

    iget v1, p0, Lcom/google/protobuf/C$d;->k:I

    if-le v1, v0, :cond_3

    iget-object v2, p0, Lcom/google/protobuf/C$d;->j:[B

    sub-int/2addr v1, v0

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget v1, p0, Lcom/google/protobuf/C$d;->o:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/C$d;->o:I

    iget v1, p0, Lcom/google/protobuf/C$d;->k:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/C$d;->k:I

    iput v3, p0, Lcom/google/protobuf/C$d;->m:I

    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/C$d;->i:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/google/protobuf/C$d;->j:[B

    iget v2, p0, Lcom/google/protobuf/C$d;->k:I

    array-length v4, v1

    sub-int/2addr v4, v2

    iget v5, p0, Lcom/google/protobuf/C;->c:I

    iget v6, p0, Lcom/google/protobuf/C$d;->o:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v0, v1, v2, v4}, Lcom/google/protobuf/C$d;->q0(Ljava/io/InputStream;[BII)I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, -0x1

    if-lt v0, v1, :cond_7

    iget-object v1, p0, Lcom/google/protobuf/C$d;->j:[B

    array-length v1, v1

    if-gt v0, v1, :cond_7

    if-lez v0, :cond_6

    iget v1, p0, Lcom/google/protobuf/C$d;->k:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/C$d;->k:I

    invoke-direct {p0}, Lcom/google/protobuf/C$d;->v0()V

    iget v0, p0, Lcom/google/protobuf/C$d;->k:I

    if-lt v0, p1, :cond_5

    const/4 p1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/C$d;->C0(I)Z

    move-result p1

    :goto_0
    return p1

    :cond_6
    return v3

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/protobuf/C$d;->i:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "#read(byte[]) returned invalid result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refillBuffer() called when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes were already available in buffer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public D()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->M()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public E(ILcom/google/protobuf/w1;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "parser",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/b1;",
            ">(I",
            "Lcom/google/protobuf/w1<",
            "TT;>;",
            "Lcom/google/protobuf/d0;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/C;->b()V

    iget v0, p0, Lcom/google/protobuf/C;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/C;->a:I

    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/w1;->parsePartialFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/b1;

    const/4 p3, 0x4

    invoke-static {p1, p3}, Lcom/google/protobuf/A2;->c(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/C$d;->a(I)V

    iget p1, p0, Lcom/google/protobuf/C;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/protobuf/C;->a:I

    return-object p2
.end method

.method public F(ILcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "builder",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/C;->b()V

    iget v0, p0, Lcom/google/protobuf/C;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/C;->a:I

    invoke-interface {p2, p0, p3}, Lcom/google/protobuf/b1$a;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1$a;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/google/protobuf/A2;->c(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/C$d;->a(I)V

    iget p1, p0, Lcom/google/protobuf/C;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/protobuf/C;->a:I

    return-void
.end method

.method public G()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->O()I

    move-result v0

    return v0
.end method

.method public H()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->R()J

    move-result-wide v0

    return-wide v0
.end method

.method public I(Lcom/google/protobuf/w1;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "parser",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/b1;",
            ">(",
            "Lcom/google/protobuf/w1<",
            "TT;>;",
            "Lcom/google/protobuf/d0;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->O()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/protobuf/C;->b()V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/C$d;->u(I)I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/C;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/C;->a:I

    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/w1;->parsePartialFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/b1;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/protobuf/C$d;->a(I)V

    iget p2, p0, Lcom/google/protobuf/C;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/protobuf/C;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->g()I

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/C$d;->t(I)V

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "builder",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->O()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/protobuf/C;->b()V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/C$d;->u(I)I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/C;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/C;->a:I

    invoke-interface {p1, p0, p2}, Lcom/google/protobuf/b1$a;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1$a;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/C$d;->a(I)V

    iget p1, p0, Lcom/google/protobuf/C;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/protobuf/C;->a:I

    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->g()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/C$d;->t(I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public K()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/C$d;->m:I

    iget v1, p0, Lcom/google/protobuf/C$d;->k:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/C$d;->w0(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/C$d;->j:[B

    iget v1, p0, Lcom/google/protobuf/C$d;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/C$d;->m:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public L(I)[B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/C$d;->m:I

    iget v1, p0, Lcom/google/protobuf/C$d;->k:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    if-lez p1, :cond_0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/protobuf/C$d;->m:I

    iget-object v1, p0, Lcom/google/protobuf/C$d;->j:[B

    invoke-static {v1, v0, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/C$d;->s0(IZ)[B

    move-result-object p1

    return-object p1
.end method

.method public M()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/C$d;->m:I

    iget v1, p0, Lcom/google/protobuf/C$d;->k:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/protobuf/C$d;->w0(I)V

    iget v0, p0, Lcom/google/protobuf/C$d;->m:I

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/C$d;->j:[B

    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/google/protobuf/C$d;->m:I

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method public N()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/C$d;->m:I

    iget v1, p0, Lcom/google/protobuf/C$d;->k:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/protobuf/C$d;->w0(I)V

    iget v0, p0, Lcom/google/protobuf/C$d;->m:I

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/C$d;->j:[B

    add-int/lit8 v3, v0, 0x8

    iput v3, p0, Lcom/google/protobuf/C$d;->m:I

    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public O()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/C$d;->m:I

    iget v1, p0, Lcom/google/protobuf/C$d;->k:I

    if-ne v1, v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/C$d;->j:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v4, v2, v0

    if-ltz v4, :cond_1

    iput v3, p0, Lcom/google/protobuf/C$d;->m:I

    return v4

    :cond_1
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-ge v1, v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v0, 0x2

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    if-gez v3, :cond_3

    xor-int/lit8 v0, v3, -0x80

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v0, 0x3

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v3

    if-ltz v1, :cond_4

    xor-int/lit16 v0, v1, 0x3f80

    :goto_0
    move v1, v4

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v0, 0x4

    aget-byte v4, v2, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    if-gez v1, :cond_5

    const v0, -0x1fc080

    xor-int/2addr v0, v1

    :goto_1
    move v1, v3

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v0, 0x5

    aget-byte v3, v2, v3

    shl-int/lit8 v5, v3, 0x1c

    xor-int/2addr v1, v5

    const v5, 0xfe03f80

    xor-int/2addr v1, v5

    if-gez v3, :cond_7

    add-int/lit8 v3, v0, 0x6

    aget-byte v4, v2, v4

    if-gez v4, :cond_8

    add-int/lit8 v4, v0, 0x7

    aget-byte v3, v2, v3

    if-gez v3, :cond_7

    add-int/lit8 v3, v0, 0x8

    aget-byte v4, v2, v4

    if-gez v4, :cond_8

    add-int/lit8 v4, v0, 0x9

    aget-byte v3, v2, v3

    if-gez v3, :cond_7

    add-int/lit8 v0, v0, 0xa

    aget-byte v2, v2, v4

    if-gez v2, :cond_6

    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->S()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_6
    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_1

    :goto_3
    iput v1, p0, Lcom/google/protobuf/C$d;->m:I

    return v0
.end method

.method public R()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/C$d;->m:I

    iget v1, p0, Lcom/google/protobuf/C$d;->k:I

    if-ne v1, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/C$d;->j:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v4, v2, v0

    if-ltz v4, :cond_1

    iput v3, p0, Lcom/google/protobuf/C$d;->m:I

    int-to-long v0, v4

    return-wide v0

    :cond_1
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-ge v1, v5, :cond_2

    goto/16 :goto_2

    :cond_2
    add-int/lit8 v1, v0, 0x2

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    if-gez v3, :cond_3

    xor-int/lit8 v0, v3, -0x80

    int-to-long v2, v0

    goto/16 :goto_3

    :cond_3
    add-int/lit8 v4, v0, 0x3

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v3

    if-ltz v1, :cond_4

    xor-int/lit16 v0, v1, 0x3f80

    int-to-long v2, v0

    move v1, v4

    goto/16 :goto_3

    :cond_4
    add-int/lit8 v3, v0, 0x4

    aget-byte v4, v2, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    if-gez v1, :cond_5

    const v0, -0x1fc080

    xor-int/2addr v0, v1

    int-to-long v0, v0

    move-wide v10, v0

    move v1, v3

    move-wide v2, v10

    goto/16 :goto_3

    :cond_5
    int-to-long v4, v1

    add-int/lit8 v1, v0, 0x5

    aget-byte v3, v2, v3

    int-to-long v6, v3

    const/16 v3, 0x1c

    shl-long/2addr v6, v3

    xor-long v3, v4, v6

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_6

    const-wide/32 v5, 0xfe03f80

    :goto_0
    xor-long v2, v3, v5

    goto :goto_3

    :cond_6
    add-int/lit8 v7, v0, 0x6

    aget-byte v1, v2, v1

    int-to-long v8, v1

    const/16 v1, 0x23

    shl-long/2addr v8, v1

    xor-long/2addr v3, v8

    cmp-long v1, v3, v5

    if-gez v1, :cond_7

    const-wide v0, -0x7f01fc080L

    :goto_1
    xor-long v2, v3, v0

    move v1, v7

    goto :goto_3

    :cond_7
    add-int/lit8 v1, v0, 0x7

    aget-byte v7, v2, v7

    int-to-long v7, v7

    const/16 v9, 0x2a

    shl-long/2addr v7, v9

    xor-long/2addr v3, v7

    cmp-long v7, v3, v5

    if-ltz v7, :cond_8

    const-wide v5, 0x3f80fe03f80L

    goto :goto_0

    :cond_8
    add-int/lit8 v7, v0, 0x8

    aget-byte v1, v2, v1

    int-to-long v8, v1

    const/16 v1, 0x31

    shl-long/2addr v8, v1

    xor-long/2addr v3, v8

    cmp-long v1, v3, v5

    if-gez v1, :cond_9

    const-wide v0, -0x1fc07f01fc080L

    goto :goto_1

    :cond_9
    add-int/lit8 v1, v0, 0x9

    aget-byte v7, v2, v7

    int-to-long v7, v7

    const/16 v9, 0x38

    shl-long/2addr v7, v9

    xor-long/2addr v3, v7

    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    cmp-long v7, v3, v5

    if-gez v7, :cond_b

    add-int/lit8 v0, v0, 0xa

    aget-byte v1, v2, v1

    int-to-long v1, v1

    cmp-long v1, v1, v5

    if-gez v1, :cond_a

    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->S()J

    move-result-wide v0

    return-wide v0

    :cond_a
    move v1, v0

    :cond_b
    move-wide v2, v3

    :goto_3
    iput v1, p0, Lcom/google/protobuf/C$d;->m:I

    return-wide v2
.end method

.method public S()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->K()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public T()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->M()I

    move-result v0

    return v0
.end method

.method public U()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->N()J

    move-result-wide v0

    return-wide v0
.end method

.method public V()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->O()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/C;->c(I)I

    move-result v0

    return v0
.end method

.method public W()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->R()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/C;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public X()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->O()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/google/protobuf/C$d;->k:I

    iget v2, p0, Lcom/google/protobuf/C$d;->m:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/protobuf/C$d;->j:[B

    sget-object v4, Lcom/google/protobuf/D0;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/protobuf/C$d;->m:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/C$d;->m:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    iget v1, p0, Lcom/google/protobuf/C$d;->k:I

    if-gt v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/protobuf/C$d;->w0(I)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/protobuf/C$d;->j:[B

    iget v3, p0, Lcom/google/protobuf/C$d;->m:I

    sget-object v4, Lcom/google/protobuf/D0;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/protobuf/C$d;->m:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/C$d;->m:I

    return-object v1

    :cond_2
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/google/protobuf/C$d;->s0(IZ)[B

    move-result-object v0

    sget-object v2, Lcom/google/protobuf/D0;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public Y()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->O()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/C$d;->m:I

    iget v2, p0, Lcom/google/protobuf/C$d;->k:I

    sub-int v3, v2, v1

    if-gt v0, v3, :cond_0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/C$d;->j:[B

    add-int v3, v1, v0

    iput v3, p0, Lcom/google/protobuf/C$d;->m:I

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    const/4 v1, 0x0

    if-gt v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/protobuf/C$d;->w0(I)V

    iget-object v2, p0, Lcom/google/protobuf/C$d;->j:[B

    iput v0, p0, Lcom/google/protobuf/C$d;->m:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/C$d;->s0(IZ)[B

    move-result-object v2

    :goto_0
    invoke-static {v2, v1, v0}, Lcom/google/protobuf/Utf8;->h([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Z()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/C$d;->n:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->O()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/C$d;->n:I

    invoke-static {v0}, Lcom/google/protobuf/A2;->a(I)I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/protobuf/C$d;->n:I

    return v0

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/C$d;->n:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public a0()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->O()I

    move-result v0

    return v0
.end method

.method public b0()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->R()J

    move-result-wide v0

    return-wide v0
.end method

.method public c0(ILcom/google/protobuf/b1$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/protobuf/d0;->d()Lcom/google/protobuf/d0;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/C$d;->F(ILcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    return-void
.end method

.method public d0()V
    .locals 1

    iget v0, p0, Lcom/google/protobuf/C$d;->m:I

    neg-int v0, v0

    iput v0, p0, Lcom/google/protobuf/C$d;->o:I

    return-void
.end method

.method public f(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    return-void
.end method

.method public g()I
    .locals 3

    iget v0, p0, Lcom/google/protobuf/C$d;->p:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v1, p0, Lcom/google/protobuf/C$d;->o:I

    iget v2, p0, Lcom/google/protobuf/C$d;->m:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/C$d;->n:I

    return v0
.end method

.method public h0(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/A2;->b(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    invoke-virtual {p0, v3}, Lcom/google/protobuf/C$d;->l0(I)V

    return v1

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->j0()V

    invoke-static {p1}, Lcom/google/protobuf/A2;->a(I)I

    move-result p1

    invoke-static {p1, v3}, Lcom/google/protobuf/A2;->c(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/C$d;->a(I)V

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->O()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/C$d;->l0(I)V

    return v1

    :cond_4
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/protobuf/C$d;->l0(I)V

    return v1

    :cond_5
    invoke-direct {p0}, Lcom/google/protobuf/C$d;->z0()V

    return v1
.end method

.method public i()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/C$d;->o:I

    iget v1, p0, Lcom/google/protobuf/C$d;->m:I

    add-int/2addr v0, v1

    return v0
.end method

.method public i0(ILcom/google/protobuf/CodedOutputStream;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "tag",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/A2;->b(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->M()I

    move-result v0

    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->h2(I)V

    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedOutputStream;->C1(I)V

    return v1

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->h2(I)V

    invoke-virtual {p0, p2}, Lcom/google/protobuf/C$d;->k0(Lcom/google/protobuf/CodedOutputStream;)V

    invoke-static {p1}, Lcom/google/protobuf/A2;->a(I)I

    move-result p1

    invoke-static {p1, v3}, Lcom/google/protobuf/A2;->c(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/C$d;->a(I)V

    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->h2(I)V

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->y()Lcom/google/protobuf/x;

    move-result-object v0

    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->h2(I)V

    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedOutputStream;->z1(Lcom/google/protobuf/x;)V

    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->N()J

    move-result-wide v2

    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->h2(I)V

    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->D1(J)V

    return v1

    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->H()J

    move-result-wide v2

    invoke-virtual {p2, p1}, Lcom/google/protobuf/CodedOutputStream;->h2(I)V

    invoke-virtual {p2, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->i2(J)V

    return v1
.end method

.method public j()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/C$d;->m:I

    iget v1, p0, Lcom/google/protobuf/C$d;->k:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/C$d;->C0(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->Z()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/C$d;->h0(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public k0(Lcom/google/protobuf/CodedOutputStream;)V
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

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->Z()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/C$d;->i0(ILcom/google/protobuf/CodedOutputStream;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public l0(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/C$d;->k:I

    iget v1, p0, Lcom/google/protobuf/C$d;->m:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/protobuf/C$d;->m:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/C$d;->y0(I)V

    :goto_0
    return-void
.end method

.method public final r0(I)Lcom/google/protobuf/x;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/C$d;->t0(I)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/x;->u([B)Lcom/google/protobuf/x;

    move-result-object p1

    return-object p1

    :cond_0
    iget v0, p0, Lcom/google/protobuf/C$d;->m:I

    iget v1, p0, Lcom/google/protobuf/C$d;->k:I

    sub-int v2, v1, v0

    iget v3, p0, Lcom/google/protobuf/C$d;->o:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/protobuf/C$d;->o:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/protobuf/C$d;->m:I

    iput v1, p0, Lcom/google/protobuf/C$d;->k:I

    sub-int v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/google/protobuf/C$d;->u0(I)Ljava/util/List;

    move-result-object v3

    new-array p1, p1, [B

    iget-object v4, p0, Lcom/google/protobuf/C$d;->j:[B

    invoke-static {v4, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v4, v3

    invoke-static {v3, v1, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/google/protobuf/x;->k0([B)Lcom/google/protobuf/x;

    move-result-object p1

    return-object p1
.end method

.method public final s0(IZ)[B
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "size",
            "ensureNoLeakedReferences"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/C$d;->t0(I)[B

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [B

    :cond_0
    return-object v0

    :cond_1
    iget p2, p0, Lcom/google/protobuf/C$d;->m:I

    iget v0, p0, Lcom/google/protobuf/C$d;->k:I

    sub-int v1, v0, p2

    iget v2, p0, Lcom/google/protobuf/C$d;->o:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/C$d;->o:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/C$d;->m:I

    iput v0, p0, Lcom/google/protobuf/C$d;->k:I

    sub-int v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/google/protobuf/C$d;->u0(I)Ljava/util/List;

    move-result-object v2

    new-array p1, p1, [B

    iget-object v3, p0, Lcom/google/protobuf/C$d;->j:[B

    invoke-static {v3, p2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v3, v2

    invoke-static {v2, v0, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public t(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "oldLimit"
        }
    .end annotation

    iput p1, p0, Lcom/google/protobuf/C$d;->p:I

    invoke-direct {p0}, Lcom/google/protobuf/C$d;->v0()V

    return-void
.end method

.method public final t0(I)[B
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/protobuf/D0;->e:[B

    return-object p1

    :cond_0
    if-ltz p1, :cond_7

    iget v0, p0, Lcom/google/protobuf/C$d;->o:I

    iget v1, p0, Lcom/google/protobuf/C$d;->m:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/protobuf/C;->c:I

    sub-int v3, v2, v3

    if-gtz v3, :cond_6

    iget v3, p0, Lcom/google/protobuf/C$d;->p:I

    if-gt v2, v3, :cond_5

    iget v0, p0, Lcom/google/protobuf/C$d;->k:I

    sub-int/2addr v0, v1

    sub-int v1, p1, v0

    const/16 v2, 0x1000

    if-lt v1, v2, :cond_2

    iget-object v2, p0, Lcom/google/protobuf/C$d;->i:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/google/protobuf/C$d;->p0(Ljava/io/InputStream;)I

    move-result v2

    if-gt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    :goto_0
    new-array v1, p1, [B

    iget-object v2, p0, Lcom/google/protobuf/C$d;->j:[B

    iget v3, p0, Lcom/google/protobuf/C$d;->m:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/google/protobuf/C$d;->o:I

    iget v3, p0, Lcom/google/protobuf/C$d;->k:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/protobuf/C$d;->o:I

    iput v4, p0, Lcom/google/protobuf/C$d;->m:I

    iput v4, p0, Lcom/google/protobuf/C$d;->k:I

    :goto_1
    if-ge v0, p1, :cond_4

    iget-object v2, p0, Lcom/google/protobuf/C$d;->i:Ljava/io/InputStream;

    sub-int v3, p1, v0

    invoke-static {v2, v1, v0, v3}, Lcom/google/protobuf/C$d;->q0(Ljava/io/InputStream;[BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    iget v3, p0, Lcom/google/protobuf/C$d;->o:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/protobuf/C$d;->o:I

    add-int/2addr v0, v2

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_4
    return-object v1

    :cond_5
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/google/protobuf/C$d;->l0(I)V

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->sizeLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public u(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteLimit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/google/protobuf/C$d;->o:I

    iget v1, p0, Lcom/google/protobuf/C$d;->m:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/protobuf/C$d;->p:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/google/protobuf/C$d;->p:I

    invoke-direct {p0}, Lcom/google/protobuf/C$d;->v0()V

    return v0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final u0(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sizeLeft"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-lez p1, :cond_2

    const/16 v1, 0x1000

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/google/protobuf/C$d;->i:Ljava/io/InputStream;

    sub-int v5, v1, v3

    invoke-virtual {v4, v2, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    iget v5, p0, Lcom/google/protobuf/C$d;->o:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/protobuf/C$d;->o:I

    add-int/2addr v3, v4

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_1
    sub-int/2addr p1, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public v()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->R()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->O()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/C$d;->k:I

    iget v2, p0, Lcom/google/protobuf/C$d;->m:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/C$d;->j:[B

    add-int v3, v2, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/C$d;->m:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/C$d;->m:I

    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/C$d;->s0(IZ)[B

    move-result-object v0

    return-object v0
.end method

.method public final w0(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/C$d;->C0(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/protobuf/C;->c:I

    iget v1, p0, Lcom/google/protobuf/C$d;->o:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/C$d;->m:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->sizeLimitExceeded()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_1
    return-void
.end method

.method public x()Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->O()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/C$d;->k:I

    iget v2, p0, Lcom/google/protobuf/C$d;->m:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/C$d;->j:[B

    add-int v3, v2, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/C$d;->m:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/C$d;->m:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/google/protobuf/D0;->f:Ljava/nio/ByteBuffer;

    return-object v0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/C$d;->s0(IZ)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public y()Lcom/google/protobuf/x;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->O()I

    move-result v0

    iget v1, p0, Lcom/google/protobuf/C$d;->k:I

    iget v2, p0, Lcom/google/protobuf/C$d;->m:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/C$d;->j:[B

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/x;->v([BII)Lcom/google/protobuf/x;

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/C$d;->m:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/C$d;->m:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/google/protobuf/x;->g:Lcom/google/protobuf/x;

    return-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/protobuf/C$d;->r0(I)Lcom/google/protobuf/x;

    move-result-object v0

    return-object v0
.end method

.method public final y0(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_7

    iget v0, p0, Lcom/google/protobuf/C$d;->o:I

    iget v1, p0, Lcom/google/protobuf/C$d;->m:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/protobuf/C$d;->p:I

    if-gt v2, v3, :cond_6

    iget-object v2, p0, Lcom/google/protobuf/C$d;->q:Lcom/google/protobuf/C$d$a;

    const/4 v3, 0x0

    if-nez v2, :cond_3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/C$d;->o:I

    iget v0, p0, Lcom/google/protobuf/C$d;->k:I

    sub-int/2addr v0, v1

    iput v3, p0, Lcom/google/protobuf/C$d;->k:I

    iput v3, p0, Lcom/google/protobuf/C$d;->m:I

    move v3, v0

    :goto_0
    if-ge v3, p1, :cond_2

    sub-int v0, p1, v3

    :try_start_0
    iget-object v1, p0, Lcom/google/protobuf/C$d;->i:Ljava/io/InputStream;

    int-to-long v4, v0

    invoke-static {v1, v4, v5}, Lcom/google/protobuf/C$d;->x0(Ljava/io/InputStream;J)J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v2, v0, v6

    if-ltz v2, :cond_1

    cmp-long v4, v0, v4

    if-gtz v4, :cond_1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    long-to-int v0, v0

    add-int/2addr v3, v0

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/protobuf/C$d;->i:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "#skip returned invalid result: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\nThe InputStream implementation is buggy."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    iget v0, p0, Lcom/google/protobuf/C$d;->o:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/protobuf/C$d;->o:I

    invoke-direct {p0}, Lcom/google/protobuf/C$d;->v0()V

    throw p1

    :cond_2
    :goto_1
    iget v0, p0, Lcom/google/protobuf/C$d;->o:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/protobuf/C$d;->o:I

    invoke-direct {p0}, Lcom/google/protobuf/C$d;->v0()V

    :cond_3
    if-ge v3, p1, :cond_5

    iget v0, p0, Lcom/google/protobuf/C$d;->k:I

    iget v1, p0, Lcom/google/protobuf/C$d;->m:I

    sub-int v1, v0, v1

    iput v0, p0, Lcom/google/protobuf/C$d;->m:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/C$d;->w0(I)V

    :goto_2
    sub-int v2, p1, v1

    iget v3, p0, Lcom/google/protobuf/C$d;->k:I

    if-le v2, v3, :cond_4

    add-int/2addr v1, v3

    iput v3, p0, Lcom/google/protobuf/C$d;->m:I

    invoke-virtual {p0, v0}, Lcom/google/protobuf/C$d;->w0(I)V

    goto :goto_2

    :cond_4
    iput v2, p0, Lcom/google/protobuf/C$d;->m:I

    :cond_5
    return-void

    :cond_6
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/google/protobuf/C$d;->l0(I)V

    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public z()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/C$d;->N()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method
