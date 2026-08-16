.class public LDj/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/g;


# instance fields
.field public final b:LEk/c;


# direct methods
.method public constructor <init>(LEk/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDj/j;->b:LEk/c;

    return-void
.end method


# virtual methods
.method public a()LEk/s;
    .locals 1

    iget-object v0, p0, LDj/j;->b:LEk/c;

    invoke-virtual {v0}, LEk/c;->x()LEk/s;

    move-result-object v0

    return-object v0
.end method

.method public b()LDj/n;
    .locals 2

    iget-object v0, p0, LDj/j;->b:LEk/c;

    invoke-virtual {v0}, LEk/c;->z()LEk/K;

    move-result-object v0

    invoke-virtual {v0}, LEk/K;->P()LFk/S;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, LDj/n;

    invoke-direct {v1, v0}, LDj/n;-><init>(LFk/S;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()LDj/p;
    .locals 2

    new-instance v0, LDj/p;

    iget-object v1, p0, LDj/j;->b:LEk/c;

    invoke-virtual {v1}, LEk/c;->z()LEk/K;

    move-result-object v1

    invoke-virtual {v1}, LEk/K;->T()LFk/A0;

    move-result-object v1

    invoke-direct {v0, v1}, LDj/p;-><init>(LFk/A0;)V

    return-object v0
.end method

.method public d(LGj/e;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, LDj/j;->b:LEk/c;

    invoke-virtual {v0}, LEk/c;->y()LFk/j0;

    move-result-object v0

    invoke-virtual {v0}, LFk/j0;->x()I

    move-result v0

    invoke-interface {p1, v0}, LGj/e;->get(I)LQk/g;

    move-result-object p1

    invoke-interface {p1}, LQk/g;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, LDj/j;->b:LEk/c;

    invoke-virtual {v1}, LEk/c;->z()LEk/K;

    move-result-object v1

    sget-object v2, LLk/a;->A:Lyk/f$b;

    invoke-virtual {v2}, Lyk/f$b;->f()Lyk/c;

    move-result-object v2

    invoke-static {v1, v2}, Lyk/g;->a(Loh/g;Lyk/c;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, LDj/j;->b:LEk/c;

    invoke-virtual {v0}, LEk/c;->y()LFk/j0;

    move-result-object v0

    invoke-static {v0}, LGj/a;->b(LFk/j0;)[B

    move-result-object v0

    invoke-interface {p1, v0}, LQk/g;->verify([B)Z

    move-result p1

    return p1
.end method

.method public e()LEk/c;
    .locals 1

    iget-object v0, p0, LDj/j;->b:LEk/c;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LDj/j;->b:LEk/c;

    sget-object v1, LLk/a;->F:Lyk/f$b;

    invoke-virtual {v1}, Lyk/f$b;->f()Lyk/c;

    move-result-object v1

    invoke-static {v0, v1}, Lyk/g;->a(Loh/g;Lyk/c;)[B

    move-result-object v0

    return-object v0
.end method
