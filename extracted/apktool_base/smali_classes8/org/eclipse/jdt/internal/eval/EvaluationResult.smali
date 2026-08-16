.class public Lorg/eclipse/jdt/internal/eval/EvaluationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final NO_PROBLEMS:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

.field public static final T_CODE_SNIPPET:I = 0x2

.field public static final T_IMPORT:I = 0x3

.field public static final T_INTERNAL:I = 0x5

.field public static final T_PACKAGE:I = 0x4

.field public static final T_VARIABLE:I = 0x1


# instance fields
.field displayString:[C

.field evaluationID:[C

.field evaluationType:I

.field problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

.field typeName:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    sput-object v0, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->NO_PROBLEMS:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    return-void
.end method

.method public constructor <init>([CI[C[C)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->evaluationID:[C

    .line 3
    iput p2, p0, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->evaluationType:I

    .line 4
    iput-object p3, p0, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->displayString:[C

    .line 5
    iput-object p4, p0, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->typeName:[C

    .line 6
    sget-object p1, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->NO_PROBLEMS:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    return-void
.end method

.method public constructor <init>([CI[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->evaluationID:[C

    .line 9
    iput p2, p0, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->evaluationType:I

    .line 10
    iput-object p3, p0, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    return-void
.end method


# virtual methods
.method public addProblem(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    aput-object p1, v0, v1

    return-void
.end method

.method public getEvaluationID()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->evaluationID:[C

    return-object v0
.end method

.method public getEvaluationType()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->evaluationType:I

    return v0
.end method

.method public getProblems()[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getValueDisplayString()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->displayString:[C

    return-object v0
.end method

.method public getValueTypeName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->typeName:[C

    return-object v0
.end method

.method public hasErrors()Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    array-length v3, v2

    if-lt v0, v3, :cond_1

    return v1

    :cond_1
    aget-object v2, v2, v0

    invoke-interface {v2}, Lorg/eclipse/jdt/core/compiler/IProblem;->isError()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public hasProblems()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasValue()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->displayString:[C

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasWarnings()Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    array-length v3, v2

    if-lt v0, v3, :cond_1

    return v1

    :cond_1
    aget-object v2, v2, v0

    invoke-interface {v2}, Lorg/eclipse/jdt/core/compiler/IProblem;->isWarning()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->evaluationType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Internal problem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v1, "Package"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const-string v1, "Import"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const-string v1, "Code snippet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    const-string v1, "Global variable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->evaluationID:[C

    if-nez v1, :cond_5

    const-string v1, "<unknown>"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->hasProblems()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "Problems:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    array-length v3, v2

    if-lt v1, v3, :cond_6

    goto :goto_2

    :cond_6
    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->typeName:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/EvaluationResult;->displayString:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_8
    const-string v1, "(No explicit return value)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
