.class public Lcom/android/dx/command/dexer/Main$Arguments;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/command/dexer/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Arguments"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;
    }
.end annotation


# static fields
.field private static final INCREMENTAL_OPTION:Ljava/lang/String; = "--incremental"

.field private static final INPUT_LIST_OPTION:Ljava/lang/String; = "--input-list"

.field private static final MAIN_DEX_LIST_OPTION:Ljava/lang/String; = "--main-dex-list"

.field private static final MINIMAL_MAIN_DEX_OPTION:Ljava/lang/String; = "--minimal-main-dex"

.field private static final MULTI_DEX_OPTION:Ljava/lang/String; = "--multi-dex"

.field private static final NUM_THREADS_OPTION:Ljava/lang/String; = "--num-threads"


# instance fields
.field public cfOptions:Lcom/android/dx/dex/cf/CfOptions;

.field public final context:Lcom/android/dx/command/dexer/DxContext;

.field public coreLibrary:Z

.field public debug:Z

.field public dexOptions:Lcom/android/dx/dex/DexOptions;

.field public dontOptimizeListFile:Ljava/lang/String;

.field public dumpWidth:I

.field public emptyOk:Z

.field public fileNames:[Ljava/lang/String;

.field public forceJumbo:Z

.field public humanOutName:Ljava/lang/String;

.field public incremental:Z

.field private inputList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public jarOutput:Z

.field public keepClassesInJar:Z

.field public localInfo:Z

.field public mainDexListFile:Ljava/lang/String;

.field public maxNumberOfIdxPerDex:I

.field public methodToDump:Ljava/lang/String;

.field public minSdkVersion:I

.field public minimalMainDex:Z

.field public multiDex:Z

.field public numThreads:I

.field public optimize:Z

.field public optimizeListFile:Ljava/lang/String;

.field public outName:Ljava/lang/String;

.field private outputIsDirectDex:Z

.field private outputIsDirectory:Z

.field public positionInfo:I

.field public statistics:Z

.field public strictNameCheck:Z

.field public verbose:Z

.field public verboseDump:Z

.field public warnings:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/android/dx/command/dexer/DxContext;

    invoke-direct {v0}, Lcom/android/dx/command/dexer/DxContext;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/dx/command/dexer/Main$Arguments;-><init>(Lcom/android/dx/command/dexer/DxContext;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/dx/command/dexer/DxContext;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->debug:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->warnings:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->verbose:Z

    .line 5
    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->verboseDump:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->coreLibrary:Z

    const/4 v2, 0x0

    .line 7
    iput-object v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->methodToDump:Ljava/lang/String;

    .line 8
    iput v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->dumpWidth:I

    .line 9
    iput-object v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    .line 10
    iput-object v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->humanOutName:Ljava/lang/String;

    .line 11
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->strictNameCheck:Z

    .line 12
    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->emptyOk:Z

    .line 13
    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->jarOutput:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->keepClassesInJar:Z

    const/16 v3, 0xd

    .line 15
    iput v3, p0, Lcom/android/dx/command/dexer/Main$Arguments;->minSdkVersion:I

    const/4 v3, 0x2

    .line 16
    iput v3, p0, Lcom/android/dx/command/dexer/Main$Arguments;->positionInfo:I

    .line 17
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->localInfo:Z

    .line 18
    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->incremental:Z

    .line 19
    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->forceJumbo:Z

    .line 20
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->optimize:Z

    .line 21
    iput-object v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->optimizeListFile:Ljava/lang/String;

    .line 22
    iput-object v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->dontOptimizeListFile:Ljava/lang/String;

    .line 23
    iput v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->numThreads:I

    .line 24
    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    .line 25
    iput-object v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->mainDexListFile:Ljava/lang/String;

    .line 26
    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->minimalMainDex:Z

    const/high16 v1, 0x10000

    .line 27
    iput v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->maxNumberOfIdxPerDex:I

    .line 28
    iput-object v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->inputList:Ljava/util/List;

    .line 29
    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outputIsDirectory:Z

    .line 30
    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outputIsDirectDex:Z

    .line 31
    iput-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/dx/command/dexer/Main$Arguments;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/dx/command/dexer/Main$Arguments;->parse([Ljava/lang/String;)V

    return-void
.end method

.method private parse([Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;

    invoke-direct {v0, p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;-><init>([Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/dx/command/dexer/Main$Arguments;->parseFlags(Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;)V

    invoke-virtual {v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getRemaining()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->fileNames:[Ljava/lang/String;

    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->inputList:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->inputList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->fileNames:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->inputList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->fileNames:[Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->fileNames:[Ljava/lang/String;

    array-length p1, p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->emptyOk:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v0, "no input files specified"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p1, Lcom/android/dx/command/UsageException;

    invoke-direct {p1}, Lcom/android/dx/command/UsageException;-><init>()V

    throw p1

    :cond_2
    iget-boolean p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->emptyOk:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    const-string v0, "ignoring input files"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->humanOutName:Ljava/lang/String;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->methodToDump:Ljava/lang/String;

    if-eqz p1, :cond_4

    const-string p1, "-"

    iput-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->humanOutName:Ljava/lang/String;

    :cond_4
    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->mainDexListFile:Ljava/lang/String;

    if-eqz p1, :cond_6

    iget-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v0, "--main-dex-list is only supported in combination with --multi-dex"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p1, Lcom/android/dx/command/UsageException;

    invoke-direct {p1}, Lcom/android/dx/command/UsageException;-><init>()V

    throw p1

    :cond_6
    :goto_1
    iget-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->minimalMainDex:Z

    if-eqz v0, :cond_8

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v0, "--minimal-main-dex is only supported in combination with --multi-dex and --main-dex-list"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p1, Lcom/android/dx/command/UsageException;

    invoke-direct {p1}, Lcom/android/dx/command/UsageException;-><init>()V

    throw p1

    :cond_8
    :goto_2
    iget-boolean p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    if-eqz p1, :cond_a

    iget-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->incremental:Z

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v0, "--incremental is not supported with --multi-dex"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p1, Lcom/android/dx/command/UsageException;

    invoke-direct {p1}, Lcom/android/dx/command/UsageException;-><init>()V

    throw p1

    :cond_a
    :goto_3
    if-eqz p1, :cond_c

    iget-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outputIsDirectDex:Z

    if-nez v0, :cond_b

    goto :goto_4

    :cond_b
    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported output \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--multi-dex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " supports only archive or directory output"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p1, Lcom/android/dx/command/UsageException;

    invoke-direct {p1}, Lcom/android/dx/command/UsageException;-><init>()V

    throw p1

    :cond_c
    :goto_4
    iget-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outputIsDirectory:Z

    if-eqz v0, :cond_d

    if-nez p1, :cond_d

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    const-string v1, "classes.dex"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    :cond_d
    invoke-virtual {p0}, Lcom/android/dx/command/dexer/Main$Arguments;->makeOptionsObjects()V

    return-void
.end method

.method private parseFlags(Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;)V
    .locals 4

    .line 1
    :goto_0
    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getNext()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2
    const-string v0, "--debug"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->debug:Z

    goto :goto_0

    .line 4
    :cond_0
    const-string v0, "--no-warning"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 5
    iput-boolean v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->warnings:Z

    goto :goto_0

    .line 6
    :cond_1
    const-string v0, "--verbose"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->verbose:Z

    goto :goto_0

    .line 8
    :cond_2
    const-string v0, "--verbose-dump"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->verboseDump:Z

    goto :goto_0

    .line 10
    :cond_3
    const-string v0, "--no-files"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->emptyOk:Z

    goto :goto_0

    .line 12
    :cond_4
    const-string v0, "--no-optimize"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    iput-boolean v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->optimize:Z

    goto :goto_0

    .line 14
    :cond_5
    const-string v0, "--no-strict"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    iput-boolean v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->strictNameCheck:Z

    goto :goto_0

    .line 16
    :cond_6
    const-string v0, "--core-library"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->coreLibrary:Z

    goto :goto_0

    .line 18
    :cond_7
    const-string v0, "--statistics"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 19
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->statistics:Z

    goto :goto_0

    .line 20
    :cond_8
    const-string v0, "--optimize-list="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "--optimize-list and --no-optimize-list are incompatible."

    if-eqz v0, :cond_a

    .line 21
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->dontOptimizeListFile:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 22
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->optimize:Z

    .line 23
    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->optimizeListFile:Ljava/lang/String;

    goto/16 :goto_0

    .line 24
    :cond_9
    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 25
    new-instance p1, Lcom/android/dx/command/UsageException;

    invoke-direct {p1}, Lcom/android/dx/command/UsageException;-><init>()V

    throw p1

    .line 26
    :cond_a
    const-string v0, "--no-optimize-list="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 27
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->dontOptimizeListFile:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 28
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->optimize:Z

    .line 29
    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->dontOptimizeListFile:Ljava/lang/String;

    goto/16 :goto_0

    .line 30
    :cond_b
    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    new-instance p1, Lcom/android/dx/command/UsageException;

    invoke-direct {p1}, Lcom/android/dx/command/UsageException;-><init>()V

    throw p1

    .line 32
    :cond_c
    const-string v0, "--keep-classes"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 33
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->keepClassesInJar:Z

    goto/16 :goto_0

    .line 34
    :cond_d
    const-string v0, "--output="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 35
    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 37
    iput-boolean v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->jarOutput:Z

    .line 38
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outputIsDirectory:Z

    goto/16 :goto_0

    .line 39
    :cond_e
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/dex/util/FileUtils;->hasArchiveSuffix(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 40
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->jarOutput:Z

    goto/16 :goto_0

    .line 41
    :cond_f
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    const-string v3, ".dex"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    const-string v3, "-"

    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_1

    .line 43
    :cond_10
    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown output extension: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    new-instance p1, Lcom/android/dx/command/UsageException;

    invoke-direct {p1}, Lcom/android/dx/command/UsageException;-><init>()V

    throw p1

    .line 45
    :cond_11
    :goto_1
    iput-boolean v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->jarOutput:Z

    .line 46
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outputIsDirectDex:Z

    goto/16 :goto_0

    .line 47
    :cond_12
    const-string v0, "--dump-to="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 48
    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->humanOutName:Ljava/lang/String;

    goto/16 :goto_0

    .line 49
    :cond_13
    const-string v0, "--dump-width="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 50
    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->dumpWidth:I

    goto/16 :goto_0

    .line 51
    :cond_14
    const-string v0, "--dump-method="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 52
    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->methodToDump:Ljava/lang/String;

    .line 53
    iput-boolean v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->jarOutput:Z

    goto/16 :goto_0

    .line 54
    :cond_15
    const-string v0, "--positions="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 55
    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string v2, "none"

    if-ne v0, v2, :cond_16

    .line 57
    iput v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->positionInfo:I

    goto/16 :goto_0

    .line 58
    :cond_16
    const-string v1, "important"

    if-ne v0, v1, :cond_17

    const/4 v0, 0x3

    .line 59
    iput v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->positionInfo:I

    goto/16 :goto_0

    .line 60
    :cond_17
    const-string v1, "lines"

    if-ne v0, v1, :cond_18

    const/4 v0, 0x2

    .line 61
    iput v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->positionInfo:I

    goto/16 :goto_0

    .line 62
    :cond_18
    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown positions option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    new-instance p1, Lcom/android/dx/command/UsageException;

    invoke-direct {p1}, Lcom/android/dx/command/UsageException;-><init>()V

    throw p1

    .line 64
    :cond_19
    const-string v0, "--no-locals"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 65
    iput-boolean v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->localInfo:Z

    goto/16 :goto_0

    .line 66
    :cond_1a
    const-string v0, "--num-threads="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 67
    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->numThreads:I

    goto/16 :goto_0

    .line 68
    :cond_1b
    const-string v0, "--incremental"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 69
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->incremental:Z

    goto/16 :goto_0

    .line 70
    :cond_1c
    const-string v0, "--force-jumbo"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 71
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->forceJumbo:Z

    goto/16 :goto_0

    .line 72
    :cond_1d
    const-string v0, "--multi-dex"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 73
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    goto/16 :goto_0

    .line 74
    :cond_1e
    const-string v0, "--main-dex-list="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 75
    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->mainDexListFile:Ljava/lang/String;

    goto/16 :goto_0

    .line 76
    :cond_1f
    const-string v0, "--minimal-main-dex"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 77
    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->minimalMainDex:Z

    goto/16 :goto_0

    .line 78
    :cond_20
    const-string v0, "--set-max-idx-number="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 79
    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->maxNumberOfIdxPerDex:I

    goto/16 :goto_0

    .line 80
    :cond_21
    const-string v0, "--input-list="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 81
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->inputList:Ljava/util/List;

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->inputList:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/android/dx/command/dexer/Main;->access$1100(Ljava/lang/String;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 84
    :catch_0
    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read input list file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    new-instance p1, Lcom/android/dx/command/UsageException;

    invoke-direct {p1}, Lcom/android/dx/command/UsageException;-><init>()V

    throw p1

    .line 88
    :cond_22
    const-string v0, "--min-sdk-version="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 89
    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    .line 90
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const/4 v2, -0x1

    :goto_2
    if-lt v2, v1, :cond_23

    .line 91
    iput v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->minSdkVersion:I

    goto/16 :goto_0

    .line 92
    :cond_23
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "improper min-sdk-version option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    new-instance p1, Lcom/android/dx/command/UsageException;

    invoke-direct {p1}, Lcom/android/dx/command/UsageException;-><init>()V

    throw p1

    .line 94
    :cond_24
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getCurrent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    new-instance p1, Lcom/android/dx/command/UsageException;

    invoke-direct {p1}, Lcom/android/dx/command/UsageException;-><init>()V

    throw p1

    :cond_25
    return-void
.end method


# virtual methods
.method public makeOptionsObjects()V
    .locals 2

    new-instance v0, Lcom/android/dx/dex/cf/CfOptions;

    invoke-direct {v0}, Lcom/android/dx/dex/cf/CfOptions;-><init>()V

    iput-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->cfOptions:Lcom/android/dx/dex/cf/CfOptions;

    iget v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->positionInfo:I

    iput v1, v0, Lcom/android/dx/dex/cf/CfOptions;->positionInfo:I

    iget-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->localInfo:Z

    iput-boolean v1, v0, Lcom/android/dx/dex/cf/CfOptions;->localInfo:Z

    iget-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->strictNameCheck:Z

    iput-boolean v1, v0, Lcom/android/dx/dex/cf/CfOptions;->strictNameCheck:Z

    iget-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->optimize:Z

    iput-boolean v1, v0, Lcom/android/dx/dex/cf/CfOptions;->optimize:Z

    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->optimizeListFile:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/dx/dex/cf/CfOptions;->optimizeListFile:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->dontOptimizeListFile:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/dx/dex/cf/CfOptions;->dontOptimizeListFile:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->statistics:Z

    iput-boolean v1, v0, Lcom/android/dx/dex/cf/CfOptions;->statistics:Z

    iget-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->warnings:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    iput-object v1, v0, Lcom/android/dx/dex/cf/CfOptions;->warn:Ljava/io/PrintStream;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/android/dx/command/dexer/DxContext;->noop:Ljava/io/PrintStream;

    iput-object v1, v0, Lcom/android/dx/dex/cf/CfOptions;->warn:Ljava/io/PrintStream;

    :goto_0
    new-instance v0, Lcom/android/dx/dex/DexOptions;

    invoke-direct {v0}, Lcom/android/dx/dex/DexOptions;-><init>()V

    iput-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->dexOptions:Lcom/android/dx/dex/DexOptions;

    iget v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->minSdkVersion:I

    iput v1, v0, Lcom/android/dx/dex/DexOptions;->minSdkVersion:I

    iget-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->forceJumbo:Z

    iput-boolean v1, v0, Lcom/android/dx/dex/DexOptions;->forceJumbo:Z

    return-void
.end method

.method public parseFlags([Ljava/lang/String;)V
    .locals 1

    .line 96
    new-instance v0, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;

    invoke-direct {v0, p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;-><init>([Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/dx/command/dexer/Main$Arguments;->parseFlags(Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;)V

    return-void
.end method
