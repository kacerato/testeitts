.class public Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTag;
.super Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;
.implements Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadoc;


# static fields
.field public static final NO_CHAR_CHAR_CHAR:[[[C


# instance fields
.field public completionFlags:I

.field private possibleTags:[[[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [[[C

    sput-object v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTag;->NO_CHAR_CHAR_CHAR:[[[C

    return-void
.end method

.method public constructor <init>([CJII[[[CZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;-><init>([CJII)V

    const/4 p1, 0x1

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTag;->completionFlags:I

    iput-object p6, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTag;->possibleTags:[[[C

    if-eqz p7, :cond_0

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTag;->completionFlags:I

    :cond_0
    return-void
.end method


# virtual methods
.method public addCompletionFlags(I)V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTag;->completionFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTag;->completionFlags:I

    return-void
.end method

.method public filterPossibleTags(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTag;->possibleTags:[[[C

    if-eqz v2, :cond_11

    array-length v2, v2

    if-eqz v2, :cond_11

    iget v2, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTag;->completionFlags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    goto/16 :goto_6

    :cond_0
    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eq v2, v3, :cond_5

    if-eq v2, v5, :cond_4

    if-eq v2, v4, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->isModuleInfo()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->MODULE_TAGS:[[C

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    array-length v3, v2

    if-lez v3, :cond_3

    aget-object v2, v2, v6

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    sget-object v3, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionParser;->FAKE_TYPE_NAME:[C

    if-ne v2, v3, :cond_3

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->CLASS_TAGS:[[C

    goto :goto_0

    :cond_3
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->COMPILATION_UNIT_TAGS:[[C

    goto :goto_0

    :cond_4
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->CLASS_TAGS:[[C

    goto :goto_0

    :cond_5
    move-object v2, v1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v3

    if-nez v3, :cond_7

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->initializedField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v2, :cond_6

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->PACKAGE_TAGS:[[C

    goto :goto_0

    :cond_6
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->FIELD_TAGS:[[C

    goto :goto_0

    :cond_7
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->METHOD_TAGS:[[C

    :goto_0
    iget-object v3, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTag;->possibleTags:[[[C

    array-length v3, v3

    move v7, v6

    :goto_1
    if-lt v7, v3, :cond_8

    return-void

    :cond_8
    iget-object v8, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTag;->possibleTags:[[[C

    aget-object v8, v8, v7

    array-length v8, v8

    array-length v9, v2

    new-array v10, v8, [[C

    move v11, v6

    move v12, v11

    :goto_2
    if-lt v11, v8, :cond_a

    if-ge v12, v8, :cond_9

    iget-object v8, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTag;->possibleTags:[[[C

    new-array v9, v12, [[C

    aput-object v9, v8, v7

    invoke-static {v10, v6, v9, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_a
    iget-object v13, v0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTag;->possibleTags:[[[C

    aget-object v13, v13, v7

    aget-object v13, v13, v11

    move v14, v6

    :goto_3
    if-lt v14, v9, :cond_b

    goto :goto_5

    :cond_b
    aget-char v15, v13, v6

    aget-object v4, v2, v14

    aget-char v5, v4, v6

    if-ne v15, v5, :cond_10

    invoke-static {v13, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_10

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_PARAM:[C

    if-ne v13, v4, :cond_e

    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->kind:I

    const-wide/32 v14, 0x310000

    const/4 v5, 0x3

    if-eq v4, v5, :cond_d

    const/4 v5, 0x4

    if-eq v4, v5, :cond_c

    add-int/lit8 v4, v12, 0x1

    aput-object v13, v10, v12

    :goto_4
    move v12, v4

    goto :goto_5

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v4

    iget-wide v5, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    cmp-long v4, v5, v14

    if-ltz v4, :cond_f

    add-int/lit8 v4, v12, 0x1

    aput-object v13, v10, v12

    goto :goto_4

    :cond_d
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v4

    iget-wide v4, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    cmp-long v4, v4, v14

    if-ltz v4, :cond_f

    move-object v4, v1

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isGenericType()Z

    move-result v4

    if-eqz v4, :cond_f

    add-int/lit8 v4, v12, 0x1

    aput-object v13, v10, v12

    goto :goto_4

    :cond_e
    add-int/lit8 v4, v12, 0x1

    aput-object v13, v10, v12

    goto :goto_4

    :cond_f
    :goto_5
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x0

    goto :goto_2

    :cond_10
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x0

    goto :goto_3

    :cond_11
    :goto_6
    return-void
.end method

.method public getCompletionFlags()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTag;->completionFlags:I

    return v0
.end method

.method public getPossibleBlockTags()[[C
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTag;->possibleTags:[[[C

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPossibleInlineTags()[[C
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTag;->possibleTags:[[[C

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 6

    const-string v0, "<CompleteOnJavadocTag:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x40

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTag;->possibleTags:[[[C

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const-string v1, "\n\t- "

    const/16 v2, 0xa

    if-eqz p1, :cond_2

    array-length v3, p1

    if-lez v3, :cond_2

    const-string v4, "\npossible block tags:"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v4, v0

    :goto_0
    if-lt v4, v3, :cond_1

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v5, p1, v4

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnJavadocTag;->possibleTags:[[[C

    const/4 v3, 0x1

    aget-object p1, p1, v3

    if-eqz p1, :cond_4

    array-length v3, p1

    if-lez v3, :cond_4

    const-string v4, "\npossible inline tags:"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    if-lt v0, v3, :cond_3

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v4, p1, v0

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    const/16 p1, 0x3e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2
.end method
