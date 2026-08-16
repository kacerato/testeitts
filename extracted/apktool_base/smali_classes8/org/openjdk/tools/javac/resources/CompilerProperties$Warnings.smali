.class public Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/resources/CompilerProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Warnings"
.end annotation


# static fields
.field public static final AddopensIgnored:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

.field public static final AnnotationMethodNotFound:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

.field public static final AnnotationMethodNotFoundReason:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

.field public static final DivZero:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

.field public static final EmptyIf:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

.field public static final FinallyCannotComplete:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

.field public static final IllegalCharForEncoding:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

.field public static final InvalidArchiveFile:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

.field public static final InvalidPath:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

.field public static final MethodRedundantTypeargs:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

.field public static final MissingDeprecatedAnnotation:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

.field public static final OptionObsoleteSuppression:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

.field public static final OverrideBridge:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

.field public static final PossibleFallThroughIntoCase:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

.field public static final PotentialLambdaFound:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

.field public static final ProcProcOnlyRequestedNoProcs:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

.field public static final ProcUseImplicit:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

.field public static final ProcUseProcOrImplicit:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

.field public static final RequiresAutomatic:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

.field public static final RequiresTransitiveAutomatic:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

.field public static final TryExplicitCloseCall:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

.field public static final UncheckedAssign:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

.field public static final UncheckedCastToType:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

.field public static final UnderscoreAsIdentifier:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

.field public static final UnexpectedArchiveFile:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

.field public static final Warning:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "compiler"

    const-string v4, "addopens.ignored"

    invoke-direct {v0, v3, v4, v2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->AddopensIgnored:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v2, "annotation.method.not.found"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->AnnotationMethodNotFound:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v2, "annotation.method.not.found.reason"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->AnnotationMethodNotFoundReason:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v2, "div.zero"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->DivZero:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v2, "empty.if"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->EmptyIf:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v2, "finally.cannot.complete"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->FinallyCannotComplete:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v2, "illegal.char.for.encoding"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->IllegalCharForEncoding:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v2, "invalid.archive.file"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->InvalidArchiveFile:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v2, "invalid.path"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->InvalidPath:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v2, "method.redundant.typeargs"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->MethodRedundantTypeargs:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v2, "missing.deprecated.annotation"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->MissingDeprecatedAnnotation:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v2, "option.obsolete.suppression"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->OptionObsoleteSuppression:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v2, "override.bridge"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->OverrideBridge:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v2, "possible.fall-through.into.case"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->PossibleFallThroughIntoCase:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v2, "potential.lambda.found"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->PotentialLambdaFound:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v2, "proc.proc-only.requested.no.procs"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->ProcProcOnlyRequestedNoProcs:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v2, "proc.use.implicit"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->ProcUseImplicit:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v2, "proc.use.proc.or.implicit"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->ProcUseProcOrImplicit:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v2, "requires.automatic"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->RequiresAutomatic:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v2, "requires.transitive.automatic"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->RequiresTransitiveAutomatic:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v2, "try.explicit.close.call"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->TryExplicitCloseCall:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v2, "unchecked.assign"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->UncheckedAssign:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v2, "unchecked.cast.to.type"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->UncheckedCastToType:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v2, "underscore.as.identifier"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->UnderscoreAsIdentifier:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v2, "unexpected.archive.file"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->UnexpectedArchiveFile:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v2, "warning"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object v0, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->Warning:Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AccessToMemberFromSerializableElement(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "access.to.member.from.serializable.element"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static AccessToMemberFromSerializableLambda(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "access.to.member.from.serializable.lambda"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static AuxiliaryClassAccessedFromOutsideOfItsSourceFile(Lorg/openjdk/tools/javac/code/Symbol;Ljava/io/File;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "auxiliary.class.accessed.from.outside.of.its.source.file"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static AuxiliaryClassAccessedFromOutsideOfItsSourceFile(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "auxiliary.class.accessed.from.outside.of.its.source.file"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static AuxiliaryClassAccessedFromOutsideOfItsSourceFile(Lorg/openjdk/tools/javac/code/Type;Ljava/io/File;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    .line 3
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "auxiliary.class.accessed.from.outside.of.its.source.file"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static AuxiliaryClassAccessedFromOutsideOfItsSourceFile(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    .line 4
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "auxiliary.class.accessed.from.outside.of.its.source.file"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static BadNameForOption(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "bad.name.for.option"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static BigMajorVersion(Ljava/io/File;II)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 1

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    const-string p2, "big.major.version"

    invoke-direct {v0, p1, p2, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static BigMajorVersion(Lorg/openjdk/javax/tools/JavaFileObject;II)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 1

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    const-string p2, "big.major.version"

    invoke-direct {v0, p1, p2, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ConstantSVUID(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "constant.SVUID"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static DeprecatedAnnotationHasNoEffect(Lorg/openjdk/tools/javac/code/Kinds$Kind;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "deprecated.annotation.has.no.effect"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static DiamondRedundantArgs(Ljava/lang/Void;Ljava/lang/Void;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "diamond.redundant.args"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static DirPathElementNotDirectory(Ljava/io/File;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "dir.path.element.not.directory"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static DirPathElementNotDirectory(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "dir.path.element.not.directory"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static DirPathElementNotFound(Ljava/io/File;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "dir.path.element.not.found"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static DirPathElementNotFound(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "dir.path.element.not.found"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static FileFromFuture(Ljava/io/File;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "file.from.future"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static FileFromFuture(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "file.from.future"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ForwardRef(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "forward.ref"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static FutureAttr(Lorg/openjdk/tools/javac/util/Name;IIII)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p0, p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    const-string p2, "future.attr"

    invoke-direct {v0, p1, p2, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static HasBeenDeprecated(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "has.been.deprecated"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static HasBeenDeprecatedForRemoval(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "has.been.deprecated.for.removal"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static HasBeenDeprecatedForRemovalModule(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "has.been.deprecated.for.removal.module"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static HasBeenDeprecatedModule(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "has.been.deprecated.module"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ImproperSVUID(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "improper.SVUID"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static IncubatingModules(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "incubating.modules"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static InexactNonVarargsCall(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "inexact.non-varargs.call"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static LeaksNotAccessible(Lorg/openjdk/tools/javac/code/Kinds$KindName;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "leaks.not.accessible"

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static LeaksNotAccessibleNotRequiredTransitive(Lorg/openjdk/tools/javac/code/Kinds$KindName;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "leaks.not.accessible.not.required.transitive"

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static LeaksNotAccessibleUnexported(Lorg/openjdk/tools/javac/code/Kinds$KindName;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "leaks.not.accessible.unexported"

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static LeaksNotAccessibleUnexportedQualified(Lorg/openjdk/tools/javac/code/Kinds$KindName;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "leaks.not.accessible.unexported.qualified"

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static LintOption(Lorg/openjdk/tools/javac/main/Option;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "lintOption"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static LocnUnknownFileOnModulePath(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "locn.unknown.file.on.module.path"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static LongSVUID(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "long.SVUID"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static MissingSVUID(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "missing.SVUID"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ModuleForOptionNotFound(Lorg/openjdk/tools/javac/main/Option;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "module.for.option.not.found"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ModuleNotFound(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "module.not.found"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static OptionObsoleteSource(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "option.obsolete.source"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static OptionObsoleteTarget(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "option.obsolete.target"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static OutdirIsInExplodedModule(Ljava/nio/file/Path;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "outdir.is.in.exploded.module"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static OverrideEqualsButNotHashcode(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "override.equals.but.not.hashcode"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static OverrideUncheckedRet(Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "override.unchecked.ret"

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static OverrideUncheckedRet(Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "override.unchecked.ret"

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static OverrideUncheckedThrown(Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "override.unchecked.thrown"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static OverrideUncheckedThrown(Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "override.unchecked.thrown"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static OverrideVarargsExtra(Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "override.varargs.extra"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static OverrideVarargsExtra(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "override.varargs.extra"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static OverrideVarargsMissing(Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "override.varargs.missing"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static OverrideVarargsMissing(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "override.varargs.missing"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static PackageEmptyOrNotFound(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "package.empty.or.not.found"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static PathElementNotFound(Ljava/io/File;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "path.element.not.found"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static PathElementNotFound(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "path.element.not.found"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static PkgInfoAlreadySeen(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "pkg-info.already.seen"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static PoorChoiceForModuleName(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "poor.choice.for.module.name"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static PositionOverflow(I)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "compiler"

    const-string v2, "position.overflow"

    invoke-direct {v0, v1, v2, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static PotentiallyAmbiguousOverload(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "potentially.ambiguous.overload"

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ProbFoundReq(Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "prob.found.req"

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ProbFoundReq(Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "prob.found.req"

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ProcAnnotationsWithoutProcessors(Ljava/util/Set;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "proc.annotations.without.processors"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ProcFileCreateLastRound(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "proc.file.create.last.round"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ProcFileReopening(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "proc.file.reopening"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ProcIllegalFileName(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "proc.illegal.file.name"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ProcMalformedSupportedString(Ljava/lang/String;Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "proc.malformed.supported.string"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ProcMessager(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "proc.messager"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ProcPackageDoesNotExist(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "proc.package.does.not.exist"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ProcProcessorIncompatibleSourceVersion(Lorg/openjdk/tools/javac/code/Source;Ljava/lang/String;Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "proc.processor.incompatible.source.version"

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ProcSuspiciousClassName(Ljava/lang/String;Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "proc.suspicious.class.name"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ProcTypeAlreadyExists(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "proc.type.already.exists"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ProcTypeRecreate(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "proc.type.recreate"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ProcUnclosedTypeFiles(Ljava/util/Set;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lorg/openjdk/tools/javac/util/Name;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "proc.unclosed.type.files"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ProcUnmatchedProcessorOptions(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "proc.unmatched.processor.options"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static RawClassUse(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "raw.class.use"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static RedundantCast(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "redundant.cast"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static SelfRef(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "self.ref"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ServiceProvidedButNotExportedOrUsed(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "service.provided.but.not.exported.or.used"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static SourceNoBootclasspath(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "source.no.bootclasspath"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static StaticNotQualifiedByType(Lorg/openjdk/tools/javac/code/Kinds$Kind;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "static.not.qualified.by.type"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static SunProprietary(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "sun.proprietary"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static TryResourceNotReferenced(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "try.resource.not.referenced"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static TryResourceThrowsInterruptedExc(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "try.resource.throws.interrupted.exc"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static UncheckedAssignToVar(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "unchecked.assign.to.var"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static UncheckedCallMbrOfRawType(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "unchecked.call.mbr.of.raw.type"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static UncheckedGenericArrayCreation(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "unchecked.generic.array.creation"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static UncheckedMethInvocationApplied(Lorg/openjdk/tools/javac/code/Kinds$Kind;Lorg/openjdk/tools/javac/util/Name;Ljava/util/List;Ljava/util/List;Lorg/openjdk/tools/javac/code/Kinds$Kind;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Kinds$Kind;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Kinds$Kind;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ")",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "unchecked.meth.invocation.applied"

    filled-new-array/range {p0 .. p5}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static UncheckedVarargsNonReifiableType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "unchecked.varargs.non.reifiable.type"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static UnknownEnumConstant(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "unknown.enum.constant"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static UnknownEnumConstantReason(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "unknown.enum.constant.reason"

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static UnknownEnumConstantReason(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "unknown.enum.constant.reason"

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static UnreachableCatch(Ljava/util/List;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "unreachable.catch"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static UnreachableCatch1(Ljava/util/List;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "unreachable.catch.1"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static VarargsRedundantTrustmeAnno(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "varargs.redundant.trustme.anno"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static VarargsRedundantTrustmeAnno(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 2

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "varargs.redundant.trustme.anno"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "compiler"

    invoke-direct {v0, p1, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static VarargsUnsafeUseVarargsParam(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    const-string v1, "varargs.unsafe.use.varargs.param"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "compiler"

    invoke-direct {v0, v2, v1, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method
