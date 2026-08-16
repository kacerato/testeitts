.class public LEg/f;
.super LEg/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LEg/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LEg/a<",
        "LEg/f$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(LBg/r;[CLyg/e;LEg/h$b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, LEg/a;-><init>(LBg/r;[CLyg/e;LEg/h$b;)V

    return-void
.end method


# virtual methods
.method public final A(LEg/f$a;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LEg/f$a;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-static {p1}, LEg/f$a;->b(LEg/f$a;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, LEg/f$a;->a(LEg/f$a;)LBg/s;

    move-result-object v1

    invoke-static {v0, v1}, LFg/c;->n(Ljava/io/File;LBg/s;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, LEg/f$a;->a(LEg/f$a;)LBg/s;

    move-result-object v1

    invoke-virtual {v1}, LBg/s;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, LEg/f$a;->b(LEg/f$a;)Ljava/io/File;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public final B(LEg/f$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, LEg/f$a;->b(LEg/f$a;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, LEg/f$a;->a(LEg/f$a;)LBg/s;

    move-result-object v1

    invoke-virtual {v1}, LBg/s;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p1}, LEg/f$a;->a(LEg/f$a;)LBg/s;

    move-result-object p1

    invoke-virtual {p1, v0}, LBg/s;->z(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    check-cast p1, LEg/f$a;

    invoke-virtual {p0, p1}, LEg/f;->y(LEg/f$a;)J

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

    check-cast p1, LEg/f$a;

    invoke-virtual {p0, p1, p2}, LEg/f;->z(LEg/f$a;LDg/a;)V

    return-void
.end method

.method public y(LEg/f$a;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-virtual {p0, p1}, LEg/f;->A(LEg/f$a;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, LEg/f$a;->a(LEg/f$a;)LBg/s;

    move-result-object v1

    invoke-virtual {v1}, LBg/s;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, LEg/f$a;->b(LEg/f$a;)Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {p1}, LEg/f$a;->a(LEg/f$a;)LBg/s;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, LEg/a;->o(Ljava/util/List;LBg/s;)J

    move-result-wide v0

    return-wide v0
.end method

.method public z(LEg/f$a;LDg/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, LEg/f;->A(LEg/f$a;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1}, LEg/f;->B(LEg/f$a;)V

    invoke-static {p1}, LEg/f$a;->a(LEg/f$a;)LBg/s;

    move-result-object v1

    iget-object p1, p1, LEg/d;->a:LBg/m;

    invoke-virtual {p0, v0, p2, v1, p1}, LEg/a;->l(Ljava/util/List;LDg/a;LBg/s;LBg/m;)V

    return-void
.end method
