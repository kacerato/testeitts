.class public Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;
.super Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BasicConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;,
        Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;
    }
.end annotation


# instance fields
.field protected availableFormats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected indentationLevels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected sourcePosition:Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 33
    sget-object v0, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SUMMARY:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    sget-object v1, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->DETAILS:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    sget-object v2, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SUBDIAGNOSTICS:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    sget-object v3, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SOURCE:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;-><init>(Ljava/util/Set;)V

    .line 34
    invoke-direct {p0}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->initFormat()V

    .line 35
    invoke-direct {p0}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->initIndentation()V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Options;)V
    .locals 9

    .line 1
    sget-object v0, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SUMMARY:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    sget-object v1, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->DETAILS:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    sget-object v2, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SUBDIAGNOSTICS:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    sget-object v3, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SOURCE:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;-><init>(Lorg/openjdk/tools/javac/util/Options;Ljava/util/Set;)V

    .line 2
    invoke-direct {p0}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->initFormat()V

    .line 3
    invoke-direct {p0}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->initIndentation()V

    .line 4
    const-string v4, "diags.legacy"

    invoke-virtual {p1, v4}, Lorg/openjdk/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-direct {p0}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->initOldFormat()V

    .line 6
    :cond_0
    const-string v4, "diags.layout"

    invoke-virtual {p1, v4}, Lorg/openjdk/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 7
    const-string v5, "OLD"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8
    invoke-direct {p0}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->initOldFormat()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0, v4}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->initFormats(Ljava/lang/String;)V

    .line 10
    :cond_2
    :goto_0
    const-string v4, "diags.sourcePosition"

    invoke-virtual {p1, v4}, Lorg/openjdk/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v5, "bottom"

    .line 11
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 12
    sget-object v4, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;->BOTTOM:Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setSourcePosition(Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;)V

    goto :goto_1

    .line 13
    :cond_3
    sget-object v4, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;->AFTER_SUMMARY:Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setSourcePosition(Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;)V

    .line 14
    :goto_1
    const-string v4, "diags.indent"

    invoke-virtual {p1, v4}, Lorg/openjdk/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 15
    const-string v4, "\\|"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 16
    :try_start_0
    array-length v4, p1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_7

    const/4 v6, 0x3

    if-eq v4, v6, :cond_6

    const/4 v7, 0x4

    if-eq v4, v7, :cond_5

    const/4 v8, 0x5

    if-eq v4, v8, :cond_4

    goto :goto_2

    .line 17
    :cond_4
    sget-object v4, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->JLS:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    aget-object v7, p1, v7

    .line 18
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 19
    invoke-virtual {p0, v4, v7}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setIndentation(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;I)V

    .line 20
    :cond_5
    aget-object v4, p1, v6

    .line 21
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 22
    invoke-virtual {p0, v2, v4}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setIndentation(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;I)V

    .line 23
    :cond_6
    aget-object v2, p1, v5

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 25
    invoke-virtual {p0, v3, v2}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setIndentation(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;I)V

    :cond_7
    const/4 v2, 0x1

    .line 26
    aget-object v2, p1, v2

    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 28
    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setIndentation(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;I)V

    :goto_2
    const/4 v1, 0x0

    .line 29
    aget-object p1, p1, v1

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 31
    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setIndentation(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 32
    :catch_0
    invoke-direct {p0}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->initIndentation()V

    :cond_8
    :goto_3
    return-void
.end method

.method private initFormat()V
    .locals 3

    const-string v0, "%p%L%m"

    const-string v1, "%f:%_%p%L%m"

    const-string v2, "%f:%l:%_%p%L%m"

    invoke-direct {p0, v2, v0, v1}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->initFormats(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initFormats(Ljava/lang/String;)V
    .locals 3

    .line 5
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 6
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;->DEFAULT_CLASS_FORMAT:Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;

    aget-object v1, p1, v1

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setFormat(Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;Ljava/lang/String;)V

    .line 8
    :cond_1
    sget-object v0, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;->DEFAULT_NO_POS_FORMAT:Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setFormat(Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;Ljava/lang/String;)V

    .line 9
    :goto_0
    sget-object v0, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;->DEFAULT_POS_FORMAT:Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setFormat(Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;Ljava/lang/String;)V

    return-void
.end method

.method private initFormats(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->availableFormats:Ljava/util/Map;

    .line 2
    sget-object v0, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;->DEFAULT_POS_FORMAT:Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setFormat(Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;->DEFAULT_NO_POS_FORMAT:Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setFormat(Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;Ljava/lang/String;)V

    .line 4
    sget-object p1, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;->DEFAULT_CLASS_FORMAT:Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;

    invoke-virtual {p0, p1, p3}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setFormat(Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;Ljava/lang/String;)V

    return-void
.end method

.method private initIndentation()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->indentationLevels:Ljava/util/Map;

    sget-object v0, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SUMMARY:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setIndentation(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;I)V

    sget-object v0, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->DETAILS:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setIndentation(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;I)V

    sget-object v0, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SUBDIAGNOSTICS:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setIndentation(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;I)V

    sget-object v0, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;->SOURCE:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->setIndentation(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;I)V

    return-void
.end method

.method private initOldFormat()V
    .locals 3

    const-string v0, "%p%L%m"

    const-string v1, "%f:%_%t%L%m"

    const-string v2, "%f:%l:%_%t%L%m"

    invoke-direct {p0, v2, v0, v1}, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->initFormats(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getFormat(Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->availableFormats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getIndentation(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;)I
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->indentationLevels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getSourcePosition()Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->sourcePosition:Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;

    return-object v0
.end method

.method public setFormat(Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$BasicFormatKind;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->availableFormats:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setIndentation(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;I)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->indentationLevels:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSourcePosition(Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration;->sourcePosition:Lorg/openjdk/tools/javac/util/BasicDiagnosticFormatter$BasicConfiguration$SourcePosition;

    return-void
.end method
