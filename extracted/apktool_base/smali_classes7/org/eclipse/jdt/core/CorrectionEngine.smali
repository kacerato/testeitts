.class public Lorg/eclipse/jdt/core/CorrectionEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final CLASSES:I = 0x1

.field protected static final FIELD:I = 0x10

.field protected static final IMPORT:I = 0x4

.field protected static final INTERFACES:I = 0x2

.field protected static final LOCAL:I = 0x20

.field protected static final METHOD:I = 0x8


# instance fields
.field protected compilationUnit:Lorg/eclipse/jdt/core/ICompilationUnit;

.field protected completionRequestor:Lorg/eclipse/jdt/core/CompletionRequestor;

.field protected correctionEnd:I

.field protected correctionRequestor:Lorg/eclipse/jdt/core/ICorrectionRequestor;

.field protected correctionStart:I

.field protected filter:I

.field protected prefixLength:I


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lorg/eclipse/jdt/core/CorrectionEngine$1;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/core/CorrectionEngine$1;-><init>(Lorg/eclipse/jdt/core/CorrectionEngine;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/CorrectionEngine;->completionRequestor:Lorg/eclipse/jdt/core/CompletionRequestor;

    return-void
.end method

.method private computeCorrections(Lorg/eclipse/jdt/core/ICompilationUnit;III[Ljava/lang/String;Lorg/eclipse/jdt/core/ICorrectionRequestor;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    if-eqz p5, :cond_3

    if-eq p3, v0, :cond_3

    if-ne p4, v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p6, :cond_2

    .line 15
    iput-object p6, p0, Lorg/eclipse/jdt/core/CorrectionEngine;->correctionRequestor:Lorg/eclipse/jdt/core/ICorrectionRequestor;

    .line 16
    iput p3, p0, Lorg/eclipse/jdt/core/CorrectionEngine;->correctionStart:I

    .line 17
    iput p4, p0, Lorg/eclipse/jdt/core/CorrectionEngine;->correctionEnd:I

    .line 18
    iput-object p1, p0, Lorg/eclipse/jdt/core/CorrectionEngine;->compilationUnit:Lorg/eclipse/jdt/core/ICompilationUnit;

    const/4 p1, 0x0

    sparse-switch p2, :sswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :sswitch_0
    const/4 p2, 0x4

    .line 19
    :try_start_0
    iput p2, p0, Lorg/eclipse/jdt/core/CorrectionEngine;->filter:I

    .line 20
    aget-object p1, p5, p1

    goto :goto_0

    :sswitch_1
    const/16 p1, 0x8

    .line 21
    iput p1, p0, Lorg/eclipse/jdt/core/CorrectionEngine;->filter:I

    const/4 p1, 0x1

    .line 22
    aget-object p1, p5, p1

    goto :goto_0

    :sswitch_2
    const/16 p2, 0x30

    .line 23
    iput p2, p0, Lorg/eclipse/jdt/core/CorrectionEngine;->filter:I

    .line 24
    aget-object p1, p5, p1

    goto :goto_0

    :sswitch_3
    const/16 p2, 0x10

    .line 25
    iput p2, p0, Lorg/eclipse/jdt/core/CorrectionEngine;->filter:I

    .line 26
    aget-object p1, p5, p1

    goto :goto_0

    :sswitch_4
    const/4 p2, 0x3

    .line 27
    iput p2, p0, Lorg/eclipse/jdt/core/CorrectionEngine;->filter:I

    .line 28
    aget-object p1, p5, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz p1, :cond_1

    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/CorrectionEngine;->correct([C)V

    :catch_0
    :cond_1
    return-void

    .line 30
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/eclipse/jdt/internal/core/util/Messages;->correction_nullRequestor:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1000002 -> :sswitch_4
        0x2000046 -> :sswitch_3
        0x2000053 -> :sswitch_2
        0x4000064 -> :sswitch_1
        0x10000186 -> :sswitch_0
        0x22000032 -> :sswitch_2
    .end sparse-switch
.end method

.method private correct([C)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    :try_start_0
    iget-object v2, v1, Lorg/eclipse/jdt/core/CorrectionEngine;->compilationUnit:Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-interface {v2}, Lorg/eclipse/jdt/core/ISourceReference;->getSource()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/eclipse/jdt/core/CorrectionEngine;->compilationUnit:Lorg/eclipse/jdt/core/ICompilationUnit;

    invoke-interface {v3}, Lorg/eclipse/jdt/core/IJavaElement;->getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lorg/eclipse/jdt/core/IJavaProject;->getOptions(Z)Ljava/util/Map;

    move-result-object v3

    const-string v5, "org.eclipse.jdt.core.compiler.source"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v10

    const-string v5, "org.eclipse.jdt.core.compiler.compliance"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v12

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v16}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;-><init>(ZZZJJ[[C[[CZ)V

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    iget v2, v1, Lorg/eclipse/jdt/core/CorrectionEngine;->correctionStart:I

    iget v5, v1, Lorg/eclipse/jdt/core/CorrectionEngine;->correctionEnd:I

    invoke-virtual {v3, v2, v5}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    sget-object v2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    :cond_0
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v5

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_1

    return-void

    :cond_1
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenSource()[C

    move-result-object v5

    invoke-static {v2, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v2

    invoke-static {v2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[C)Z

    move-result v5

    if-nez v5, :cond_2

    return-void

    :cond_2
    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v2, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    iput v2, v1, Lorg/eclipse/jdt/core/CorrectionEngine;->correctionStart:I

    iget v2, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v2, v1, Lorg/eclipse/jdt/core/CorrectionEngine;->correctionEnd:I

    const/16 v2, 0x2e

    invoke-static {v2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v0

    add-int/2addr v0, v4

    iput v0, v1, Lorg/eclipse/jdt/core/CorrectionEngine;->prefixLength:I

    iget v0, v1, Lorg/eclipse/jdt/core/CorrectionEngine;->correctionStart:I

    iget v2, v1, Lorg/eclipse/jdt/core/CorrectionEngine;->correctionEnd:I

    invoke-virtual {v3, v0, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    const/4 v2, 0x0

    move v4, v2

    move v2, v0

    :goto_0
    const/4 v5, 0x4

    if-lt v4, v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextCharAsJavaIdentifierPart()Z

    move-result v5

    if-eqz v5, :cond_4

    iget v2, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    add-int/lit8 v4, v4, 0x1

    move/from16 v17, v2

    move v2, v0

    move/from16 v0, v17

    goto :goto_0

    :cond_4
    :goto_1
    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getOptions()Ljava/util/Hashtable;

    move-result-object v3
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v3}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    const-string v4, "org.eclipse.jdt.core.codeComplete.camelCaseMatch"

    const-string v5, "disabled"

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lorg/eclipse/jdt/core/JavaCore;->setOptions(Ljava/util/Hashtable;)V

    iget-object v0, v1, Lorg/eclipse/jdt/core/CorrectionEngine;->compilationUnit:Lorg/eclipse/jdt/core/ICompilationUnit;

    iget-object v4, v1, Lorg/eclipse/jdt/core/CorrectionEngine;->completionRequestor:Lorg/eclipse/jdt/core/CompletionRequestor;

    invoke-interface {v0, v2, v4}, Lorg/eclipse/jdt/core/ICodeAssist;->codeComplete(ILorg/eclipse/jdt/core/CompletionRequestor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v3}, Lorg/eclipse/jdt/core/JavaCore;->setOptions(Ljava/util/Hashtable;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lorg/eclipse/jdt/core/JavaCore;->setOptions(Ljava/util/Hashtable;)V

    throw v0
    :try_end_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void
.end method

.method public static getAllWarningTokens()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->warningTokens:[Ljava/lang/String;

    return-object v0
.end method

.method public static getProblemArguments(Lorg/eclipse/core/resources/IMarker;)[Ljava/lang/String;
    .locals 2

    const-string v0, "arguments"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lorg/eclipse/core/resources/IMarker;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/util/Util;->getProblemArgumentsFromMarker(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWarningToken(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->getIrritant(I)I

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->warningTokenFromIrritant(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public computeCorrections(Lorg/eclipse/core/resources/IMarker;Lorg/eclipse/jdt/core/ICompilationUnit;ILorg/eclipse/jdt/core/ICorrectionRequestor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-interface {p1}, Lorg/eclipse/core/resources/IMarker;->getResource()Lorg/eclipse/core/resources/IResource;

    move-result-object p2

    invoke-static {p2}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IResource;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p2

    .line 2
    :cond_0
    instance-of v0, p2, Lorg/eclipse/jdt/core/ICompilationUnit;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    move-object v2, p2

    check-cast v2, Lorg/eclipse/jdt/core/ICompilationUnit;

    .line 4
    const-string p2, "id"

    const/4 v0, -0x1

    invoke-interface {p1, p2, v0}, Lorg/eclipse/core/resources/IMarker;->getAttribute(Ljava/lang/String;I)I

    move-result v3

    .line 5
    const-string p2, "arguments"

    const-string v1, ""

    invoke-interface {p1, p2, v1}, Lorg/eclipse/core/resources/IMarker;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/eclipse/jdt/internal/core/util/Util;->getProblemArgumentsFromMarker(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 6
    const-string p2, "charStart"

    invoke-interface {p1, p2, v0}, Lorg/eclipse/core/resources/IMarker;->getAttribute(Ljava/lang/String;I)I

    move-result p2

    .line 7
    const-string v1, "charEnd"

    invoke-interface {p1, v1, v0}, Lorg/eclipse/core/resources/IMarker;->getAttribute(Ljava/lang/String;I)I

    move-result p1

    add-int v4, p2, p3

    add-int v5, p1, p3

    move-object v1, p0

    move-object v7, p4

    .line 8
    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/core/CorrectionEngine;->computeCorrections(Lorg/eclipse/jdt/core/ICompilationUnit;III[Ljava/lang/String;Lorg/eclipse/jdt/core/ICorrectionRequestor;)V

    return-void
.end method

.method public computeCorrections(Lorg/eclipse/jdt/core/compiler/IProblem;Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/ICorrectionRequestor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 9
    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getID()I

    move-result v2

    .line 10
    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceStart()I

    move-result v3

    .line 11
    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceEnd()I

    move-result v4

    .line 12
    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getArguments()[Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move-object v6, p3

    .line 13
    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/core/CorrectionEngine;->computeCorrections(Lorg/eclipse/jdt/core/ICompilationUnit;III[Ljava/lang/String;Lorg/eclipse/jdt/core/ICorrectionRequestor;)V

    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/eclipse/jdt/internal/core/util/Messages;->correction_nullUnit:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
