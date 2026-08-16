.class public Lcom/android/tools/r8/compatproguard/CompatProguard;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/compatproguard/CompatProguard$a;
    }
.end annotation


# direct methods
.method private static a()V
    .locals 4

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/android/tools/r8/Version;->getVersionString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CompatProguard "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static a([Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    .line 2
    invoke-static {p0}, Lcom/android/tools/r8/compatproguard/CompatProguard$a;->a([Ljava/lang/String;)Lcom/android/tools/r8/compatproguard/CompatProguard$a;

    move-result-object p0

    .line 3
    iget-boolean v1, p0, Lcom/android/tools/r8/compatproguard/CompatProguard$a;->l:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/tools/r8/compatproguard/CompatProguard$a;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    new-instance v1, Lcom/android/tools/r8/CompatProguardCommandBuilder;

    iget-boolean v2, p0, Lcom/android/tools/r8/compatproguard/CompatProguard$a;->d:Z

    invoke-direct {v1, v2}, Lcom/android/tools/r8/CompatProguardCommandBuilder;-><init>(Z)V

    .line 5
    iget-object v2, p0, Lcom/android/tools/r8/compatproguard/CompatProguard$a;->a:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/String;

    .line 6
    invoke-static {v2, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    sget-object v3, Lcom/android/tools/r8/OutputMode;->DexIndexed:Lcom/android/tools/r8/OutputMode;

    iget-boolean v4, p0, Lcom/android/tools/r8/compatproguard/CompatProguard$a;->e:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/tools/r8/R8Command$Builder;->setOutput(Ljava/nio/file/Path;Lcom/android/tools/r8/OutputMode;Z)Lcom/android/tools/r8/R8Command$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/compatproguard/CompatProguard$a;->k:Ljava/util/List;

    sget-object v4, Lcom/android/tools/r8/origin/a;->f:Lcom/android/tools/r8/origin/a;

    .line 7
    invoke-virtual {v2, v3, v4}, Lcom/android/tools/r8/R8Command$Builder;->addProguardConfiguration(Ljava/util/List;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/R8Command$Builder;

    move-result-object v2

    iget v3, p0, Lcom/android/tools/r8/compatproguard/CompatProguard$a;->c:I

    .line 8
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setMinApiLevel(I)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/R8Command$Builder;

    iget-object v3, p0, Lcom/android/tools/r8/compatproguard/CompatProguard$a;->h:Lcom/android/tools/r8/MapIdProvider;

    .line 9
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setMapIdProvider(Lcom/android/tools/r8/MapIdProvider;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/R8Command$Builder;

    iget-object v3, p0, Lcom/android/tools/r8/compatproguard/CompatProguard$a;->i:Lcom/android/tools/r8/SourceFileProvider;

    .line 10
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setSourceFileProvider(Lcom/android/tools/r8/SourceFileProvider;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    .line 11
    iget-object v2, p0, Lcom/android/tools/r8/compatproguard/CompatProguard$a;->b:Lcom/android/tools/r8/CompilationMode;

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->setMode(Lcom/android/tools/r8/CompilationMode;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    .line 13
    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/compatproguard/CompatProguard$a;->g:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 14
    new-array v3, v0, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/nio/file/Path;

    aput-object v2, v3, v0

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/BaseCommand$Builder;->addMainDexListFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/BaseCommand$Builder;

    .line 15
    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/compatproguard/CompatProguard$a;->j:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 16
    iget-object v2, p0, Lcom/android/tools/r8/compatproguard/CompatProguard$a;->a:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/android/tools/r8/internal/Ww;->a(Ljava/nio/file/Path;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 18
    const-string v2, "classes.dex"

    invoke-interface {v0, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 19
    :cond_3
    new-instance v2, Lcom/android/tools/r8/internal/Oj;

    iget-object p0, p0, Lcom/android/tools/r8/compatproguard/CompatProguard$a;->j:Ljava/lang/String;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/internal/Oj;-><init>(Ljava/lang/String;Ljava/nio/file/Path;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/R8Command$Builder;->setInputDependencyGraphConsumer(Lcom/android/tools/r8/InputDependencyGraphConsumer;)Lcom/android/tools/r8/R8Command$Builder;

    .line 20
    :cond_4
    invoke-virtual {v1}, Lcom/android/tools/r8/BaseCommand$Builder;->build()Lcom/android/tools/r8/BaseCommand;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/R8Command;

    invoke-static {p0}, Lcom/android/tools/r8/R8;->run(Lcom/android/tools/r8/R8Command;)V

    return-void

    .line 21
    :cond_5
    :goto_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 22
    invoke-static {}, Lcom/android/tools/r8/compatproguard/CompatProguard;->a()V

    .line 23
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 24
    const-string v0, "compatproguard [options] --output <dir> <proguard-config>*"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 26
    const-string v0, "Where options are:"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 27
    const-string v0, "-h/--help            : print this help message"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 28
    const-string v0, "--release            : compile without debugging information (default)."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 29
    const-string v0, "--debug              : compile with debugging information."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    const-string v0, "--min-api n          : specify the targeted min android api level"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    const-string v0, "--main-dex-list list : specify main dex list for multi-dexing"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 32
    const-string v0, "--minimal-main-dex   : ignored (provided for compatibility)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 33
    const-string v0, "--multi-dex          : ignored (provided for compatibility)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 34
    const-string v0, "--no-locals          : ignored (provided for compatibility)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 35
    const-string v0, "--core-library       : ignored (provided for compatibility)"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 36
    const-string v0, "--force-proguard-compatibility : Proguard compatibility mode"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 37
    const-string v0, "--no-data-resources  : ignore all data resources"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b([Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/compatproguard/CompatProguard;->a([Ljava/lang/String;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lt/a;

    invoke-direct {v0, p0}, Lt/a;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/mv;)V

    return-void
.end method
