.class public Lorg/openjdk/tools/javac/code/ModuleFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleNameFromSourceReader;,
        Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;
    }
.end annotation


# static fields
.field protected static final moduleFinderKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/code/ModuleFinder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final classFinder:Lorg/openjdk/tools/javac/code/ClassFinder;

.field private final diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

.field private final fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

.field private final log:Lorg/openjdk/tools/javac/util/Log;

.field moduleLocationIterator:Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;

.field public moduleNameFromSourceReader:Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleNameFromSourceReader;

.field private moduleNameReader:Lorg/openjdk/tools/javac/jvm/ModuleNameReader;

.field private final names:Lorg/openjdk/tools/javac/util/Names;

.field private final syms:Lorg/openjdk/tools/javac/code/Symtab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/code/ModuleFinder;->moduleFinderKey:Lorg/openjdk/tools/javac/util/Context$Key;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;-><init>(Lorg/openjdk/tools/javac/code/ModuleFinder;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->moduleLocationIterator:Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;

    sget-object v0, Lorg/openjdk/tools/javac/code/ModuleFinder;->moduleFinderKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Names;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    const-class v0, Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/tools/JavaFileManager;

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/ClassFinder;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/ClassFinder;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->classFinder:Lorg/openjdk/tools/javac/code/ClassFinder;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    return-void
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/code/ModuleFinder;)Lorg/openjdk/javax/tools/JavaFileManager;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/javac/code/ModuleFinder;)Lorg/openjdk/tools/javac/code/ClassFinder;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->classFinder:Lorg/openjdk/tools/javac/code/ClassFinder;

    return-object p0
.end method

.method private findModuleInfo(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V
    .locals 4

    :try_start_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->patchOutputLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    sget-object v1, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->CLASS:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-direct {p0, v0, v1}, Lorg/openjdk/tools/javac/code/ModuleFinder;->getModuleInfoFromLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->patchLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    invoke-direct {p0, v2, v1}, Lorg/openjdk/tools/javac/code/ModuleFinder;->getModuleInfoFromLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lorg/openjdk/tools/javac/code/ModuleFinder;->preferredFileObject(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->patchLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    sget-object v3, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-direct {p0, v2, v3}, Lorg/openjdk/tools/javac/code/ModuleFinder;->getModuleInfoFromLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lorg/openjdk/tools/javac/code/ModuleFinder;->preferredFileObject(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->classLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    invoke-direct {p0, v0, v1}, Lorg/openjdk/tools/javac/code/ModuleFinder;->getModuleInfoFromLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->sourceLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    invoke-direct {p0, v1, v3}, Lorg/openjdk/tools/javac/code/ModuleFinder;->getModuleInfoFromLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/openjdk/tools/javac/code/ModuleFinder;->preferredFileObject(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_3

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->sourceLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->classLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v2, v0}, Lorg/openjdk/javax/tools/JavaFileManager;->inferModuleName(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->module_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iput-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->classfile:Lorg/openjdk/javax/tools/JavaFileObject;

    iget-wide v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/high16 v2, 0x10000000000000L

    or-long/2addr v0, v2

    iput-wide v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    goto :goto_1

    :cond_2
    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ERR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    goto :goto_1

    :cond_3
    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->module_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iput-object v0, v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->classfile:Lorg/openjdk/javax/tools/JavaFileObject;

    new-instance v0, Lorg/openjdk/tools/javac/code/ModuleFinder$1;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/code/ModuleFinder$1;-><init>(Lorg/openjdk/tools/javac/code/ModuleFinder;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    iput-object v0, v1, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ERR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    :goto_1
    return-void
.end method

.method private getModuleInfoFromLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v0, p1}, Lorg/openjdk/javax/tools/JavaFileManager;->hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->module_info:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Lorg/openjdk/javax/tools/JavaFileManager;->getJavaFileForInput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/ModuleFinder;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/ModuleFinder;->moduleFinderKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/ModuleFinder;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/code/ModuleFinder;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/code/ModuleFinder;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private preferredFileObject(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->classFinder:Lorg/openjdk/tools/javac/code/ClassFinder;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/code/ClassFinder;->preferredFileObject(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    return-object p1
.end method

.method private readModule(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javac/code/ModuleFinder$2;->$SwitchMap$javax$tools$JavaFileObject$Kind:[I

    invoke-interface {p1}, Lorg/openjdk/javax/tools/JavaFileObject;->getKind()Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/openjdk/tools/javac/util/Assert;->error()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->error:Lorg/openjdk/tools/javac/util/Name;

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/ModuleFinder;->readModuleName(Lorg/openjdk/javax/tools/JavaFileObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0
    :try_end_0
    .catch Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->error:Lorg/openjdk/tools/javac/util/Name;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->moduleNameFromSourceReader:Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleNameFromSourceReader;

    invoke-interface {v0, p1}, Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleNameFromSourceReader;->readModuleName(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    if-eqz v0, :cond_3

    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/Symtab;->enterModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v1

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->module_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iput-object p1, v2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->classfile:Lorg/openjdk/javax/tools/JavaFileObject;

    iget-object p1, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    sget-object v2, Lorg/openjdk/javax/tools/StandardLocation;->PATCH_MODULE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {p1, v2}, Lorg/openjdk/javax/tools/JavaFileManager;->hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/Names;->error:Lorg/openjdk/tools/javac/util/Name;

    if-eq v0, p1, :cond_2

    iget-object p1, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lorg/openjdk/javax/tools/JavaFileManager;->getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileManager$Location;

    move-result-object p1

    iput-object p1, v1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->patchLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    if-eqz p1, :cond_2

    sget-object p1, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    sget-object v0, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->CLASS:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/code/ModuleFinder;->getModuleInfoFromLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->patchLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    invoke-direct {p0, v2, v0}, Lorg/openjdk/tools/javac/code/ModuleFinder;->getModuleInfoFromLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/openjdk/tools/javac/code/ModuleFinder;->preferredFileObject(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    iget-object v0, v1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->patchLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    sget-object v2, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-direct {p0, v0, v2}, Lorg/openjdk/tools/javac/code/ModuleFinder;->getModuleInfoFromLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/openjdk/tools/javac/code/ModuleFinder;->preferredFileObject(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, v1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->module_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iput-object p1, v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->classfile:Lorg/openjdk/javax/tools/JavaFileObject;

    :cond_2
    sget-object p1, Lorg/openjdk/tools/javac/code/Symbol$Completer;->NULL_COMPLETER:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    iput-object p1, v1, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    iget-object p1, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->classFinder:Lorg/openjdk/tools/javac/code/ClassFinder;

    iget-object v0, v1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->module_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/ClassFinder;->fillIn(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    return-object v1

    :cond_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "file.does.not.contain.module"

    invoke-virtual {v0, v2, v1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->module_info:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, v1, Lorg/openjdk/tools/javac/code/Symtab;->errModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/code/Symtab;->defineClass(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    new-instance v2, Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    iget-object v3, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-direct {v2, v1, p1, v0, v3}, Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;-><init>(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;)V

    throw v2
.end method

.method private readModuleName(Lorg/openjdk/javax/tools/JavaFileObject;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/openjdk/tools/javac/jvm/ModuleNameReader$BadClassFile;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->moduleNameReader:Lorg/openjdk/tools/javac/jvm/ModuleNameReader;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->moduleNameReader:Lorg/openjdk/tools/javac/jvm/ModuleNameReader;

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->moduleNameReader:Lorg/openjdk/tools/javac/jvm/ModuleNameReader;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/ModuleNameReader;->readModuleName(Lorg/openjdk/javax/tools/JavaFileObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private scanModulePath(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Lorg/openjdk/tools/javac/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    sget-object v3, Lorg/openjdk/javax/tools/StandardLocation;->MODULE_SOURCE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v2, v3}, Lorg/openjdk/javax/tools/JavaFileManager;->hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z

    move-result v2

    :cond_0
    iget-object v3, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->moduleLocationIterator:Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->moduleLocationIterator:Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;->next()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :catch_0
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/javax/tools/JavaFileManager$Location;

    :try_start_0
    iget-object v5, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v6, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v6, v4}, Lorg/openjdk/javax/tools/JavaFileManager;->inferModuleName(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-virtual {v6, v5}, Lorg/openjdk/tools/javac/code/Symtab;->enterModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v5

    iget-object v6, v5, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->sourceLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    if-nez v6, :cond_1

    iget-object v6, v5, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->classLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    sget-object v7, Lorg/openjdk/javax/tools/StandardLocation;->PATCH_MODULE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v6, v7}, Lorg/openjdk/javax/tools/JavaFileManager;->hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v5, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->patchLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    if-nez v6, :cond_3

    iget-object v6, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    iget-object v8, v5, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v8}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/openjdk/javax/tools/JavaFileManager;->getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileManager$Location;

    move-result-object v6

    iput-object v6, v5, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->patchLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    if-eqz v6, :cond_3

    if-eqz v2, :cond_3

    iget-object v6, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    sget-object v7, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v6, v7}, Lorg/openjdk/javax/tools/JavaFileManager;->hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    iget-object v8, v5, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v8}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/openjdk/javax/tools/JavaFileManager;->getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileManager$Location;

    move-result-object v6

    iput-object v6, v5, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->patchOutputLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    :cond_3
    iget-object v6, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->moduleLocationIterator:Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;

    iget-object v6, v6, Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;->outer:Lorg/openjdk/javax/tools/StandardLocation;

    sget-object v7, Lorg/openjdk/javax/tools/StandardLocation;->MODULE_SOURCE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    if-ne v6, v7, :cond_4

    iput-object v4, v5, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->sourceLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    iget-object v4, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    sget-object v6, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v4, v6}, Lorg/openjdk/javax/tools/JavaFileManager;->hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    iget-object v7, v5, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lorg/openjdk/javax/tools/JavaFileManager;->getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileManager$Location;

    move-result-object v4

    iput-object v4, v5, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->classLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    goto :goto_1

    :cond_4
    iput-object v4, v5, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->classLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    :cond_5
    :goto_1
    iget-object v4, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->moduleLocationIterator:Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;->outer:Lorg/openjdk/javax/tools/StandardLocation;

    sget-object v6, Lorg/openjdk/javax/tools/StandardLocation;->SYSTEM_MODULES:Lorg/openjdk/javax/tools/StandardLocation;

    if-eq v4, v6, :cond_6

    sget-object v6, Lorg/openjdk/javax/tools/StandardLocation;->UPGRADE_MODULE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    if-ne v4, v6, :cond_7

    :cond_6
    iget-wide v6, v5, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/high16 v8, 0x20000000000000L

    or-long/2addr v6, v8

    iput-wide v6, v5, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    :cond_7
    if-eqz p1, :cond_8

    if-ne p1, v5, :cond_1

    iget-object v4, v5, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->sourceLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    if-nez v4, :cond_8

    iget-object v4, v5, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->classLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    if-eqz v4, :cond_1

    :cond_8
    invoke-virtual {v0, v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    iget-object v4, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v6, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->moduleLocationIterator:Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;

    iget-object v6, v6, Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleLocationIterator;->outer:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/code/ModuleFinder;->getDescription(Lorg/openjdk/javax/tools/StandardLocation;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;

    move-result-object v6

    invoke-static {v6, v5}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->DuplicateModuleOnPath(Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_a
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public findAllModules()Lorg/openjdk/tools/javac/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/code/ModuleFinder;->scanModulePath(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v4, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ERR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v3, v4, :cond_0

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->module_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    if-nez v4, :cond_0

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->classfile:Lorg/openjdk/javax/tools/JavaFileObject;

    if-nez v3, :cond_0

    invoke-direct {p0, v2}, Lorg/openjdk/tools/javac/code/ModuleFinder;->findModuleInfo(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public findModule(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;
    .locals 2

    .line 2
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ERR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->sourceLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->classLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/ModuleFinder;->scanModulePath(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iput-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    .line 6
    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->module_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    if-nez v1, :cond_1

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->classfile:Lorg/openjdk/javax/tools/JavaFileObject;

    if-nez v0, :cond_1

    .line 7
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/ModuleFinder;->findModuleInfo(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    :cond_1
    return-object p1
.end method

.method public findModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Symtab;->enterModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/ModuleFinder;->findModule(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object p1

    return-object p1
.end method

.method public findSingleModule()Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;
    .locals 4

    :try_start_0
    sget-object v0, Lorg/openjdk/javax/tools/StandardLocation;->SOURCE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    sget-object v1, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-direct {p0, v0, v1}, Lorg/openjdk/tools/javac/code/ModuleFinder;->getModuleInfoFromLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    sget-object v2, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->CLASS:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-direct {p0, v1, v2}, Lorg/openjdk/tools/javac/code/ModuleFinder;->getModuleInfoFromLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v2

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->classFinder:Lorg/openjdk/tools/javac/code/ClassFinder;

    invoke-virtual {v3, v0, v2}, Lorg/openjdk/tools/javac/code/ClassFinder;->preferredFileObject(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ModuleFinder;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->unnamedModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/code/ModuleFinder;->readModule(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v0

    :goto_1
    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->patchLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    if-nez v2, :cond_3

    iput-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->classLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    goto :goto_2

    :cond_3
    iput-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->patchOutputLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object v0

    :goto_3
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDescription(Lorg/openjdk/javax/tools/StandardLocation;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/ModuleFinder$2;->$SwitchMap$javax$tools$StandardLocation:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    sget-object p1, Lorg/openjdk/tools/javac/resources/CompilerProperties$Fragments;->LocnUpgrade_module_path:Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    sget-object p1, Lorg/openjdk/tools/javac/resources/CompilerProperties$Fragments;->LocnSystem_modules:Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;

    return-object p1

    :cond_2
    sget-object p1, Lorg/openjdk/tools/javac/resources/CompilerProperties$Fragments;->LocnModule_source_path:Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;

    return-object p1

    :cond_3
    sget-object p1, Lorg/openjdk/tools/javac/resources/CompilerProperties$Fragments;->LocnModule_path:Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;

    return-object p1
.end method
