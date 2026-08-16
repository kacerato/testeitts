.class public abstract Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/api/DiagnosticFormatter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/openjdk/tools/javac/api/DiagnosticFormatter<",
        "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
        ">;"
    }
.end annotation


# instance fields
.field private allCaptured:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field private config:Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;

.field protected depth:I

.field protected messages:Lorg/openjdk/tools/javac/util/JavacMessages;

.field protected printer:Lorg/openjdk/tools/javac/code/Printer;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/JavacMessages;Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->depth:I

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->allCaptured:Lorg/openjdk/tools/javac/util/List;

    new-instance v0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$1;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$1;-><init>(Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->printer:Lorg/openjdk/tools/javac/code/Printer;

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->messages:Lorg/openjdk/tools/javac/util/JavacMessages;

    iput-object p2, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->config:Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;

    return-void
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;)Lorg/openjdk/tools/javac/util/List;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->allCaptured:Lorg/openjdk/tools/javac/util/List;

    return-object p0
.end method

.method public static synthetic access$002(Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->allCaptured:Lorg/openjdk/tools/javac/util/List;

    return-object p1
.end method

.method private expr2String(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected tree kind "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/Pretty;->toSimpleString(Lorg/openjdk/tools/javac/tree/JCTree;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCParens;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCParens;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->expr2String(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getPosition(Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/api/DiagnosticFormatter$PositionKind;)J
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$2;->$SwitchMap$com$sun$tools$javac$api$DiagnosticFormatter$PositionKind:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getIntPosition()I

    move-result p1

    :goto_0
    int-to-long p1, p1

    return-wide p1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown diagnostic position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getColumnNumber()J

    move-result-wide p1

    return-wide p1

    :cond_2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getLineNumber()J

    move-result-wide p1

    return-wide p1

    :cond_3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getIntEndPosition()I

    move-result p1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getIntStartPosition()I

    move-result p1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic displaySource(Lorg/openjdk/javax/tools/Diagnostic;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->displaySource(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Z

    move-result p1

    return p1
.end method

.method public displaySource(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->config:Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->getVisible()Ljava/util/EnumSet;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SOURCE:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getType()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;->FRAGMENT:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    if-eq v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getIntPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic format(Lorg/openjdk/javax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->format(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->allCaptured:Lorg/openjdk/tools/javac/util/List;

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->formatDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatArgument(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/lang/Object;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    instance-of v0, p2, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    if-eqz v0, :cond_0

    iget p1, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->depth:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->depth:I

    :try_start_0
    check-cast p2, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-interface {p0, p2, p3}, Lorg/openjdk/tools/javac/api/DiagnosticFormatter;->formatMessage(Lorg/openjdk/javax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget p2, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->depth:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->depth:I

    return-object p1

    :catchall_0
    move-exception p1

    iget p2, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->depth:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->depth:I

    throw p1

    :cond_0
    instance-of v0, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->expr2String(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p2, Ljava/lang/Iterable;

    if-eqz v0, :cond_2

    instance-of v0, p2, Ljava/nio/file/Path;

    if-nez v0, :cond_2

    check-cast p2, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->formatIterable(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/lang/Iterable;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of p1, p2, Lorg/openjdk/tools/javac/code/Type;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->printer:Lorg/openjdk/tools/javac/code/Printer;

    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, p2, p3}, Lorg/openjdk/tools/javac/code/Printer;->visit(Lorg/openjdk/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of p1, p2, Lorg/openjdk/tools/javac/code/Symbol;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->printer:Lorg/openjdk/tools/javac/code/Printer;

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p1, p2, p3}, Lorg/openjdk/tools/javac/code/Printer;->visit(Lorg/openjdk/tools/javac/code/Symbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    instance-of p1, p2, Lorg/openjdk/javax/tools/JavaFileObject;

    if-eqz p1, :cond_5

    check-cast p2, Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {p2}, Lorg/openjdk/javax/tools/FileObject;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    instance-of p1, p2, Lorg/openjdk/tools/javac/jvm/Profile;

    if-eqz p1, :cond_6

    check-cast p2, Lorg/openjdk/tools/javac/jvm/Profile;

    iget-object p1, p2, Lorg/openjdk/tools/javac/jvm/Profile;->name:Ljava/lang/String;

    return-object p1

    :cond_6
    instance-of p1, p2, Lorg/openjdk/tools/javac/main/Option;

    if-eqz p1, :cond_7

    check-cast p2, Lorg/openjdk/tools/javac/main/Option;

    iget-object p1, p2, Lorg/openjdk/tools/javac/main/Option;->primaryName:Ljava/lang/String;

    return-object p1

    :cond_7
    instance-of p1, p2, Lorg/openjdk/tools/javac/api/Formattable;

    if-eqz p1, :cond_8

    check-cast p2, Lorg/openjdk/tools/javac/api/Formattable;

    iget-object p1, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->messages:Lorg/openjdk/tools/javac/util/JavacMessages;

    invoke-interface {p2, p3, p1}, Lorg/openjdk/tools/javac/api/Formattable;->toString(Ljava/util/Locale;Lorg/openjdk/tools/javac/api/Messages;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatArguments(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {p0, p1, v4, p2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->formatArgument(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/lang/Object;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public abstract formatDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public formatIterable(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/lang/Iterable;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const-string v1, ""

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, v2, p3}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->formatArgument(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/lang/Object;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic formatKind(Lorg/openjdk/javax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->formatKind(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatKind(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    .line 2
    sget-object v0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$2;->$SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType:[I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getType()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3
    const-string p1, "compiler.err.error"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p2, p1, v0}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown diagnostic type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getType()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 5
    :cond_1
    const-string p1, "compiler.warn.warning"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p2, p1, v0}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    const-string p1, "compiler.note.note"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p2, p1, v0}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method public formatLintCategory(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getLintCategory()Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->option:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "compiler.warn.lintOption"

    invoke-virtual {p0, p2, v0, p1}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic formatPosition(Lorg/openjdk/javax/tools/Diagnostic;Lorg/openjdk/tools/javac/api/DiagnosticFormatter$PositionKind;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-virtual {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->formatPosition(Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/api/DiagnosticFormatter$PositionKind;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatPosition(Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/api/DiagnosticFormatter$PositionKind;Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    .line 2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p3, v0, v2

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p3}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->getPosition(Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/api/DiagnosticFormatter$PositionKind;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic formatSource(Lorg/openjdk/javax/tools/Diagnostic;ZLjava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-virtual {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->formatSource(Lorg/openjdk/tools/javac/util/JCDiagnostic;ZLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatSource(Lorg/openjdk/tools/javac/util/JCDiagnostic;ZLjava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getSource()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p1}, Lorg/openjdk/javax/tools/FileObject;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    instance-of p2, p1, Lorg/openjdk/tools/javac/file/PathFileObject;

    if-eqz p2, :cond_1

    .line 5
    check-cast p1, Lorg/openjdk/tools/javac/file/PathFileObject;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/file/PathFileObject;->getShortName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-static {p1}, Lorg/openjdk/tools/javac/file/PathFileObject;->getSimpleName(Lorg/openjdk/javax/tools/FileObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public formatSourceLine(Lorg/openjdk/tools/javac/util/JCDiagnostic;I)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getDiagnosticSource()Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object v1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getIntPosition()I

    move-result v2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getIntPosition()I

    move-result p1

    const/4 v3, -0x1

    if-eq p1, v3, :cond_5

    if-nez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/DiagnosticSource;->getLine(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    return-object p1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->indent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/util/DiagnosticSource;->getColumnNumber(IZ)I

    move-result v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->config:Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->isCaretEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v1, -0x1

    if-ge v3, v2, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x9

    if-ne v2, v4, :cond_2

    const-string v2, "\t"

    goto :goto_2

    :cond_2
    const-string v2, " "

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const-string p1, "^"

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->indent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public formatSubdiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0, p2, p3}, Lorg/openjdk/tools/javac/api/DiagnosticFormatter;->formatMessage(Lorg/openjdk/javax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatSubdiagnostics(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Lorg/openjdk/tools/javac/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            "Ljava/util/Locale;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->config:Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;

    sget-object v2, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;->DEPTH:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->getMultilineLimit(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v3, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->depth:I

    if-ge v3, v1, :cond_3

    :cond_0
    iget v1, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->depth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->depth:I

    :try_start_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->config:Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;

    sget-object v3, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;->LENGTH:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->getMultilineLimit(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;)I

    move-result v1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getSubdiagnostics()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    if-eq v1, v2, :cond_1

    if-ge v4, v1, :cond_2

    :cond_1
    invoke-virtual {p0, p1, v5, p2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->formatSubdiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/openjdk/tools/javac/util/List;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    iget p1, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->depth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->depth:I

    :cond_3
    return-object v0

    :goto_1
    iget p2, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->depth:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->depth:I

    throw p1
.end method

.method public bridge synthetic getConfiguration()Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->getConfiguration()Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguration()Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->config:Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;

    return-object v0
.end method

.method public getPrinter()Lorg/openjdk/tools/javac/code/Printer;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->printer:Lorg/openjdk/tools/javac/code/Printer;

    return-object v0
.end method

.method public indent(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->indentString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const-string v3, ""

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, p1, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    move-object v3, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public indentString(I)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x18

    const/4 v1, 0x0

    if-gt p1, v0, :cond_0

    const-string v0, "                        "

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-ge v1, p1, :cond_1

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isRaw()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public varargs localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->messages:Lorg/openjdk/tools/javac/util/JavacMessages;

    invoke-virtual {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/util/JavacMessages;->getLocalizedString(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setPrinter(Lorg/openjdk/tools/javac/code/Printer;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->printer:Lorg/openjdk/tools/javac/code/Printer;

    return-void
.end method
