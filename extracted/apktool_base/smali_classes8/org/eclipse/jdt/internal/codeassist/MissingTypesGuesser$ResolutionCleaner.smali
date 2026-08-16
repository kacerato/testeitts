.class Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$ResolutionCleaner;
.super Lorg/eclipse/jdt/internal/compiler/ASTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResolutionCleaner"
.end annotation


# instance fields
.field private bitsMap:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

.field private firstCall:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ASTVisitor;-><init>()V

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$ResolutionCleaner;->bitsMap:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$ResolutionCleaner;->firstCall:Z

    return-void
.end method

.method private cleanUp(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;)V
    .locals 2

    .line 7
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$ResolutionCleaner;->cleanUp(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    .line 8
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    return-void
.end method

.method private cleanUp(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;)V
    .locals 2

    .line 5
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$ResolutionCleaner;->cleanUp(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    .line 6
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    return-void
.end method

.method private cleanUp(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$ResolutionCleaner;->firstCall:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$ResolutionCleaner;->bitsMap:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->put(Ljava/lang/Object;I)I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$ResolutionCleaner;->bitsMap:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfObjectToInt;->get(Ljava/lang/Object;)I

    move-result v0

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :goto_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-void
.end method


# virtual methods
.method public cleanUp(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 9
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$ResolutionCleaner;->firstCall:Z

    return-void
.end method

.method public cleanUp(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 0

    .line 11
    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->traverse(Lorg/eclipse/jdt/internal/compiler/ASTVisitor;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$ResolutionCleaner;->firstCall:Z

    return-void
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$ResolutionCleaner;->cleanUp(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayQualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$ResolutionCleaner;->cleanUp(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$ResolutionCleaner;->cleanUp(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ArrayTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$ResolutionCleaner;->cleanUp(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$ResolutionCleaner;->cleanUp(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$ResolutionCleaner;->cleanUp(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedQualifiedTypeReference;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$ResolutionCleaner;->cleanUp(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$ResolutionCleaner;->cleanUp(Lorg/eclipse/jdt/internal/compiler/ast/ParameterizedSingleTypeReference;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$ResolutionCleaner;->cleanUp(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$ResolutionCleaner;->cleanUp(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$ResolutionCleaner;->cleanUp(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$ResolutionCleaner;->cleanUp(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$ResolutionCleaner;->cleanUp(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/internal/compiler/ast/Wildcard;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)Z
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/codeassist/MissingTypesGuesser$ResolutionCleaner;->cleanUp(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    const/4 p1, 0x1

    return p1
.end method
