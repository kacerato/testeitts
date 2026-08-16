.class public Lij/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lij/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lij/n;->d(ZLSk/f;LQk/f;Lij/f;Z)Lij/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LSk/f;

.field public final synthetic b:LQk/f;

.field public final synthetic c:Lij/n;


# direct methods
.method public constructor <init>(Lij/n;LSk/f;LQk/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lij/n$a;->c:Lij/n;

    iput-object p2, p0, Lij/n$a;->a:LSk/f;

    iput-object p3, p0, Lij/n$a;->b:LQk/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lij/u;Lij/k;)Lij/k;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lij/v;

    if-eqz v0, :cond_0

    check-cast p1, Lij/v;

    invoke-interface {p1}, Lij/v;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LSk/f;

    iget-object v1, p0, Lij/n$a;->a:LSk/f;

    invoke-direct {v0, v1}, LSk/f;-><init>(LSk/f;)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {p1}, Lij/v;->b()[B

    move-result-object p1

    sget-object v2, LXh/t;->Y1:Loh/x;

    new-instance v3, Loh/F0;

    invoke-static {p1}, Lem/c;->i([B)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Loh/F0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, LSk/f;->e(Loh/x;Loh/g;)LSk/f;

    iget-object p1, p0, Lij/n$a;->c:Lij/n;

    iget-object v2, p0, Lij/n$a;->b:LQk/f;

    invoke-virtual {v0, v2}, LSk/f;->c(LQk/f;)LSk/e;

    move-result-object v0

    invoke-virtual {v0}, LSk/e;->c()[B

    move-result-object v0

    invoke-static {p1, v0}, Lij/n;->a(Lij/n;[B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    new-instance p1, Lij/l;

    invoke-direct {p1, p2}, Lij/l;-><init>(Lij/k;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lij/l;->f([B)Lij/l;

    move-result-object p1

    const-string p2, "Content-Type"

    const-string v0, "application/pkcs10"

    invoke-virtual {p1, p2, v0}, Lij/l;->c(Ljava/lang/String;Ljava/lang/String;)Lij/l;

    const-string p2, "Content-Transfer-Encoding"

    const-string v0, "base64"

    invoke-virtual {p1, p2, v0}, Lij/l;->c(Ljava/lang/String;Ljava/lang/String;)Lij/l;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p2

    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Content-Length"

    invoke-virtual {p1, v0, p2}, Lij/l;->c(Ljava/lang/String;Ljava/lang/String;)Lij/l;

    invoke-virtual {p1}, Lij/l;->b()Lij/k;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Source does not supply TLS unique."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
