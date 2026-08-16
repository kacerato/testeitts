.class Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModulePathIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Set<",
        "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
        ">;>;"
    }
.end annotation


# instance fields
.field next:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            ">;"
        }
    .end annotation
.end field

.field pathIndex:I

.field pathIter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->this$1:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lorg/openjdk/tools/javac/file/Locations$SimpleLocationHandler;->searchPath:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->pathIter:Ljava/util/Iterator;

    const/4 p1, 0x0

    iput p1, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->pathIndex:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->next:Ljava/util/Set;

    return-void
.end method

.method private inferModuleName(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    const-string v2, "module-info.class"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p1, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/javax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/openjdk/tools/javac/util/Pair;

    invoke-direct {v1, v0, p1}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    return-object v3

    :cond_1
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, ".jar"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->this$1:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    iget-object v1, v1, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {v1}, Lorg/openjdk/tools/javac/file/Locations;->access$400(Lorg/openjdk/tools/javac/file/Locations;)Lorg/openjdk/tools/javac/file/FSInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/file/FSInfo;->exists(Ljava/nio/file/Path;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->this$1:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    iget-object v1, v1, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {v1}, Lorg/openjdk/tools/javac/file/Locations;->access$400(Lorg/openjdk/tools/javac/file/Locations;)Lorg/openjdk/tools/javac/file/FSInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/file/FSInfo;->getJarFSProvider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->this$1:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    iget-object v0, v0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/Locations;->access$200(Lorg/openjdk/tools/javac/file/Locations;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    invoke-static {p1}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->NoZipfsForArchive(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    return-object v3

    :cond_2
    :try_start_0
    iget-object v4, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->this$1:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    iget-object v4, v4, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {v4}, Lorg/openjdk/tools/javac/file/Locations;->access$1100(Lorg/openjdk/tools/javac/file/Locations;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Ljava/nio/file/spi/FileSystemProvider;->newFileSystem(Ljava/nio/file/Path;Ljava/util/Map;)Ljava/nio/file/FileSystem;

    move-result-object v1
    :try_end_0
    .catch Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-array v4, v0, [Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    new-array v4, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v2}, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->readModuleName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/openjdk/tools/javac/util/Pair;

    invoke-direct {v2, v0, p1}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/nio/file/FileSystem;->close()V
    :try_end_2
    .catch Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_3
    :try_start_3
    const-string v2, "META-INF/MANIFEST.MF"

    new-array v4, v0, [Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    new-array v4, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-eqz v4, :cond_9

    new-array v4, v0, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v4}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v4, Ljava/util/jar/Manifest;

    invoke-direct {v4, v2}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v4

    if-eqz v4, :cond_7

    new-instance v5, Ljava/util/jar/Attributes$Name;

    const-string v6, "Automatic-Module-Name"

    invoke-direct {v5, v6}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->this$1:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    invoke-static {v0, v4}, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->access$1200(Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lorg/openjdk/tools/javac/util/Pair;

    invoke-direct {v0, v4, p1}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    :try_start_6
    invoke-virtual {v1}, Ljava/nio/file/FileSystem;->close()V
    :try_end_6
    .catch Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_0

    :cond_5
    :try_start_7
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->this$1:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    iget-object v0, v0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/Locations;->access$200(Lorg/openjdk/tools/javac/file/Locations;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    invoke-static {p1}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->LocnCantGetModuleNameForJar(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_6

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_6
    :try_start_9
    invoke-virtual {v1}, Ljava/nio/file/FileSystem;->close()V
    :try_end_9
    .catch Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    return-object v3

    :cond_7
    if-eqz v2, :cond_9

    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    :goto_0
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception v4

    if-eqz v2, :cond_8

    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    :try_start_d
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_1
    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_9
    :goto_2
    :try_start_e
    invoke-virtual {v1}, Ljava/nio/file/FileSystem;->close()V
    :try_end_e
    .catch Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-(\\d+(\\.|$))"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_a
    const-string v0, "[^A-Za-z0-9]"

    const-string v2, "."

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(\\.)(\\1)+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "^\\."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\.$"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    new-instance v1, Lorg/openjdk/tools/javac/util/Pair;

    invoke-direct {v1, v0, p1}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_b
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->this$1:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    iget-object v0, v0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/Locations;->access$200(Lorg/openjdk/tools/javac/file/Locations;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    invoke-static {p1}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->LocnCantGetModuleNameForJar(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    return-object v3

    :goto_3
    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :catchall_4
    move-exception v2

    if-eqz v1, :cond_c

    :try_start_10
    invoke-virtual {v1}, Ljava/nio/file/FileSystem;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v1

    :try_start_11
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_4
    throw v2
    :try_end_11
    .catch Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0

    :catch_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->this$1:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    iget-object v0, v0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/Locations;->access$200(Lorg/openjdk/tools/javac/file/Locations;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    invoke-static {p1}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->LocnCantReadFile(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    return-object v3

    :catch_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->this$1:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    iget-object v0, v0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/Locations;->access$200(Lorg/openjdk/tools/javac/file/Locations;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    invoke-static {p1}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->LocnBadModuleInfo(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    return-object v3

    :cond_d
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".jmod"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    :try_start_12
    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$JmodFile;->checkMagic(Ljava/nio/file/Path;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->this$1:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    iget-object v1, v1, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    iget-object v1, v1, Lorg/openjdk/tools/javac/file/Locations;->fileSystems:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/FileSystem;

    if-nez v1, :cond_10

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->this$1:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    iget-object v1, v1, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {v1}, Lorg/openjdk/tools/javac/file/Locations;->access$400(Lorg/openjdk/tools/javac/file/Locations;)Lorg/openjdk/tools/javac/file/FSInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/file/FSInfo;->getJarFSProvider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    if-nez v1, :cond_e

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->this$1:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    iget-object v0, v0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/Locations;->access$200(Lorg/openjdk/tools/javac/file/Locations;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    invoke-static {p1}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->LocnCantReadFile(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    return-object v3

    :cond_e
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/nio/file/spi/FileSystemProvider;->newFileSystem(Ljava/nio/file/Path;Ljava/util/Map;)Ljava/nio/file/FileSystem;

    move-result-object v1
    :try_end_12
    .catch Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2

    :try_start_13
    const-string v2, "classes/module-info.class"

    new-array v4, v0, [Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->readModuleName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "classes"

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    iget-object v4, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->this$1:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    iget-object v4, v4, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    iget-object v4, v4, Lorg/openjdk/tools/javac/file/Locations;->fileSystems:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->this$1:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    iget-object v4, v4, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    iget-object v4, v4, Lorg/openjdk/tools/javac/file/Locations;->closeables:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :try_start_14
    new-instance v1, Lorg/openjdk/tools/javac/util/Pair;

    invoke-direct {v1, v2, v0}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    return-object v1

    :catchall_6
    move-exception v0

    move-object v1, v3

    goto :goto_5

    :catchall_7
    move-exception v0

    :goto_5
    if-eqz v1, :cond_f

    :try_start_15
    invoke-virtual {v1}, Ljava/nio/file/FileSystem;->close()V

    :cond_f
    throw v0
    :try_end_15
    .catch Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile; {:try_start_15 .. :try_end_15} :catch_3
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_2

    :catch_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->this$1:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    iget-object v0, v0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/Locations;->access$200(Lorg/openjdk/tools/javac/file/Locations;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    invoke-static {p1}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->LocnCantReadFile(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    return-object v3

    :catch_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->this$1:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    iget-object v0, v0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/Locations;->access$200(Lorg/openjdk/tools/javac/file/Locations;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    invoke-static {p1}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->LocnBadModuleInfo(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :cond_10
    iget-object p1, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->this$1:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    iget-object p1, p1, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {p1}, Lorg/openjdk/tools/javac/file/Locations;->access$100(Lorg/openjdk/tools/javac/file/Locations;)Z

    return-object v3
.end method

.method private readModuleName(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->this$1:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    iget-object v0, v0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/Locations;->access$1300(Lorg/openjdk/tools/javac/file/Locations;)Lorg/openjdk/tools/javac/jvm/ModuleNameReader;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->this$1:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    iget-object v0, v0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    new-instance v1, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;-><init>()V

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/file/Locations;->access$1302(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/tools/javac/jvm/ModuleNameReader;)Lorg/openjdk/tools/javac/jvm/ModuleNameReader;

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->this$1:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    iget-object v0, v0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/Locations;->access$1300(Lorg/openjdk/tools/javac/file/Locations;)Lorg/openjdk/tools/javac/jvm/ModuleNameReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->readModuleName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private scanDirectory(Ljava/nio/file/Path;)Ljava/util/Set;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;

    const-string v5, "module-info.class"

    invoke-interface {v4, v5}, Ljava/nio/file/Path;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto/16 :goto_3

    :cond_1
    const/4 v4, 0x0

    :goto_1
    :try_start_2
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    const-string v2, "]"

    const-string v3, ":"

    const-string v5, "["

    if-eqz v4, :cond_2

    :try_start_3
    invoke-direct {v1, v4}, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->readModuleName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->this$1:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    iget-object v4, v4, Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;->location:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    invoke-interface {v4}, Lorg/openjdk/javax/tools/JavaFileManager$Location;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->pathIndex:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;

    iget-object v8, v1, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->this$1:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    iget-object v7, v8, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/tools/javac/file/Locations$LocationHandler;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Z)V

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0
    :try_end_3
    .catch Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v0

    :catch_0
    iget-object v0, v1, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->this$1:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    iget-object v0, v0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/Locations;->access$200(Lorg/openjdk/tools/javac/file/Locations;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->LocnCantReadFile(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :catch_1
    iget-object v0, v1, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->this$1:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    iget-object v0, v0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/Locations;->access$200(Lorg/openjdk/tools/javac/file/Locations;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->LocnBadModuleInfo(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v6, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/file/Path;

    invoke-direct {v1, v7}, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->inferModuleName(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/util/Pair;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    iget-object v8, v7, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    move-object v13, v8

    check-cast v13, Ljava/lang/String;

    iget-object v7, v7, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v7, Ljava/nio/file/Path;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->this$1:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    iget-object v9, v9, Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;->location:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    invoke-interface {v9}, Lorg/openjdk/javax/tools/JavaFileManager$Location;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->pathIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v16, v6, 0x1

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v6, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;

    iget-object v11, v1, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->this$1:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    iget-object v10, v11, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    move-object v9, v6

    invoke-direct/range {v9 .. v15}, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/tools/javac/file/Locations$LocationHandler;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Z)V

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v6, v16

    goto :goto_2

    :cond_4
    return-object v4

    :goto_3
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    if-eqz v2, :cond_5

    :try_start_5
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_6
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    throw v4
    :try_end_6
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    iget-object v0, v1, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->this$1:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    iget-object v0, v0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/Locations;->access$200(Lorg/openjdk/tools/javac/file/Locations;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->LocnCantReadDirectory(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private scanFile(Ljava/nio/file/Path;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->inferModuleName(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/util/Pair;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast p1, Ljava/nio/file/Path;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->this$1:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    iget-object v1, v1, Lorg/openjdk/tools/javac/file/Locations$BasicLocationHandler;->location:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    invoke-interface {v1}, Lorg/openjdk/javax/tools/JavaFileManager$Location;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->pathIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;

    iget-object v3, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->this$1:Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;

    iget-object v2, v3, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler;->this$0:Lorg/openjdk/tools/javac/file/Locations;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/openjdk/tools/javac/file/Locations$ModuleLocationHandler;-><init>(Lorg/openjdk/tools/javac/file/Locations;Lorg/openjdk/tools/javac/file/Locations$LocationHandler;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Z)V

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->next:Ljava/util/Set;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->next:Ljava/util/Set;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->pathIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->pathIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->scanDirectory(Ljava/nio/file/Path;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->next:Ljava/util/Set;

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->scanFile(Ljava/nio/file/Path;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->next:Ljava/util/Set;

    :goto_1
    iget v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->pathIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->pathIndex:I

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->next()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->hasNext()Z

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->next:Ljava/util/Set;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lorg/openjdk/tools/javac/file/Locations$ModulePathLocationHandler$ModulePathIterator;->next:Ljava/util/Set;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
