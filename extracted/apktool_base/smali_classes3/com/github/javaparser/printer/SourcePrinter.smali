.class public Lcom/github/javaparser/printer/SourcePrinter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final buf:Ljava/lang/StringBuilder;

.field private cursor:Lcom/github/javaparser/Position;

.field private endOfLineCharacter:Ljava/lang/String;

.field private indentation:Lcom/github/javaparser/printer/configuration/Indentation;

.field private indented:Z

.field private final indents:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastPrintedIndent:Ljava/lang/String;

.field private final reindentedIndents:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration;

    invoke-direct {v0}, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration;-><init>()V

    invoke-direct {p0, v0}, Lcom/github/javaparser/printer/SourcePrinter;-><init>(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/printer/configuration/Indentation;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "indentation",
            "eol"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/printer/SourcePrinter;->indents:Ljava/util/Deque;

    .line 13
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/github/javaparser/printer/SourcePrinter;->reindentedIndents:Ljava/util/Deque;

    .line 14
    const-string v1, ""

    iput-object v1, p0, Lcom/github/javaparser/printer/SourcePrinter;->lastPrintedIndent:Ljava/lang/String;

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/github/javaparser/printer/SourcePrinter;->buf:Ljava/lang/StringBuilder;

    .line 16
    new-instance v2, Lcom/github/javaparser/Position;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/github/javaparser/Position;-><init>(II)V

    iput-object v2, p0, Lcom/github/javaparser/printer/SourcePrinter;->cursor:Lcom/github/javaparser/Position;

    .line 17
    iput-boolean v4, p0, Lcom/github/javaparser/printer/SourcePrinter;->indented:Z

    .line 18
    iput-object p1, p0, Lcom/github/javaparser/printer/SourcePrinter;->indentation:Lcom/github/javaparser/printer/configuration/Indentation;

    .line 19
    iput-object p2, p0, Lcom/github/javaparser/printer/SourcePrinter;->endOfLineCharacter:Ljava/lang/String;

    .line 20
    invoke-interface {v0, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->getIndentation()Lcom/github/javaparser/printer/configuration/Indentation;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->getEndOfLineCharacter()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/github/javaparser/printer/SourcePrinter;-><init>(Lcom/github/javaparser/printer/configuration/Indentation;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v1, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->INDENTATION:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-direct {v0, v1}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)V

    .line 4
    invoke-interface {p1, v0}, Lcom/github/javaparser/printer/configuration/PrinterConfiguration;->get(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Ljava/util/Optional;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/printer/configuration/ConfigurationOption;

    .line 6
    invoke-interface {v0}, Lcom/github/javaparser/printer/configuration/ConfigurationOption;->asValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/printer/configuration/Indentation;

    new-instance v1, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v2, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->END_OF_LINE_CHARACTER:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-direct {v1, v2}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)V

    .line 7
    invoke-interface {p1, v1}, Lcom/github/javaparser/printer/configuration/PrinterConfiguration;->get(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Ljava/util/Optional;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/printer/configuration/ConfigurationOption;

    .line 9
    invoke-interface {p1}, Lcom/github/javaparser/printer/configuration/ConfigurationOption;->asString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-direct {p0, v0, p1}, Lcom/github/javaparser/printer/SourcePrinter;-><init>(Lcom/github/javaparser/printer/configuration/Indentation;Ljava/lang/String;)V

    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/SourcePrinter;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/github/javaparser/printer/SourcePrinter;->cursor:Lcom/github/javaparser/Position;

    iget v1, v0, Lcom/github/javaparser/Position;->column:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/github/javaparser/Position;->withColumn(I)Lcom/github/javaparser/Position;

    move-result-object p1

    iput-object p1, p0, Lcom/github/javaparser/printer/SourcePrinter;->cursor:Lcom/github/javaparser/Position;

    return-void
.end method

.method private calculateIndentWithAlignTo(I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "column"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/SourcePrinter;->lastPrintedIndent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/printer/SourcePrinter;->lastPrintedIndent:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/github/javaparser/printer/SourcePrinter$1;->$SwitchMap$com$github$javaparser$printer$configuration$Indentation$IndentType:[I

    iget-object v2, p0, Lcom/github/javaparser/printer/SourcePrinter;->indentation:Lcom/github/javaparser/printer/configuration/Indentation;

    invoke-virtual {v2}, Lcom/github/javaparser/printer/configuration/Indentation;->getType()Lcom/github/javaparser/printer/configuration/Indentation$IndentType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/github/javaparser/printer/SourcePrinter;->indentation:Lcom/github/javaparser/printer/configuration/Indentation;

    invoke-virtual {v1}, Lcom/github/javaparser/printer/configuration/Indentation;->getType()Lcom/github/javaparser/printer/configuration/Indentation$IndentType;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    :goto_0
    invoke-virtual {v1}, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    const/4 v4, 0x0

    if-gt v3, p1, :cond_0

    invoke-virtual {v1}, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;->getCar()Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, p1, :cond_1

    sget-object v3, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;->SPACES:Lcom/github/javaparser/printer/configuration/Indentation$IndentType;

    invoke-virtual {v3}, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;->getCar()Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v1}, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;->getWidth()I

    move-result v2

    if-ge v4, v2, :cond_2

    sget-object v2, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;->SPACES:Lcom/github/javaparser/printer/configuration/Indentation$IndentType;

    invoke-virtual {v2}, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;->getCar()Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1}, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;->getWidth()I

    move-result v3

    if-lt v2, v3, :cond_5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1}, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1}, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;->getWidth()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v1}, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;->getCar()Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v2, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Unhandled indent type"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_4
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v1, p1, :cond_5

    sget-object v1, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;->SPACES:Lcom/github/javaparser/printer/configuration/Indentation$IndentType;

    invoke-virtual {v1}, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;->getCar()Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempt to indent less than the previous indent."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public duplicateIndent()V
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/printer/SourcePrinter;->indents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public getCursor()Lcom/github/javaparser/Position;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/SourcePrinter;->cursor:Lcom/github/javaparser/Position;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/printer/SourcePrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public indent()Lcom/github/javaparser/printer/SourcePrinter;
    .locals 4

    iget-object v0, p0, Lcom/github/javaparser/printer/SourcePrinter;->indents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/github/javaparser/printer/SourcePrinter$1;->$SwitchMap$com$github$javaparser$printer$configuration$Indentation$IndentType:[I

    iget-object v2, p0, Lcom/github/javaparser/printer/SourcePrinter;->indentation:Lcom/github/javaparser/printer/configuration/Indentation;

    invoke-virtual {v2}, Lcom/github/javaparser/printer/configuration/Indentation;->getType()Lcom/github/javaparser/printer/configuration/Indentation$IndentType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/github/javaparser/printer/SourcePrinter;->indents:Ljava/util/Deque;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/github/javaparser/printer/SourcePrinter;->indentation:Lcom/github/javaparser/printer/configuration/Indentation;

    invoke-virtual {v3}, Lcom/github/javaparser/printer/configuration/Indentation;->getIndent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unhandled indent type"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/github/javaparser/printer/SourcePrinter;->indents:Ljava/util/Deque;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/github/javaparser/printer/SourcePrinter;->indentation:Lcom/github/javaparser/printer/configuration/Indentation;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/configuration/Indentation;->getIndent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public indentWithAlignTo(I)Lcom/github/javaparser/printer/SourcePrinter;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "column"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/SourcePrinter;->indents:Ljava/util/Deque;

    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/SourcePrinter;->calculateIndentWithAlignTo(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    return-object p0
.end method

.method public normalizeEolInTextBlock(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/SourcePrinter;->endOfLineCharacter:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/github/javaparser/utils/Utils;->normalizeEolInTextBlock(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "arg"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/github/javaparser/printer/SourcePrinter;->indented:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/printer/SourcePrinter;->indents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/github/javaparser/printer/SourcePrinter;->lastPrintedIndent:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/github/javaparser/printer/SourcePrinter;->append(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/javaparser/printer/SourcePrinter;->indented:Z

    :cond_0
    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/SourcePrinter;->append(Ljava/lang/String;)V

    return-object p0
.end method

.method public println()Lcom/github/javaparser/printer/SourcePrinter;
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/github/javaparser/printer/SourcePrinter;->buf:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/printer/SourcePrinter;->endOfLineCharacter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    new-instance v0, Lcom/github/javaparser/Position;

    iget-object v1, p0, Lcom/github/javaparser/printer/SourcePrinter;->cursor:Lcom/github/javaparser/Position;

    iget v1, v1, Lcom/github/javaparser/Position;->line:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/Position;-><init>(II)V

    iput-object v0, p0, Lcom/github/javaparser/printer/SourcePrinter;->cursor:Lcom/github/javaparser/Position;

    .line 5
    iput-boolean v2, p0, Lcom/github/javaparser/printer/SourcePrinter;->indented:Z

    return-object p0
.end method

.method public println(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "arg"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lcom/github/javaparser/printer/SourcePrinter;

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/printer/SourcePrinter;->println()Lcom/github/javaparser/printer/SourcePrinter;

    return-object p0
.end method

.method public reindentToPreviousLevel()V
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/printer/SourcePrinter;->reindentedIndents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/printer/SourcePrinter;->indents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lcom/github/javaparser/printer/SourcePrinter;->indents:Ljava/util/Deque;

    iget-object v1, p0, Lcom/github/javaparser/printer/SourcePrinter;->reindentedIndents:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Reindent calls are not well-balanced."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reindentWithAlignToCursor()V
    .locals 3

    iget-object v0, p0, Lcom/github/javaparser/printer/SourcePrinter;->cursor:Lcom/github/javaparser/Position;

    iget v0, v0, Lcom/github/javaparser/Position;->column:I

    invoke-direct {p0, v0}, Lcom/github/javaparser/printer/SourcePrinter;->calculateIndentWithAlignTo(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/github/javaparser/printer/SourcePrinter;->reindentedIndents:Ljava/util/Deque;

    iget-object v2, p0, Lcom/github/javaparser/printer/SourcePrinter;->indents:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/github/javaparser/printer/SourcePrinter;->indents:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/SourcePrinter;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unindent()Lcom/github/javaparser/printer/SourcePrinter;
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/printer/SourcePrinter;->indents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/printer/SourcePrinter;->indents:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Indent/unindent calls are not well-balanced."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
