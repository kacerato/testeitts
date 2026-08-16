.class public Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter;
.super Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/JavacMessages;)V
    .locals 1

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;-><init>(Lorg/openjdk/tools/javac/util/JavacMessages;Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Options;Lorg/openjdk/tools/javac/util/JavacMessages;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;-><init>(Lorg/openjdk/tools/javac/util/Options;)V

    invoke-direct {p0, p2, v0}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;-><init>(Lorg/openjdk/tools/javac/util/JavacMessages;Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;)V

    return-void
.end method

.method private selectFormat(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getDiagnosticSource()Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter;->getConfiguration()Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;->DEFAULT_NO_POS_FORMAT:Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->getFormat(Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    sget-object v2, Lorg/openjdk/tools/javac/util/DiagnosticSource;->NO_SOURCE:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getIntPosition()I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter;->getConfiguration()Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;

    move-result-object p1

    sget-object v0, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;->DEFAULT_POS_FORMAT:Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->getFormat(Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/DiagnosticSource;->getFile()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/DiagnosticSource;->getFile()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    invoke-interface {p1}, Lorg/openjdk/javax/tools/JavaFileObject;->getKind()Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    move-result-object p1

    sget-object v0, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->CLASS:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter;->getConfiguration()Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;

    move-result-object p1

    sget-object v0, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;->DEFAULT_CLASS_FORMAT:Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->getFormat(Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method


# virtual methods
.method public addSourceLineIfNeeded(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->displaySource(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter;->getConfiguration()Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SOURCE:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->getIndentation(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->formatSourceLine(Lorg/openjdk/tools/javac/util/JCDiagnostic;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter;->getConfiguration()Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->getSourcePosition()Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;->BOTTOM:Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .locals 7

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->messages:Lorg/openjdk/tools/javac/util/JavacMessages;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/JavacMessages;->getCurrentLocale()Ljava/util/Locale;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter;->selectFormat(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x25

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v6

    if-ge v3, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {p0, v4, p1, p2}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter;->formatMeta(CLorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v3, v6

    goto :goto_0

    :cond_3
    iget p2, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->depth:I

    if-nez p2, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter;->addSourceLineIfNeeded(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic formatMessage(Lorg/openjdk/javax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter;->formatMessage(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatMessage(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .locals 7

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->formatArguments(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/util/Collection;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p2, v2, v1}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 6
    array-length v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 7
    new-array v1, v4, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v1, v5

    .line 8
    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter;->getConfiguration()Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->getVisible()Ljava/util/EnumSet;

    move-result-object v3

    sget-object v6, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SUMMARY:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-virtual {v3, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter;->getConfiguration()Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;

    move-result-object v3

    invoke-virtual {v3, v6}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->getIndentation(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;)I

    move-result v3

    .line 10
    aget-object v5, v1, v5

    invoke-virtual {p0, v5, v3}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->indent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v3

    .line 11
    :cond_1
    array-length v3, v1

    if-le v3, v4, :cond_2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter;->getConfiguration()Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->getVisible()Ljava/util/EnumSet;

    move-result-object v3

    sget-object v6, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->DETAILS:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-virtual {v3, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter;->getConfiguration()Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;

    move-result-object v3

    invoke-virtual {v3, v6}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->getIndentation(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;)I

    move-result v3

    add-int/2addr v5, v3

    .line 13
    :goto_0
    array-length v3, v1

    if-ge v4, v3, :cond_2

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v4

    invoke-virtual {p0, v6, v5}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->indent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->isMultiline()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter;->getConfiguration()Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;->getVisible()Ljava/util/EnumSet;

    move-result-object v1

    sget-object v3, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SUBDIAGNOSTICS:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter;->getConfiguration()Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->getIndentation(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;)I

    move-result v1

    add-int/2addr v5, v1

    .line 17
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->formatSubdiagnostics(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, v5}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->indent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 19
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatMeta(CLorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x25

    if-eq p1, v0, :cond_e

    const/16 v0, 0x4c

    if-eq p1, v0, :cond_d

    const/16 v0, 0x5f

    if-eq p1, v0, :cond_c

    const/16 v0, 0x62

    if-eq p1, v0, :cond_b

    const/16 v0, 0x63

    if-eq p1, v0, :cond_a

    const/16 v0, 0x65

    if-eq p1, v0, :cond_9

    const/16 v0, 0x66

    const/4 v1, 0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_7

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_6

    const/16 v0, 0x6f

    if-eq p1, v0, :cond_5

    const/16 v0, 0x70

    if-eq p1, v0, :cond_4

    const/16 v0, 0x73

    if-eq p1, v0, :cond_3

    const/16 v0, 0x74

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$1;->$SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType:[I

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getType()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getIntPosition()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    :goto_0
    invoke-virtual {p0, p2, p3}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->formatKind(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, ""

    return-object p1

    :cond_3
    sget-object p1, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$PositionKind;->START:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$PositionKind;

    invoke-virtual {p0, p2, p1, p3}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->formatPosition(Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/api/DiagnosticFormatter$PositionKind;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p0, p2, p3}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->formatKind(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    sget-object p1, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$PositionKind;->OFFSET:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$PositionKind;

    invoke-virtual {p0, p2, p1, p3}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->formatPosition(Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/api/DiagnosticFormatter$PositionKind;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-virtual {p0, p2, p3}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter;->formatMessage(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    sget-object p1, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$PositionKind;->LINE:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$PositionKind;

    invoke-virtual {p0, p2, p1, p3}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->formatPosition(Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/api/DiagnosticFormatter$PositionKind;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-virtual {p0, p2, v1, p3}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->formatSource(Lorg/openjdk/tools/javac/util/JCDiagnostic;ZLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    sget-object p1, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$PositionKind;->END:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$PositionKind;

    invoke-virtual {p0, p2, p1, p3}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->formatPosition(Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/api/DiagnosticFormatter$PositionKind;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_a
    sget-object p1, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$PositionKind;->COLUMN:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$PositionKind;

    invoke-virtual {p0, p2, p1, p3}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->formatPosition(Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/api/DiagnosticFormatter$PositionKind;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1, p3}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->formatSource(Lorg/openjdk/tools/javac/util/JCDiagnostic;ZLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_c
    const-string p1, " "

    return-object p1

    :cond_d
    invoke-virtual {p0, p2, p3}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->formatLintCategory(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_e
    const-string p1, "%"

    return-object p1
.end method

.method public bridge synthetic getConfiguration()Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter;->getConfiguration()Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConfiguration()Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter;->getConfiguration()Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguration()Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;
    .locals 1

    .line 3
    invoke-super {p0}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->getConfiguration()Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;

    return-object v0
.end method
