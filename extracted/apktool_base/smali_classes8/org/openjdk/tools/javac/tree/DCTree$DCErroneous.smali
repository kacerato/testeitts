.class public Lorg/openjdk/tools/javac/tree/DCTree$DCErroneous;
.super Lorg/openjdk/tools/javac/tree/DCTree;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/doctree/ErroneousTree;
.implements Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/DCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DCErroneous"
.end annotation


# instance fields
.field public final body:Ljava/lang/String;

.field public final diag:Lorg/openjdk/tools/javac/util/JCDiagnostic;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;Lorg/openjdk/tools/javac/util/DiagnosticSource;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/DCTree;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCErroneous;->body:Ljava/lang/String;

    const/4 v1, 0x0

    move-object v0, p2

    move-object v2, p3

    move-object v3, p0

    move-object v4, p4

    move-object v5, p5

    .line 3
    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCErroneous;->diag:Lorg/openjdk/tools/javac/util/JCDiagnostic;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/DCTree;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCErroneous;->body:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCErroneous;->diag:Lorg/openjdk/tools/javac/util/JCDiagnostic;

    return-void
.end method


# virtual methods
.method public accept(Lorg/openjdk/source/doctree/DocTreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/source/doctree/DocTreeVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    invoke-interface {p1, p0, p2}, Lorg/openjdk/source/doctree/DocTreeVisitor;->visitErroneous(Lorg/openjdk/source/doctree/ErroneousTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCErroneous;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getDiagnostic()Lorg/openjdk/javax/tools/Diagnostic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/javax/tools/Diagnostic<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCErroneous;->diag:Lorg/openjdk/tools/javac/util/JCDiagnostic;

    return-object v0
.end method

.method public getEndPosition(Lorg/openjdk/tools/javac/tree/EndPosTable;)I
    .locals 1

    iget p1, p0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCErroneous;->body:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method public getKind()Lorg/openjdk/source/doctree/DocTree$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->ERRONEOUS:Lorg/openjdk/source/doctree/DocTree$Kind;

    return-object v0
.end method

.method public getPreferredPosition()I
    .locals 2

    iget v0, p0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/DCTree$DCErroneous;->body:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getStartPosition()I
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/tree/DCTree;->pos:I

    return v0
.end method

.method public getTree()Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
