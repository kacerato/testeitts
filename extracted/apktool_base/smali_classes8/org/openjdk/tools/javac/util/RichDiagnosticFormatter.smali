.class public Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;
.super Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration;,
        Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;,
        Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;,
        Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter<",
        "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
        "Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;",
        ">;"
    }
.end annotation


# instance fields
.field final diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

.field final messages:Lorg/openjdk/tools/javac/util/JavacMessages;

.field protected nameSimplifier:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;

.field private printer:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;

.field protected symbolPreprocessor:Lorg/openjdk/tools/javac/code/Types$DefaultSymbolVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/code/Types$DefaultSymbolVisitor<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final syms:Lorg/openjdk/tools/javac/code/Symtab;

.field protected typePreprocessor:Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/code/Types$UnaryVisitor<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final types:Lorg/openjdk/tools/javac/code/Types;

.field whereClauses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 5

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Log;->getDiagnosticFormatter()Lorg/openjdk/tools/javac/api/DiagnosticFormatter;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter;-><init>(Lorg/openjdk/tools/javac/api/DiagnosticFormatter;)V

    new-instance v0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$1;-><init>(Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->typePreprocessor:Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;

    new-instance v0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$2;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$2;-><init>(Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->symbolPreprocessor:Lorg/openjdk/tools/javac/code/Types$DefaultSymbolVisitor;

    new-instance v0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;-><init>(Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;)V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->setRichPrinter(Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Types;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JavacMessages;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/JavacMessages;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->messages:Lorg/openjdk/tools/javac/util/JavacMessages;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->whereClauses:Ljava/util/Map;

    new-instance v0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object p1

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter;->formatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;

    check-cast v1, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;

    invoke-direct {v0, p1, v1}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration;-><init>(Lorg/openjdk/tools/javac/util/Options;Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter;->configuration:Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter$ForwardingConfiguration;

    invoke-static {}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->values()[Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->whereClauses:Ljava/util/Map;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->indexOf(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;Lorg/openjdk/tools/javac/code/Type$TypeVar;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->unique(Lorg/openjdk/tools/javac/code/Type$TypeVar;)Z

    move-result p0

    return p0
.end method

.method private indexOf(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;)I
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->whereClauses:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v4, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v3, v4, :cond_1

    return v1

    :cond_1
    sget-object v3, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->TYPEVAR:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    if-ne p2, v3, :cond_2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private unique(Lorg/openjdk/tools/javac/code/Type$TypeVar;)Z
    .locals 5

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->stripMetadata()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Type$TypeVar;

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->whereClauses:Ljava/util/Map;

    sget-object v1, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->TYPEVAR:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type;->stripMetadata()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-lt v2, v0, :cond_3

    if-ne v2, v0, :cond_2

    move v1, v0

    :cond_2
    return v1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing type variable in where clause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic format(Lorg/openjdk/javax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->format(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .locals 6

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    new-instance v1, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;

    invoke-direct {v1, p0}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;-><init>(Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;)V

    iput-object v1, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->nameSimplifier:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;

    .line 4
    invoke-static {}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->values()[Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 5
    iget-object v5, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->whereClauses:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->preprocessDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    .line 7
    iget-object v1, p0, Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter;->formatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;

    check-cast v1, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;

    invoke-virtual {v1, p1, p2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->format(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->getConfiguration()Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration;

    move-result-object p1

    sget-object v1, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;->WHERE_CLAUSES:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration;->isEnabled(Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->getWhereClauses()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    .line 10
    iget-object v1, p0, Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter;->formatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;

    check-cast v1, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->isRaw()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter;->formatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;

    check-cast v1, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;

    const/4 v2, 0x2

    .line 11
    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->indentString(I)Ljava/lang/String;

    move-result-object v1

    .line 12
    :goto_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    .line 13
    iget-object v3, p0, Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter;->formatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;

    check-cast v3, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;

    invoke-virtual {v3, v2, p2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->format(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 16
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic formatMessage(Lorg/openjdk/javax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->formatMessage(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatMessage(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;-><init>(Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->nameSimplifier:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;

    .line 3
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->preprocessDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    .line 4
    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter;->formatMessage(Lorg/openjdk/javax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getConfiguration()Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->getConfiguration()Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguration()Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter;->configuration:Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter$ForwardingConfiguration;

    check-cast v0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration;

    return-object v0
.end method

.method public getRichPrinter()Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->printer:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;

    return-object v0
.end method

.method public getWhereClauses()Lorg/openjdk/tools/javac/util/List;
    .locals 9
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

    invoke-static {}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->values()[Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    iget-object v6, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->whereClauses:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->key()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".1"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_1
    iget-object v7, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v8, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->whereClauses:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v7, v6, v4}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v4

    new-instance v6, Lorg/openjdk/tools/javac/util/JCDiagnostic$MultilineDiagnostic;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    invoke-direct {v6, v4, v5}, Lorg/openjdk/tools/javac/util/JCDiagnostic$MultilineDiagnostic;-><init>(Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/util/List;)V

    invoke-virtual {v0, v6}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public preprocessArgument(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lorg/openjdk/tools/javac/code/Type;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->preprocessType(Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lorg/openjdk/tools/javac/code/Symbol;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->preprocessSymbol(Lorg/openjdk/tools/javac/code/Symbol;)V

    goto :goto_1

    :cond_1
    instance-of v0, p1, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->preprocessDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    goto :goto_1

    :cond_2
    instance-of v0, p1, Ljava/lang/Iterable;

    if-eqz v0, :cond_3

    instance-of v0, p1, Ljava/nio/file/Path;

    if-nez v0, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->preprocessArgument(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public preprocessDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V
    .locals 4

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->preprocessArgument(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->isMultiline()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getSubdiagnostics()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->preprocessDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public preprocessSymbol(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->symbolPreprocessor:Lorg/openjdk/tools/javac/code/Types$DefaultSymbolVisitor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/code/Types$DefaultSymbolVisitor;->visit(Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public preprocessType(Lorg/openjdk/tools/javac/code/Type;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->typePreprocessor:Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    return-void
.end method

.method public setRichPrinter(Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;)V
    .locals 1

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->printer:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter;->formatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;

    check-cast v0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->setPrinter(Lorg/openjdk/tools/javac/code/Printer;)V

    return-void
.end method
