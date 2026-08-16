.class public LSk/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LXh/v;


# direct methods
.method public constructor <init>(LXh/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LSk/o;->a:LXh/v;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-static {p1}, LXh/v;->v(Ljava/lang/Object;)LXh/v;

    move-result-object p1

    invoke-direct {p0, p1}, LSk/o;-><init>(LXh/v;)V

    return-void
.end method


# virtual methods
.method public a(LQk/F;)LSk/n;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {p1, v0}, LQk/F;->d(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, LSk/o;->a:LXh/v;

    invoke-virtual {v2}, Loh/v;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    new-instance v1, LSk/n;

    new-instance v2, LXh/j;

    invoke-interface {p1}, LQk/F;->a()Lhi/b;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v2, p1, v0}, LXh/j;-><init>(Lhi/b;[B)V

    invoke-direct {v1, v2}, LSk/n;-><init>(LXh/j;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot encode privateKeyInfo"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
