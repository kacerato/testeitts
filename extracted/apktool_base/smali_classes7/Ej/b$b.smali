.class public LEj/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LEj/b;->get(I)LQk/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:Lbj/a;

.field public final synthetic b:Ljava/io/OutputStream;

.field public final synthetic c:LBi/y;

.field public final synthetic d:[B

.field public final synthetic e:[B

.field public final synthetic f:LEj/b;


# direct methods
.method public constructor <init>(LEj/b;Ljava/io/OutputStream;LBi/y;[B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iput-object p1, p0, LEj/b$b;->f:LEj/b;

    iput-object p2, p0, LEj/b$b;->b:Ljava/io/OutputStream;

    iput-object p3, p0, LEj/b$b;->c:LBi/y;

    iput-object p4, p0, LEj/b$b;->d:[B

    iput-object p5, p0, LEj/b$b;->e:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lbj/a;

    new-instance p3, Lbj/f;

    invoke-direct {p3}, Lbj/f;-><init>()V

    sget-object p4, LRk/j;->b:LRk/l;

    invoke-static {p1}, LEj/b;->a(LEj/b;)Lhi/b;

    move-result-object p1

    invoke-interface {p4, p1}, LRk/l;->a(Lhi/b;)LBi/D;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lbj/a;-><init>(LBi/s;LBi/y;)V

    iput-object p2, p0, LEj/b$b;->a:Lbj/a;

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, LEj/b$b;->b:Ljava/io/OutputStream;

    return-object v0
.end method

.method public verify([B)Z
    .locals 5

    iget-object v0, p0, LEj/b$b;->c:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, LEj/b$b;->c:LBi/y;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, LBi/y;->c([BI)I

    iget-object v2, p0, LEj/b$b;->a:Lbj/a;

    iget-object v4, p0, LEj/b$b;->f:LEj/b;

    invoke-static {v4}, LEj/b;->d(LEj/b;)LXi/M;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lbj/a;->a(ZLBi/k;)V

    iget-object v2, p0, LEj/b$b;->a:Lbj/a;

    invoke-virtual {v2, v1, v3, v0}, Lbj/a;->update([BII)V

    iget-object v0, p0, LEj/b$b;->d:[B

    if-eqz v0, :cond_0

    invoke-static {v1, v0}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LEj/b$b;->c:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, LEj/b$b;->c:LBi/y;

    invoke-interface {v2, v1, v3}, LBi/y;->c([BI)I

    iget-object v2, p0, LEj/b$b;->a:Lbj/a;

    invoke-virtual {v2, v1, v3, v0}, Lbj/a;->update([BII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LEj/b$b;->a:Lbj/a;

    iget-object v1, p0, LEj/b$b;->e:[B

    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Lbj/a;->update([BII)V

    :goto_0
    iget-object v0, p0, LEj/b$b;->a:Lbj/a;

    invoke-virtual {v0, p1}, Lbj/a;->b([B)Z

    move-result p1

    return p1
.end method
