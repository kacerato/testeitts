.class public LEj/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LGj/e;


# instance fields
.field public final a:LDj/j;

.field public final b:[B

.field public final c:Lhi/b;

.field public final d:LXi/M;

.field public final e:I


# direct methods
.method public constructor <init>(LDj/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LEj/b;->a:LDj/j;

    invoke-virtual {p1}, LDj/j;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, LEj/b;->b:[B

    invoke-virtual {p1}, LDj/j;->e()LEk/c;

    move-result-object p1

    invoke-virtual {p1}, LEk/c;->z()LEk/K;

    move-result-object p1

    invoke-virtual {p1}, LEk/K;->U()LEk/M;

    move-result-object p1

    invoke-virtual {p1}, LEk/M;->x()Loh/g;

    move-result-object v0

    instance-of v0, v0, LFk/T;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, LEk/M;->x()Loh/g;

    move-result-object p1

    invoke-static {p1}, LFk/T;->z(Ljava/lang/Object;)LFk/T;

    move-result-object p1

    invoke-virtual {p1}, LFk/T;->y()I

    move-result v0

    iput v0, p0, LEj/b;->e:I

    invoke-virtual {p1}, LFk/T;->y()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lhi/b;

    sget-object v1, LSh/d;->d:Loh/x;

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    :goto_0
    iput-object v0, p0, LEj/b;->c:Lhi/b;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unknown key type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Lhi/b;

    sget-object v1, LSh/d;->c:Loh/x;

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lhi/b;

    sget-object v1, LSh/d;->c:Loh/x;

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    goto :goto_0

    :goto_1
    new-instance v0, LEj/f;

    invoke-direct {v0, p1}, LEj/f;-><init>(LFk/T;)V

    invoke-virtual {v0}, LEj/f;->c()LXi/c;

    move-result-object p1

    check-cast p1, LXi/M;

    iput-object p1, p0, LEj/b;->d:LXi/M;

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not public verification key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic a(LEj/b;)Lhi/b;
    .locals 0

    iget-object p0, p0, LEj/b;->c:Lhi/b;

    return-object p0
.end method

.method public static synthetic d(LEj/b;)LXi/M;
    .locals 0

    iget-object p0, p0, LEj/b;->d:LXi/M;

    return-object p0
.end method


# virtual methods
.method public b()LDj/j;
    .locals 1

    iget-object v0, p0, LEj/b;->a:LDj/j;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, LEj/b;->a:LDj/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public get(I)LQk/g;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iget v0, p0, LEj/b;->e:I

    if-ne v0, p1, :cond_2

    sget-object p1, LRk/j;->b:LRk/l;

    iget-object v0, p0, LEj/b;->c:Lhi/b;

    invoke-interface {p1, v0}, LRk/l;->a(Lhi/b;)LBi/D;

    move-result-object v4

    invoke-interface {v4}, LBi/y;->f()I

    move-result p1

    new-array v6, p1, [B

    iget-object p1, p0, LEj/b;->b:[B

    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {v4, p1, v1, v0}, LBi/y;->update([BII)V

    invoke-interface {v4, v6, v1}, LBi/y;->c([BI)I

    iget-object p1, p0, LEj/b;->a:LDj/j;

    invoke-virtual {p1}, LDj/j;->a()LEk/s;

    move-result-object p1

    invoke-virtual {p1}, LEk/s;->y()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v4}, LBi/y;->f()I

    move-result p1

    new-array p1, p1, [B

    :goto_0
    move-object v5, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    if-eqz v5, :cond_1

    iget-object p1, p0, LEj/b;->a:LDj/j;

    invoke-virtual {p1}, LDj/j;->e()LEk/c;

    move-result-object p1

    invoke-virtual {p1}, LEk/c;->z()LEk/K;

    move-result-object p1

    sget-object v0, LLk/a;->A:Lyk/f$b;

    invoke-virtual {v0}, Lyk/f$b;->f()Lyk/c;

    move-result-object v0

    invoke-static {p1, v0}, Lyk/g;->a(Loh/g;Lyk/c;)[B

    move-result-object p1

    array-length v0, p1

    invoke-interface {v4, p1, v1, v0}, LBi/y;->update([BII)V

    invoke-interface {v4, v5, v1}, LBi/y;->c([BI)I

    :cond_1
    new-instance v3, LEj/b$a;

    invoke-direct {v3, p0, v4}, LEj/b$a;-><init>(LEj/b;LBi/y;)V

    new-instance p1, LEj/b$b;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, LEj/b$b;-><init>(LEj/b;Ljava/io/OutputStream;LBi/y;[B[B)V

    return-object p1

    :cond_2
    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong verifier for algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
