.class public final Lcom/google/common/reflect/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/reflect/d;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/c$b;,
        Lcom/google/common/reflect/c$a;,
        Lcom/google/common/reflect/c$c;
    }
.end annotation


# static fields
.field public static final b:Ljava/util/logging/Logger;

.field public static final c:Lw2/M;

.field public static final d:Ljava/lang/String; = ".class"


# instance fields
.field public final a:Lcom/google/common/collect/r1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/r1<",
            "Lcom/google/common/reflect/c$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/common/reflect/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/reflect/c;->b:Ljava/util/logging/Logger;

    const-string v0, " "

    invoke-static {v0}, Lw2/M;->i(Ljava/lang/String;)Lw2/M;

    move-result-object v0

    invoke-virtual {v0}, Lw2/M;->g()Lw2/M;

    move-result-object v0

    sput-object v0, Lcom/google/common/reflect/c;->c:Lw2/M;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/r1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r1<",
            "Lcom/google/common/reflect/c$c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/reflect/c;->a:Lcom/google/common/collect/r1;

    return-void
.end method

.method public static synthetic a()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/google/common/reflect/c;->b:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static b(Ljava/lang/ClassLoader;)Lcom/google/common/reflect/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/reflect/c;->m(Ljava/lang/ClassLoader;)Lcom/google/common/collect/r1;

    move-result-object p0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lcom/google/common/collect/r1;->i()Lcom/google/common/collect/e3;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/reflect/c$b;

    invoke-virtual {v2}, Lcom/google/common/reflect/c$b;->a()Ljava/io/File;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/r1;->m()Lcom/google/common/collect/r1$a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/r1;->i()Lcom/google/common/collect/e3;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/reflect/c$b;

    invoke-virtual {v2, v0}, Lcom/google/common/reflect/c$b;->h(Ljava/util/Set;)Lcom/google/common/collect/r1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/r1$a;->l(Ljava/lang/Iterable;)Lcom/google/common/collect/r1$a;

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/google/common/reflect/c;

    invoke-virtual {v1}, Lcom/google/common/collect/r1$a;->o()Lcom/google/common/collect/r1;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/reflect/c;-><init>(Lcom/google/common/collect/r1;)V

    return-object p0
.end method

.method public static d(Ljava/lang/ClassLoader;)Lcom/google/common/collect/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lcom/google/common/collect/g1<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    instance-of v0, p0, Ljava/net/URLClassLoader;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/net/URLClassLoader;

    invoke-virtual {p0}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/g1;->u([Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/google/common/reflect/c;->n()Lcom/google/common/collect/g1;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/google/common/collect/g1;->x()Lcom/google/common/collect/g1;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Lv2/d;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/ClassLoader;)Lcom/google/common/collect/i1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lcom/google/common/collect/i1<",
            "Ljava/io/File;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    .annotation build Lv2/d;
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Q1;->c0()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/google/common/reflect/c;->f(Ljava/lang/ClassLoader;)Lcom/google/common/collect/i1;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    :cond_0
    invoke-static {p0}, Lcom/google/common/reflect/c;->d(Ljava/lang/ClassLoader;)Lcom/google/common/collect/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/g1;->i()Lcom/google/common/collect/e3;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/google/common/reflect/c;->o(Ljava/net/URL;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2, p0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/google/common/collect/i1;->n(Ljava/util/Map;)Lcom/google/common/collect/i1;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/io/File;Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .annotation build Lv2/d;
    .end annotation

    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static h(Ljava/io/File;Ljava/util/jar/Manifest;)Lcom/google/common/collect/r1;
    .locals 5
    .param p1    # Ljava/util/jar/Manifest;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/jar/Manifest;",
            ")",
            "Lcom/google/common/collect/r1<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation build Lv2/d;
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/common/collect/r1;->z()Lcom/google/common/collect/r1;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/r1;->m()Lcom/google/common/collect/r1$a;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object p1

    sget-object v1, Ljava/util/jar/Attributes$Name;->CLASS_PATH:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object v1, Lcom/google/common/reflect/c;->c:Lw2/M;

    invoke-virtual {v1, p1}, Lw2/M;->n(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    invoke-static {p0, v1}, Lcom/google/common/reflect/c;->g(Ljava/io/File;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/google/common/reflect/c;->o(Ljava/net/URL;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/r1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/r1$a;

    goto :goto_0

    :catch_0
    sget-object v2, Lcom/google/common/reflect/c;->b:Ljava/util/logging/Logger;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "Invalid Class-Path entry: "

    if-eqz v3, :cond_2

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/google/common/collect/r1$a;->o()Lcom/google/common/collect/r1;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/lang/ClassLoader;)Lcom/google/common/collect/r1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lcom/google/common/collect/r1<",
            "Lcom/google/common/reflect/c$b;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/r1;->m()Lcom/google/common/collect/r1$a;

    move-result-object v0

    invoke-static {p0}, Lcom/google/common/reflect/c;->f(Ljava/lang/ClassLoader;)Lcom/google/common/collect/i1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/i1;->s()Lcom/google/common/collect/r1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/r1;->i()Lcom/google/common/collect/e3;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Lcom/google/common/reflect/c$b;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    invoke-direct {v2, v3, v1}, Lcom/google/common/reflect/c$b;-><init>(Ljava/io/File;Ljava/lang/ClassLoader;)V

    invoke-virtual {v0, v2}, Lcom/google/common/collect/r1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/r1$a;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/r1$a;->o()Lcom/google/common/collect/r1;

    move-result-object p0

    return-object p0
.end method

.method public static n()Lcom/google/common/collect/g1;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation build Lv2/d;
    .end annotation

    invoke-static {}, Lcom/google/common/collect/g1;->m()Lcom/google/common/collect/g1$a;

    move-result-object v0

    sget-object v1, Lw2/N;->PATH_SEPARATOR:Lw2/N;

    invoke-virtual {v1}, Lw2/N;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lw2/M;->i(Ljava/lang/String;)Lw2/M;

    move-result-object v1

    sget-object v2, Lw2/N;->JAVA_CLASS_PATH:Lw2/N;

    invoke-virtual {v2}, Lw2/N;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lw2/M;->n(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    :try_start_1
    new-instance v3, Ljava/net/URL;

    const-string v4, "file"

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :goto_1
    sget-object v4, Lcom/google/common/reflect/c;->b:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "malformed classpath entry: "

    if-eqz v6, :cond_0

    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v4, v5, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/g1$a;->n()Lcom/google/common/collect/g1;

    move-result-object v0

    return-object v0
.end method

.method public static o(Ljava/net/URL;)Ljava/io/File;
    .locals 2
    .annotation build Lv2/d;
    .end annotation

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lw2/H;->d(Z)V

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public c()Lcom/google/common/collect/r1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r1<",
            "Lcom/google/common/reflect/c$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/c;->a:Lcom/google/common/collect/r1;

    invoke-static {v0}, Lcom/google/common/collect/p0;->s(Ljava/lang/Iterable;)Lcom/google/common/collect/p0;

    move-result-object v0

    const-class v1, Lcom/google/common/reflect/c$a;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/p0;->m(Ljava/lang/Class;)Lcom/google/common/collect/p0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/p0;->G()Lcom/google/common/collect/r1;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/google/common/collect/r1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r1<",
            "Lcom/google/common/reflect/c$c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/c;->a:Lcom/google/common/collect/r1;

    return-object v0
.end method

.method public j()Lcom/google/common/collect/r1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r1<",
            "Lcom/google/common/reflect/c$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/c;->a:Lcom/google/common/collect/r1;

    invoke-static {v0}, Lcom/google/common/collect/p0;->s(Ljava/lang/Iterable;)Lcom/google/common/collect/p0;

    move-result-object v0

    const-class v1, Lcom/google/common/reflect/c$a;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/p0;->m(Ljava/lang/Class;)Lcom/google/common/collect/p0;

    move-result-object v0

    new-instance v1, Lcom/google/common/reflect/b;

    invoke-direct {v1}, Lcom/google/common/reflect/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/p0;->n(Lw2/I;)Lcom/google/common/collect/p0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/p0;->G()Lcom/google/common/collect/r1;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/String;)Lcom/google/common/collect/r1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/r1<",
            "Lcom/google/common/reflect/c$a;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/common/collect/r1;->m()Lcom/google/common/collect/r1$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/reflect/c;->j()Lcom/google/common/collect/r1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/r1;->i()Lcom/google/common/collect/e3;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/reflect/c$a;

    invoke-virtual {v2}, Lcom/google/common/reflect/c$a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/google/common/collect/r1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/r1$a;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/r1$a;->o()Lcom/google/common/collect/r1;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/String;)Lcom/google/common/collect/r1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/r1<",
            "Lcom/google/common/reflect/c$a;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/google/common/collect/r1;->m()Lcom/google/common/collect/r1$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/reflect/c;->j()Lcom/google/common/collect/r1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/r1;->i()Lcom/google/common/collect/e3;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/reflect/c$a;

    invoke-virtual {v2}, Lcom/google/common/reflect/c$a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/google/common/collect/r1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/r1$a;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/r1$a;->o()Lcom/google/common/collect/r1;

    move-result-object p1

    return-object p1
.end method
