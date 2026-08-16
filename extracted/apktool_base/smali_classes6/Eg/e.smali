.class public LEg/e;
.super LEg/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LEg/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LEg/a<",
        "LEg/e$a;",
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
.method public A(LEg/e$a;LDg/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, LEg/e$a;->a(LEg/e$a;)LBg/s;

    move-result-object v0

    invoke-virtual {p0, v0}, LEg/a;->x(LBg/s;)V

    invoke-virtual {p0, p1}, LEg/e;->z(LEg/e$a;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, LEg/e$a;->a(LEg/e$a;)LBg/s;

    move-result-object v1

    iget-object p1, p1, LEg/d;->a:LBg/m;

    invoke-virtual {p0, v0, p2, v1, p1}, LEg/a;->l(Ljava/util/List;LDg/a;LBg/s;LBg/m;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    check-cast p1, LEg/e$a;

    invoke-virtual {p0, p1}, LEg/e;->y(LEg/e$a;)J

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

    check-cast p1, LEg/e$a;

    invoke-virtual {p0, p1, p2}, LEg/e;->A(LEg/e$a;LDg/a;)V

    return-void
.end method

.method public g()LDg/a$c;
    .locals 1

    invoke-super {p0}, LEg/a;->g()LDg/a$c;

    move-result-object v0

    return-object v0
.end method

.method public y(LEg/e$a;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-static {p1}, LEg/e$a;->b(LEg/e$a;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, LEg/e$a;->a(LEg/e$a;)LBg/s;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, LEg/a;->o(Ljava/util/List;LBg/s;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final z(LEg/e$a;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LEg/e$a;",
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, LEg/e$a;->b(LEg/e$a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, LFg/c;->x(Ljava/io/File;)Z

    move-result v3

    invoke-static {p1}, LEg/e$a;->a(LEg/e$a;)LBg/s;

    move-result-object v4

    invoke-virtual {v4}, LBg/s;->n()LBg/s$a;

    move-result-object v4

    if-eqz v3, :cond_0

    sget-object v3, LBg/s$a;->INCLUDE_LINK_ONLY:LBg/s$a;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, LEg/e$a;->a(LEg/e$a;)LBg/s;

    move-result-object v3

    invoke-static {v2, v3}, LFg/c;->n(Ljava/io/File;LBg/s;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
