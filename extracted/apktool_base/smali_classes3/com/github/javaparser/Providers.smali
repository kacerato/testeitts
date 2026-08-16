.class public final Lcom/github/javaparser/Providers;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final UTF8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "utf-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/Providers;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provider(Ljava/io/File;)Lcom/github/javaparser/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 8
    invoke-static {p0}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    sget-object v0, Lcom/github/javaparser/Providers;->UTF8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcom/github/javaparser/Providers;->provider(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/github/javaparser/Provider;

    move-result-object p0

    return-object p0
.end method

.method public static provider(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/github/javaparser/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 7
    new-instance v0, Ljava/io/FileInputStream;

    invoke-static {p0}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lcom/github/javaparser/Providers;->provider(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/github/javaparser/Provider;

    move-result-object p0

    return-object p0
.end method

.method public static provider(Ljava/io/InputStream;)Lcom/github/javaparser/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/github/javaparser/Providers;->UTF8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcom/github/javaparser/Providers;->provider(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/github/javaparser/Provider;

    move-result-object p0

    return-object p0
.end method

.method public static provider(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/github/javaparser/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "encoding"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :try_start_0
    new-instance v0, Lcom/github/javaparser/StreamProvider;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/github/javaparser/StreamProvider;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 5
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static provider(Ljava/io/Reader;)Lcom/github/javaparser/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reader"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/github/javaparser/StreamProvider;

    invoke-static {p0}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/Reader;

    invoke-direct {v0, p0}, Lcom/github/javaparser/StreamProvider;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method public static provider(Ljava/lang/String;)Lcom/github/javaparser/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 11
    new-instance v0, Lcom/github/javaparser/StringProvider;

    invoke-static {p0}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/github/javaparser/StringProvider;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static provider(Ljava/nio/file/Path;)Lcom/github/javaparser/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-static {p0}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/Path;

    sget-object v0, Lcom/github/javaparser/Providers;->UTF8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcom/github/javaparser/Providers;->provider(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lcom/github/javaparser/Provider;

    move-result-object p0

    return-object p0
.end method

.method public static provider(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lcom/github/javaparser/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/Path;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/charset/Charset;

    invoke-static {p0, p1}, Lcom/github/javaparser/Providers;->provider(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/github/javaparser/Provider;

    move-result-object p0

    return-object p0
.end method

.method public static resourceProvider(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/github/javaparser/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "classLoader",
            "pathToResource",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0, p2}, Lcom/github/javaparser/Providers;->provider(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/github/javaparser/Provider;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot find "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static resourceProvider(Ljava/lang/String;)Lcom/github/javaparser/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pathToResource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/github/javaparser/Providers;->UTF8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcom/github/javaparser/Providers;->resourceProvider(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/github/javaparser/Provider;

    move-result-object p0

    return-object p0
.end method

.method public static resourceProvider(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/github/javaparser/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pathToResource",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    const-class v0, Lcom/github/javaparser/Provider;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 5
    invoke-static {v0, p0, p1}, Lcom/github/javaparser/Providers;->resourceProvider(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/github/javaparser/Provider;

    move-result-object p0

    return-object p0
.end method
