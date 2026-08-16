.class public LB2/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB2/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LB2/b;->l([LB2/r;)LB2/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[LB2/r;

.field public final synthetic b:LB2/b;


# direct methods
.method public constructor <init>(LB2/b;[LB2/r;)V
    .locals 0

    iput-object p1, p0, LB2/b$a;->b:LB2/b;

    iput-object p2, p0, LB2/b$a;->a:[LB2/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(B)LB2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LB2/b$a;->a(B)LB2/r;

    move-result-object p1

    return-object p1
.end method

.method public a(B)LB2/r;
    .locals 4

    .line 2
    iget-object v0, p0, LB2/b$a;->a:[LB2/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1}, LB2/r;->a(B)LB2/r;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic b([B)LB2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LB2/b$a;->b([B)LB2/r;

    move-result-object p1

    return-object p1
.end method

.method public b([B)LB2/r;
    .locals 4

    .line 2
    iget-object v0, p0, LB2/b$a;->a:[LB2/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1}, LB2/r;->b([B)LB2/r;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic c(C)LB2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LB2/b$a;->c(C)LB2/r;

    move-result-object p1

    return-object p1
.end method

.method public c(C)LB2/r;
    .locals 4

    .line 2
    iget-object v0, p0, LB2/b$a;->a:[LB2/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1}, LB2/r;->c(C)LB2/r;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic d(Ljava/lang/CharSequence;)LB2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LB2/b$a;->d(Ljava/lang/CharSequence;)LB2/r;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/CharSequence;)LB2/r;
    .locals 4

    .line 2
    iget-object v0, p0, LB2/b$a;->a:[LB2/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1}, LB2/r;->d(Ljava/lang/CharSequence;)LB2/r;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic e([BII)LB2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, LB2/b$a;->e([BII)LB2/r;

    move-result-object p1

    return-object p1
.end method

.method public e([BII)LB2/r;
    .locals 4

    .line 2
    iget-object v0, p0, LB2/b$a;->a:[LB2/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1, p2, p3}, LB2/r;->e([BII)LB2/r;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic f(Ljava/nio/ByteBuffer;)LB2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LB2/b$a;->f(Ljava/nio/ByteBuffer;)LB2/r;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/nio/ByteBuffer;)LB2/r;
    .locals 5

    .line 2
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 3
    iget-object v1, p0, LB2/b$a;->a:[LB2/r;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 4
    invoke-static {p1, v0}, LB2/w;->d(Ljava/nio/Buffer;I)V

    .line 5
    invoke-interface {v4, p1}, LB2/r;->f(Ljava/nio/ByteBuffer;)LB2/r;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic g(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)LB2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LB2/b$a;->g(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)LB2/r;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)LB2/r;
    .locals 4

    .line 2
    iget-object v0, p0, LB2/b$a;->a:[LB2/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1, p2}, LB2/r;->g(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)LB2/r;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public h()LB2/p;
    .locals 2

    iget-object v0, p0, LB2/b$a;->b:LB2/b;

    iget-object v1, p0, LB2/b$a;->a:[LB2/r;

    invoke-virtual {v0, v1}, LB2/b;->m([LB2/r;)LB2/p;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/Object;LB2/n;)LB2/r;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime LB2/F;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "LB2/n<",
            "-TT;>;)",
            "LB2/r;"
        }
    .end annotation

    iget-object v0, p0, LB2/b$a;->a:[LB2/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2}, LB2/r;->i(Ljava/lang/Object;LB2/n;)LB2/r;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic putBoolean(Z)LB2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LB2/b$a;->putBoolean(Z)LB2/r;

    move-result-object p1

    return-object p1
.end method

.method public putBoolean(Z)LB2/r;
    .locals 4

    .line 2
    iget-object v0, p0, LB2/b$a;->a:[LB2/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1}, LB2/r;->putBoolean(Z)LB2/r;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic putDouble(D)LB2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LB2/b$a;->putDouble(D)LB2/r;

    move-result-object p1

    return-object p1
.end method

.method public putDouble(D)LB2/r;
    .locals 4

    .line 2
    iget-object v0, p0, LB2/b$a;->a:[LB2/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1, p2}, LB2/r;->putDouble(D)LB2/r;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic putFloat(F)LB2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LB2/b$a;->putFloat(F)LB2/r;

    move-result-object p1

    return-object p1
.end method

.method public putFloat(F)LB2/r;
    .locals 4

    .line 2
    iget-object v0, p0, LB2/b$a;->a:[LB2/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1}, LB2/r;->putFloat(F)LB2/r;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic putInt(I)LB2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LB2/b$a;->putInt(I)LB2/r;

    move-result-object p1

    return-object p1
.end method

.method public putInt(I)LB2/r;
    .locals 4

    .line 2
    iget-object v0, p0, LB2/b$a;->a:[LB2/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1}, LB2/r;->putInt(I)LB2/r;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic putLong(J)LB2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LB2/b$a;->putLong(J)LB2/r;

    move-result-object p1

    return-object p1
.end method

.method public putLong(J)LB2/r;
    .locals 4

    .line 2
    iget-object v0, p0, LB2/b$a;->a:[LB2/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1, p2}, LB2/r;->putLong(J)LB2/r;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic putShort(S)LB2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LB2/b$a;->putShort(S)LB2/r;

    move-result-object p1

    return-object p1
.end method

.method public putShort(S)LB2/r;
    .locals 4

    .line 2
    iget-object v0, p0, LB2/b$a;->a:[LB2/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3, p1}, LB2/r;->putShort(S)LB2/r;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
