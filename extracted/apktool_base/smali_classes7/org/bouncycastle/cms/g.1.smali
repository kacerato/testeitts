.class public Lorg/bouncycastle/cms/g;
.super Lorg/bouncycastle/cms/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/g$b;
    }
.end annotation


# instance fields
.field public final c:Lorg/bouncycastle/cms/I0;

.field public final d:Luh/e;

.field public final e:Lorg/bouncycastle/cms/g$b;

.field public final f:Lhi/b;

.field public g:Luh/b;

.field public h:Loh/G;

.field public i:Luh/b;

.field public j:Z

.field public k:Z

.field public l:Lorg/bouncycastle/cms/x0;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/t;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/cms/g;->j:Z

    iput-boolean p1, p0, Lorg/bouncycastle/cms/g;->k:Z

    new-instance p1, Luh/e;

    iget-object v0, p0, Lorg/bouncycastle/cms/t;->a:Luh/p;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Luh/p;->a(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/F;

    invoke-direct {p1, v0}, Luh/e;-><init>(Loh/F;)V

    iput-object p1, p0, Lorg/bouncycastle/cms/g;->d:Luh/e;

    invoke-virtual {p1}, Luh/e;->d()Luh/I;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/bouncycastle/cms/x0;

    invoke-direct {v1, v0}, Lorg/bouncycastle/cms/x0;-><init>(Luh/I;)V

    iput-object v1, p0, Lorg/bouncycastle/cms/g;->l:Lorg/bouncycastle/cms/x0;

    :cond_0
    invoke-virtual {p1}, Luh/e;->e()Loh/H;

    move-result-object v0

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    invoke-static {v0}, Loh/G;->F(Ljava/lang/Object;)Loh/G;

    move-result-object v0

    invoke-virtual {p1}, Luh/e;->b()Luh/s;

    move-result-object v1

    invoke-virtual {v1}, Luh/s;->a()Lhi/b;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/cms/g;->f:Lhi/b;

    new-instance v3, Lorg/bouncycastle/cms/g$b;

    invoke-direct {v3, p1, p0}, Lorg/bouncycastle/cms/g$b;-><init>(Luh/e;Lorg/bouncycastle/cms/g;)V

    iput-object v3, p0, Lorg/bouncycastle/cms/g;->e:Lorg/bouncycastle/cms/g$b;

    new-instance p1, Lorg/bouncycastle/cms/I;

    new-instance v4, Lorg/bouncycastle/cms/c0;

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Luh/s;->c(I)Loh/g;

    move-result-object v5

    check-cast v5, Loh/z;

    invoke-interface {v5}, Loh/z;->a()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/cms/c0;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/cms/t0;)V

    invoke-direct {p1, v4}, Lorg/bouncycastle/cms/I;-><init>(Ljava/io/InputStream;)V

    new-instance v4, Lorg/bouncycastle/cms/g$a;

    invoke-direct {v4, p0, v1, p1}, Lorg/bouncycastle/cms/g$a;-><init>(Lorg/bouncycastle/cms/g;Luh/s;Lorg/bouncycastle/cms/J;)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/cms/g$b;->a(Lorg/bouncycastle/cms/L;)V

    invoke-static {v0, v2, v4}, Lorg/bouncycastle/cms/D;->a(Loh/G;Lhi/b;Lorg/bouncycastle/cms/K;)Lorg/bouncycastle/cms/I0;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/g;->c:Lorg/bouncycastle/cms/I0;

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

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/g;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public static synthetic b(Lorg/bouncycastle/cms/g;)Loh/G;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cms/g;->h:Loh/G;

    return-object p0
.end method

.method public static synthetic c(Lorg/bouncycastle/cms/g;)Lorg/bouncycastle/cms/g$b;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cms/g;->e:Lorg/bouncycastle/cms/g$b;

    return-object p0
.end method

.method public static synthetic d(Lorg/bouncycastle/cms/g;)Luh/b;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cms/g;->g:Luh/b;

    return-object p0
.end method

.method public static synthetic e(Lorg/bouncycastle/cms/g;Luh/b;)Luh/b;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/g;->g:Luh/b;

    return-object p1
.end method


# virtual methods
.method public final f()Loh/G;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/g;->g:Luh/b;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/cms/g;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/cms/g;->d:Luh/e;

    invoke-virtual {v0}, Luh/e;->a()Loh/H;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    check-cast v0, Loh/G;

    iput-object v0, p0, Lorg/bouncycastle/cms/g;->h:Loh/G;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/cms/g;->j:Z

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/cms/g;->h:Loh/G;

    return-object v0
.end method

.method public g()Luh/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/g;->g:Luh/b;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/bouncycastle/cms/g;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/cms/g;->f()Loh/G;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Luh/b;

    invoke-direct {v1, v0}, Luh/b;-><init>(Loh/G;)V

    iput-object v1, p0, Lorg/bouncycastle/cms/g;->g:Luh/b;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/g;->g:Luh/b;

    return-object v0
.end method

.method public h()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/g;->g:Luh/b;

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

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/g;->f:Lhi/b;

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-virtual {v0}, Loh/x;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()[B
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/g;->f:Lhi/b;

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

.method public k()Lhi/b;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/g;->f:Lhi/b;

    return-object v0
.end method

.method public l()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/g;->e:Lorg/bouncycastle/cms/g$b;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/g$b;->b()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public m()Lorg/bouncycastle/cms/x0;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/g;->l:Lorg/bouncycastle/cms/x0;

    return-object v0
.end method

.method public n()Lorg/bouncycastle/cms/I0;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/g;->c:Lorg/bouncycastle/cms/I0;

    return-object v0
.end method

.method public o()Luh/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/g;->i:Luh/b;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/bouncycastle/cms/g;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/cms/g;->k:Z

    iget-object v0, p0, Lorg/bouncycastle/cms/g;->d:Luh/e;

    invoke-virtual {v0}, Luh/e;->f()Loh/H;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cms/X;->p(Loh/H;)Luh/b;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/g;->i:Luh/b;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/g;->i:Luh/b;

    return-object v0
.end method
