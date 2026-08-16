.class public Lorg/openjdk/tools/javac/util/JCDiagnostic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/tools/Diagnostic;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/util/JCDiagnostic$MultilineDiagnostic;,
        Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;,
        Lorg/openjdk/tools/javac/util/JCDiagnostic$Note;,
        Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;,
        Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;,
        Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;,
        Lorg/openjdk/tools/javac/util/JCDiagnostic$SourcePosition;,
        Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;,
        Lorg/openjdk/tools/javac/util/JCDiagnostic$SimpleDiagnosticPosition;,
        Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;,
        Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;,
        Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/openjdk/javax/tools/Diagnostic<",
        "Lorg/openjdk/javax/tools/JavaFileObject;",
        ">;"
    }
.end annotation


# static fields
.field private static fragmentFormatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/api/DiagnosticFormatter<",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private defaultFormatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/api/DiagnosticFormatter<",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            ">;"
        }
    .end annotation
.end field

.field private final diagnosticInfo:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;

.field private final flags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;",
            ">;"
        }
    .end annotation
.end field

.field private final lintCategory:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

.field private final position:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

.field private final source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

.field private sourcePosition:Lorg/openjdk/tools/javac/util/JCDiagnostic$SourcePosition;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/api/DiagnosticFormatter;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;Lorg/openjdk/tools/javac/code/Lint$LintCategory;Ljava/util/Set;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/api/DiagnosticFormatter<",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            ">;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;",
            "Lorg/openjdk/tools/javac/code/Lint$LintCategory;",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;",
            ">;",
            "Lorg/openjdk/tools/javac/util/DiagnosticSource;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p5, :cond_1

    if-eqz p6, :cond_1

    invoke-interface {p6}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getPreferredPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->defaultFormatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;

    iput-object p2, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->diagnosticInfo:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;

    iput-object p3, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->lintCategory:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    iput-object p4, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->flags:Ljava/util/Set;

    iput-object p5, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    iput-object p6, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->position:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    return-void
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->position:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/util/DiagnosticSource;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/api/DiagnosticFormatter;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->defaultFormatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->diagnosticInfo:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;

    return-object p0
.end method

.method public static synthetic access$500(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->flags:Ljava/util/Set;

    return-object p0
.end method

.method public static varargs fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v7, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-static {}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getFragmentFormatter()Lorg/openjdk/tools/javac/api/DiagnosticFormatter;

    move-result-object v1

    sget-object v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;->FRAGMENT:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    const-string v2, "compiler"

    invoke-static {v0, v2, p0, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;->of(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;

    move-result-object v2

    const-class p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/util/JCDiagnostic;-><init>(Lorg/openjdk/tools/javac/api/DiagnosticFormatter;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;Lorg/openjdk/tools/javac/code/Lint$LintCategory;Ljava/util/Set;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    return-object v7
.end method

.method public static getFragmentFormatter()Lorg/openjdk/tools/javac/api/DiagnosticFormatter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/api/DiagnosticFormatter<",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->fragmentFormatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter;

    invoke-static {}, Lorg/openjdk/tools/javac/util/JavacMessages;->getDefaultMessages()Lorg/openjdk/tools/javac/util/JavacMessages;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter;-><init>(Lorg/openjdk/tools/javac/util/JavacMessages;)V

    sput-object v0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->fragmentFormatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;

    :cond_0
    sget-object v0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->fragmentFormatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;

    return-object v0
.end method


# virtual methods
.method public getArgs()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->diagnosticInfo:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;->args:[Ljava/lang/Object;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->diagnosticInfo:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;->key()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnNumber()J
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->sourcePosition:Lorg/openjdk/tools/javac/util/JCDiagnostic$SourcePosition;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$SourcePosition;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$SourcePosition;-><init>(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->sourcePosition:Lorg/openjdk/tools/javac/util/JCDiagnostic$SourcePosition;

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->sourcePosition:Lorg/openjdk/tools/javac/util/JCDiagnostic$SourcePosition;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$SourcePosition;->getColumnNumber()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDiagnosticPosition()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->position:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    return-object v0
.end method

.method public getDiagnosticSource()Lorg/openjdk/tools/javac/util/DiagnosticSource;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    return-object v0
.end method

.method public getEndPosition()J
    .locals 2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getIntEndPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getIntEndPosition()I
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->position:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/DiagnosticSource;->getEndPosTable()Lorg/openjdk/tools/javac/tree/EndPosTable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getEndPosition(Lorg/openjdk/tools/javac/tree/EndPosTable;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getIntPosition()I
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->position:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getPreferredPosition()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getIntStartPosition()I
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->position:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getStartPosition()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getKind()Lorg/openjdk/javax/tools/Diagnostic$Kind;
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$1;->$SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType:[I

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->diagnosticInfo:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;->type:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    sget-object v0, Lorg/openjdk/javax/tools/Diagnostic$Kind;->OTHER:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    return-object v0

    :cond_0
    sget-object v0, Lorg/openjdk/javax/tools/Diagnostic$Kind;->NOTE:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->flags:Ljava/util/Set;

    sget-object v1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->MANDATORY:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/openjdk/javax/tools/Diagnostic$Kind;->MANDATORY_WARNING:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/openjdk/javax/tools/Diagnostic$Kind;->WARNING:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    :goto_0
    return-object v0

    :cond_3
    sget-object v0, Lorg/openjdk/javax/tools/Diagnostic$Kind;->ERROR:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    return-object v0
.end method

.method public getLineNumber()J
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->sourcePosition:Lorg/openjdk/tools/javac/util/JCDiagnostic$SourcePosition;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$SourcePosition;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$SourcePosition;-><init>(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->sourcePosition:Lorg/openjdk/tools/javac/util/JCDiagnostic$SourcePosition;

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->sourcePosition:Lorg/openjdk/tools/javac/util/JCDiagnostic$SourcePosition;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$SourcePosition;->getLineNumber()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getLintCategory()Lorg/openjdk/tools/javac/code/Lint$LintCategory;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->lintCategory:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    return-object v0
.end method

.method public getMessage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->defaultFormatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;

    invoke-interface {v0, p0, p1}, Lorg/openjdk/tools/javac/api/DiagnosticFormatter;->formatMessage(Lorg/openjdk/javax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPosition()J
    .locals 2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getIntPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->diagnosticInfo:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;->type:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getPrefix(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object p1, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->defaultFormatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lorg/openjdk/tools/javac/api/DiagnosticFormatter;->formatKind(Lorg/openjdk/javax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSource()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getSource()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->source:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/DiagnosticSource;->getFile()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    return-object v0
.end method

.method public getStartPosition()J
    .locals 2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getIntStartPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSubdiagnostics()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->diagnosticInfo:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;->type:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    return-object v0
.end method

.method public hasLintCategory()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->lintCategory:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFlagSet(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->flags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isMandatory()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->flags:Ljava/util/Set;

    sget-object v1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->MANDATORY:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMultiline()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setFlag(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->flags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->diagnosticInfo:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;->type:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    sget-object v1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;->ERROR:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    if-ne v0, v1, :cond_2

    sget-object v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$1;->$SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticFlag:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->flags:Ljava/util/Set;

    sget-object v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->RECOVERABLE:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->flags:Ljava/util/Set;

    sget-object v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->RECOVERABLE:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic;->defaultFormatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lorg/openjdk/tools/javac/api/DiagnosticFormatter;->format(Lorg/openjdk/javax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
