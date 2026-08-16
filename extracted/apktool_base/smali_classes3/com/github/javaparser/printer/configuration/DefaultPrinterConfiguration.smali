.class public Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/printer/configuration/PrinterConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;
    }
.end annotation


# instance fields
.field private defaultOptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/github/javaparser/printer/configuration/ConfigurationOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    new-instance v1, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v2, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->PRINT_COMMENTS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    iget-object v3, v2, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->defaultValue:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;Ljava/lang/Object;)V

    new-instance v2, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v3, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->PRINT_JAVADOC:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    iget-object v4, v3, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->defaultValue:Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;Ljava/lang/Object;)V

    new-instance v3, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v4, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->SPACE_AROUND_OPERATORS:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    iget-object v5, v4, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->defaultValue:Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;Ljava/lang/Object;)V

    new-instance v4, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v5, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->INDENT_CASE_IN_SWITCH:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    iget-object v6, v5, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->defaultValue:Ljava/lang/Object;

    invoke-direct {v4, v5, v6}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;Ljava/lang/Object;)V

    new-instance v5, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v6, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->MAX_ENUM_CONSTANTS_TO_ALIGN_HORIZONTALLY:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    iget-object v7, v6, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->defaultValue:Ljava/lang/Object;

    invoke-direct {v5, v6, v7}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;Ljava/lang/Object;)V

    new-instance v6, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v7, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->END_OF_LINE_CHARACTER:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    iget-object v8, v7, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->defaultValue:Ljava/lang/Object;

    invoke-direct {v6, v7, v8}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;Ljava/lang/Object;)V

    new-instance v7, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    sget-object v8, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->INDENTATION:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    iget-object v9, v8, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->defaultValue:Ljava/lang/Object;

    invoke-direct {v7, v8, v9}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;Ljava/lang/Object;)V

    filled-new-array/range {v1 .. v7}, [Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration;->defaultOptions:Ljava/util/Set;

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/printer/configuration/ConfigurationOption;Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration;->lambda$get$0(Lcom/github/javaparser/printer/configuration/ConfigurationOption;Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$get$0(Lcom/github/javaparser/printer/configuration/ConfigurationOption;Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "option",
            "o"
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
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

    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration;->removeOption(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Lcom/github/javaparser/printer/configuration/PrinterConfiguration;

    iget-object v0, p0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration;->defaultOptions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public get(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Ljava/util/Optional;
    .locals 2
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
    iget-object v0, p0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration;->defaultOptions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/printer/configuration/a;

    invoke-direct {v1, p1}, Lcom/github/javaparser/printer/configuration/a;-><init>(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

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
    iget-object v0, p0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration;->defaultOptions:Ljava/util/Set;

    return-object v0
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

    iget-object v0, p0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration;->defaultOptions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
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

    iget-object v0, p0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration;->defaultOptions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method
