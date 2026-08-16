.class public Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/equinox/app/IApplication;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;
    }
.end annotation


# static fields
.field private static final ARG_CONFIG:Ljava/lang/String; = "-config"

.field private static final ARG_HELP:Ljava/lang/String; = "-help"

.field private static final ARG_QUIET:Ljava/lang/String; = "-quiet"

.field private static final ARG_VERBOSE:Ljava/lang/String; = "-verbose"

.field private static final PDE_LAUNCH:Ljava/lang/String; = "-pdelaunch"


# instance fields
.field private configName:Ljava/lang/String;

.field private options:Ljava/util/Map;

.field private quiet:Z

.field private verbose:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication;->options:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication;->quiet:Z

    iput-boolean v0, p0, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication;->verbose:Z

    return-void
.end method

.method private displayHelp()V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v1, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->CommandLineUsage:Ljava/lang/String;

    invoke-static {v1}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private displayHelp(Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 4
    invoke-direct {p0}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication;->displayHelp()V

    return-void
.end method

.method private formatDirTree(Ljava/io/File;Lorg/eclipse/jdt/core/formatter/CodeFormatter;)V
    .locals 3

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v1, p2}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication;->formatDirTree(Ljava/io/File;Lorg/eclipse/jdt/core/formatter/CodeFormatter;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/util/Util;->isJavaLikeFileName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v1, p2}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication;->formatFile(Ljava/io/File;Lorg/eclipse/jdt/core/formatter/CodeFormatter;)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private formatFile(Ljava/io/File;Lorg/eclipse/jdt/core/formatter/CodeFormatter;)V
    .locals 8

    new-instance v0, Lorg/eclipse/jface/text/Document;

    invoke-direct {v0}, Lorg/eclipse/jface/text/Document;-><init>()V

    :try_start_0
    iget-boolean v1, p0, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication;->verbose:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v2, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->CommandLineFormatting:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getFileCharContent(Ljava/io/File;Ljava/lang/String;)[C

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v0, v3}, Lorg/eclipse/jface/text/IDocument;->set(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "module-info.java"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x80

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    or-int/lit16 v2, v1, 0x1000

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p2

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/jdt/core/formatter/CodeFormatter;->format(ILjava/lang/String;IIILjava/lang/String;)Lorg/eclipse/text/edits/TextEdit;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2, v0}, Lorg/eclipse/text/edits/TextEdit;->apply(Lorg/eclipse/jface/text/IDocument;)Lorg/eclipse/text/edits/UndoEdit;

    new-instance p2, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {p2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/jface/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v0}, Lorg/eclipse/jface/text/IDocument;->get()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/eclipse/jface/text/BadLocationException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {p2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/eclipse/jface/text/BadLocationException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_2
    :try_start_4
    throw p1

    :cond_2
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sget-object v0, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->FormatProblem:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/eclipse/jface/text/BadLocationException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :goto_2
    sget-object p2, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->CaughtException:Ljava/lang/String;

    const-string v0, "BadLocationException"

    invoke-virtual {p1}, Lorg/eclipse/jface/text/BadLocationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->bind(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sget-object v0, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->ExceptionSkip:Ljava/lang/String;

    invoke-static {v0, p2}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    sget-object p2, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->CaughtException:Ljava/lang/String;

    const-string v0, "IOException"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->bind(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sget-object v0, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->ExceptionSkip:Ljava/lang/String;

    invoke-static {v0, p2}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :catch_3
    :goto_4
    return-void
.end method

.method private processCommandLine([Ljava/lang/String;)[Ljava/io/File;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_11

    array-length v0, p1

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/io/File;

    move v4, v2

    move v5, v4

    move v6, v5

    :goto_1
    const-string v7, "-verbose"

    const-string v8, "-quiet"

    const/4 v9, 0x0

    if-lt v4, v0, :cond_5

    if-eq v5, v1, :cond_4

    iget-object p1, p0, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication;->options:Ljava/util/Map;

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean p1, p0, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication;->quiet:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication;->verbose:Z

    if-eqz p1, :cond_1

    sget-object p1, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->CommandLineErrorQuietVerbose:Ljava/lang/String;

    filled-new-array {v8, v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication;->displayHelp(Ljava/lang/String;)V

    return-object v9

    :cond_1
    if-nez v6, :cond_2

    sget-object p1, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->CommandLineErrorFileDir:Ljava/lang/String;

    invoke-static {p1}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication;->displayHelp(Ljava/lang/String;)V

    return-object v9

    :cond_2
    array-length p1, v3

    if-eq p1, v6, :cond_3

    new-array p1, v6, [Ljava/io/File;

    invoke-static {v3, v2, p1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, p1

    :cond_3
    return-object v3

    :cond_4
    :goto_2
    sget-object p1, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->CommandLineErrorNoConfigFile:Ljava/lang/String;

    invoke-static {p1}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication;->displayHelp(Ljava/lang/String;)V

    return-object v9

    :cond_5
    add-int/lit8 v10, v4, 0x1

    aget-object v4, p1, v4

    if-eqz v5, :cond_8

    if-eq v5, v1, :cond_6

    goto :goto_3

    :cond_6
    iput-object v4, p0, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication;->configName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication;->readConfig(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication;->options:Ljava/util/Map;

    if-nez v5, :cond_7

    sget-object p1, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->CommandLineErrorConfig:Ljava/lang/String;

    invoke-static {p1, v4}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication;->displayHelp(Ljava/lang/String;)V

    return-object v9

    :cond_7
    move v5, v2

    :goto_3
    move v4, v10

    goto :goto_1

    :cond_8
    const-string v11, "-pdelaunch"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_3

    :cond_9
    const-string v11, "-help"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-direct {p0}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication;->displayHelp()V

    return-object v9

    :cond_a
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    iput-boolean v1, p0, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication;->verbose:Z

    goto :goto_3

    :cond_b
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    iput-boolean v1, p0, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication;->quiet:Z

    goto :goto_3

    :cond_c
    const-string v7, "-config"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    move v5, v1

    goto :goto_3

    :cond_d
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_f

    array-length v4, v3

    if-ne v4, v6, :cond_e

    mul-int/lit8 v4, v6, 0x2

    new-array v4, v4, [Ljava/io/File;

    invoke-static {v3, v2, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    :cond_e
    add-int/lit8 v4, v6, 0x1

    aput-object v7, v3, v6

    move v6, v4

    goto :goto_3

    :cond_f
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    :goto_4
    invoke-virtual {v7}, Ljava/io/File;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->CommandLineErrorFile:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_10
    sget-object v0, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->CommandLineErrorFileTryFullPath:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_5
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication;->displayHelp(Ljava/lang/String;)V

    return-object v9

    :cond_11
    aget-object v4, p1, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method private readConfig(Ljava/lang/String;)Ljava/util/Properties;
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    goto :goto_3

    :catch_2
    move-exception v2

    move-object v1, p1

    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->ConfigFileNotFoundErrorTryFullPath:Ljava/lang/String;

    const-string v4, "user.dir"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->ConfigFileReadingError:Ljava/lang/String;

    invoke-static {v0, v3}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v2, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_1
    return-object p1

    :goto_3
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_2
    throw p1
.end method


# virtual methods
.method public start(Lorg/eclipse/equinox/app/IApplicationContext;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/equinox/app/IApplicationContext;->getArguments()Ljava/util/Map;

    move-result-object p1

    const-string v0, "application.args"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication;->processCommandLine([Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lorg/eclipse/equinox/app/IApplication;->EXIT_OK:Ljava/lang/Integer;

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication;->quiet:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication;->configName:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v2, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->CommandLineConfigFile:Ljava/lang/String;

    invoke-static {v2, v0}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v1, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->CommandLineStart:Ljava/lang/String;

    invoke-static {v1}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication;->options:Ljava/util/Map;

    sget v1, Lorg/eclipse/jdt/core/ToolFactory;->M_FORMAT_EXISTING:I

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/ToolFactory;->createCodeFormatter(Ljava/util/Map;I)Lorg/eclipse/jdt/core/formatter/CodeFormatter;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_4

    iget-boolean p1, p0, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication;->quiet:Z

    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v0, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->CommandLineDone:Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication$Messages;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    sget-object p1, Lorg/eclipse/equinox/app/IApplication;->EXIT_OK:Ljava/lang/Integer;

    return-object p1

    :cond_4
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, v3, v0}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication;->formatDirTree(Ljava/io/File;Lorg/eclipse/jdt/core/formatter/CodeFormatter;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jdt/internal/core/util/Util;->isJavaLikeFileName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0, v3, v0}, Lorg/eclipse/jdt/core/formatter/CodeFormatterApplication;->formatFile(Ljava/io/File;Lorg/eclipse/jdt/core/formatter/CodeFormatter;)V

    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 0

    return-void
.end method
