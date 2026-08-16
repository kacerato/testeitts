.class public final synthetic Lcom/github/javaparser/printer/configuration/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/github/javaparser/printer/configuration/ConfigurationOption;


# direct methods
.method public synthetic constructor <init>(Lcom/github/javaparser/printer/configuration/ConfigurationOption;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/configuration/a;->b:Lcom/github/javaparser/printer/configuration/ConfigurationOption;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/configuration/a;->b:Lcom/github/javaparser/printer/configuration/ConfigurationOption;

    check-cast p1, Lcom/github/javaparser/printer/configuration/ConfigurationOption;

    invoke-static {v0, p1}, Lcom/github/javaparser/printer/configuration/DefaultPrinterConfiguration;->a(Lcom/github/javaparser/printer/configuration/ConfigurationOption;Lcom/github/javaparser/printer/configuration/ConfigurationOption;)Z

    move-result p1

    return p1
.end method
