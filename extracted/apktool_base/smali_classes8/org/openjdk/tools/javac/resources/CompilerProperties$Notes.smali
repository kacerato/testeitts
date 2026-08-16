.class public Lorg/openjdk/tools/javac/resources/CompilerProperties$Notes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/resources/CompilerProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Notes"
.end annotation


# static fields
.field public static final CompressedDiags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

.field public static final DeprecatedPlural:Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

.field public static final DeprecatedPluralAdditional:Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

.field public static final DeprecatedRecompile:Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

.field public static final Note:Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

.field public static final RemovalPlural:Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

.field public static final RemovalPluralAdditional:Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

.field public static final RemovalRecompile:Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

.field public static final UncheckedPlural:Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

.field public static final UncheckedPluralAdditional:Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

.field public static final UncheckedRecompile:Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "compiler"

    const-string v4, "compressed.diags"

    invoke-direct {v0, v3, v4, v2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Notes;->CompressedDiags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v2, "deprecated.plural"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Notes;->DeprecatedPlural:Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v2, "deprecated.plural.additional"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Notes;->DeprecatedPluralAdditional:Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v2, "deprecated.recompile"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Notes;->DeprecatedRecompile:Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v2, "note"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Notes;->Note:Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v2, "removal.plural"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Notes;->RemovalPlural:Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v2, "removal.plural.additional"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Notes;->RemovalPluralAdditional:Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v2, "removal.recompile"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Notes;->RemovalRecompile:Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v2, "unchecked.plural"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Notes;->UncheckedPlural:Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v2, "unchecked.plural.additional"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Notes;->UncheckedPluralAdditional:Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v2, "unchecked.recompile"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Notes;->UncheckedRecompile:Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DeferredMethodInst(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v1, "deferred.method.inst"

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static DeprecatedFilename(Ljava/io/File;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 3

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v1, "deprecated.filename"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static DeprecatedFilename(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 3

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v1, "deprecated.filename"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static DeprecatedFilenameAdditional(Ljava/io/File;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 3

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v1, "deprecated.filename.additional"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static DeprecatedFilenameAdditional(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 3

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v1, "deprecated.filename.additional"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static LambdaStat(ZLorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    const-string v1, "lambda.stat"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static MrefStat(ZLjava/lang/Void;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    const-string v1, "mref.stat"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static MrefStat1(ZLorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    const-string v1, "mref.stat.1"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static MultipleElements(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v1, "multiple.elements"

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ProcMessager(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v1, "proc.messager"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static RemovalFilename(Ljava/io/File;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 3

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v1, "removal.filename"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static RemovalFilename(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 3

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v1, "removal.filename"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static RemovalFilenameAdditional(Ljava/io/File;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 3

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v1, "removal.filename.additional"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static RemovalFilenameAdditional(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 3

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v1, "removal.filename.additional"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static UncheckedFilename(Ljava/io/File;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 3

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v1, "unchecked.filename"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static UncheckedFilename(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 3

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v1, "unchecked.filename"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static UncheckedFilenameAdditional(Ljava/io/File;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 3

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v1, "unchecked.filename.additional"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static UncheckedFilenameAdditional(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 3

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v1, "unchecked.filename.additional"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static VerboseResolveMulti(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;ILjava/lang/String;Ljava/util/List;Ljava/util/List;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    const-string p2, "verbose.resolve.multi"

    invoke-direct {v0, p1, p2, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static VerboseResolveMulti(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;ILjava/lang/String;Ljava/util/List;Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;",
            ")",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    const-string p2, "verbose.resolve.multi"

    invoke-direct {v0, p1, p2, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static VerboseResolveMulti(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;ILjava/lang/String;Ljava/util/List;Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            ")",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    const-string p2, "verbose.resolve.multi"

    invoke-direct {v0, p1, p2, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static VerboseResolveMulti(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;ILjava/lang/String;Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;Ljava/util/List;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "I",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;"
        }
    .end annotation

    .line 7
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    const-string p2, "verbose.resolve.multi"

    invoke-direct {v0, p1, p2, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static VerboseResolveMulti(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;ILjava/lang/String;Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 7

    .line 9
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    const-string p2, "verbose.resolve.multi"

    invoke-direct {v0, p1, p2, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static VerboseResolveMulti(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;ILjava/lang/String;Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 7

    .line 8
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    const-string p2, "verbose.resolve.multi"

    invoke-direct {v0, p1, p2, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static VerboseResolveMulti(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;ILjava/lang/String;Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/List;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "I",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;"
        }
    .end annotation

    .line 4
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    const-string p2, "verbose.resolve.multi"

    invoke-direct {v0, p1, p2, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static VerboseResolveMulti(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;ILjava/lang/String;Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 7

    .line 6
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    const-string p2, "verbose.resolve.multi"

    invoke-direct {v0, p1, p2, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static VerboseResolveMulti(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;ILjava/lang/String;Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 7

    .line 5
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    const-string p2, "verbose.resolve.multi"

    invoke-direct {v0, p1, p2, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static VerboseResolveMulti1(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/Void;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v1, "verbose.resolve.multi.1"

    filled-new-array/range {p0 .. p5}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static VerboseResolveMulti1(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/Void;Ljava/lang/String;Ljava/util/List;Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;",
            ")",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v1, "verbose.resolve.multi.1"

    filled-new-array/range {p0 .. p5}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static VerboseResolveMulti1(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/Void;Ljava/lang/String;Ljava/util/List;Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            ")",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v1, "verbose.resolve.multi.1"

    filled-new-array/range {p0 .. p5}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static VerboseResolveMulti1(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/Void;Ljava/lang/String;Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;Ljava/util/List;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;"
        }
    .end annotation

    .line 7
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v1, "verbose.resolve.multi.1"

    filled-new-array/range {p0 .. p5}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static VerboseResolveMulti1(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/Void;Ljava/lang/String;Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 2

    .line 9
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v1, "verbose.resolve.multi.1"

    filled-new-array/range {p0 .. p5}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static VerboseResolveMulti1(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/Void;Ljava/lang/String;Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 2

    .line 8
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v1, "verbose.resolve.multi.1"

    filled-new-array/range {p0 .. p5}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static VerboseResolveMulti1(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/Void;Ljava/lang/String;Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/List;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;"
        }
    .end annotation

    .line 4
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v1, "verbose.resolve.multi.1"

    filled-new-array/range {p0 .. p5}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static VerboseResolveMulti1(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/Void;Ljava/lang/String;Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 2

    .line 6
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v1, "verbose.resolve.multi.1"

    filled-new-array/range {p0 .. p5}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static VerboseResolveMulti1(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/Void;Ljava/lang/String;Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;
    .locals 2

    .line 5
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;

    const-string v1, "verbose.resolve.multi.1"

    filled-new-array/range {p0 .. p5}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method
