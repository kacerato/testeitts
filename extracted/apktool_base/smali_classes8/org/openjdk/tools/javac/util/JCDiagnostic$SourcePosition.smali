.class Lorg/openjdk/tools/javac/util/JCDiagnostic$SourcePosition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/JCDiagnostic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SourcePosition"
.end annotation


# instance fields
.field private final column:I

.field private final line:I

.field final synthetic this$0:Lorg/openjdk/tools/javac/util/JCDiagnostic;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V
    .locals 3

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$SourcePosition;->this$0:Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->access$000(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->access$000(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-interface {v0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getPreferredPosition()I

    move-result v0

    :goto_0
    if-eq v0, v1, :cond_2

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->access$100(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->access$100(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/DiagnosticSource;->getLineNumber(I)I

    move-result v1

    iput v1, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$SourcePosition;->line:I

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->access$100(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/openjdk/tools/javac/util/DiagnosticSource;->getColumnNumber(IZ)I

    move-result p1

    iput p1, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$SourcePosition;->column:I

    goto :goto_2

    :cond_2
    :goto_1
    iput v1, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$SourcePosition;->column:I

    iput v1, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$SourcePosition;->line:I

    :goto_2
    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$SourcePosition;->column:I

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/util/JCDiagnostic$SourcePosition;->line:I

    return v0
.end method
