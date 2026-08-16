.class public Lorg/eclipse/jdt/core/index/JavaIndexerApplication;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/equinox/app/IApplication;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/core/index/JavaIndexerApplication$Messages;
    }
.end annotation


# static fields
.field private static final ARG_HELP:Ljava/lang/String; = "-help"

.field private static final ARG_OUTPUT:Ljava/lang/String; = "-output"

.field private static final ARG_VERBOSE:Ljava/lang/String; = "-verbose"

.field private static final PDE_LAUNCH:Ljava/lang/String; = "-pdelaunch"


# instance fields
.field private indexFile:Ljava/lang/String;

.field private jarToIndex:Ljava/lang/String;

.field private verbose:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/core/index/JavaIndexerApplication;->verbose:Z

    return-void
.end method

.method private displayError(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    invoke-direct {p0}, Lorg/eclipse/jdt/core/index/JavaIndexerApplication;->displayHelp()V

    return-void
.end method

.method private displayHelp()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v1, Lorg/eclipse/jdt/core/index/JavaIndexerApplication$Messages;->CommandLineUsage:Ljava/lang/String;

    invoke-static {v1}, Lorg/eclipse/jdt/core/index/JavaIndexerApplication$Messages;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private processCommandLine([Ljava/lang/String;)Z
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_8

    array-length v4, p1

    move v0, v2

    :goto_1
    const/4 v1, 0x1

    if-lt v0, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v3, v0, 0x1

    aget-object v5, p1, v0

    const-string v6, "-pdelaunch"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    const-string v6, "-help"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/core/index/JavaIndexerApplication;->displayHelp()V

    return v2

    :cond_2
    const-string v6, "-verbose"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iput-boolean v1, p0, Lorg/eclipse/jdt/core/index/JavaIndexerApplication;->verbose:Z

    goto :goto_2

    :cond_3
    const-string v1, "-output"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/eclipse/jdt/core/index/JavaIndexerApplication;->indexFile:Ljava/lang/String;

    if-eqz v1, :cond_4

    sget-object p1, Lorg/eclipse/jdt/core/index/JavaIndexerApplication$Messages;->CommandLineOnlyOneOutputError:Ljava/lang/String;

    invoke-static {p1}, Lorg/eclipse/jdt/core/index/JavaIndexerApplication$Messages;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/index/JavaIndexerApplication;->displayError(Ljava/lang/String;)V

    return v2

    :cond_4
    if-ne v3, v4, :cond_5

    sget-object p1, Lorg/eclipse/jdt/core/index/JavaIndexerApplication$Messages;->CommandLineOutputTakesArgs:Ljava/lang/String;

    invoke-static {p1}, Lorg/eclipse/jdt/core/index/JavaIndexerApplication$Messages;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/index/JavaIndexerApplication;->displayError(Ljava/lang/String;)V

    return v2

    :cond_5
    add-int/lit8 v0, v0, 0x2

    aget-object v1, p1, v3

    iput-object v1, p0, Lorg/eclipse/jdt/core/index/JavaIndexerApplication;->indexFile:Ljava/lang/String;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/eclipse/jdt/core/index/JavaIndexerApplication;->jarToIndex:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object p1, Lorg/eclipse/jdt/core/index/JavaIndexerApplication$Messages;->CommandLineOnlyOneJarError:Ljava/lang/String;

    invoke-static {p1}, Lorg/eclipse/jdt/core/index/JavaIndexerApplication$Messages;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/index/JavaIndexerApplication;->displayError(Ljava/lang/String;)V

    return v2

    :cond_7
    iput-object v5, p0, Lorg/eclipse/jdt/core/index/JavaIndexerApplication;->jarToIndex:Ljava/lang/String;

    :goto_2
    move v0, v3

    goto :goto_1

    :cond_8
    aget-object v4, p1, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public start(Lorg/eclipse/equinox/app/IApplicationContext;)Ljava/lang/Object;
    .locals 3
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

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/index/JavaIndexerApplication;->processCommandLine([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/eclipse/jdt/core/index/JavaIndexerApplication;->jarToIndex:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/core/index/JavaIndexerApplication;->indexFile:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lorg/eclipse/jdt/core/index/JavaIndexerApplication;->jarToIndex:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lorg/eclipse/jdt/core/index/JavaIndexerApplication;->verbose:Z

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v0, Lorg/eclipse/jdt/core/index/JavaIndexerApplication$Messages;->CommandLineProcessing:Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/core/index/JavaIndexerApplication;->indexFile:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jdt/core/index/JavaIndexerApplication;->jarToIndex:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/core/index/JavaIndexerApplication$Messages;->bind(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jdt/core/index/JavaIndexerApplication;->jarToIndex:Ljava/lang/String;

    iget-object v0, p0, Lorg/eclipse/jdt/core/index/JavaIndexerApplication;->indexFile:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/index/JavaIndexer;->generateIndexForJar(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v1, Lorg/eclipse/jdt/core/index/JavaIndexerApplication$Messages;->CaughtException:Ljava/lang/String;

    const-string v2, "IOException"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lorg/eclipse/jdt/core/index/JavaIndexerApplication$Messages;->bind(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v0, Lorg/eclipse/jdt/core/index/JavaIndexerApplication$Messages;->CommandLineJarFileNotExist:Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/core/index/JavaIndexerApplication;->jarToIndex:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/index/JavaIndexerApplication$Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v0, Lorg/eclipse/jdt/core/index/JavaIndexerApplication$Messages;->CommandLineJarNotSpecified:Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/jdt/core/index/JavaIndexerApplication$Messages;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/eclipse/jdt/core/index/JavaIndexerApplication;->indexFile:Ljava/lang/String;

    if-nez p1, :cond_4

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v0, Lorg/eclipse/jdt/core/index/JavaIndexerApplication$Messages;->CommandLineIndexFileNotSpecified:Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/jdt/core/index/JavaIndexerApplication$Messages;->bind(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    :goto_0
    sget-object p1, Lorg/eclipse/equinox/app/IApplication;->EXIT_OK:Ljava/lang/Integer;

    return-object p1
.end method

.method public stop()V
    .locals 0

    return-void
.end method
