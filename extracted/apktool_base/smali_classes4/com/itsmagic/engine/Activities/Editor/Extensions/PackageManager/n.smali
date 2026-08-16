.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$j;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$i;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$k;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$l;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$h;
    }
.end annotation


# static fields
.field public static c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;

.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->d:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->h(Lx8/b;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadedProject"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->a:Ljava/lang/Object;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->b:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(ZLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->w(ZLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/d;)Z
    .locals 0

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->x(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/d;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;

    return-object v0
.end method

.method public static synthetic d(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;
    .locals 0

    sput-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;

    return-object p0
.end method

.method public static synthetic e()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->d:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic f(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$j;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->s(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$j;)V

    return-void
.end method

.method public static synthetic g(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$i;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$j;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->t(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$i;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$j;)V

    return-void
.end method

.method public static synthetic h(Ljava/lang/String;Z)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->z(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static k(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "zipFiles",
            "keepRootReadme"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;",
            ">;Z)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/l;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/l;-><init>(Z)V

    invoke-interface {p0, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;->e:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->k(Ljava/util/List;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static n()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->o(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;

    move-result-object v0

    return-object v0
.end method

.method public static o(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "project"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->d:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/k;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/k;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/d;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/d;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;

    move-result-object v2

    iget-object v3, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->b:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->d:Ljava/util/List;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/d;

    invoke-direct {v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic w(ZLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->z(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic x(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/d;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/d;->b()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static z(Ljava/lang/String;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entryName",
            "keepRootReadme"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/16 v1, 0x5c

    const/16 v2, 0x2f

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, ".store"

    if-eqz v1, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v4

    :cond_4
    const-string v1, "manifest.json"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v4

    :cond_5
    if-nez p1, :cond_6

    const-string p1, "README.md"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    move v0, v4

    :cond_6
    :goto_2
    return v0
.end method


# virtual methods
.method public final A(Ljava/io/File;Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$k;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$l;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "zipFile",
            "destination",
            "filter",
            "unzipListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    :try_start_0
    new-instance v0, Lug/a;

    invoke-direct {v0, p1}, Lug/a;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string p1, ""

    invoke-virtual {v0}, Lug/a;->R()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LBg/j;

    invoke-virtual {v2}, LBg/b;->j()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$k;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p4, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$l;->a(Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, LBg/b;->s()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to create directory: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto/16 :goto_b

    :cond_2
    :goto_2
    invoke-virtual {v2}, LBg/b;->s()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_4

    :cond_3
    :goto_3
    move-object p1, v3

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-virtual {v0, v2}, Lug/a;->S(LBg/j;)Lzg/k;

    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/16 v6, 0x2000

    :try_start_4
    new-array v6, v6, [B

    :goto_4
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v6

    goto :goto_5

    :cond_5
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_a

    :catch_0
    move-exception v4

    goto :goto_9

    :catchall_2
    move-exception v5

    goto :goto_7

    :goto_5
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v5

    :try_start_8
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_7
    if-eqz v4, :cond_6

    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v4

    :try_start_a
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_8
    throw v5
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_9
    :try_start_b
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Erro ao extrair: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " (pulado)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_a
    invoke-virtual {v2}, LBg/b;->m()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_7

    invoke-virtual {p1, v4, v5}, Ljava/io/File;->setLastModified(J)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_7
    :try_start_c
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, ".world"

    invoke-static {v2, v4}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1}, LX7/a;->x(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/World/World;->h(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/World/World;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_3

    :catch_1
    move-exception p1

    :try_start_d
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :cond_8
    invoke-interface {p4, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$l;->a(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    :cond_9
    :try_start_e
    invoke-virtual {v0}, Lug/a;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    goto :goto_e

    :catch_2
    move-exception p1

    goto :goto_d

    :goto_b
    :try_start_f
    invoke-virtual {v0}, Lug/a;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_c

    :catchall_5
    move-exception p2

    :try_start_10
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c
    throw p1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2

    :goto_d
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Erro ao processar o ZIP: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_e
    return-void

    :cond_a
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Zip not found: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final i(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "files"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;->e:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->i(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public l(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "productID"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/_EDITOR/ImportedPackages/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".ipm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, LX7/a;->x(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method public p(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pack",
            "importListener"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->q(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$i;Z)V

    return-void
.end method

.method public q(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$i;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pack",
            "importListener",
            "silently"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    new-instance p3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$b;

    invoke-direct {p3, p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$i;)V

    invoke-static {p3}, LO9/b;->d(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c;

    invoke-direct {p3, p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$i;)V

    invoke-static {p3}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Import listener can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pack",
            "importListener"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->q(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$i;Z)V

    return-void
.end method

.method public final s(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$j;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pack",
            "sImportListener"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->l()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;->m(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;->n(I)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->m()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r;->h(Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->o()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->k(Ljava/util/List;Z)V

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;->f(Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->i(Ljava/util/List;)I

    move-result v2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->b:Ljava/lang/String;

    invoke-static {v5}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$d;

    invoke-direct {v4, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;)V

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$e;

    invoke-direct {v5, p0, p2, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$j;I)V

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->A(Ljava/io/File;Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$k;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$l;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/_EDITOR/ImportedPackages/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".ipm"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, LX7/a;->i(Ljava/io/File;Ljava/lang/String;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->b:Ljava/lang/String;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, LW7/b;->j:Ld8/j;

    invoke-static {}, Ld8/j;->B0()V

    invoke-static {}, Ld8/j;->v0()V

    :cond_1
    invoke-interface {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$j;->onSuccess()V

    return-void

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-interface {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$j;->a()V

    return-void

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-interface {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$j;->a()V

    return-void
.end method

.method public final t(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$i;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$j;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "pack",
            "sImportListener"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->l()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;->m(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;->n(I)V

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;->e(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$i;)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$i;->c()I

    move-result v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->m()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->b:Ljava/lang/String;

    invoke-static {v5}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$f;

    invoke-direct {v4, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$f;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$i;)V

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$g;

    invoke-direct {p1, p0, p3, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$g;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$j;I)V

    invoke-virtual {p0, v2, v3, v4, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->A(Ljava/io/File;Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$k;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$l;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/_EDITOR/ImportedPackages/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;->l()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ".ipm"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, LX7/a;->i(Ljava/io/File;Ljava/lang/String;)Z

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->b:Ljava/lang/String;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, LW7/b;->j:Ld8/j;

    invoke-static {}, Ld8/j;->B0()V

    invoke-static {}, Ld8/j;->v0()V

    :cond_1
    invoke-interface {p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$j;->onSuccess()V

    return-void

    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-interface {p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$j;->a()V

    return-void
.end method

.method public u(J)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "productID"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->y()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public v(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "product"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->j()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->u(J)Z

    move-result p1

    return p1
.end method

.method public y()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/_EDITOR/ImportedPackages/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".ipm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, LX7/a;->x(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v4

    const-class v6, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;

    invoke-virtual {v4, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/ImportedPackage;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-object v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
