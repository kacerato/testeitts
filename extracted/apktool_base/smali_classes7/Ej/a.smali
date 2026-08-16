.class public LEj/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LGj/d;


# instance fields
.field public final a:LXi/L;

.field public final b:LDj/j;

.field public final c:Lhi/b;

.field public final d:LBi/y;

.field public final e:[B

.field public final f:Loh/x;

.field public final g:[B


# direct methods
.method public constructor <init>(LXi/L;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, LEj/a;-><init>(LXi/L;LDj/j;)V

    return-void
.end method

.method public constructor <init>(LXi/L;LDj/j;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LEj/a;->a:LXi/L;

    invoke-virtual {p1}, LXi/J;->d()LXi/G;

    move-result-object p1

    check-cast p1, LXi/K;

    invoke-virtual {p1}, LXi/K;->j()Loh/x;

    move-result-object p1

    iput-object p1, p0, LEj/a;->f:Loh/x;

    iput-object p2, p0, LEj/a;->b:LDj/j;

    sget-object v0, LZh/d;->H:Loh/x;

    invoke-virtual {p1, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lhi/b;

    sget-object v0, LSh/d;->c:Loh/x;

    invoke-direct {p1, v0}, Lhi/b;-><init>(Loh/x;)V

    :goto_0
    iput-object p1, p0, LEj/a;->c:Lhi/b;

    goto :goto_1

    :cond_0
    sget-object v0, Lbi/b;->u:Loh/x;

    invoke-virtual {p1, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lhi/b;

    sget-object v0, LSh/d;->c:Loh/x;

    invoke-direct {p1, v0}, Lhi/b;-><init>(Loh/x;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lbi/b;->y:Loh/x;

    invoke-virtual {p1, v0}, Loh/B;->A(Loh/B;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lhi/b;

    sget-object v0, LSh/d;->d:Loh/x;

    invoke-direct {p1, v0}, Lhi/b;-><init>(Loh/x;)V

    goto :goto_0

    :goto_1
    :try_start_0
    sget-object p1, LRk/j;->b:LRk/l;

    iget-object v0, p0, LEj/a;->c:Lhi/b;

    invoke-interface {p1, v0}, LRk/l;->a(Lhi/b;)LBi/D;

    move-result-object p1

    iput-object p1, p0, LEj/a;->d:LBi/y;
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    :try_start_1
    invoke-virtual {p2}, LDj/j;->getEncoded()[B

    move-result-object p2

    iput-object p2, p0, LEj/a;->e:[B

    invoke-interface {p1}, LBi/y;->f()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, LEj/a;->g:[B

    array-length v2, p2

    invoke-interface {p1, p2, v0, v2}, LBi/y;->update([BII)V

    invoke-interface {p1, v1, v0}, LBi/y;->c([BI)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "signer certificate encoding failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    const/4 p2, 0x0

    iput-object p2, p0, LEj/a;->e:[B

    invoke-interface {p1}, LBi/y;->f()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, LEj/a;->g:[B

    invoke-interface {p1, p2, v0}, LBi/y;->c([BI)I

    :goto_2
    return-void

    :catch_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot recognise digest type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, LEj/a;->c:Lhi/b;

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unknown key type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public b()LDj/j;
    .locals 1

    iget-object v0, p0, LEj/a;->b:LDj/j;

    return-object v0
.end method

.method public c()[B
    .locals 1

    iget-object v0, p0, LEj/a;->g:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, LEj/a;->e:[B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Loh/x;
    .locals 1

    iget-object v0, p0, LEj/a;->f:Loh/x;

    return-object v0
.end method

.method public f()Lhi/b;
    .locals 1

    iget-object v0, p0, LEj/a;->c:Lhi/b;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    new-instance v0, LQi/d;

    iget-object v1, p0, LEj/a;->d:LBi/y;

    invoke-direct {v0, v1}, LQi/d;-><init>(LBi/y;)V

    return-object v0
.end method

.method public getSignature()[B
    .locals 6

    iget-object v0, p0, LEj/a;->d:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, LEj/a;->d:LBi/y;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, LBi/y;->c([BI)I

    new-instance v2, Lbj/a;

    new-instance v4, Lbj/f;

    invoke-direct {v4}, Lbj/f;-><init>()V

    iget-object v5, p0, LEj/a;->d:LBi/y;

    invoke-direct {v2, v4, v5}, Lbj/a;-><init>(LBi/s;LBi/y;)V

    const/4 v4, 0x1

    iget-object v5, p0, LEj/a;->a:LXi/L;

    invoke-virtual {v2, v4, v5}, Lbj/a;->a(ZLBi/k;)V

    invoke-virtual {v2, v1, v3, v0}, Lbj/a;->update([BII)V

    iget-object v0, p0, LEj/a;->g:[B

    array-length v1, v0

    invoke-virtual {v2, v0, v3, v1}, Lbj/a;->update([BII)V

    invoke-virtual {v2}, Lbj/a;->c()[B

    move-result-object v0

    return-object v0
.end method
