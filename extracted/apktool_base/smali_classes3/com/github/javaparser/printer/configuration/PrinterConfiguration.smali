.class public interface abstract Lcom/github/javaparser/printer/configuration/PrinterConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addOption(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Lcom/github/javaparser/printer/configuration/PrinterConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation
.end method

.method public abstract get(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Ljava/util/Optional;
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
.end method

.method public abstract get()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/github/javaparser/printer/configuration/ConfigurationOption;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isActivated(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation
.end method

.method public abstract removeOption(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Lcom/github/javaparser/printer/configuration/PrinterConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation
.end method
