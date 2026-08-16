.class public Lorg/openjdk/tools/javac/util/JCDiagnostic$MultilineDiagnostic;
.super Lorg/openjdk/tools/javac/util/JCDiagnostic;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/JCDiagnostic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultilineDiagnostic"
.end annotation


# instance fields
.field private final subdiagnostics:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->access$300(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/api/DiagnosticFormatter;

    move-result-object v1

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->access$400(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;

    move-result-object v2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getLintCategory()Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-result-object v3

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->access$500(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getDiagnosticSource()Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object v5

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->access$000(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/util/JCDiagnostic;-><init>(Lorg/openjdk/tools/javac/api/DiagnosticFormatter;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;Lorg/openjdk/tools/javac/code/Lint$LintCategory;Ljava/util/Set;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    iput-object p2, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$MultilineDiagnostic;->subdiagnostics:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic getSource()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getSource()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    return-object v0
.end method

.method public getSubdiagnostics()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$MultilineDiagnostic;->subdiagnostics:Lorg/openjdk/tools/javac/util/List;

    return-object v0
.end method

.method public isMultiline()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
