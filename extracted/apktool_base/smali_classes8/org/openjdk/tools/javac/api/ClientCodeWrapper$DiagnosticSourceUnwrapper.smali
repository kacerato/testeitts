.class public Lorg/openjdk/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/tools/Diagnostic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/api/ClientCodeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DiagnosticSourceUnwrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/openjdk/javax/tools/Diagnostic<",
        "Lorg/openjdk/javax/tools/JavaFileObject;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Lorg/openjdk/tools/javac/util/JCDiagnostic;

.field final synthetic this$0:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/api/ClientCodeWrapper;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;->this$0:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;->d:Lorg/openjdk/tools/javac/util/JCDiagnostic;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;->d:Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnNumber()J
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;->d:Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getColumnNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEndPosition()J
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;->d:Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getEndPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getKind()Lorg/openjdk/javax/tools/Diagnostic$Kind;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;->d:Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getKind()Lorg/openjdk/javax/tools/Diagnostic$Kind;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()J
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;->d:Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getLineNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMessage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;->d:Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getMessage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPosition()J
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;->d:Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getSource()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;->getSource()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;->this$0:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

    iget-object v1, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;->d:Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getSource()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->unwrap(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    return-object v0
.end method

.method public getStartPosition()J
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;->d:Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getStartPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$DiagnosticSourceUnwrapper;->d:Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
