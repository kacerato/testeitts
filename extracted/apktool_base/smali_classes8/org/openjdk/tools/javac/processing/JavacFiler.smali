.class public Lorg/openjdk/tools/javac/processing/JavacFiler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/annotation/processing/Filer;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/processing/JavacFiler$Tuple3;,
        Lorg/openjdk/tools/javac/processing/JavacFiler$FilerWriter;,
        Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputStream;,
        Lorg/openjdk/tools/javac/processing/JavacFiler$FilerInputJavaFileObject;,
        Lorg/openjdk/tools/javac/processing/JavacFiler$FilerInputFileObject;,
        Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputJavaFileObject;,
        Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputFileObject;
    }
.end annotation


# static fields
.field private static final ALREADY_OPENED:Ljava/lang/String; = "Output stream or writer has already been opened."

.field private static final NOT_FOR_READING:Ljava/lang/String; = "FileObject was not opened for reading."

.field private static final NOT_FOR_WRITING:Ljava/lang/String; = "FileObject was not opened for writing."


# instance fields
.field private final aggregateGeneratedClassNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final aggregateGeneratedSourceNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field context:Lorg/openjdk/tools/javac/util/Context;

.field private final defaultTargetModule:Ljava/lang/String;

.field elementUtils:Lorg/openjdk/tools/javac/model/JavacElements;

.field fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

.field private final fileObjectHistory:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/tools/FileObject;",
            ">;"
        }
    .end annotation
.end field

.field private final generatedClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private generatedSourceFileObjects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation
.end field

.field private generatedSourceNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final initialClassNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final initialInputs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/tools/FileObject;",
            ">;"
        }
    .end annotation
.end field

.field lastRound:Z

.field private final lint:Z

.field log:Lorg/openjdk/tools/javac/util/Log;

.field modules:Lorg/openjdk/tools/javac/comp/Modules;

.field names:Lorg/openjdk/tools/javac/util/Names;

.field private final openTypeNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field syms:Lorg/openjdk/tools/javac/code/Symtab;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->context:Lorg/openjdk/tools/javac/util/Context;

    const-class v0, Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/tools/JavaFileManager;

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-static {p1}, Lorg/openjdk/tools/javac/model/JavacElements;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/model/JavacElements;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->elementUtils:Lorg/openjdk/tools/javac/model/JavacElements;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Modules;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Modules;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->modules:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Names;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->initialInputs:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->fileObjectHistory:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->generatedSourceNames:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->generatedSourceFileObjects:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->generatedClasses:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->openTypeNames:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->aggregateGeneratedSourceNames:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->aggregateGeneratedClassNames:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->initialClassNames:Ljava/util/Set;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Lint;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->PROCESSING:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Lint;->isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->lint:Z

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object p1

    sget-object v0, Lorg/openjdk/tools/javac/main/Option;->DEFAULT_MODULE_FOR_CREATED_FILES:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Options;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->defaultTargetModule:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/processing/JavacFiler;->lambda$closeFileObject$0(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/processing/JavacFiler;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/lang/String;Lorg/openjdk/javax/tools/FileObject;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/processing/JavacFiler;->closeFileObject(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/lang/String;Lorg/openjdk/javax/tools/FileObject;)V

    return-void
.end method

.method private checkFileReopening(Lorg/openjdk/javax/tools/FileObject;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/javax/annotation/processing/FilerException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/processing/JavacFiler;->isInFileObjectHistory(Lorg/openjdk/javax/tools/FileObject;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p2, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->lint:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-interface {p1}, Lorg/openjdk/javax/tools/FileObject;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "proc.file.reopening"

    invoke-virtual {p2, v1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance p2, Lorg/openjdk/javax/annotation/processing/FilerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to reopen a file for path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/openjdk/javax/tools/FileObject;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/openjdk/javax/annotation/processing/FilerException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->fileObjectHistory:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private checkName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/javax/annotation/processing/FilerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/processing/JavacFiler;->checkName(Ljava/lang/String;Z)V

    return-void
.end method

.method private checkName(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/javax/annotation/processing/FilerException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lorg/openjdk/javax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/processing/JavacFiler;->isPackageInfo(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_1

    .line 3
    iget-boolean p2, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->lint:Z

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v0, "proc.illegal.file.name"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :cond_0
    new-instance p2, Lorg/openjdk/javax/annotation/processing/FilerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/openjdk/javax/annotation/processing/FilerException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    return-void
.end method

.method private checkNameAndExistence(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/javax/annotation/processing/FilerException;
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lorg/openjdk/tools/javac/processing/JavacFiler;->checkName(Ljava/lang/String;Z)V

    iget-object p3, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->aggregateGeneratedSourceNames:Ljava/util/Set;

    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/Pair;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->aggregateGeneratedClassNames:Ljava/util/Set;

    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/Pair;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->initialClassNames:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->elementUtils:Lorg/openjdk/tools/javac/model/JavacElements;

    invoke-virtual {p3, p2}, Lorg/openjdk/tools/javac/model/JavacElements;->getTypeElement(Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->initialInputs:Ljava/util/Set;

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->isUnnamed()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "."

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/openjdk/javax/annotation/processing/FilerException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempt to create a type in unnamed package of a named module: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/openjdk/javax/annotation/processing/FilerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    iget-boolean p1, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->lint:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string p3, "proc.type.recreate"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    new-instance p1, Lorg/openjdk/javax/annotation/processing/FilerException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempt to recreate a file for type "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/openjdk/javax/annotation/processing/FilerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkOrInferModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/CharSequence;Z)Lorg/openjdk/tools/javac/processing/JavacFiler$Tuple3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            "Ljava/lang/CharSequence;",
            "Z)",
            "Lorg/openjdk/tools/javac/processing/JavacFiler$Tuple3<",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x2f

    .line 17
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 18
    invoke-interface {p1}, Lorg/openjdk/javax/tools/JavaFileManager$Location;->isModuleOrientedLocation()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->modules:Lorg/openjdk/tools/javac/comp/Modules;

    iget-boolean v1, v1, Lorg/openjdk/tools/javac/comp/Modules;->multiModuleMode:Z

    if-eqz v1, :cond_0

    .line 19
    invoke-interface {p1}, Lorg/openjdk/javax/tools/JavaFileManager$Location;->isOutputLocation()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    const/4 v4, -0x1

    if-ne v0, v4, :cond_5

    if-nez v1, :cond_2

    .line 20
    new-instance p3, Lorg/openjdk/tools/javac/processing/JavacFiler$Tuple3;

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->modules:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Modules;->getDefaultModule()Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v0

    invoke-direct {p3, p1, v0, p2}, Lorg/openjdk/tools/javac/processing/JavacFiler$Tuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3

    .line 21
    :cond_2
    invoke-interface {p1}, Lorg/openjdk/javax/tools/JavaFileManager$Location;->isOutputLocation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22
    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/processing/JavacFiler;->inferModule(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 23
    iget-object p3, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    .line 24
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, p1, v1}, Lorg/openjdk/javax/tools/JavaFileManager;->getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileManager$Location;

    move-result-object p1

    .line 25
    new-instance p3, Lorg/openjdk/tools/javac/processing/JavacFiler$Tuple3;

    invoke-direct {p3, p1, v0, p2}, Lorg/openjdk/tools/javac/processing/JavacFiler$Tuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3

    .line 26
    :cond_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->defaultTargetModule:Ljava/lang/String;

    if-eqz v0, :cond_4

    goto :goto_2

    .line 27
    :cond_4
    new-instance p1, Lorg/openjdk/javax/annotation/processing/FilerException;

    const-string p2, "No module specified and the location is either a module-oriented location, or a multi-module output location."

    invoke-direct {p1, p2}, Lorg/openjdk/javax/annotation/processing/FilerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_5
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v0, v2

    .line 29
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    move-object v0, v3

    :goto_2
    if-eqz v1, :cond_9

    .line 30
    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Symtab;->getModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v1

    if-eqz v1, :cond_8

    if-eqz p3, :cond_7

    .line 31
    iget-object p3, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->modules:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-virtual {p3, v1}, Lorg/openjdk/tools/javac/comp/Modules;->isRootModule(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_3

    .line 32
    :cond_6
    new-instance p1, Lorg/openjdk/javax/annotation/processing/FilerException;

    const-string p2, "Cannot write to the given module."

    invoke-direct {p1, p2}, Lorg/openjdk/javax/annotation/processing/FilerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_7
    :goto_3
    iget-object p3, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {p3, p1, v0}, Lorg/openjdk/javax/tools/JavaFileManager;->getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileManager$Location;

    move-result-object p1

    .line 34
    new-instance p3, Lorg/openjdk/tools/javac/processing/JavacFiler$Tuple3;

    invoke-direct {p3, p1, v1, p2}, Lorg/openjdk/tools/javac/processing/JavacFiler$Tuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3

    .line 35
    :cond_8
    new-instance p1, Lorg/openjdk/javax/annotation/processing/FilerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Module: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " does not exist."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/openjdk/javax/annotation/processing/FilerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_9
    new-instance p1, Lorg/openjdk/javax/annotation/processing/FilerException;

    const-string p2, "Module specified but the location is neither a module-oriented location, nor a multi-module output location."

    invoke-direct {p1, p2}, Lorg/openjdk/javax/annotation/processing/FilerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkOrInferModule(Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/javax/annotation/processing/FilerException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2f

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    const/16 v0, 0x2e

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 4
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 5
    :goto_0
    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/processing/JavacFiler;->inferModule(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/Pair;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->defaultTargetModule:Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    new-instance p1, Lorg/openjdk/javax/annotation/processing/FilerException;

    const-string v0, "Cannot determine target module."

    invoke-direct {p1, v0}, Lorg/openjdk/javax/annotation/processing/FilerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_3
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move-object v0, v1

    .line 11
    :goto_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Symtab;->getModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 12
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->modules:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/comp/Modules;->isRootModule(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    invoke-static {v1, p1}, Lorg/openjdk/tools/javac/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/Pair;

    move-result-object p1

    return-object p1

    .line 14
    :cond_4
    new-instance p1, Lorg/openjdk/javax/annotation/processing/FilerException;

    const-string v0, "Cannot write to the given module."

    invoke-direct {p1, v0}, Lorg/openjdk/javax/annotation/processing/FilerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_5
    new-instance p1, Lorg/openjdk/javax/annotation/processing/FilerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Module: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not exist."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/openjdk/javax/annotation/processing/FilerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private clearRoundState()V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->generatedSourceNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->generatedSourceFileObjects:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->generatedClasses:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private closeFileObject(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/lang/String;Lorg/openjdk/javax/tools/FileObject;)V
    .locals 2

    if-eqz p2, :cond_3

    instance-of v0, p3, Lorg/openjdk/javax/tools/JavaFileObject;

    if-eqz v0, :cond_2

    check-cast p3, Lorg/openjdk/javax/tools/JavaFileObject;

    sget-object v0, Lorg/openjdk/tools/javac/processing/JavacFiler$1;->$SwitchMap$javax$tools$JavaFileObject$Kind:[I

    invoke-interface {p3}, Lorg/openjdk/javax/tools/JavaFileObject;->getKind()Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->generatedClasses:Ljava/util/Map;

    new-instance v1, Lorg/openjdk/tools/javac/processing/a;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/processing/a;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->openTypeNames:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->generatedSourceNames:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->generatedSourceFileObjects:Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->openTypeNames:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "JavaFileOject not found for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method private createSourceOrClassFile(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;ZLjava/lang/String;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->lint:Z

    if-eqz v0, :cond_1

    const-string v0, "."

    invoke-virtual {p3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string v1, ".java"

    goto :goto_0

    :cond_0
    const-string v1, ".class"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v2, "proc.suspicious.class.name"

    filled-new-array {p3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-direct {p0, p1, p3, p2}, Lorg/openjdk/tools/javac/processing/JavacFiler;->checkNameAndExistence(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/lang/String;Z)V

    if-eqz p2, :cond_2

    sget-object v0, Lorg/openjdk/javax/tools/StandardLocation;->SOURCE_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    goto :goto_1

    :cond_2
    sget-object v0, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    :goto_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->modules:Lorg/openjdk/tools/javac/comp/Modules;

    iget-boolean v1, v1, Lorg/openjdk/tools/javac/comp/Modules;->multiModuleMode:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/openjdk/javax/tools/JavaFileManager;->getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileManager$Location;

    move-result-object v0

    :cond_3
    if-eqz p2, :cond_4

    sget-object v1, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    goto :goto_2

    :cond_4
    sget-object v1, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->CLASS:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    :goto_2
    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    const/4 v3, 0x0

    invoke-interface {v2, v0, p3, v1, v3}, Lorg/openjdk/javax/tools/JavaFileManager;->getJavaFileForOutput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/openjdk/tools/javac/processing/JavacFiler;->checkFileReopening(Lorg/openjdk/javax/tools/FileObject;Z)V

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->lastRound:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v2, "proc.file.create.last.round"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->aggregateGeneratedSourceNames:Ljava/util/Set;

    invoke-static {p1, p3}, Lorg/openjdk/tools/javac/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/Pair;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->aggregateGeneratedClassNames:Ljava/util/Set;

    invoke-static {p1, p3}, Lorg/openjdk/tools/javac/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/Pair;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_3
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->openTypeNames:Ljava/util/Set;

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance p2, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputJavaFileObject;

    invoke-direct {p2, p0, p1, p3, v0}, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputJavaFileObject;-><init>(Lorg/openjdk/tools/javac/processing/JavacFiler;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject;)V

    return-object p2
.end method

.method private inferModule(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->modules:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Modules;->getDefaultModule()Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->noModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->modules:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/comp/Modules;->getDefaultModule()Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->modules:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Modules;->getRootModules()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->elementUtils:Lorg/openjdk/tools/javac/model/JavacElements;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/model/JavacElements;->getPackageElement(Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->unnamedModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-eq p1, v0, :cond_2

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private isInFileObjectHistory(Lorg/openjdk/javax/tools/FileObject;Z)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->initialInputs:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :catch_0
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/javax/tools/FileObject;

    :try_start_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v2, v1, p1}, Lorg/openjdk/javax/tools/JavaFileManager;->isSameFile(Lorg/openjdk/javax/tools/FileObject;Lorg/openjdk/javax/tools/FileObject;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return v0

    :cond_1
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->initialClassNames:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :catch_1
    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_1
    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->elementUtils:Lorg/openjdk/tools/javac/model/JavacElements;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/model/JavacElements;->getTypeElement(Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v3, v2, p1}, Lorg/openjdk/javax/tools/JavaFileManager;->isSameFile(Lorg/openjdk/javax/tools/FileObject;Lorg/openjdk/javax/tools/FileObject;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->classfile:Lorg/openjdk/javax/tools/JavaFileObject;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v2, v1, p1}, Lorg/openjdk/javax/tools/JavaFileManager;->isSameFile(Lorg/openjdk/javax/tools/FileObject;Lorg/openjdk/javax/tools/FileObject;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_2

    :cond_4
    return v0

    :cond_5
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->fileObjectHistory:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/javax/tools/FileObject;

    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v2, v1, p1}, Lorg/openjdk/javax/tools/JavaFileManager;->isSameFile(Lorg/openjdk/javax/tools/FileObject;Lorg/openjdk/javax/tools/FileObject;)Z

    move-result v1

    if-eqz v1, :cond_6

    return v0

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method private isPackageInfo(Ljava/lang/String;Z)Z
    .locals 4

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "package-info"

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :cond_0
    return v3

    :cond_1
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lorg/openjdk/javax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v3, v1

    :cond_2
    return v3
.end method

.method private static synthetic lambda$closeFileObject$0(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Ljava/util/Map;
    .locals 0

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private locationCheck(Lorg/openjdk/javax/tools/JavaFileManager$Location;)V
    .locals 3

    instance-of v0, p1, Lorg/openjdk/javax/tools/StandardLocation;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/openjdk/javax/tools/StandardLocation;

    invoke-virtual {p1}, Lorg/openjdk/javax/tools/StandardLocation;->isOutputLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource creation not supported in location "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-direct {p0}, Lorg/openjdk/tools/javac/processing/JavacFiler;->clearRoundState()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->initialClassNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->initialInputs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->fileObjectHistory:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->openTypeNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->aggregateGeneratedSourceNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->aggregateGeneratedClassNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public varargs createClassFile(Ljava/lang/CharSequence;[Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/processing/JavacFiler;->checkOrInferModule(Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/util/Pair;

    move-result-object p1

    iget-object p2, p1, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Lorg/openjdk/tools/javac/processing/JavacFiler;->createSourceOrClassFile(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;ZLjava/lang/String;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    return-object p1
.end method

.method public varargs createResource(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/javax/tools/FileObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p4, 0x1

    invoke-direct {p0, p1, p2, p4}, Lorg/openjdk/tools/javac/processing/JavacFiler;->checkOrInferModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/CharSequence;Z)Lorg/openjdk/tools/javac/processing/JavacFiler$Tuple3;

    move-result-object p1

    iget-object p2, p1, Lorg/openjdk/tools/javac/processing/JavacFiler$Tuple3;->a:Ljava/lang/Object;

    check-cast p2, Lorg/openjdk/javax/tools/JavaFileManager$Location;

    iget-object v0, p1, Lorg/openjdk/tools/javac/processing/JavacFiler$Tuple3;->b:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/processing/JavacFiler$Tuple3;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/processing/JavacFiler;->locationCheck(Lorg/openjdk/javax/tools/JavaFileManager$Location;)V

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/processing/JavacFiler;->checkName(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x0

    invoke-interface {v1, p2, p1, p3, v2}, Lorg/openjdk/javax/tools/JavaFileManager;->getFileForOutput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Lorg/openjdk/tools/javac/processing/JavacFiler;->checkFileReopening(Lorg/openjdk/javax/tools/FileObject;Z)V

    instance-of p2, p1, Lorg/openjdk/javax/tools/JavaFileObject;

    if-eqz p2, :cond_1

    new-instance p2, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputJavaFileObject;

    check-cast p1, Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-direct {p2, p0, v0, v2, p1}, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputJavaFileObject;-><init>(Lorg/openjdk/tools/javac/processing/JavacFiler;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject;)V

    return-object p2

    :cond_1
    new-instance p2, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputFileObject;

    invoke-direct {p2, p0, v0, v2, p1}, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerOutputFileObject;-><init>(Lorg/openjdk/tools/javac/processing/JavacFiler;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/lang/String;Lorg/openjdk/javax/tools/FileObject;)V

    return-object p2
.end method

.method public varargs createSourceFile(Ljava/lang/CharSequence;[Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/processing/JavacFiler;->checkOrInferModule(Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/util/Pair;

    move-result-object p1

    iget-object p2, p1, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, p1}, Lorg/openjdk/tools/javac/processing/JavacFiler;->createSourceOrClassFile(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;ZLjava/lang/String;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    return-object p1
.end method

.method public displayState()V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->context:Lorg/openjdk/tools/javac/util/Context;

    sget-object v1, Lorg/openjdk/tools/javac/util/Log;->logKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/Log$WriterKind;->STDERR:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Log;->getWriter(Lorg/openjdk/tools/javac/util/Log$WriterKind;)Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File Object History : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->fileObjectHistory:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Open Type Names     : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->openTypeNames:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gen. Src Names      : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->generatedSourceNames:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gen. Cls Names      : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->generatedClasses:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Agg. Gen. Src Names : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->aggregateGeneratedSourceNames:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Agg. Gen. Cls Names : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->aggregateGeneratedClassNames:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getGeneratedClasses()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->generatedClasses:Ljava/util/Map;

    return-object v0
.end method

.method public getGeneratedSourceFileObjects()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->generatedSourceFileObjects:Ljava/util/Set;

    return-object v0
.end method

.method public getGeneratedSourceNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->generatedSourceNames:Ljava/util/Set;

    return-object v0
.end method

.method public getResource(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/openjdk/javax/tools/FileObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/processing/JavacFiler;->checkOrInferModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/CharSequence;Z)Lorg/openjdk/tools/javac/processing/JavacFiler$Tuple3;

    move-result-object p1

    iget-object p2, p1, Lorg/openjdk/tools/javac/processing/JavacFiler$Tuple3;->a:Ljava/lang/Object;

    check-cast p2, Lorg/openjdk/javax/tools/JavaFileManager$Location;

    iget-object p1, p1, Lorg/openjdk/tools/javac/processing/JavacFiler$Tuple3;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/processing/JavacFiler;->checkName(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p2}, Lorg/openjdk/javax/tools/JavaFileManager$Location;->isOutputLocation()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, p2, p1, v2, v3}, Lorg/openjdk/javax/tools/JavaFileManager;->getFileForOutput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/FileObject;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p2, p1, v2}, Lorg/openjdk/javax/tools/JavaFileManager;->getFileForInput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;)Lorg/openjdk/javax/tools/FileObject;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_2

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    new-instance p2, Ljava/io/FileNotFoundException;

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    invoke-direct {p0, p2, v0}, Lorg/openjdk/tools/javac/processing/JavacFiler;->checkFileReopening(Lorg/openjdk/javax/tools/FileObject;Z)V

    new-instance p1, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerInputFileObject;

    invoke-direct {p1, p0, p2}, Lorg/openjdk/tools/javac/processing/JavacFiler$FilerInputFileObject;-><init>(Lorg/openjdk/tools/javac/processing/JavacFiler;Lorg/openjdk/javax/tools/FileObject;)V

    return-object p1
.end method

.method public newFiles()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->generatedSourceNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->generatedClasses:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public newRound()V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/processing/JavacFiler;->clearRoundState()V

    return-void
.end method

.method public setInitialState(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->initialInputs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->initialClassNames:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setLastRound(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->lastRound:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "javac Filer"

    return-object v0
.end method

.method public warnIfUnclosedFiles()V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->openTypeNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacFiler;->openTypeNames:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "proc.unclosed.type.files"

    invoke-virtual {v0, v2, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
