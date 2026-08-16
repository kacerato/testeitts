.class public Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;
.super Lorg/eclipse/jdt/core/compiler/CategorizedProblem;
.source "SourceFile"


# static fields
.field public static final EMPTY_VALUES:[Ljava/lang/Object;

.field private static final MARKER_TYPE_PROBLEM:Ljava/lang/String; = "org.eclipse.jdt.core.problem"

.field private static final MARKER_TYPE_TASK:Ljava/lang/String; = "org.eclipse.jdt.core.task"


# instance fields
.field private arguments:[Ljava/lang/String;

.field public column:I

.field private endPosition:I

.field private fileName:[C

.field private id:I

.field private line:I

.field private message:Ljava/lang/String;

.field public severity:I

.field private startPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->EMPTY_VALUES:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([CLjava/lang/String;I[Ljava/lang/String;IIIII)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/core/compiler/CategorizedProblem;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->fileName:[C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->message:Ljava/lang/String;

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->id:I

    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->arguments:[Ljava/lang/String;

    iput p5, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->severity:I

    iput p6, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->startPosition:I

    iput p7, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->endPosition:I

    iput p8, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->line:I

    iput p9, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->column:I

    return-void
.end method


# virtual methods
.method public errorReportSource([C)Ljava/lang/String;
    .locals 10

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->startPosition:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->endPosition:I

    if-gt v0, v1, :cond_f

    if-gez v0, :cond_0

    if-ltz v1, :cond_f

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/util/Messages;->problem_atLine:Ljava/lang/String;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->line:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/util/Util;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    array-length v3, p1

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->startPosition:I

    if-lt v4, v3, :cond_2

    add-int/lit8 v4, v3, -0x1

    :cond_2
    :goto_0
    const/16 v5, 0xd

    const/16 v6, 0xa

    if-gtz v4, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v4, -0x1

    aget-char v7, p1, v7

    if-eq v7, v6, :cond_5

    if-ne v7, v5, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->endPosition:I

    if-lt v7, v3, :cond_6

    add-int/lit8 v7, v3, -0x1

    :cond_6
    :goto_2
    add-int/lit8 v8, v7, 0x1

    if-lt v8, v3, :cond_7

    goto :goto_3

    :cond_7
    aget-char v9, p1, v8

    if-eq v9, v5, :cond_9

    if-ne v9, v6, :cond_8

    goto :goto_3

    :cond_8
    move v7, v8

    goto :goto_2

    :cond_9
    :goto_3
    aget-char v5, p1, v4

    if-eq v5, v1, :cond_e

    if-eq v5, v2, :cond_e

    sub-int/2addr v7, v4

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, p1, v4, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/Util;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "\t"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4
    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->startPosition:I

    if-lt v4, v5, :cond_c

    :goto_5
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->endPosition:I

    if-lt p1, v3, :cond_a

    add-int/lit8 p1, v3, -0x1

    :cond_a
    if-le v5, p1, :cond_b

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    const/16 p1, 0x5e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_c
    aget-char v5, p1, v4

    if-ne v5, v2, :cond_d

    move v5, v2

    goto :goto_6

    :cond_d
    move v5, v1

    :goto_6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_f
    :goto_7
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/util/Messages;->problem_noSourceInformation:Ljava/lang/String;

    return-object p1
.end method

.method public getArguments()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->arguments:[Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryID()I
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->severity:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->id:I

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->getProblemCategory(II)I

    move-result v0

    return v0
.end method

.method public getID()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->id:I

    return v0
.end method

.method public getInternalCategoryMessage()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->getCategoryID()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :sswitch_0
    const-string v0, "module"

    return-object v0

    :sswitch_1
    const-string v0, "restriction"

    return-object v0

    :sswitch_2
    const-string v0, "nls"

    return-object v0

    :sswitch_3
    const-string v0, "unchecked/raw"

    return-object v0

    :sswitch_4
    const-string v0, "unnecessary code"

    return-object v0

    :sswitch_5
    const-string v0, "deprecation"

    return-object v0

    :sswitch_6
    const-string v0, "name shadowing conflict"

    return-object v0

    :sswitch_7
    const-string v0, "potential programming problem"

    return-object v0

    :sswitch_8
    const-string v0, "code style"

    return-object v0

    :sswitch_9
    const-string v0, "javadoc"

    return-object v0

    :sswitch_a
    const-string v0, "internal"

    return-object v0

    :sswitch_b
    const-string v0, "member"

    return-object v0

    :sswitch_c
    const-string v0, "type"

    return-object v0

    :sswitch_d
    const-string v0, "import"

    return-object v0

    :sswitch_e
    const-string v0, "syntax"

    return-object v0

    :sswitch_f
    const-string v0, "buildpath"

    return-object v0

    :sswitch_10
    const-string v0, "unspecified"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_10
        0xa -> :sswitch_f
        0x14 -> :sswitch_e
        0x1e -> :sswitch_d
        0x28 -> :sswitch_c
        0x32 -> :sswitch_b
        0x3c -> :sswitch_a
        0x46 -> :sswitch_9
        0x50 -> :sswitch_8
        0x5a -> :sswitch_7
        0x64 -> :sswitch_6
        0x6e -> :sswitch_5
        0x78 -> :sswitch_4
        0x82 -> :sswitch_3
        0x8c -> :sswitch_2
        0x96 -> :sswitch_1
        0xa0 -> :sswitch_0
    .end sparse-switch
.end method

.method public getMarkerType()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->id:I

    const v1, 0x200001c2

    if-ne v0, v1, :cond_0

    const-string v0, "org.eclipse.jdt.core.task"

    goto :goto_0

    :cond_0
    const-string v0, "org.eclipse.jdt.core.problem"

    :goto_0
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginatingFileName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->fileName:[C

    return-object v0
.end method

.method public getSourceColumnNumber()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->column:I

    return v0
.end method

.method public getSourceEnd()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->endPosition:I

    return v0
.end method

.method public getSourceLineNumber()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->line:I

    return v0
.end method

.method public getSourceStart()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->startPosition:I

    return v0
.end method

.method public isError()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->severity:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInfo()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->severity:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isWarning()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->severity:I

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public reportError()V
    .locals 0

    return-void
.end method

.method public setOriginatingFileName([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->fileName:[C

    return-void
.end method

.method public setSourceEnd(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->endPosition:I

    return-void
.end method

.method public setSourceLineNumber(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->line:I

    return-void
.end method

.method public setSourceStart(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->startPosition:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pb("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->id:I

    const v2, 0x3fffff

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->message:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->message:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->arguments:[Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->arguments:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->arguments:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method
