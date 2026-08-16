.class public Lcom/android/tools/r8/utils/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/utils/u$b;,
        Lcom/android/tools/r8/utils/u$a;
    }
.end annotation


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 104
    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".class"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/util/function/BiFunction;)Ljava/nio/file/Path;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Ljava/util/function/BiFunction<",
            "Ljava/util/zip/ZipEntry;",
            "[B[B>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-static {p1}, Lcom/android/tools/r8/utils/u$b;->a(Ljava/nio/file/Path;)Lcom/android/tools/r8/utils/u$b;

    move-result-object p1

    .line 49
    new-instance v0, Lcom/android/tools/r8/utils/U;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/utils/U;-><init>(Lcom/android/tools/r8/utils/u$b;Ljava/util/function/BiFunction;)V

    invoke-static {p0, v0}, Lcom/android/tools/r8/utils/u;->a(Ljava/nio/file/Path;Lcom/android/tools/r8/utils/u$a;)V

    .line 50
    invoke-virtual {p1}, Lcom/android/tools/r8/utils/u$b;->a()Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/util/function/Predicate;)Ljava/nio/file/Path;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Ljava/util/function/Predicate<",
            "Ljava/util/zip/ZipEntry;",
            ">;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-static {p1}, Lcom/android/tools/r8/utils/u$b;->a(Ljava/nio/file/Path;)Lcom/android/tools/r8/utils/u$b;

    move-result-object p1

    .line 53
    new-instance v0, Lcom/android/tools/r8/utils/T;

    invoke-direct {v0, p2, p1}, Lcom/android/tools/r8/utils/T;-><init>(Ljava/util/function/Predicate;Lcom/android/tools/r8/utils/u$b;)V

    invoke-static {p0, v0}, Lcom/android/tools/r8/utils/u;->a(Ljava/nio/file/Path;Lcom/android/tools/r8/utils/u$a;)V

    .line 54
    invoke-virtual {p1}, Lcom/android/tools/r8/utils/u$b;->a()Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/ArrayList;
    .locals 2

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    new-instance v1, Lcom/android/tools/r8/utils/M;

    invoke-direct {v1, p2, p1, v0, p3}, Lcom/android/tools/r8/utils/M;-><init>(Ljava/util/function/Predicate;Ljava/nio/file/Path;Ljava/util/List;Ljava/util/function/Function;)V

    invoke-static {p0, v1}, Lcom/android/tools/r8/utils/u;->a(Ljava/nio/file/Path;Lcom/android/tools/r8/utils/u$a;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/io/File;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 69
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/utils/P;

    invoke-direct {v0}, Lcom/android/tools/r8/utils/P;-><init>()V

    new-instance v1, Lcom/android/tools/r8/utils/Q;

    invoke-direct {v1}, Lcom/android/tools/r8/utils/Q;-><init>()V

    invoke-static {p0, p1, v0, v1}, Lcom/android/tools/r8/utils/u;->a(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/android/tools/r8/utils/L;

    invoke-direct {v0}, Lcom/android/tools/r8/utils/L;-><init>()V

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/android/tools/r8/utils/u;->a(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/U6;Ljava/lang/String;Ljava/util/zip/ZipEntry;Ljava/io/InputStream;)V
    .locals 0

    .line 47
    new-instance p3, Lcom/android/tools/r8/utils/W;

    invoke-direct {p3, p2, p1}, Lcom/android/tools/r8/utils/W;-><init>(Ljava/util/zip/ZipEntry;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/U6;->a(Ljava/util/function/BooleanSupplier;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/utils/u$a;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/InputStream;)V
    .locals 0

    .line 29
    invoke-interface {p0, p2, p3}, Lcom/android/tools/r8/utils/u$a;->a(Ljava/util/zip/ZipEntry;Ljava/io/InputStream;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/utils/u$b;Ljava/util/function/BiFunction;Ljava/util/zip/ZipEntry;Ljava/io/InputStream;)V
    .locals 1

    .line 51
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/utils/u$b;->a(Ljava/lang/String;[B)Lcom/android/tools/r8/utils/u$b;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/android/tools/r8/utils/u$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 17
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/tools/r8/utils/u;->a(Ljava/nio/file/Path;Lcom/android/tools/r8/utils/u$a;)V

    return-void
.end method

.method public static a(Ljava/nio/file/Path;Lcom/android/tools/r8/utils/u$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    new-instance v0, Lcom/android/tools/r8/utils/N;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/utils/N;-><init>(Lcom/android/tools/r8/utils/u$a;)V

    .line 19
    new-instance p1, Ljava/util/zip/ZipFile;

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V

    .line 20
    :try_start_0
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    .line 21
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 22
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 23
    invoke-virtual {p1, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :try_start_1
    invoke-interface {v0, p1, v1, v2}, Lcom/android/tools/r8/utils/w;->a(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    .line 25
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    if-eqz v2, :cond_1

    .line 26
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 27
    :cond_2
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V

    return-void

    .line 28
    :goto_2
    :try_start_5
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
.end method

.method public static a(Ljava/nio/file/Path;Lcom/android/tools/r8/utils/v;)V
    .locals 2

    .line 30
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V

    .line 31
    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    .line 32
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 34
    invoke-interface {p1, v0, v1}, Lcom/android/tools/r8/utils/v;->a(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 35
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    return-void

    .line 36
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method public static a(Ljava/nio/file/Path;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/zip/ZipEntry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V

    .line 38
    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    .line 39
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 41
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    return-void

    .line 42
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method public static a(Ljava/util/List;Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/pe;Ljava/util/zip/ZipOutputStream;)V
    .locals 4

    .line 2
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/DataDirectoryResource;

    .line 3
    invoke-interface {v0}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [B

    invoke-static {p4, v0, v1, v2}, Lcom/android/tools/r8/utils/u;->a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/DataEntryResource;

    .line 5
    invoke-interface {p2}, Lcom/android/tools/r8/DataResource;->getName()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-interface {p2}, Lcom/android/tools/r8/DataEntryResource;->getByteStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/pe;->a(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object p2

    check-cast p2, Ljava/io/InputStream;

    invoke-static {p2}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object p2

    .line 7
    sget-boolean v3, Lcom/android/tools/r8/internal/y2;->b:Z

    .line 8
    const-string v3, "resources/new_api_database.ser"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_2

    :cond_1
    move v3, v2

    .line 9
    :goto_2
    invoke-static {p4, v0, p2, v3}, Lcom/android/tools/r8/utils/u;->a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/ProgramResource;

    .line 11
    sget-boolean p2, Lcom/android/tools/r8/utils/u;->a:Z

    if-nez p2, :cond_4

    invoke-interface {p1}, Lcom/android/tools/r8/ProgramResource;->getClassDescriptors()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    goto :goto_4

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 12
    :cond_4
    :goto_4
    invoke-interface {p1}, Lcom/android/tools/r8/ProgramResource;->getClassDescriptors()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 13
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 14
    invoke-static {p2}, Lcom/android/tools/r8/internal/Bl;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 15
    invoke-interface {p1}, Lcom/android/tools/r8/ProgramResource;->getByteStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/pe;->a(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    invoke-static {p1}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 16
    invoke-static {p4, p2, p1, v2}, Lcom/android/tools/r8/utils/u;->a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V

    goto :goto_3

    :cond_5
    return-void
.end method

.method public static synthetic a(Ljava/util/function/Predicate;Lcom/android/tools/r8/utils/u$b;Ljava/util/zip/ZipEntry;Ljava/io/InputStream;)V
    .locals 0

    .line 55
    invoke-interface {p0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 56
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/android/tools/r8/utils/u$b;->a(Ljava/lang/String;[B)Lcom/android/tools/r8/utils/u$b;

    :cond_0
    return-void
.end method

.method public static a(Ljava/util/function/Predicate;Ljava/nio/file/Path;Ljava/util/List;Ljava/util/function/Function;Ljava/util/zip/ZipEntry;Ljava/io/InputStream;)V
    .locals 2

    .line 72
    invoke-virtual {p4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {p4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p0, p4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 74
    const-string p0, ".."

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 75
    invoke-interface {p1, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    .line 76
    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 77
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p4

    invoke-direct {p1, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 78
    :try_start_0
    sget p4, Lcom/android/tools/r8/internal/c8;->a:I

    .line 79
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p4, 0x2000

    .line 80
    new-array p4, p4, [B

    .line 81
    :goto_0
    invoke-virtual {p5, p4}, Ljava/io/InputStream;->read([B)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 82
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 83
    invoke-interface {p3, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 84
    :try_start_1
    invoke-virtual {p1, p4, v1, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 85
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    .line 86
    :cond_1
    new-instance p0, Lcom/android/tools/r8/internal/If;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid entry name \""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method public static a(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-static {p2}, Lcom/android/tools/r8/ByteDataView;->of([B)Lcom/android/tools/r8/ByteDataView;

    move-result-object p2

    .line 88
    invoke-virtual {p2}, Lcom/android/tools/r8/ByteDataView;->getBuffer()[B

    move-result-object v0

    .line 89
    invoke-virtual {p2}, Lcom/android/tools/r8/ByteDataView;->getOffset()I

    move-result v1

    .line 90
    invoke-virtual {p2}, Lcom/android/tools/r8/ByteDataView;->getLength()I

    move-result p2

    .line 91
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 92
    invoke-virtual {v2, v0, v1, p2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 93
    new-instance v3, Ljava/util/zip/ZipEntry;

    invoke-direct {v3, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v3, p3}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    int-to-long v4, p2

    .line 95
    invoke-virtual {v3, v4, v5}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 96
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    const-wide/16 v4, 0x0

    .line 97
    invoke-virtual {v3, v4, v5}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 98
    invoke-virtual {p0, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 99
    invoke-virtual {p0, v0, v1, p2}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 100
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    return-void
.end method

.method public static a(Ljava/util/zip/ZipOutputStream;Ljava/nio/file/Path;Ljava/util/List;)V
    .locals 4

    .line 58
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    .line 59
    new-instance v1, Ljava/util/zip/ZipEntry;

    .line 60
    invoke-interface {p1, v0}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/16 v3, 0x10

    .line 61
    invoke-static {v2, v3}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object v2

    const/4 v3, 0x0

    .line 62
    invoke-static {v2, v3}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/utils/S;

    invoke-direct {v3}, Lcom/android/tools/r8/utils/S;-><init>()V

    .line 63
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 64
    const-string v3, "/"

    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 66
    invoke-static {v0, p0}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/io/OutputStream;)J

    .line 67
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .line 101
    const-string v0, "module-info.class"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 102
    :cond_0
    const-string v0, "META-INF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/META-INF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 103
    :cond_1
    const-string v0, ".class"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public static synthetic a(Ljava/nio/file/Path;)Z
    .locals 1

    const/4 v0, 0x0

    .line 57
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static a(Ljava/nio/file/Path;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/android/tools/r8/internal/U6;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/U6;-><init>()V

    .line 44
    new-instance v1, Lcom/android/tools/r8/utils/O;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/utils/O;-><init>(Lcom/android/tools/r8/internal/U6;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/android/tools/r8/utils/u;->a(Ljava/nio/file/Path;Lcom/android/tools/r8/utils/u$a;)V

    .line 45
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/U6;->a()Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Ljava/util/zip/ZipEntry;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic a(Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z
    .locals 0

    .line 46
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/util/function/Predicate;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Ljava/util/function/Predicate<",
            "Ljava/util/zip/ZipEntry;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/android/tools/r8/utils/u;->a(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/util/function/Predicate;Ljava/util/function/Function;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 6
    new-array v1, v0, [Ljava/nio/file/FileVisitOption;

    .line 7
    invoke-static {p1, v1}, Ljava/nio/file/Files;->walk(Ljava/nio/file/Path;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/utils/V;

    invoke-direct {v2}, Lcom/android/tools/r8/utils/V;-><init>()V

    .line 8
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object v1

    .line 10
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 11
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    .line 12
    invoke-static {p0, v0}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 13
    :try_start_0
    invoke-static {v2, p1, v1}, Lcom/android/tools/r8/utils/u;->a(Ljava/util/zip/ZipOutputStream;Ljava/nio/file/Path;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 15
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static synthetic b(Ljava/util/zip/ZipEntry;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Ljava/nio/file/Path;Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V

    .line 3
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/c8;->a(Ljava/io/InputStream;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 5
    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method
