.class public Lorg/google/googlejavaformat/FormatterDiagnostic;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final column:I

.field private final lineNumber:I

.field private final message:Ljava/lang/String;


# direct methods
.method private constructor <init>(IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "lineNumber",
            "column",
            "message"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/google/googlejavaformat/FormatterDiagnostic;->lineNumber:I

    iput p2, p0, Lorg/google/googlejavaformat/FormatterDiagnostic;->column:I

    iput-object p3, p0, Lorg/google/googlejavaformat/FormatterDiagnostic;->message:Ljava/lang/String;

    return-void
.end method

.method public static create(IILjava/lang/String;)Lorg/google/googlejavaformat/FormatterDiagnostic;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "lineNumber",
            "column",
            "message"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 2
    :goto_0
    invoke-static {v2}, Lw2/H;->d(Z)V

    if-ltz p1, :cond_1

    move v0, v1

    .line 3
    :cond_1
    invoke-static {v0}, Lw2/H;->d(Z)V

    .line 4
    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lorg/google/googlejavaformat/FormatterDiagnostic;

    invoke-direct {v0, p0, p1, p2}, Lorg/google/googlejavaformat/FormatterDiagnostic;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lorg/google/googlejavaformat/FormatterDiagnostic;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/google/googlejavaformat/FormatterDiagnostic;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1, p0}, Lorg/google/googlejavaformat/FormatterDiagnostic;-><init>(IILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public column()I
    .locals 1

    iget v0, p0, Lorg/google/googlejavaformat/FormatterDiagnostic;->column:I

    return v0
.end method

.method public line()I
    .locals 1

    iget v0, p0, Lorg/google/googlejavaformat/FormatterDiagnostic;->lineNumber:I

    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/google/googlejavaformat/FormatterDiagnostic;->message:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/google/googlejavaformat/FormatterDiagnostic;->lineNumber:I

    const/16 v2, 0x3a

    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Lorg/google/googlejavaformat/FormatterDiagnostic;->column:I

    if-ltz v1, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    iget v1, p0, Lorg/google/googlejavaformat/FormatterDiagnostic;->lineNumber:I

    if-gez v1, :cond_2

    iget v1, p0, Lorg/google/googlejavaformat/FormatterDiagnostic;->column:I

    if-ltz v1, :cond_3

    :cond_2
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/google/googlejavaformat/FormatterDiagnostic;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
