.class public Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter$ForwardingConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForwardingConfiguration"
.end annotation


# instance fields
.field protected configuration:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter$ForwardingConfiguration;->configuration:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration;

    return-void
.end method


# virtual methods
.method public getDelegatedConfiguration()Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter$ForwardingConfiguration;->configuration:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration;

    return-object v0
.end method

.method public getMultilineLimit(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;)I
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter$ForwardingConfiguration;->configuration:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration;

    invoke-interface {v0, p1}, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration;->getMultilineLimit(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;)I

    move-result p1

    return p1
.end method

.method public getVisible()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter$ForwardingConfiguration;->configuration:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration;

    invoke-interface {v0}, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration;->getVisible()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public setMultilineLimit(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;I)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter$ForwardingConfiguration;->configuration:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration;

    invoke-interface {v0, p1, p2}, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration;->setMultilineLimit(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$MultilineLimit;I)V

    return-void
.end method

.method public setVisible(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration$DiagnosticPart;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter$ForwardingConfiguration;->configuration:Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration;

    invoke-interface {v0, p1}, Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration;->setVisible(Ljava/util/Set;)V

    return-void
.end method
