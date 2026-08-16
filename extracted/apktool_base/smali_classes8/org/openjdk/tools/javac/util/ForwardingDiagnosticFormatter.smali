.class public Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/api/DiagnosticFormatter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter$ForwardingConfiguration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Lorg/openjdk/javax/tools/Diagnostic<",
        "*>;F::",
        "Lorg/openjdk/tools/javac/api/DiagnosticFormatter<",
        "TD;>;>",
        "Ljava/lang/Object;",
        "Lorg/openjdk/tools/javac/api/DiagnosticFormatter<",
        "TD;>;"
    }
.end annotation


# instance fields
.field protected configuration:Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter$ForwardingConfiguration;

.field protected formatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/api/DiagnosticFormatter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter;->formatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;

    new-instance v0, Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter$ForwardingConfiguration;

    invoke-interface {p1}, Lorg/openjdk/tools/javac/api/DiagnosticFormatter;->getConfiguration()Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter$ForwardingConfiguration;-><init>(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter;->configuration:Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter$ForwardingConfiguration;

    return-void
.end method


# virtual methods
.method public displaySource(Lorg/openjdk/javax/tools/Diagnostic;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter;->formatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;

    invoke-interface {v0, p1}, Lorg/openjdk/tools/javac/api/DiagnosticFormatter;->displaySource(Lorg/openjdk/javax/tools/Diagnostic;)Z

    move-result p1

    return p1
.end method

.method public format(Lorg/openjdk/javax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter;->formatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;

    invoke-interface {v0, p1, p2}, Lorg/openjdk/tools/javac/api/DiagnosticFormatter;->format(Lorg/openjdk/javax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatKind(Lorg/openjdk/javax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter;->formatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;

    invoke-interface {v0, p1, p2}, Lorg/openjdk/tools/javac/api/DiagnosticFormatter;->formatKind(Lorg/openjdk/javax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatMessage(Lorg/openjdk/javax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter;->formatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;

    invoke-interface {v0, p1, p2}, Lorg/openjdk/tools/javac/api/DiagnosticFormatter;->formatMessage(Lorg/openjdk/javax/tools/Diagnostic;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatPosition(Lorg/openjdk/javax/tools/Diagnostic;Lorg/openjdk/tools/javac/api/DiagnosticFormatter$PositionKind;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lorg/openjdk/tools/javac/api/DiagnosticFormatter$PositionKind;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter;->formatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;

    invoke-interface {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/api/DiagnosticFormatter;->formatPosition(Lorg/openjdk/javax/tools/Diagnostic;Lorg/openjdk/tools/javac/api/DiagnosticFormatter$PositionKind;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatSource(Lorg/openjdk/javax/tools/Diagnostic;ZLjava/util/Locale;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;Z",
            "Ljava/util/Locale;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter;->formatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;

    invoke-interface {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/api/DiagnosticFormatter;->formatSource(Lorg/openjdk/javax/tools/Diagnostic;ZLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getConfiguration()Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter;->configuration:Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter$ForwardingConfiguration;

    return-object v0
.end method

.method public getDelegatedFormatter()Lorg/openjdk/tools/javac/api/DiagnosticFormatter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter;->formatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;

    return-object v0
.end method
