.class public Lorg/bouncycastle/cms/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/g;


# instance fields
.field public b:Lorg/bouncycastle/cms/I0;

.field public c:Luh/o;

.field public d:Lhi/b;

.field public e:Loh/G;

.field public f:Loh/G;

.field public g:[B

.field public h:Lorg/bouncycastle/cms/x0;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/cms/X;->F(Ljava/io/InputStream;)Luh/o;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/j;-><init>(Luh/o;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;LQk/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lorg/bouncycastle/cms/X;->F(Ljava/io/InputStream;)Luh/o;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/j;-><init>(Luh/o;LQk/q;)V

    return-void
.end method

.method public constructor <init>(Luh/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/j;-><init>(Luh/o;LQk/q;)V

    return-void
.end method

.method public constructor <init>(Luh/o;LQk/q;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/j;->c:Luh/o;

    invoke-virtual {p1}, Luh/o;->u()Loh/g;

    move-result-object p1

    invoke-static {p1}, Luh/f;->z(Ljava/lang/Object;)Luh/f;

    move-result-object p1

    invoke-virtual {p1}, Luh/f;->D()Luh/I;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/cms/x0;

    invoke-virtual {p1}, Luh/f;->D()Luh/I;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/x0;-><init>(Luh/I;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/j;->h:Lorg/bouncycastle/cms/x0;

    :cond_0
    invoke-virtual {p1}, Luh/f;->E()Loh/G;

    move-result-object v0

    invoke-virtual {p1}, Luh/f;->C()Lhi/b;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cms/j;->d:Lhi/b;

    invoke-virtual {p1}, Luh/f;->v()Loh/G;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cms/j;->e:Loh/G;

    invoke-virtual {p1}, Luh/f;->B()Loh/y;

    move-result-object v1

    invoke-virtual {v1}, Loh/y;->H()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cms/j;->g:[B

    invoke-virtual {p1}, Luh/f;->F()Loh/G;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cms/j;->f:Loh/G;

    invoke-virtual {p1}, Luh/f;->y()Luh/o;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/cms/G;

    invoke-virtual {v1}, Luh/o;->v()Loh/x;

    move-result-object v3

    invoke-virtual {v1}, Luh/o;->u()Loh/g;

    move-result-object v4

    invoke-static {v4}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v4

    invoke-virtual {v4}, Loh/y;->H()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/cms/G;-><init>(Loh/x;[B)V

    iget-object v3, p0, Lorg/bouncycastle/cms/j;->e:Loh/G;

    if-eqz v3, :cond_7

    if-eqz p2, :cond_6

    new-instance v4, Luh/b;

    invoke-direct {v4, v3}, Luh/b;-><init>(Loh/G;)V

    sget-object v3, Luh/j;->g:Loh/x;

    invoke-virtual {v4, v3}, Luh/b;->e(Loh/x;)Loh/h;

    move-result-object v3

    invoke-virtual {v3}, Loh/h;->i()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_5

    invoke-virtual {v3}, Loh/h;->i()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Loh/h;->g(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Luh/a;->y(Ljava/lang/Object;)Luh/a;

    move-result-object v3

    invoke-virtual {v3}, Luh/a;->v()Loh/G;

    move-result-object v6

    invoke-virtual {v6}, Loh/G;->size()I

    move-result v6

    if-ne v6, v5, :cond_3

    invoke-virtual {v3}, Luh/a;->x()[Loh/g;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-static {v3}, Luh/i;->v(Ljava/lang/Object;)Luh/i;

    move-result-object v3

    invoke-virtual {v3}, Luh/i;->u()Lhi/b;

    move-result-object v4

    invoke-virtual {p1}, Luh/f;->x()Lhi/b;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/bouncycastle/cms/X;->A(Lhi/b;Lhi/b;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Luh/i;->x()Lhi/b;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/cms/j;->d:Lhi/b;

    invoke-static {v3, v4}, Lorg/bouncycastle/cms/X;->A(Lhi/b;Lhi/b;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string p2, "CMS Algorithm Identifier Protection check failed for macAlgorithm"

    invoke-direct {p1, p2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string p2, "CMS Algorithm Identifier Protection check failed for digestAlgorithm"

    invoke-direct {p1, p2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string p2, "A cmsAlgorithmProtect attribute MUST contain exactly one value"

    invoke-direct {p1, p2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    :try_start_0
    new-instance v3, Lorg/bouncycastle/cms/D$c;

    invoke-virtual {p1}, Luh/f;->x()Lhi/b;

    move-result-object p1

    invoke-interface {p2, p1}, LQk/q;->a(Lhi/b;)LQk/p;

    move-result-object p1

    invoke-virtual {v1}, Luh/o;->v()Loh/x;

    move-result-object p2

    invoke-direct {v3, p1, p2, v2}, Lorg/bouncycastle/cms/D$c;-><init>(LQk/p;Loh/x;Lorg/bouncycastle/cms/J;)V

    iget-object p1, p0, Lorg/bouncycastle/cms/j;->e:Loh/G;

    invoke-interface {v3, p1}, Lorg/bouncycastle/cms/K;->f(Loh/G;)V

    iget-object p1, p0, Lorg/bouncycastle/cms/j;->d:Lhi/b;

    invoke-static {v0, p1, v3}, Lorg/bouncycastle/cms/D;->a(Loh/G;Lhi/b;Lorg/bouncycastle/cms/K;)Lorg/bouncycastle/cms/I0;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/j;->b:Lorg/bouncycastle/cms/I0;
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to create digest calculator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :cond_5
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string p2, "Only one instance of a cmsAlgorithmProtect attribute can be present"

    invoke-direct {p1, p2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string p2, "a digest calculator provider is required if authenticated attributes are present"

    invoke-direct {p1, p2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lorg/bouncycastle/cms/D$a;

    iget-object p2, p0, Lorg/bouncycastle/cms/j;->d:Lhi/b;

    invoke-virtual {v1}, Luh/o;->v()Loh/x;

    move-result-object v1

    invoke-direct {p1, p2, v1, v2}, Lorg/bouncycastle/cms/D$a;-><init>(Lhi/b;Loh/x;Lorg/bouncycastle/cms/J;)V

    iget-object p2, p0, Lorg/bouncycastle/cms/j;->d:Lhi/b;

    invoke-static {v0, p2, p1}, Lorg/bouncycastle/cms/D;->a(Loh/G;Lhi/b;Lorg/bouncycastle/cms/K;)Lorg/bouncycastle/cms/I0;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/j;->b:Lorg/bouncycastle/cms/I0;

    :goto_1
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 5
    invoke-static {p1}, Lorg/bouncycastle/cms/X;->H([B)Luh/o;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/j;-><init>(Luh/o;)V

    return-void
.end method

.method public constructor <init>([BLQk/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 6
    invoke-static {p1}, Lorg/bouncycastle/cms/X;->H([B)Luh/o;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/j;-><init>(Luh/o;LQk/q;)V

    return-void
.end method


# virtual methods
.method public a()Luh/b;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/j;->e:Loh/G;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Luh/b;

    invoke-direct {v1, v0}, Luh/b;-><init>(Loh/G;)V

    return-object v1
.end method

.method public b()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/j;->e:Loh/G;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/cms/j;->a()Luh/b;

    move-result-object v0

    sget-object v1, Luh/j;->b:Loh/x;

    invoke-virtual {v0, v1}, Luh/b;->d(Loh/x;)Luh/a;

    move-result-object v0

    invoke-virtual {v0}, Luh/a;->v()Loh/G;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Loh/G;->H(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Luh/o;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/j;->c:Luh/o;

    return-object v0
.end method

.method public d()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/j;->g:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/j;->d:Lhi/b;

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()[B
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/j;->d:Lhi/b;

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cms/X;->l(Loh/g;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception getting encryption parameters "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public g()Lhi/b;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/j;->d:Lhi/b;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/j;->c:Luh/o;

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public h()Lorg/bouncycastle/cms/x0;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/j;->h:Lorg/bouncycastle/cms/x0;

    return-object v0
.end method

.method public i()Lorg/bouncycastle/cms/I0;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/j;->b:Lorg/bouncycastle/cms/I0;

    return-object v0
.end method

.method public j()Luh/b;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/j;->f:Loh/G;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Luh/b;

    invoke-direct {v1, v0}, Luh/b;-><init>(Loh/G;)V

    return-object v1
.end method

.method public k()Luh/o;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/j;->c:Luh/o;

    return-object v0
.end method
