.class public abstract LB2/e;
.super LB2/c;
.source "SourceFile"


# annotations
.annotation runtime LB2/k;
.end annotation

.annotation runtime LI2/j;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LB2/e$b;,
        LB2/e$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LB2/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)LB2/r;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lw2/H;->d(Z)V

    new-instance v0, LB2/e$a;

    invoke-direct {v0, p0, p1}, LB2/e$a;-><init>(LB2/e;I)V

    return-object v0
.end method

.method public c(I)LB2/p;
    .locals 2

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1}, LB2/c;->b([B)LB2/p;

    move-result-object p1

    return-object p1
.end method

.method public d(J)LB2/p;
    .locals 2

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1}, LB2/c;->b([B)LB2/p;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)LB2/p;
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, LB2/c;->b([B)LB2/p;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/CharSequence;)LB2/p;
    .locals 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1}, LB2/c;->b([B)LB2/p;

    move-result-object p1

    return-object p1
.end method

.method public i()LB2/r;
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, LB2/e;->a(I)LB2/r;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/nio/ByteBuffer;)LB2/p;
    .locals 1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, LB2/e;->a(I)LB2/r;

    move-result-object v0

    invoke-interface {v0, p1}, LB2/r;->f(Ljava/nio/ByteBuffer;)LB2/r;

    move-result-object p1

    invoke-interface {p1}, LB2/r;->h()LB2/p;

    move-result-object p1

    return-object p1
.end method

.method public abstract k([BII)LB2/p;
.end method
