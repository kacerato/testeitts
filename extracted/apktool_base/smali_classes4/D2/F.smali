.class public final LD2/F;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LD2/p;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LD2/F$b;
    }
.end annotation

.annotation build Lv2/c;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/net/URL;)LD2/f;
    .locals 2

    new-instance v0, LD2/F$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LD2/F$b;-><init>(Ljava/net/URL;LD2/F$a;)V

    return-object v0
.end method

.method public static b(Ljava/net/URL;Ljava/nio/charset/Charset;)LD2/j;
    .locals 0

    invoke-static {p0}, LD2/F;->a(Ljava/net/URL;)LD2/f;

    move-result-object p0

    invoke-virtual {p0, p1}, LD2/f;->a(Ljava/nio/charset/Charset;)LD2/j;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/net/URL;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, LD2/F;->a(Ljava/net/URL;)LD2/f;

    move-result-object p0

    invoke-virtual {p0, p1}, LD2/f;->g(Ljava/io/OutputStream;)J

    return-void
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/net/URL;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "resource %s relative to %s not found."

    invoke-static {v1, v2, p1, p0}, Lw2/H;->y(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .annotation build LI2/a;
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, LD2/F;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lw2/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "resource %s not found."

    invoke-static {v1, v2, p0}, Lw2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static f(Ljava/net/URL;Ljava/nio/charset/Charset;LD2/w;)Ljava/lang/Object;
    .locals 0
    .annotation runtime LD2/C;
    .end annotation

    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/nio/charset/Charset;",
            "LD2/w<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, LD2/F;->b(Ljava/net/URL;Ljava/nio/charset/Charset;)LD2/j;

    move-result-object p0

    invoke-virtual {p0, p2}, LD2/j;->q(LD2/w;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, LD2/F$a;

    invoke-direct {v0}, LD2/F$a;-><init>()V

    invoke-static {p0, p1, v0}, LD2/F;->f(Ljava/net/URL;Ljava/nio/charset/Charset;LD2/w;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static h(Ljava/net/URL;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, LD2/F;->a(Ljava/net/URL;)LD2/f;

    move-result-object p0

    invoke-virtual {p0}, LD2/f;->o()[B

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, LD2/F;->b(Ljava/net/URL;Ljava/nio/charset/Charset;)LD2/j;

    move-result-object p0

    invoke-virtual {p0}, LD2/j;->n()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
