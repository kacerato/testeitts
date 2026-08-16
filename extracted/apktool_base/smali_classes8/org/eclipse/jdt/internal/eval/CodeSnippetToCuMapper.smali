.class Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/eval/EvaluationConstants;


# instance fields
.field codeSnippet:[C

.field complianceVersion:J

.field public cuSource:[C

.field public lineNumberOffset:I

.field localVarNames:[[C

.field localVarTypeNames:[[C

.field snippetClassName:[C

.field snippetDeclaringTypeName:[C

.field snippetImports:[[C

.field snippetPackageName:[C

.field snippetVarClassName:[C

.field public startPosOffset:I


# direct methods
.method public constructor <init>([C[C[[C[C[C[[C[[C[I[CLjava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p8, 0x0

    iput p8, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->lineNumberOffset:I

    iput p8, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->startPosOffset:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->codeSnippet:[C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->snippetPackageName:[C

    iput-object p3, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->snippetImports:[[C

    iput-object p4, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->snippetClassName:[C

    iput-object p5, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->snippetVarClassName:[C

    iput-object p6, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->localVarNames:[[C

    iput-object p7, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->localVarTypeNames:[[C

    iput-object p9, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->snippetDeclaringTypeName:[C

    iput-wide p11, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->complianceVersion:J

    invoke-direct {p0, p10}, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->buildCUSource(Ljava/lang/String;)V

    return-void
.end method

.method private buildCUSource(Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->snippetPackageName:[C

    if-eqz v1, :cond_0

    array-length v1, v1

    if-eqz v1, :cond_0

    const-string v1, "package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->snippetPackageName:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->lineNumberOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->lineNumberOffset:I

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->snippetImports:[[C

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    const/16 v5, 0x3b

    if-lt v3, v4, :cond_6

    const-string v1, "public class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->snippetClassName:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->snippetVarClassName:[C

    const-string v3, " extends "

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->snippetVarClassName:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->PACKAGE_NAME:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->ROOT_CLASS_NAME:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :goto_1
    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->lineNumberOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->lineNumberOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->snippetDeclaringTypeName:[C

    const-string v3, " "

    if-eqz v1, :cond_2

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->snippetDeclaringTypeName:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->DELEGATE_THIS:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->lineNumberOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->lineNumberOffset:I

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->localVarNames:[[C

    if-eqz v1, :cond_4

    array-length v1, v1

    move v4, v2

    :goto_2
    if-lt v4, v1, :cond_3

    goto :goto_3

    :cond_3
    const-string v6, "    "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->localVarTypeNames:[[C

    aget-object v6, v6, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v6, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->LOCAL_VAR_PREFIX:[C

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->localVarNames:[[C

    aget-object v6, v6, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v6, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->lineNumberOffset:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->lineNumberOffset:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    iget-wide v3, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->complianceVersion:J

    const-wide/32 v5, 0x310000

    cmp-long v1, v3, v5

    if-ltz v1, :cond_5

    const-string v1, "@Override "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    const-string v1, "public void run() throws Throwable {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->lineNumberOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->lineNumberOffset:I

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->startPosOffset:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->codeSnippet:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    new-array v1, p1, [C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->cuSource:[C

    invoke-virtual {v0, v2, p1, v1, v2}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    return-void

    :cond_6
    const-string v4, "import "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v4, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->lineNumberOffset:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->lineNumberOffset:I

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public getCUSource(Ljava/lang/String;)[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->cuSource:[C

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->buildCUSource(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->cuSource:[C

    return-object p1
.end method

.method public getCompletionRequestor(Lorg/eclipse/jdt/core/CompletionRequestor;)Lorg/eclipse/jdt/core/CompletionRequestor;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$1;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$1;-><init>(Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;Lorg/eclipse/jdt/core/CompletionRequestor;)V

    return-object v0
.end method

.method public getEvaluationType(I)I
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->snippetPackageName:[C

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    array-length v0, v0

    if-eqz v0, :cond_1

    if-ne p1, v2, :cond_0

    const/4 p1, 0x4

    return p1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->snippetImports:[[C

    if-gt v0, p1, :cond_2

    array-length v4, v3

    add-int/2addr v4, v0

    if-ge p1, v4, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    array-length v3, v3

    add-int/2addr v3, v2

    add-int/2addr v0, v3

    iget-object v3, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->snippetDeclaringTypeName:[C

    const/4 v4, 0x0

    if-nez v3, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    iget-object v5, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->localVarNames:[[C

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    array-length v4, v5

    :goto_2
    add-int/2addr v3, v4

    add-int/2addr v0, v3

    const/4 v3, 0x5

    if-le v0, p1, :cond_5

    return v3

    :cond_5
    add-int/2addr v0, v2

    iget p1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->lineNumberOffset:I

    if-lt v0, p1, :cond_6

    return v1

    :cond_6
    return v3
.end method

.method public getImport(I)[C
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->lineNumberOffset:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;->snippetImports:[[C

    array-length v2, v1

    sub-int/2addr v0, v2

    sub-int/2addr p1, v0

    aget-object p1, v1, p1

    return-object p1
.end method

.method public getSelectionRequestor(Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;)Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$2;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper$2;-><init>(Lorg/eclipse/jdt/internal/eval/CodeSnippetToCuMapper;Lorg/eclipse/jdt/internal/codeassist/ISelectionRequestor;)V

    return-object v0
.end method
