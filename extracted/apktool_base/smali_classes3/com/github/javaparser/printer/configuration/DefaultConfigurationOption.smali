.class public Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/printer/configuration/ConfigurationOption;


# instance fields
.field configOption:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

.field currentValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configOption"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;-><init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "configOption",
            "value"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;->configOption:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p0, p2}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;->value(Ljava/lang/Object;)Lcom/github/javaparser/printer/configuration/ConfigurationOption;

    :cond_0
    return-void
.end method

.method private cast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;->configOption:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    iget-object v0, v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->type:Ljava/lang/Class;

    iget-object v1, p0, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;->currentValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;->configOption:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    iget-object v0, v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->type:Ljava/lang/Class;

    iget-object v1, p0, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;->currentValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;->currentValue:Ljava/lang/Object;

    iget-object v2, p0, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;->configOption:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    iget-object v2, v2, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->type:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s cannot be cast to %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;->configOption:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The option %s has no currentValue"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBoolean()Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;->cast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public asInteger()Ljava/lang/Integer;
    .locals 1

    invoke-direct {p0}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;->cast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public asString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;->cast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public asValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;->cast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;

    iget-object v0, p0, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;->configOption:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    iget-object p1, p1, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;->configOption:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hasValue()Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;->currentValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;->configOption:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public value(Ljava/lang/Object;)Lcom/github/javaparser/printer/configuration/ConfigurationOption;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;->currentValue:Ljava/lang/Object;

    iget-object v0, p0, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;->configOption:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    iget-object v0, v0, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->type:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/github/javaparser/printer/configuration/DefaultConfigurationOption;->configOption:Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;

    iget-object v1, v1, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration$ConfigOption;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%s is not an instance of %s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
