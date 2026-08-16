.class public LOi/I;
.super LBi/L;
.source "SourceFile"


# instance fields
.field public d:LBi/y;


# direct methods
.method public constructor <init>(LBi/y;)V
    .locals 0

    invoke-direct {p0}, LBi/L;-><init>()V

    iput-object p1, p0, LOi/I;->d:LBi/y;

    return-void
.end method


# virtual methods
.method public d(I)LBi/k;
    .locals 0

    invoke-virtual {p0, p1}, LOi/I;->e(I)LBi/k;

    move-result-object p1

    return-object p1
.end method

.method public e(I)LBi/k;
    .locals 3

    div-int/lit8 p1, p1, 0x8

    iget-object v0, p0, LOi/I;->d:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    if-gt p1, v0, :cond_0

    invoke-virtual {p0}, LOi/I;->k()[B

    move-result-object v0

    new-instance v1, LXi/o0;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, LXi/o0;-><init>([BII)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t generate a derived key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes long."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(II)LBi/k;
    .locals 4

    div-int/lit8 p1, p1, 0x8

    div-int/lit8 p2, p2, 0x8

    add-int v0, p1, p2

    iget-object v1, p0, LOi/I;->d:LBi/y;

    invoke-interface {v1}, LBi/y;->f()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, LOi/I;->k()[B

    move-result-object v0

    new-instance v1, LXi/w0;

    new-instance v2, LXi/o0;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, LXi/o0;-><init>([BII)V

    invoke-direct {v1, v2, v0, p1, p2}, LXi/w0;-><init>(LBi/k;[BII)V

    return-object v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t generate a derived key "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes long."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k()[B
    .locals 6

    iget-object v0, p0, LOi/I;->d:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, LOi/I;->d:LBi/y;

    iget-object v3, p0, LBi/L;->a:[B

    array-length v4, v3

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5, v4}, LBi/y;->update([BII)V

    iget-object v2, p0, LOi/I;->d:LBi/y;

    iget-object v3, p0, LBi/L;->b:[B

    array-length v4, v3

    invoke-interface {v2, v3, v5, v4}, LBi/y;->update([BII)V

    iget-object v2, p0, LOi/I;->d:LBi/y;

    invoke-interface {v2, v1, v5}, LBi/y;->c([BI)I

    const/4 v2, 0x1

    :goto_0
    iget v3, p0, LBi/L;->c:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, LOi/I;->d:LBi/y;

    invoke-interface {v3, v1, v5, v0}, LBi/y;->update([BII)V

    iget-object v3, p0, LOi/I;->d:LBi/y;

    invoke-interface {v3, v1, v5}, LBi/y;->c([BI)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
