.class public Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/printer/configuration/PrinterConfiguration;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field wrappedConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration;

    invoke-direct {v0}, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->wrappedConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    return-void
.end method


# virtual methods
.method public addOption(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Lcom/github/javaparser/printer/configuration/PrinterConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->wrappedConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    invoke-interface {v0, p1}, Lcom/github/javaparser/printer/configuration/PrinterConfiguration;->addOption(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/printer/configuration/ConfigurationOption;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/printer/configuration/ConfigurationOption;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->wrappedConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    invoke-interface {v0, p1}, Lcom/github/javaparser/printer/configuration/PrinterConfiguration;->get(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public get()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/github/javaparser/printer/configuration/ConfigurationOption;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->wrappedConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    invoke-interface {v0}, Lcom/github/javaparser/printer/configuration/PrinterConfiguration;->get()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEndOfLineCharacter()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->wrappedConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    new-instance v1, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v2, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->END_OF_LINE_CHARACTER:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-direct {v1, v2}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)V

    invoke-interface {v0, v1}, Lcom/github/javaparser/printer/configuration/PrinterConfiguration;->get(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/printer/configuration/ConfigurationOption;

    invoke-interface {v0}, Lcom/github/javaparser/printer/configuration/ConfigurationOption;->asValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIndent()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->getIndentation()Lcom/github/javaparser/printer/configuration/Indentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/printer/configuration/Indentation;->getIndent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndentSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->getIndentation()Lcom/github/javaparser/printer/configuration/Indentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/printer/configuration/Indentation;->getSize()I

    move-result v0

    return v0
.end method

.method public getIndentType()Lcom/github/javaparser/printer/configuration/Indentation$IndentType;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->getIndentation()Lcom/github/javaparser/printer/configuration/Indentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/printer/configuration/Indentation;->getType()Lcom/github/javaparser/printer/configuration/Indentation$IndentType;

    move-result-object v0

    return-object v0
.end method

.method public getIndentation()Lcom/github/javaparser/printer/configuration/Indentation;
    .locals 3

    iget-object v0, p0, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->wrappedConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    new-instance v1, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v2, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->INDENTATION:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-direct {v1, v2}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)V

    invoke-interface {v0, v1}, Lcom/github/javaparser/printer/configuration/PrinterConfiguration;->get(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/printer/configuration/ConfigurationOption;

    invoke-interface {v0}, Lcom/github/javaparser/printer/configuration/ConfigurationOption;->asValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/printer/configuration/Indentation;

    return-object v0
.end method

.method public getMaxEnumConstantsToAlignHorizontally()I
    .locals 3

    iget-object v0, p0, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->wrappedConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    new-instance v1, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v2, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->MAX_ENUM_CONSTANTS_TO_ALIGN_HORIZONTALLY:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-direct {v1, v2}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)V

    invoke-interface {v0, v1}, Lcom/github/javaparser/printer/configuration/PrinterConfiguration;->get(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/printer/configuration/ConfigurationOption;

    invoke-interface {v0}, Lcom/github/javaparser/printer/configuration/ConfigurationOption;->asInteger()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTabWidth()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->getIndentation()Lcom/github/javaparser/printer/configuration/Indentation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/printer/configuration/Indentation;->getSize()I

    move-result v0

    return v0
.end method

.method public isActivated(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->wrappedConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    invoke-interface {v0, p1}, Lcom/github/javaparser/printer/configuration/PrinterConfiguration;->isActivated(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Z

    move-result p1

    return p1
.end method

.method public isColumnAlignFirstMethodChain()Z
    .locals 3

    iget-object v0, p0, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->wrappedConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    new-instance v1, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v2, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->COLUMN_ALIGN_FIRST_METHOD_CHAIN:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-direct {v1, v2}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)V

    invoke-interface {v0, v1}, Lcom/github/javaparser/printer/configuration/PrinterConfiguration;->get(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public isColumnAlignParameters()Z
    .locals 3

    iget-object v0, p0, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->wrappedConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    new-instance v1, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v2, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->COLUMN_ALIGN_PARAMETERS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-direct {v1, v2}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)V

    invoke-interface {v0, v1}, Lcom/github/javaparser/printer/configuration/PrinterConfiguration;->get(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public isIgnoreComments()Z
    .locals 3

    iget-object v0, p0, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->wrappedConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    new-instance v1, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v2, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->PRINT_COMMENTS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-direct {v1, v2}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)V

    invoke-interface {v0, v1}, Lcom/github/javaparser/printer/configuration/PrinterConfiguration;->get(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isIndentCaseInSwitch()Z
    .locals 3

    iget-object v0, p0, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->wrappedConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    new-instance v1, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v2, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->INDENT_CASE_IN_SWITCH:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-direct {v1, v2}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)V

    invoke-interface {v0, v1}, Lcom/github/javaparser/printer/configuration/PrinterConfiguration;->get(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public isOrderImports()Z
    .locals 3

    iget-object v0, p0, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->wrappedConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    new-instance v1, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v2, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->ORDER_IMPORTS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-direct {v1, v2}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)V

    invoke-interface {v0, v1}, Lcom/github/javaparser/printer/configuration/PrinterConfiguration;->get(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public isPrintComments()Z
    .locals 3

    iget-object v0, p0, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->wrappedConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    new-instance v1, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v2, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->PRINT_COMMENTS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-direct {v1, v2}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)V

    invoke-interface {v0, v1}, Lcom/github/javaparser/printer/configuration/PrinterConfiguration;->get(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public isPrintJavadoc()Z
    .locals 3

    iget-object v0, p0, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->wrappedConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    new-instance v1, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v2, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->PRINT_JAVADOC:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-direct {v1, v2}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)V

    invoke-interface {v0, v1}, Lcom/github/javaparser/printer/configuration/PrinterConfiguration;->get(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public isSpaceAroundOperators()Z
    .locals 3

    iget-object v0, p0, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->wrappedConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    new-instance v1, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v2, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->SPACE_AROUND_OPERATORS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-direct {v1, v2}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)V

    invoke-interface {v0, v1}, Lcom/github/javaparser/printer/configuration/PrinterConfiguration;->get(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public removeOption(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Lcom/github/javaparser/printer/configuration/PrinterConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->wrappedConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    invoke-interface {v0, p1}, Lcom/github/javaparser/printer/configuration/PrinterConfiguration;->removeOption(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public setColumnAlignFirstMethodChain(Z)Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "columnAlignFirstMethodChain"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance p1, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->COLUMN_ALIGN_FIRST_METHOD_CHAIN:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-direct {p1, v0}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)V

    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->addOption(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->COLUMN_ALIGN_FIRST_METHOD_CHAIN:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-direct {p1, v0}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)V

    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->removeOption(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->wrappedConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    return-object p0
.end method

.method public setColumnAlignParameters(Z)Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "columnAlignParameters"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance p1, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->COLUMN_ALIGN_PARAMETERS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-direct {p1, v0}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)V

    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->addOption(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->COLUMN_ALIGN_PARAMETERS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-direct {p1, v0}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)V

    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->removeOption(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->wrappedConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    return-object p0
.end method

.method public setEndOfLineCharacter(Ljava/lang/String;)Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endOfLineCharacter"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v1, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->END_OF_LINE_CHARACTER:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-direct {v0, v1, p1}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->addOption(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    return-object p0
.end method

.method public setIndentCaseInSwitch(Z)Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indentInSwitch"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance p1, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->INDENT_CASE_IN_SWITCH:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-direct {p1, v0}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)V

    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->addOption(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->INDENT_CASE_IN_SWITCH:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-direct {p1, v0}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)V

    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->removeOption(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->wrappedConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    return-object p0
.end method

.method public setIndentSize(I)Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indentSize"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->getIndentation()Lcom/github/javaparser/printer/configuration/Indentation;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNonNegative(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/github/javaparser/printer/configuration/Indentation;->setSize(I)Lcom/github/javaparser/printer/configuration/Indentation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->setIndentation(Lcom/github/javaparser/printer/configuration/Indentation;)Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;

    return-object p0
.end method

.method public setIndentType(Lcom/github/javaparser/printer/configuration/Indentation$IndentType;)Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indentType"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->getIndentation()Lcom/github/javaparser/printer/configuration/Indentation;

    move-result-object v0

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/printer/configuration/Indentation$IndentType;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/printer/configuration/Indentation;->setType(Lcom/github/javaparser/printer/configuration/Indentation$IndentType;)Lcom/github/javaparser/printer/configuration/Indentation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->setIndentation(Lcom/github/javaparser/printer/configuration/Indentation;)Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;

    return-object p0
.end method

.method public setIndentation(Lcom/github/javaparser/printer/configuration/Indentation;)Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indentation"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->wrappedConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    new-instance v1, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v2, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->INDENTATION:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-direct {v1, v2, p1}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/github/javaparser/printer/configuration/PrinterConfiguration;->addOption(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    return-object p0
.end method

.method public setMaxEnumConstantsToAlignHorizontally(I)Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxEnumConstantsToAlignHorizontally"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v1, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->MAX_ENUM_CONSTANTS_TO_ALIGN_HORIZONTALLY:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->addOption(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    return-object p0
.end method

.method public setOrderImports(Z)Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orderImports"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance p1, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->ORDER_IMPORTS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-direct {p1, v0}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)V

    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->addOption(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->ORDER_IMPORTS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-direct {p1, v0}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)V

    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->removeOption(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->wrappedConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    return-object p0
.end method

.method public setPrintComments(Z)Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "printComments"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance p1, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->PRINT_COMMENTS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-direct {p1, v0}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)V

    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->addOption(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->PRINT_COMMENTS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-direct {p1, v0}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)V

    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->removeOption(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->wrappedConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    return-object p0
.end method

.method public setPrintJavadoc(Z)Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "printJavadoc"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance p1, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->PRINT_JAVADOC:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-direct {p1, v0}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)V

    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->addOption(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->PRINT_JAVADOC:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-direct {p1, v0}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)V

    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->removeOption(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->wrappedConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    return-object p0
.end method

.method public setSpaceAroundOperators(Z)Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spaceAroundOperators"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance p1, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->SPACE_AROUND_OPERATORS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-direct {p1, v0}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)V

    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->addOption(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->SPACE_AROUND_OPERATORS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-direct {p1, v0}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)V

    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->removeOption(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->wrappedConfiguration:Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    return-object p0
.end method

.method public setTabWidth(I)Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tabWidth"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertPositive(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;->setIndentSize(I)Lcom/github/javaparser/printer/configuration/PrettyPrinterConfiguration;

    return-object p0
.end method
