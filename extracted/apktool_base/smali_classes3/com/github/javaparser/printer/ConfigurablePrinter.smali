.class public interface abstract Lcom/github/javaparser/printer/ConfigurablePrinter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/printer/Printer;


# virtual methods
.method public abstract getConfiguration()Lcom/github/javaparser/printer/configuration/PrinterConfiguration;
.end method

.method public abstract setConfiguration(Lcom/github/javaparser/printer/configuration/PrinterConfiguration;)Lcom/github/javaparser/printer/Printer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation
.end method
