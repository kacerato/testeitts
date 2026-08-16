.class Lorg/openjdk/tools/javac/util/Log$DefaultDiagnosticHandler;
.super Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultDiagnosticHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/util/Log;


# direct methods
.method private constructor <init>(Lorg/openjdk/tools/javac/util/Log;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/openjdk/tools/javac/util/Log$DefaultDiagnosticHandler;->this$0:Lorg/openjdk/tools/javac/util/Log;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/util/Log;Lorg/openjdk/tools/javac/util/Log$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/util/Log$DefaultDiagnosticHandler;-><init>(Lorg/openjdk/tools/javac/util/Log;)V

    return-void
.end method


# virtual methods
.method public report(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Log$DefaultDiagnosticHandler;->this$0:Lorg/openjdk/tools/javac/util/Log;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Log;->expectDiagKeys:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lorg/openjdk/tools/javac/util/Log$1;->$SwitchMap$com$sun$tools$javac$util$JCDiagnostic$DiagnosticType:[I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getType()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Log$DefaultDiagnosticHandler;->this$0:Lorg/openjdk/tools/javac/util/Log;

    iget v2, v0, Lorg/openjdk/tools/javac/util/Log;->nerrors:I

    iget v0, v0, Lorg/openjdk/tools/javac/util/Log;->MaxErrors:I

    if-ge v2, v0, :cond_7

    sget-object v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->MULTIPLE:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->isFlagSet(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Log$DefaultDiagnosticHandler;->this$0:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/util/Log;->access$200(Lorg/openjdk/tools/javac/util/Log;Lorg/openjdk/tools/javac/util/JCDiagnostic;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Log$DefaultDiagnosticHandler;->this$0:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Log;->writeDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Log$DefaultDiagnosticHandler;->this$0:Lorg/openjdk/tools/javac/util/Log;

    iget v2, v0, Lorg/openjdk/tools/javac/util/Log;->nerrors:I

    add-int/2addr v2, v1

    iput v2, v0, Lorg/openjdk/tools/javac/util/Log;->nerrors:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Log$DefaultDiagnosticHandler;->this$0:Lorg/openjdk/tools/javac/util/Log;

    iget-boolean v0, v0, Lorg/openjdk/tools/javac/util/Log;->emitWarnings:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->isMandatory()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_4
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Log$DefaultDiagnosticHandler;->this$0:Lorg/openjdk/tools/javac/util/Log;

    iget v2, v0, Lorg/openjdk/tools/javac/util/Log;->nwarnings:I

    iget v3, v0, Lorg/openjdk/tools/javac/util/Log;->MaxWarnings:I

    if-ge v2, v3, :cond_7

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Log;->writeDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Log$DefaultDiagnosticHandler;->this$0:Lorg/openjdk/tools/javac/util/Log;

    iget v2, v0, Lorg/openjdk/tools/javac/util/Log;->nwarnings:I

    add-int/2addr v2, v1

    iput v2, v0, Lorg/openjdk/tools/javac/util/Log;->nwarnings:I

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Log$DefaultDiagnosticHandler;->this$0:Lorg/openjdk/tools/javac/util/Log;

    iget-boolean v0, v0, Lorg/openjdk/tools/javac/util/Log;->emitWarnings:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->isMandatory()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Log$DefaultDiagnosticHandler;->this$0:Lorg/openjdk/tools/javac/util/Log;

    iget-boolean v2, v0, Lorg/openjdk/tools/javac/util/Log;->suppressNotes:Z

    if-nez v2, :cond_7

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Log;->writeDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    :cond_7
    :goto_0
    sget-object v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->COMPRESSED:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->isFlagSet(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/openjdk/tools/javac/util/Log$DefaultDiagnosticHandler;->this$0:Lorg/openjdk/tools/javac/util/Log;

    iput-boolean v1, p1, Lorg/openjdk/tools/javac/util/Log;->compressedOutput:Z

    :cond_8
    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
