.class public Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;
.super Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter$AnonymousMemberFound;
    }
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x2

.field public static final FIELD:I = 0x1

.field public static final FIELD_AND_METHOD:I = 0x7

.field public static final FIELD_INITIALIZATION:I = 0x10

.field public static final LOCAL_TYPE:I = 0x20

.field public static final MEMBER_TYPE:I = 0x8

.field public static final METHOD:I = 0x4

.field public static final NONE:I


# instance fields
.field private cu:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

.field private flags:I

.field private parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

.field private source:[C

.field private unit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;


# direct methods
.method private constructor <init>(ILorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;)V
    .locals 1

    const/16 v0, 0x2e

    invoke-direct {p0, p2, v0}, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;C)V

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->flags:I

    return-void
.end method

.method public static buildCompilationUnit([Lorg/eclipse/jdt/internal/compiler/env/ISourceType;ILorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;-><init>(ILorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;)V

    :try_start_0
    invoke-direct {v0, p0, p3}, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->convert([Lorg/eclipse/jdt/internal/compiler/env/ISourceType;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static buildModularCompilationUnit(Lorg/eclipse/jdt/internal/compiler/env/IModule;Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;-><init>(ILorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;)V

    :try_start_0
    invoke-direct {v0, p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->convert(Lorg/eclipse/jdt/internal/compiler/env/IModule;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private convert(Lorg/eclipse/jdt/internal/core/SourceMethod;Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 103
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->getNameSourceStart()I

    move-result v2

    .line 104
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->getNameSourceEnd()I

    move-result v3

    .line 105
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->getTypeParameterNames()[[C

    move-result-object v4

    if-eqz v4, :cond_1

    .line 106
    array-length v7, v4

    if-lez v7, :cond_1

    .line 107
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->getTypeParameterBounds()[[[C

    move-result-object v8

    .line 108
    new-array v9, v7, [Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    const/4 v10, 0x0

    :goto_0
    if-lt v10, v7, :cond_0

    goto :goto_1

    .line 109
    :cond_0
    aget-object v11, v4, v10

    aget-object v12, v8, v10

    invoke-virtual {v0, v11, v12, v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->createTypeParameter([C[[CII)Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    move-result-object v11

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 110
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->getModifiers()I

    move-result v4

    .line 111
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->isConstructor()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    .line 112
    new-instance v7, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    invoke-direct {v7, v1}, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    .line 113
    iget v10, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v10, v10, -0x81

    iput v10, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    .line 114
    iput-object v9, v7, Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    goto :goto_5

    .line 115
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->isAnnotationMethod()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 116
    new-instance v7, Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;

    invoke-direct {v7, v1}, Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    .line 117
    move-object/from16 v10, p2

    check-cast v10, Lorg/eclipse/jdt/internal/core/SourceAnnotationMethodInfo;

    .line 118
    iget v11, v10, Lorg/eclipse/jdt/internal/core/SourceAnnotationMethodInfo;->defaultValueStart:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_3

    iget v11, v10, Lorg/eclipse/jdt/internal/core/SourceAnnotationMethodInfo;->defaultValueEnd:I

    if-ne v11, v12, :cond_3

    const/4 v11, 0x0

    goto :goto_2

    :cond_3
    move v11, v8

    .line 119
    :goto_2
    iget v12, v0, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->flags:I

    and-int/lit8 v12, v12, 0x10

    if-eqz v12, :cond_5

    if-eqz v11, :cond_5

    .line 120
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->getSource()[C

    move-result-object v12

    iget v13, v10, Lorg/eclipse/jdt/internal/core/SourceAnnotationMethodInfo;->defaultValueStart:I

    iget v10, v10, Lorg/eclipse/jdt/internal/core/SourceAnnotationMethodInfo;->defaultValueEnd:I

    add-int/2addr v10, v8

    invoke-static {v12, v13, v10}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v10

    if-eqz v10, :cond_4

    .line 121
    invoke-direct {v0, v10}, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->parseMemberValue([C)Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 122
    iput-object v10, v7, Lorg/eclipse/jdt/internal/compiler/ast/AnnotationMethodDeclaration;->defaultValue:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    :cond_5
    :goto_3
    if-eqz v11, :cond_7

    const/high16 v10, 0x20000

    or-int/2addr v4, v10

    goto :goto_4

    .line 123
    :cond_6
    new-instance v7, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    invoke-direct {v7, v1}, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    .line 124
    :cond_7
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->getReturnTypeName()[C

    move-result-object v10

    invoke-virtual {v0, v10, v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->createTypeReference([CII)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v10

    iput-object v10, v7, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 125
    iput-object v9, v7, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    .line 126
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/NamedMember;->getElementName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    iput-object v9, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->selector:[C

    and-int/lit16 v9, v4, 0x80

    if-eqz v9, :cond_8

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    :goto_6
    and-int/lit16 v4, v4, -0x81

    .line 127
    iput v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    .line 128
    iput v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 129
    iput v3, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    .line 130
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->getDeclarationSourceStart()I

    move-result v4

    iput v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceStart:I

    .line 131
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->getDeclarationSourceEnd()I

    move-result v4

    iput v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    .line 132
    iget-boolean v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->has1_5Compliance:Z

    if-eqz v4, :cond_9

    .line 133
    invoke-direct/range {p0 .. p1}, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->convertAnnotations(Lorg/eclipse/jdt/core/IAnnotatable;)[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v4

    iput-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    .line 134
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/SourceMethod;->getParameterTypes()[Ljava/lang/String;

    move-result-object v4

    .line 135
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->getArgumentNames()[[C

    move-result-object v9

    if-nez v4, :cond_a

    const/4 v10, 0x0

    goto :goto_7

    .line 136
    :cond_a
    array-length v10, v4

    :goto_7
    const/16 v11, 0x20

    if-lez v10, :cond_e

    .line 137
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/SourceMethod;->getParameters()[Lorg/eclipse/jdt/core/ILocalVariable;

    move-result-object v12

    int-to-long v13, v2

    shl-long/2addr v13, v11

    int-to-long v5, v3

    add-long/2addr v13, v5

    .line 138
    new-array v5, v10, [Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    iput-object v5, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    const/4 v5, 0x0

    :goto_8
    if-lt v5, v10, :cond_b

    goto :goto_9

    .line 139
    :cond_b
    aget-object v6, v4, v5

    invoke-virtual {v0, v6, v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->createTypeReference(Ljava/lang/String;II)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v6

    if-eqz v8, :cond_c

    add-int/lit8 v15, v10, -0x1

    if-ne v5, v15, :cond_c

    .line 140
    iget v15, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 v15, v15, 0x4000

    iput v15, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    .line 141
    :cond_c
    iget-object v15, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    .line 142
    new-instance v22, Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    .line 143
    aget-object v17, v9, v5

    const/16 v21, 0x0

    move-object/from16 v16, v22

    move-wide/from16 v18, v13

    move-object/from16 v20, v6

    .line 144
    invoke-direct/range {v16 .. v21}, Lorg/eclipse/jdt/internal/compiler/ast/Argument;-><init>([CJLorg/eclipse/jdt/internal/compiler/ast/TypeReference;I)V

    .line 145
    aput-object v22, v15, v5

    .line 146
    iget-boolean v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->has1_5Compliance:Z

    if-eqz v6, :cond_d

    .line 147
    iget-object v6, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    aget-object v6, v6, v5

    aget-object v15, v12, v5

    invoke-direct {v0, v15}, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->convertAnnotations(Lorg/eclipse/jdt/core/IAnnotatable;)[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v15

    iput-object v15, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 148
    :cond_e
    :goto_9
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->getExceptionTypeNames()[[C

    move-result-object v4

    if-nez v4, :cond_f

    const/4 v5, 0x0

    goto :goto_a

    .line 149
    :cond_f
    array-length v5, v4

    :goto_a
    if-lez v5, :cond_11

    .line 150
    new-array v6, v5, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object v6, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v6, 0x0

    :goto_b
    if-lt v6, v5, :cond_10

    goto :goto_c

    .line 151
    :cond_10
    iget-object v8, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 152
    aget-object v9, v4, v6

    invoke-virtual {v0, v9, v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->createTypeReference([CII)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v9

    .line 153
    aput-object v9, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 154
    :cond_11
    :goto_c
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->flags:I

    and-int/2addr v2, v11

    if-eqz v2, :cond_14

    .line 155
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/core/JavaElementInfo;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v2

    .line 156
    array-length v3, v2

    if-eqz v3, :cond_14

    .line 157
    new-array v4, v3, [Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    const/4 v5, 0x0

    :goto_d
    if-lt v5, v3, :cond_12

    .line 158
    iput-object v4, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    goto :goto_f

    .line 159
    :cond_12
    aget-object v6, v2, v5

    check-cast v6, Lorg/eclipse/jdt/internal/core/SourceType;

    .line 160
    invoke-direct {v0, v6, v1}, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->convert(Lorg/eclipse/jdt/internal/core/SourceType;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v6

    .line 161
    iget v8, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v8, v8, 0x200

    if-eqz v8, :cond_13

    .line 162
    new-instance v8, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    invoke-direct {v8, v6}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    .line 163
    iget-object v9, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object v9, v8, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v9, 0x0

    .line 164
    iput-object v9, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 165
    iput-object v9, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 166
    iput-object v8, v6, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->allocation:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    .line 167
    aput-object v8, v4, v5

    goto :goto_e

    :cond_13
    const/4 v9, 0x0

    .line 168
    aput-object v6, v4, v5

    :goto_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_14
    :goto_f
    return-object v7
.end method

.method private convert(Lorg/eclipse/jdt/internal/compiler/env/IModule;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/CompilationResult;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->unit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    .line 40
    check-cast p1, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;

    .line 41
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/ModuleDescriptionInfo;->getHandle()Lorg/eclipse/jdt/core/IModuleDescription;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object p1

    .line 42
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->cu:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    .line 43
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->cu:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietParse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    return-object p1
.end method

.method private convert([Lorg/eclipse/jdt/internal/compiler/env/ISourceType;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 1
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    const/4 v9, 0x0

    invoke-direct {v0, v1, v8, v9}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/CompilationResult;I)V

    iput-object v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->unit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    .line 2
    array-length v1, v7

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    aget-object v0, v7, v9

    move-object v10, v0

    check-cast v10, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    .line 4
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getHandle()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v0

    .line 5
    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    iput-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->cu:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    .line 6
    check-cast v1, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;

    .line 7
    iget-boolean v2, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->has1_5Compliance:Z

    const/4 v11, 0x1

    if-eqz v2, :cond_3

    .line 8
    iget v2, v1, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;->annotationNumber:I

    sget v3, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;->ANNOTATION_THRESHOLD_FOR_DIET_PARSE:I

    if-ge v2, v3, :cond_1

    .line 9
    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;->hasFunctionalTypes:Z

    if-eqz v1, :cond_3

    iget v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_3

    .line 10
    :cond_1
    iget v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_2

    .line 11
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    invoke-direct {v0, v1, v11}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->cu:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    invoke-virtual {v0, v1, v8}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietParse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v0

    return-object v0

    .line 12
    :cond_2
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    invoke-direct {v0, v1, v11}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->cu:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    invoke-virtual {v0, v1, v8}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v0

    return-object v0

    .line 13
    :cond_3
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->getNameSourceStart()I

    move-result v2

    .line 14
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->getNameSourceEnd()I

    move-result v3

    .line 15
    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragment;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/PackageFragment;->names:[Ljava/lang/String;

    .line 16
    array-length v0, v1

    if-lez v0, :cond_4

    .line 17
    iget-object v12, v6, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->unit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    .line 18
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->createImportReference([Ljava/lang/String;IIZI)Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    move-result-object v0

    .line 19
    iput-object v0, v12, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    .line 20
    :cond_4
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getHandle()Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/ICompilationUnit;->getImports()[Lorg/eclipse/jdt/core/IImportDeclaration;

    move-result-object v10

    .line 21
    array-length v12, v10

    .line 22
    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->unit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    new-array v1, v12, [Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->imports:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    move v13, v9

    :goto_0
    if-lt v13, v12, :cond_6

    .line 23
    :try_start_0
    array-length v0, v7

    .line 24
    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    :goto_1
    if-lt v9, v0, :cond_5

    .line 25
    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->unit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    return-object v0

    .line 26
    :cond_5
    aget-object v2, v7, v9

    check-cast v2, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    .line 27
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getHandle()Lorg/eclipse/jdt/core/IType;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/SourceType;

    invoke-direct {v6, v2, v8}, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->convert(Lorg/eclipse/jdt/internal/core/SourceType;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v2

    aput-object v2, v1, v9
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter$AnonymousMemberFound; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 28
    :catch_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    invoke-direct {v0, v1, v11}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    iget-object v1, v6, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->cu:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    invoke-virtual {v0, v1, v8}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v0

    return-object v0

    .line 29
    :cond_6
    aget-object v0, v10, v13

    check-cast v0, Lorg/eclipse/jdt/internal/core/ImportDeclaration;

    .line 30
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/env/ISourceImport;

    .line 31
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/ImportDeclaration;->getNameWithoutStar()Ljava/lang/String;

    move-result-object v2

    .line 32
    iget-object v3, v6, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->unit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v14, v3, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->imports:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    .line 33
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x2e

    invoke-static {v4, v2, v9, v3}, Lorg/eclipse/jdt/internal/core/util/Util;->splitOn(CLjava/lang/String;II)[Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/ISourceImport;->getDeclarationSourceStart()I

    move-result v3

    .line 35
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/ISourceImport;->getDeclarationSourceEnd()I

    move-result v4

    .line 36
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/ImportDeclaration;->isOnDemand()Z

    move-result v5

    .line 37
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/ISourceImport;->getModifiers()I

    move-result v15

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v15

    .line 38
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->createImportReference([Ljava/lang/String;IIZI)Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    move-result-object v0

    aput-object v0, v14, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_0
.end method

.method private convert(Lorg/eclipse/jdt/internal/core/SourceField;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 65
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/SourceFieldElementInfo;

    .line 66
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;-><init>()V

    .line 67
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->getNameSourceStart()I

    move-result v2

    .line 68
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->getNameSourceEnd()I

    move-result v3

    .line 69
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/NamedMember;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    iput-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    .line 70
    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 71
    iput v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    .line 72
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/SourceFieldElementInfo;->getDeclarationSourceStart()I

    move-result v4

    iput v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    .line 73
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/SourceFieldElementInfo;->getDeclarationSourceEnd()I

    move-result v4

    iput v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    .line 74
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/SourceFieldElementInfo;->getModifiers()I

    move-result v4

    and-int/lit16 v5, v4, 0x4000

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    if-eqz v5, :cond_1

    and-int/lit16 v2, v4, -0x4001

    .line 75
    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    goto :goto_1

    .line 76
    :cond_1
    iput v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    .line 77
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/SourceFieldElementInfo;->getTypeName()[C

    move-result-object v4

    invoke-virtual {p0, v4, v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->createTypeReference([CII)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v2

    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 78
    :goto_1
    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->has1_5Compliance:Z

    if-eqz v2, :cond_2

    .line 79
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->convertAnnotations(Lorg/eclipse/jdt/core/IAnnotatable;)[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object p1

    iput-object p1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    .line 80
    :cond_2
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->flags:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_4

    .line 81
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/SourceFieldElementInfo;->getInitializationSource()[C

    move-result-object p1

    if-eqz p1, :cond_4

    .line 82
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    if-nez v2, :cond_3

    .line 83
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    invoke-direct {v2, v3, v7}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    .line 84
    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->unit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v2, v1, p2, v3, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parse(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;[C)V

    .line 85
    :cond_4
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->flags:I

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_9

    .line 86
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaElementInfo;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    .line 87
    array-length p2, p1

    const/4 v0, 0x0

    if-ne p2, v7, :cond_6

    .line 88
    aget-object p1, p1, v6

    if-eqz v5, :cond_5

    move-object v0, v1

    :cond_5
    invoke-direct {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->convert(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    move-result-object p1

    iput-object p1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    goto :goto_4

    :cond_6
    if-le p2, v7, :cond_9

    .line 89
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;-><init>()V

    .line 90
    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->initialization:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 91
    new-array v3, p2, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    .line 92
    iput-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    :goto_2
    if-lt v6, p2, :cond_7

    goto :goto_4

    .line 93
    :cond_7
    aget-object v2, p1, v6

    if-eqz v5, :cond_8

    move-object v4, v1

    goto :goto_3

    :cond_8
    move-object v4, v0

    :goto_3
    invoke-direct {p0, v2, v4, p3}, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->convert(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    move-result-object v2

    aput-object v2, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_9
    :goto_4
    return-object v1
.end method

.method private convert(Lorg/eclipse/jdt/internal/core/InitializerElementInfo;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/Initializer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 44
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Block;-><init>(I)V

    .line 45
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    invoke-direct {v2, v0, v1}, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Block;I)V

    .line 46
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/InitializerElementInfo;->getDeclarationSourceStart()I

    move-result v3

    .line 47
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/InitializerElementInfo;->getDeclarationSourceEnd()I

    move-result v4

    .line 48
    iput v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    iput v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 49
    iput v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    iput v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    .line 50
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/InitializerElementInfo;->getModifiers()I

    move-result v3

    iput v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    .line 51
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/JavaElementInfo;->getChildren()[Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    .line 52
    array-length v3, p1

    if-lez v3, :cond_2

    .line 53
    new-array v4, v3, [Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    :goto_0
    if-lt v1, v3, :cond_0

    .line 54
    iput-object v4, v0, Lorg/eclipse/jdt/internal/compiler/ast/Block;->statements:[Lorg/eclipse/jdt/internal/compiler/ast/Statement;

    goto :goto_2

    .line 55
    :cond_0
    aget-object v5, p1, v1

    check-cast v5, Lorg/eclipse/jdt/internal/core/SourceType;

    .line 56
    invoke-direct {p0, v5, p2}, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->convert(Lorg/eclipse/jdt/internal/core/SourceType;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v5

    .line 57
    iget v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_1

    .line 58
    new-instance v6, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    invoke-direct {v6, v5}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    .line 59
    iget-object v7, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v7, 0x0

    .line 60
    iput-object v7, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 61
    iput-object v7, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 62
    iput-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->allocation:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    .line 63
    aput-object v6, v4, v1

    goto :goto_1

    .line 64
    :cond_1
    aput-object v5, v4, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v2
.end method

.method private convert(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 94
    check-cast p1, Lorg/eclipse/jdt/internal/core/SourceType;

    invoke-direct {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->convert(Lorg/eclipse/jdt/internal/core/SourceType;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object p1

    .line 95
    new-instance p3, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    invoke-direct {p3, p1}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    .line 96
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object v0, p3, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const/4 v0, 0x0

    .line 97
    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 98
    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 99
    iput-object p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->allocation:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    if-eqz p2, :cond_0

    .line 100
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    and-int/lit16 v1, v1, -0x4001

    iput v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    .line 101
    iput-object p2, p3, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->enumConstant:Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    .line 102
    iput-object v0, p3, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    :cond_0
    return-object p3
.end method

.method private convert(Lorg/eclipse/jdt/internal/core/SourceType;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 169
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;

    .line 170
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->isAnonymousMember()Z

    move-result v3

    if-nez v3, :cond_24

    .line 171
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-direct {v3, v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    .line 172
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getEnclosingType()Lorg/eclipse/jdt/internal/compiler/env/ISourceType;

    move-result-object v4

    if-nez v4, :cond_1

    .line 173
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/SourceType;->isAnonymous()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 174
    sget-object v4, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    iput-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    .line 175
    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 v4, v4, 0x300

    iput v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/SourceType;->isLocal()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 177
    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 v4, v4, 0x100

    iput v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    goto :goto_0

    .line 178
    :cond_1
    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 v4, v4, 0x400

    iput v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    .line 179
    :cond_2
    :goto_0
    iget v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v4, v4, 0x200

    if-nez v4, :cond_3

    .line 180
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getName()[C

    move-result-object v4

    iput-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    .line 181
    :cond_3
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getName()[C

    move-result-object v4

    iput-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    .line 182
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->getNameSourceStart()I

    move-result v4

    iput v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 183
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/AnnotatableInfo;->getNameSourceEnd()I

    move-result v5

    iput v5, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    .line 184
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getModifiers()I

    move-result v6

    iput v6, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    .line 185
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getDeclarationSourceStart()I

    move-result v6

    iput v6, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    .line 186
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getDeclarationSourceEnd()I

    move-result v6

    iput v6, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    .line 187
    iput v6, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyEnd:I

    .line 188
    iget-boolean v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->has1_5Compliance:Z

    if-eqz v6, :cond_4

    .line 189
    invoke-direct/range {p0 .. p1}, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->convertAnnotations(Lorg/eclipse/jdt/core/IAnnotatable;)[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move-result-object v6

    iput-object v6, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    .line 190
    :cond_4
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getTypeParameterNames()[[C

    move-result-object v6

    .line 191
    array-length v7, v6

    const/4 v8, 0x0

    if-lez v7, :cond_6

    .line 192
    array-length v7, v6

    .line 193
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getTypeParameterBounds()[[[C

    move-result-object v9

    .line 194
    new-array v10, v7, [Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    iput-object v10, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    move v10, v8

    :goto_1
    if-lt v10, v7, :cond_5

    goto :goto_2

    .line 195
    :cond_5
    iget-object v11, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->typeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    aget-object v12, v6, v10

    aget-object v13, v9, v10

    invoke-virtual {v0, v12, v13, v4, v5}, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->createTypeParameter([C[[CII)Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    move-result-object v12

    aput-object v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 196
    :cond_6
    :goto_2
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getSuperclassName()[C

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_7

    .line 197
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getSuperclassName()[C

    move-result-object v6

    invoke-virtual {v0, v6, v4, v5, v7}, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->createTypeReference([CIIZ)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v6

    iput-object v6, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superclass:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    .line 198
    iget v9, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v9, v9, 0x10

    iput v9, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    .line 199
    :cond_7
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getInterfaceNames()[[C

    move-result-object v6

    if-nez v6, :cond_8

    move v9, v8

    goto :goto_3

    .line 200
    :cond_8
    array-length v9, v6

    :goto_3
    if-lez v9, :cond_a

    .line 201
    new-array v10, v9, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iput-object v10, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move v10, v8

    :goto_4
    if-lt v10, v9, :cond_9

    goto :goto_5

    .line 202
    :cond_9
    iget-object v11, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v12, v6, v10

    invoke-virtual {v0, v12, v4, v5, v7}, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->createTypeReference([CIIZ)Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-result-object v12

    aput-object v12, v11, v10

    .line 203
    iget-object v11, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget-object v11, v11, v10

    iget v12, v11, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit8 v12, v12, 0x10

    iput v12, v11, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 204
    :cond_a
    :goto_5
    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_c

    .line 205
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getMemberTypeHandles()[Lorg/eclipse/jdt/internal/core/SourceType;

    move-result-object v4

    .line 206
    array-length v5, v4

    .line 207
    new-array v6, v5, [Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iput-object v6, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move v6, v8

    :goto_6
    if-lt v6, v5, :cond_b

    goto :goto_7

    .line 208
    :cond_b
    iget-object v9, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aget-object v10, v4, v6

    invoke-direct {v0, v10, v1}, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->convert(Lorg/eclipse/jdt/internal/core/SourceType;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v10

    aput-object v10, v9, v6

    .line 209
    iget-object v9, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aget-object v9, v9, v6

    iput-object v3, v9, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->enclosingType:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 210
    :cond_c
    :goto_7
    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->flags:I

    and-int/lit8 v4, v4, 0x20

    const/4 v5, 0x0

    if-eqz v4, :cond_d

    .line 211
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getInitializers()[Lorg/eclipse/jdt/internal/core/InitializerElementInfo;

    move-result-object v4

    .line 212
    array-length v6, v4

    goto :goto_8

    :cond_d
    move-object v4, v5

    move v6, v8

    .line 213
    :goto_8
    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->flags:I

    and-int/2addr v9, v7

    if-eqz v9, :cond_e

    .line 214
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getFieldHandles()[Lorg/eclipse/jdt/internal/core/SourceField;

    move-result-object v5

    .line 215
    array-length v9, v5

    goto :goto_9

    :cond_e
    move v9, v8

    :goto_9
    add-int/2addr v9, v6

    if-lez v9, :cond_11

    .line 216
    new-array v10, v9, [Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    iput-object v10, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    move v10, v8

    :goto_a
    if-lt v10, v6, :cond_10

    move v4, v8

    :goto_b
    if-lt v6, v9, :cond_f

    goto :goto_c

    .line 217
    :cond_f
    iget-object v10, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    add-int/lit8 v11, v4, 0x1

    aget-object v4, v5, v4

    invoke-direct {v0, v4, v3, v1}, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->convert(Lorg/eclipse/jdt/internal/core/SourceField;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    move-result-object v4

    aput-object v4, v10, v6

    add-int/lit8 v6, v6, 0x1

    move v4, v11

    goto :goto_b

    .line 218
    :cond_10
    iget-object v11, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    aget-object v12, v4, v10

    invoke-direct {v0, v12, v1}, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->convert(Lorg/eclipse/jdt/internal/core/InitializerElementInfo;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    move-result-object v12

    aput-object v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 219
    :cond_11
    :goto_c
    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->flags:I

    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_12

    move v5, v7

    goto :goto_d

    :cond_12
    move v5, v8

    :goto_d
    const/4 v6, 0x4

    and-int/2addr v4, v6

    if-eqz v4, :cond_13

    move v4, v7

    goto :goto_e

    :cond_13
    move v4, v8

    :goto_e
    if-nez v5, :cond_14

    if-eqz v4, :cond_1c

    .line 220
    :cond_14
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/SourceTypeElementInfo;->getMethodHandles()[Lorg/eclipse/jdt/internal/core/SourceMethod;

    move-result-object v2

    .line 221
    array-length v9, v2

    .line 222
    iget v10, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    invoke-static {v10}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_15

    if-eq v10, v6, :cond_15

    move v6, v8

    goto :goto_f

    :cond_15
    move v6, v7

    :goto_f
    if-nez v6, :cond_19

    move v11, v5

    move v10, v8

    move v12, v10

    :goto_10
    if-lt v10, v9, :cond_16

    goto :goto_13

    .line 223
    :cond_16
    aget-object v13, v2, v10

    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/core/SourceMethod;->isConstructor()Z

    move-result v13

    if-eqz v13, :cond_17

    if-eqz v5, :cond_18

    add-int/lit8 v12, v12, 0x1

    move v11, v8

    goto :goto_11

    :cond_17
    if-eqz v4, :cond_18

    add-int/lit8 v12, v12, 0x1

    :cond_18
    :goto_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :cond_19
    if-eqz v4, :cond_1a

    move v12, v9

    goto :goto_12

    :cond_1a
    move v12, v8

    :goto_12
    move v11, v8

    :goto_13
    add-int/2addr v12, v11

    .line 224
    new-array v10, v12, [Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    iput-object v10, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v11, :cond_1b

    .line 225
    invoke-virtual {v3, v8, v8}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->createDefaultConstructor(ZZ)Lorg/eclipse/jdt/internal/compiler/ast/ConstructorDeclaration;

    move-result-object v12

    aput-object v12, v10, v8

    :cond_1b
    move v10, v8

    move v12, v10

    :goto_14
    if-lt v8, v9, :cond_1d

    if-eqz v10, :cond_1c

    .line 226
    iget v1, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 v1, v1, 0x800

    iput v1, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_1c
    return-object v3

    .line 227
    :cond_1d
    aget-object v13, v2, v8

    .line 228
    invoke-virtual {v13}, Lorg/eclipse/jdt/internal/core/JavaElement;->getElementInfo()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;

    .line 229
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->isConstructor()Z

    move-result v15

    .line 230
    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;->getModifiers()I

    move-result v7

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_1e

    const/4 v10, 0x1

    :cond_1e
    if-eqz v15, :cond_1f

    if-nez v5, :cond_20

    :cond_1f
    if-nez v15, :cond_23

    if-eqz v4, :cond_23

    .line 231
    :cond_20
    invoke-direct {v0, v13, v14, v1}, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->convert(Lorg/eclipse/jdt/internal/core/SourceMethod;Lorg/eclipse/jdt/internal/core/SourceMethodElementInfo;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v7

    if-nez v6, :cond_21

    .line 232
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->isAbstract()Z

    move-result v13

    if-eqz v13, :cond_22

    .line 233
    :cond_21
    iget v13, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    const/high16 v14, 0x1000000

    or-int/2addr v13, v14

    iput v13, v7, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->modifiers:I

    .line 234
    :cond_22
    iget-object v13, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    add-int/lit8 v14, v12, 0x1

    add-int/2addr v12, v11

    aput-object v7, v13, v12

    move v12, v14

    :cond_23
    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x1

    goto :goto_14

    .line 235
    :cond_24
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter$AnonymousMemberFound;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter$AnonymousMemberFound;-><init>()V

    throw v1
.end method

.method private convertAnnotations(Lorg/eclipse/jdt/core/IAnnotatable;)[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IAnnotatable;->getAnnotations()[Lorg/eclipse/jdt/core/IAnnotation;

    move-result-object p1

    array-length v0, p1

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-lez v0, :cond_2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->getSource()[C

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-lt v4, v0, :cond_0

    if-eq v0, v5, :cond_2

    new-array p1, v5, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v1, v3, p1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, p1

    goto :goto_1

    :cond_0
    aget-object v6, p1, v4

    invoke-interface {v6}, Lorg/eclipse/jdt/core/ISourceReference;->getSourceRange()Lorg/eclipse/jdt/core/ISourceRange;

    move-result-object v6

    invoke-interface {v6}, Lorg/eclipse/jdt/core/ISourceRange;->getOffset()I

    move-result v7

    invoke-interface {v6}, Lorg/eclipse/jdt/core/ISourceRange;->getLength()I

    move-result v6

    add-int/2addr v6, v7

    invoke-static {v2, v7, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-direct {p0, v6}, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->parseMemberValue([C)Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object v6

    instance-of v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v7, :cond_1

    add-int/lit8 v7, v5, 0x1

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    aput-object v6, v1, v5

    move v5, v7

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method private getSource()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->source:[C

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->cu:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;->getContents()[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->source:[C

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->source:[C

    return-object v0
.end method

.method private parseMemberValue([C)Lorg/eclipse/jdt/internal/compiler/ast/Expression;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/TypeConverter;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    array-length v1, p1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/SourceTypeConverter;->unit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parseMemberValue([CIILorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    move-result-object p1

    return-object p1
.end method
