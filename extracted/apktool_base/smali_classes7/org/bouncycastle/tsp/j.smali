.class public Lorg/bouncycastle/tsp/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lci/j;

.field public b:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lci/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tsp/j;->a:Lci/j;

    :try_start_0
    invoke-virtual {p1}, Lci/j;->x()Loh/n;

    move-result-object p1

    invoke-virtual {p1}, Loh/n;->I()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tsp/j;->b:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Lorg/bouncycastle/tsp/TSPException;

    const-string v0, "unable to parse genTime field"

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lci/a;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/j;->a:Lci/j;

    invoke-virtual {v0}, Lci/j;->u()Lci/a;

    move-result-object v0

    return-object v0
.end method

.method public b()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tsp/j;->a:Lci/j;

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public c()Lhi/C;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/j;->a:Lci/j;

    invoke-virtual {v0}, Lci/j;->v()Lhi/C;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/j;->b:Ljava/util/Date;

    return-object v0
.end method

.method public e()Lorg/bouncycastle/tsp/a;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/j;->a()Lci/a;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/tsp/a;

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/j;->a()Lci/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/a;-><init>(Lci/a;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Lhi/b;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/j;->a:Lci/j;

    invoke-virtual {v0}, Lci/j;->z()Lci/h;

    move-result-object v0

    invoke-virtual {v0}, Lci/h;->u()Lhi/b;

    move-result-object v0

    return-object v0
.end method

.method public g()Loh/x;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/j;->a:Lci/j;

    invoke-virtual {v0}, Lci/j;->z()Lci/h;

    move-result-object v0

    invoke-virtual {v0}, Lci/h;->u()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    return-object v0
.end method

.method public h()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/j;->a:Lci/j;

    invoke-virtual {v0}, Lci/j;->z()Lci/h;

    move-result-object v0

    invoke-virtual {v0}, Lci/h;->v()[B

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/j;->a:Lci/j;

    invoke-virtual {v0}, Lci/j;->A()Loh/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tsp/j;->a:Lci/j;

    invoke-virtual {v0}, Lci/j;->A()Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Loh/x;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/j;->a:Lci/j;

    invoke-virtual {v0}, Lci/j;->C()Loh/x;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/j;->a:Lci/j;

    invoke-virtual {v0}, Lci/j;->D()Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public l()Lhi/E;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/j;->a:Lci/j;

    invoke-virtual {v0}, Lci/j;->E()Lhi/E;

    move-result-object v0

    return-object v0
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/j;->a:Lci/j;

    invoke-virtual {v0}, Lci/j;->B()Loh/e;

    move-result-object v0

    invoke-virtual {v0}, Loh/e;->J()Z

    move-result v0

    return v0
.end method

.method public n()Lci/j;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/j;->a:Lci/j;

    return-object v0
.end method

.method public o()Lci/j;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/j;->a:Lci/j;

    return-object v0
.end method
