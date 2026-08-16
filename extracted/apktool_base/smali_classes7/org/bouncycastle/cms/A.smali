.class public Lorg/bouncycastle/cms/A;
.super Lorg/bouncycastle/cms/t;
.source "SourceFile"


# instance fields
.field public c:Lorg/bouncycastle/cms/I0;

.field public d:Luh/v;

.field public e:Lhi/b;

.field public f:Luh/b;

.field public g:Z

.field public h:Lorg/bouncycastle/cms/x0;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/t;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/cms/A;->g:Z

    new-instance p1, Luh/v;

    iget-object v0, p0, Lorg/bouncycastle/cms/t;->a:Luh/p;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Luh/p;->a(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/F;

    invoke-direct {p1, v0}, Luh/v;-><init>(Loh/F;)V

    iput-object p1, p0, Lorg/bouncycastle/cms/A;->d:Luh/v;

    invoke-virtual {p1}, Luh/v;->b()Luh/I;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lorg/bouncycastle/cms/x0;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/x0;-><init>(Luh/I;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/A;->h:Lorg/bouncycastle/cms/x0;

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/cms/A;->d:Luh/v;

    invoke-virtual {p1}, Luh/v;->c()Loh/H;

    move-result-object p1

    invoke-interface {p1}, Loh/g;->r()Loh/B;

    move-result-object p1

    invoke-static {p1}, Loh/G;->F(Ljava/lang/Object;)Loh/G;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/cms/A;->d:Luh/v;

    invoke-virtual {v0}, Luh/v;->a()Luh/s;

    move-result-object v0

    invoke-virtual {v0}, Luh/s;->a()Lhi/b;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cms/A;->e:Lhi/b;

    new-instance v1, Lorg/bouncycastle/cms/I;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Luh/s;->c(I)Loh/g;

    move-result-object v2

    check-cast v2, Loh/z;

    invoke-interface {v2}, Loh/z;->a()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/I;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Lorg/bouncycastle/cms/D$a;

    iget-object v3, p0, Lorg/bouncycastle/cms/A;->e:Lhi/b;

    invoke-virtual {v0}, Luh/s;->b()Loh/x;

    move-result-object v0

    invoke-direct {v2, v3, v0, v1}, Lorg/bouncycastle/cms/D$a;-><init>(Lhi/b;Loh/x;Lorg/bouncycastle/cms/J;)V

    iget-object v0, p0, Lorg/bouncycastle/cms/A;->e:Lhi/b;

    invoke-static {p1, v0, v2}, Lorg/bouncycastle/cms/D;->a(Loh/G;Lhi/b;Lorg/bouncycastle/cms/K;)Lorg/bouncycastle/cms/I0;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/A;->c:Lorg/bouncycastle/cms/I0;

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

    .line 2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/A;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public b()Lhi/b;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/A;->e:Lhi/b;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/A;->e:Lhi/b;

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-virtual {v0}, Loh/x;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()[B
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/A;->e:Lhi/b;

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

.method public e()Lorg/bouncycastle/cms/x0;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/A;->h:Lorg/bouncycastle/cms/x0;

    return-object v0
.end method

.method public f()Lorg/bouncycastle/cms/I0;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/A;->c:Lorg/bouncycastle/cms/I0;

    return-object v0
.end method

.method public g()Luh/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/A;->f:Luh/b;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/bouncycastle/cms/A;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/cms/A;->g:Z

    iget-object v0, p0, Lorg/bouncycastle/cms/A;->d:Luh/v;

    invoke-virtual {v0}, Luh/v;->d()Loh/H;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cms/X;->p(Loh/H;)Luh/b;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/A;->f:Luh/b;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/A;->f:Luh/b;

    return-object v0
.end method
