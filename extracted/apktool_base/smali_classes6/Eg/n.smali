.class public LEg/n;
.super LEg/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LEg/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LEg/h<",
        "LEg/n$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:LBg/r;


# direct methods
.method public constructor <init>(LBg/r;LEg/h$b;)V
    .locals 0

    invoke-direct {p0, p2}, LEg/h;-><init>(LEg/h$b;)V

    iput-object p1, p0, LEg/n;->d:LBg/r;

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    check-cast p1, LEg/n$a;

    invoke-virtual {p0, p1}, LEg/n;->k(LEg/n$a;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic f(Ljava/lang/Object;LDg/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, LEg/n$a;

    invoke-virtual {p0, p1, p2}, LEg/n;->l(LEg/n$a;LDg/a;)V

    return-void
.end method

.method public g()LDg/a$c;
    .locals 1

    sget-object v0, LDg/a$c;->SET_COMMENT:LDg/a$c;

    return-object v0
.end method

.method public k(LEg/n$a;)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public l(LEg/n$a;LDg/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, LEg/n$a;->a(LEg/n$a;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, LEg/n;->d:LBg/r;

    invoke-virtual {p2}, LBg/r;->e()LBg/g;

    move-result-object p2

    invoke-static {p1}, LEg/n$a;->a(LEg/n$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, LBg/g;->k(Ljava/lang/String;)V

    new-instance v0, LAg/h;

    iget-object v1, p0, LEg/n;->d:LBg/r;

    invoke-virtual {v1}, LBg/r;->k()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, LAg/h;-><init>(Ljava/io/File;)V

    :try_start_0
    iget-object v1, p0, LEg/n;->d:LBg/r;

    invoke-virtual {v1}, LBg/r;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p2, p0, LEg/n;->d:LBg/r;

    invoke-virtual {p2}, LBg/r;->j()LBg/o;

    move-result-object p2

    invoke-virtual {p2}, LBg/o;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LAg/h;->j(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, LBg/g;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LAg/h;->j(J)V

    :goto_0
    new-instance p2, Lyg/e;

    invoke-direct {p2}, Lyg/e;-><init>()V

    iget-object v1, p0, LEg/n;->d:LBg/r;

    iget-object p1, p1, LEg/d;->a:LBg/m;

    invoke-virtual {p1}, LBg/m;->b()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p2, v1, v0, p1}, Lyg/e;->e(LBg/r;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, LAg/h;->close()V

    return-void

    :goto_1
    :try_start_1
    invoke-virtual {v0}, LAg/h;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1

    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "comment is null, cannot update Zip file with comment"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
