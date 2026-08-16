.class public Lorg/bouncycastle/cms/l;
.super Lorg/bouncycastle/cms/t;
.source "SourceFile"


# instance fields
.field public c:Lorg/bouncycastle/cms/I0;

.field public d:Luh/g;

.field public e:Lhi/b;

.field public f:[B

.field public g:Luh/b;

.field public h:Loh/G;

.field public i:Luh/b;

.field public j:Z

.field public k:Z

.field public l:Lorg/bouncycastle/cms/x0;

.field public m:Lorg/bouncycastle/cms/K;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/l;-><init>(Ljava/io/InputStream;LQk/q;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;LQk/q;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/t;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/cms/l;->j:Z

    new-instance p1, Luh/g;

    iget-object v0, p0, Lorg/bouncycastle/cms/t;->a:Luh/p;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Luh/p;->a(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/F;

    invoke-direct {p1, v0}, Luh/g;-><init>(Loh/F;)V

    iput-object p1, p0, Lorg/bouncycastle/cms/l;->d:Luh/g;

    invoke-virtual {p1}, Luh/g;->f()Luh/I;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lorg/bouncycastle/cms/x0;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/x0;-><init>(Luh/I;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/l;->l:Lorg/bouncycastle/cms/x0;

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/cms/l;->d:Luh/g;

    invoke-virtual {p1}, Luh/g;->g()Loh/H;

    move-result-object p1

    invoke-interface {p1}, Loh/g;->r()Loh/B;

    move-result-object p1

    invoke-static {p1}, Loh/G;->F(Ljava/lang/Object;)Loh/G;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/cms/l;->d:Luh/g;

    invoke-virtual {v0}, Luh/g;->e()Lhi/b;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/l;->e:Lhi/b;

    iget-object v0, p0, Lorg/bouncycastle/cms/l;->d:Luh/g;

    invoke-virtual {v0}, Luh/g;->b()Lhi/b;

    move-result-object v0

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/cms/l;->d:Luh/g;

    invoke-virtual {v2}, Luh/g;->c()Luh/p;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/cms/I;

    invoke-virtual {v2, v1}, Luh/p;->a(I)Loh/g;

    move-result-object v1

    check-cast v1, Loh/z;

    invoke-interface {v1}, Loh/z;->a()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/bouncycastle/cms/I;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    new-instance v1, Lorg/bouncycastle/cms/D$c;

    invoke-interface {p2, v0}, LQk/q;->a(Lhi/b;)LQk/p;

    move-result-object p2

    invoke-virtual {v2}, Luh/p;->b()Loh/x;

    move-result-object v0

    invoke-direct {v1, p2, v0, v3}, Lorg/bouncycastle/cms/D$c;-><init>(LQk/p;Loh/x;Lorg/bouncycastle/cms/J;)V

    iput-object v1, p0, Lorg/bouncycastle/cms/l;->m:Lorg/bouncycastle/cms/K;

    iget-object p2, p0, Lorg/bouncycastle/cms/l;->e:Lhi/b;

    invoke-static {p1, p2, v1}, Lorg/bouncycastle/cms/D;->a(Loh/G;Lhi/b;Lorg/bouncycastle/cms/K;)Lorg/bouncycastle/cms/I0;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/l;->c:Lorg/bouncycastle/cms/I0;
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

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

    :cond_1
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string p2, "a digest calculator provider is required if authenticated attributes are present"

    invoke-direct {p1, p2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p2, p0, Lorg/bouncycastle/cms/l;->d:Luh/g;

    invoke-virtual {p2}, Luh/g;->c()Luh/p;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/cms/I;

    invoke-virtual {p2, v1}, Luh/p;->a(I)Loh/g;

    move-result-object v1

    check-cast v1, Loh/z;

    invoke-interface {v1}, Loh/z;->a()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/I;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Lorg/bouncycastle/cms/D$a;

    iget-object v2, p0, Lorg/bouncycastle/cms/l;->e:Lhi/b;

    invoke-virtual {p2}, Luh/p;->b()Loh/x;

    move-result-object p2

    invoke-direct {v1, v2, p2, v0}, Lorg/bouncycastle/cms/D$a;-><init>(Lhi/b;Loh/x;Lorg/bouncycastle/cms/J;)V

    iput-object v1, p0, Lorg/bouncycastle/cms/l;->m:Lorg/bouncycastle/cms/K;

    iget-object p2, p0, Lorg/bouncycastle/cms/l;->e:Lhi/b;

    invoke-static {p1, p2, v1}, Lorg/bouncycastle/cms/D;->a(Loh/G;Lhi/b;Lorg/bouncycastle/cms/K;)Lorg/bouncycastle/cms/I0;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/l;->c:Lorg/bouncycastle/cms/I0;

    :goto_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/l;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>([BLQk/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/cms/l;-><init>(Ljava/io/InputStream;LQk/q;)V

    return-void
.end method

.method private b()Loh/G;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/l;->g:Luh/b;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/cms/l;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/cms/l;->d:Luh/g;

    invoke-virtual {v0}, Luh/g;->a()Loh/H;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    check-cast v0, Loh/G;

    iput-object v0, p0, Lorg/bouncycastle/cms/l;->h:Loh/G;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/cms/l;->j:Z

    iget-object v0, p0, Lorg/bouncycastle/cms/l;->m:Lorg/bouncycastle/cms/K;

    iget-object v1, p0, Lorg/bouncycastle/cms/l;->h:Loh/G;

    invoke-interface {v0, v1}, Lorg/bouncycastle/cms/K;->f(Loh/G;)V

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/cms/l;->h:Loh/G;

    return-object v0
.end method


# virtual methods
.method public c()Luh/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/l;->g:Luh/b;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/bouncycastle/cms/l;->j:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/cms/l;->b()Loh/G;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Luh/b;

    invoke-direct {v1, v0}, Luh/b;-><init>(Loh/G;)V

    iput-object v1, p0, Lorg/bouncycastle/cms/l;->g:Luh/b;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/l;->g:Luh/b;

    return-object v0
.end method

.method public d()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/l;->g:Luh/b;

    if-eqz v0, :cond_0

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

.method public e()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/l;->f:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/cms/l;->c()Luh/b;

    iget-object v0, p0, Lorg/bouncycastle/cms/l;->d:Luh/g;

    invoke-virtual {v0}, Luh/g;->d()Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/l;->f:[B

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/l;->f:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/l;->e:Lhi/b;

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-virtual {v0}, Loh/x;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()[B
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/l;->e:Lhi/b;

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

.method public h()Lhi/b;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/l;->e:Lhi/b;

    return-object v0
.end method

.method public i()Lorg/bouncycastle/cms/x0;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/l;->l:Lorg/bouncycastle/cms/x0;

    return-object v0
.end method

.method public j()Lorg/bouncycastle/cms/I0;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/l;->c:Lorg/bouncycastle/cms/I0;

    return-object v0
.end method

.method public k()Luh/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/l;->i:Luh/b;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/bouncycastle/cms/l;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/cms/l;->k:Z

    iget-object v0, p0, Lorg/bouncycastle/cms/l;->d:Luh/g;

    invoke-virtual {v0}, Luh/g;->h()Loh/H;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cms/X;->p(Loh/H;)Luh/b;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/l;->i:Luh/b;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/l;->i:Luh/b;

    return-object v0
.end method
