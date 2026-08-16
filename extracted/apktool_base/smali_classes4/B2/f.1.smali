.class public abstract LB2/f;
.super LB2/d;
.source "SourceFile"


# annotations
.annotation runtime LB2/k;
.end annotation

.annotation build LI2/a;
.end annotation


# instance fields
.field public final a:Ljava/nio/ByteBuffer;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p1}, LB2/f;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 2
    invoke-direct {p0}, LB2/d;-><init>()V

    .line 3
    rem-int v0, p2, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lw2/H;->d(Z)V

    add-int/lit8 v0, p2, 0x7

    .line 4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, LB2/f;->a:Ljava/nio/ByteBuffer;

    .line 5
    iput p2, p0, LB2/f;->b:I

    .line 6
    iput p1, p0, LB2/f;->c:I

    return-void
.end method


# virtual methods
.method public bridge synthetic a(B)LB2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LB2/f;->a(B)LB2/r;

    move-result-object p1

    return-object p1
.end method

.method public final a(B)LB2/r;
    .locals 1

    .line 2
    iget-object v0, p0, LB2/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p0}, LB2/f;->l()V

    return-object p0
.end method

.method public bridge synthetic c(C)LB2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LB2/f;->c(C)LB2/r;

    move-result-object p1

    return-object p1
.end method

.method public final c(C)LB2/r;
    .locals 1

    .line 2
    iget-object v0, p0, LB2/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p0}, LB2/f;->l()V

    return-object p0
.end method

.method public bridge synthetic e([BII)LB2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, LB2/f;->e([BII)LB2/r;

    move-result-object p1

    return-object p1
.end method

.method public final e([BII)LB2/r;
    .locals 0

    .line 2
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, LB2/f;->o(Ljava/nio/ByteBuffer;)LB2/r;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(Ljava/nio/ByteBuffer;)LB2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LB2/f;->f(Ljava/nio/ByteBuffer;)LB2/r;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/nio/ByteBuffer;)LB2/r;
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 3
    :try_start_0
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p0, p1}, LB2/f;->o(Ljava/nio/ByteBuffer;)LB2/r;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 6
    throw v1
.end method

.method public final h()LB2/p;
    .locals 2

    invoke-virtual {p0}, LB2/f;->k()V

    iget-object v0, p0, LB2/f;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0}, LB2/w;->b(Ljava/nio/Buffer;)V

    iget-object v0, p0, LB2/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, LB2/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, LB2/f;->n(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, LB2/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-static {v0, v1}, LB2/w;->d(Ljava/nio/Buffer;I)V

    :cond_0
    invoke-virtual {p0}, LB2/f;->j()LB2/p;

    move-result-object v0

    return-object v0
.end method

.method public abstract j()LB2/p;
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, LB2/f;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0}, LB2/w;->b(Ljava/nio/Buffer;)V

    :goto_0
    iget-object v0, p0, LB2/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget v1, p0, LB2/f;->c:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, LB2/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, LB2/f;->m(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LB2/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, LB2/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, LB2/f;->k()V

    :cond_0
    return-void
.end method

.method public abstract m(Ljava/nio/ByteBuffer;)V
.end method

.method public n(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {p1, v0}, LB2/w;->d(Ljava/nio/Buffer;I)V

    iget v0, p0, LB2/f;->c:I

    add-int/lit8 v0, v0, 0x7

    invoke-static {p1, v0}, LB2/w;->c(Ljava/nio/Buffer;I)V

    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget v1, p0, LB2/f;->c:I

    if-ge v0, v1, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    invoke-static {p1, v1}, LB2/w;->c(Ljava/nio/Buffer;I)V

    invoke-static {p1}, LB2/w;->b(Ljava/nio/Buffer;)V

    invoke-virtual {p0, p1}, LB2/f;->m(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public final o(Ljava/nio/ByteBuffer;)LB2/r;
    .locals 4

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget-object v1, p0, LB2/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, LB2/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, LB2/f;->l()V

    return-object p0

    :cond_0
    iget v0, p0, LB2/f;->b:I

    iget-object v1, p0, LB2/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, LB2/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LB2/f;->k()V

    :goto_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget v1, p0, LB2/f;->c:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0, p1}, LB2/f;->m(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, LB2/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public bridge synthetic putInt(I)LB2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LB2/f;->putInt(I)LB2/r;

    move-result-object p1

    return-object p1
.end method

.method public final putInt(I)LB2/r;
    .locals 1

    .line 2
    iget-object v0, p0, LB2/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p0}, LB2/f;->l()V

    return-object p0
.end method

.method public bridge synthetic putLong(J)LB2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LB2/f;->putLong(J)LB2/r;

    move-result-object p1

    return-object p1
.end method

.method public final putLong(J)LB2/r;
    .locals 1

    .line 2
    iget-object v0, p0, LB2/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p0}, LB2/f;->l()V

    return-object p0
.end method

.method public bridge synthetic putShort(S)LB2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LB2/f;->putShort(S)LB2/r;

    move-result-object p1

    return-object p1
.end method

.method public final putShort(S)LB2/r;
    .locals 1

    .line 2
    iget-object v0, p0, LB2/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p0}, LB2/f;->l()V

    return-object p0
.end method
