.class public final Lorg/openjdk/tools/javac/util/RawDiagnosticFormatter;
.super Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Options;)V
    .locals 4

    new-instance v0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;

    sget-object v1, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SUMMARY:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    sget-object v2, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->DETAILS:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    sget-object v3, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SUBDIAGNOSTICS:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-static {v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;-><init>(Lorg/openjdk/tools/javac/util/Options;Ljava/util/Set;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;-><init>(Lorg/openjdk/tools/javac/util/JavacMessages;Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;)V

    return-void
.end method


# virtual methods
.method public formatArgument(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/lang/Object;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    instance-of p3, p2, Lorg/openjdk/tools/javac/api/Formattable;

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    instance-of p3, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz p3, :cond_1

    move-object p1, p2

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "@"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->getStartPosition()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of p3, p2, Lorg/openjdk/tools/javac/file/PathFileObject;

    if-eqz p3, :cond_2

    move-object p1, p2

    check-cast p1, Lorg/openjdk/tools/javac/file/PathFileObject;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/file/PathFileObject;->getShortName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    invoke-super {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->formatArgument(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/lang/Object;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    instance-of p2, p2, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public formatDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .locals 5

    const/4 p2, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v2, p2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->formatSource(Lorg/openjdk/tools/javac/util/JCDiagnostic;ZLjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$PositionKind;->LINE:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$PositionKind;

    invoke-virtual {p0, p1, v3, p2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->formatPosition(Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/api/DiagnosticFormatter$PositionKind;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$PositionKind;->COLUMN:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$PositionKind;

    invoke-virtual {p0, p1, v3, p2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->formatPosition(Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/api/DiagnosticFormatter$PositionKind;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getSource()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getSource()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v1

    invoke-interface {v1}, Lorg/openjdk/javax/tools/JavaFileObject;->getKind()Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    move-result-object v1

    sget-object v3, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->CLASS:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    if-ne v1, v3, :cond_1

    invoke-virtual {p0, p1, v2, p2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->formatSource(Lorg/openjdk/tools/javac/util/JCDiagnostic;ZLjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":-:-:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/RawDiagnosticFormatter;->formatMessage(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->displaySource(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, v2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->formatSourceLine(Lorg/openjdk/tools/javac/util/JCDiagnostic;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p2
.end method

.method public bridge synthetic formatMessage(Lorg/openjdk/javax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/RawDiagnosticFormatter;->formatMessage(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatMessage(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->formatArguments(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/util/Collection;

    move-result-object p2

    .line 4
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, p2}, Lorg/openjdk/tools/javac/util/RawDiagnosticFormatter;->localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->isMultiline()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->getConfiguration()Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->getVisible()Ljava/util/EnumSet;

    move-result-object p2

    sget-object v1, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SUBDIAGNOSTICS:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-virtual {p2, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p0, p1, v2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->formatSubdiagnostics(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    const-string p2, ",{"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0, p1, v2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->formatSubdiagnostics(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string p2, ""

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 10
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string p2, "("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string p2, ","

    goto :goto_0

    :cond_0
    const/16 p1, 0x7d

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isRaw()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public varargs localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p3

    const-string v0, ": "

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p3, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    const-string v0, ", "

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
