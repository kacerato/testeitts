.class public Lorg/bouncycastle/cms/w;
.super Lorg/bouncycastle/cms/x;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/cms/x;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lorg/bouncycastle/cms/V;LQk/F;)Lorg/bouncycastle/cms/v;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-interface {p2, v0}, LQk/F;->d(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/bouncycastle/cms/F;->b(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {p2}, LQk/F;->a()Lhi/b;

    move-result-object p2

    new-instance v1, Loh/c0;

    invoke-direct {v1, v0}, Loh/c0;-><init>([B)V

    invoke-interface {p1}, Lorg/bouncycastle/cms/V;->a()Loh/x;

    move-result-object p1

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/cms/X;->s(Loh/x;Lhi/b;[B)Luh/r;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/cms/x;->a:Lorg/bouncycastle/cms/d;

    invoke-static {p2}, Lorg/bouncycastle/cms/X;->m(Lorg/bouncycastle/cms/d;)Loh/G;

    move-result-object p2

    new-instance v0, Luh/o;

    sget-object v1, Luh/l;->r8:Loh/x;

    new-instance v2, Luh/t;

    invoke-direct {v2, p1, p2}, Luh/t;-><init>(Luh/r;Loh/G;)V

    invoke-direct {v0, v1, v2}, Luh/o;-><init>(Loh/x;Loh/g;)V

    new-instance p1, Lorg/bouncycastle/cms/v;

    invoke-direct {p1, v0}, Lorg/bouncycastle/cms/v;-><init>(Luh/o;)V

    return-object p1

    :catch_0
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string p2, ""

    invoke-direct {p1, p2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lorg/bouncycastle/cms/V;LQk/F;)Lorg/bouncycastle/cms/v;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/cms/w;->b(Lorg/bouncycastle/cms/V;LQk/F;)Lorg/bouncycastle/cms/v;

    move-result-object p1

    return-object p1
.end method
