.class public Lorg/bouncycastle/cms/J0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LQk/A;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/J0;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LQk/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/J0;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/J0;->a:Ljava/lang/Object;

    check-cast v0, LQk/s;

    invoke-interface {v0}, LQk/a;->c()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/J0;->a:Ljava/lang/Object;

    instance-of v1, v0, LQk/t;

    if-eqz v1, :cond_0

    check-cast v0, LQk/t;

    invoke-interface {v0, p1}, LQk/t;->d(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lfm/e;

    iget-object v1, p0, Lorg/bouncycastle/cms/J0;->a:Ljava/lang/Object;

    check-cast v1, LQk/A;

    invoke-interface {v1}, LQk/A;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lfm/e;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public c()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/J0;->a:Ljava/lang/Object;

    instance-of v1, v0, LQk/A;

    if-eqz v1, :cond_0

    check-cast v0, LQk/A;

    invoke-interface {v0}, LQk/A;->e()[B

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v1, v0, LQk/s;

    if-eqz v1, :cond_1

    check-cast v0, LQk/s;

    invoke-interface {v0}, LQk/a;->b()[B

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/J0;->a:Ljava/lang/Object;

    instance-of v0, v0, LQk/s;

    return v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/J0;->a:Ljava/lang/Object;

    instance-of v0, v0, LQk/A;

    return v0
.end method
