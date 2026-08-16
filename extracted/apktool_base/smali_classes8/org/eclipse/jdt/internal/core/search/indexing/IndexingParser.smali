.class public Lorg/eclipse/jdt/internal/core/search/indexing/IndexingParser;
.super Lorg/eclipse/jdt/internal/compiler/SourceElementParser;
.source "SourceFile"


# instance fields
.field importReference:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

.field qualifiedNameReference:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

.field singleNameReference:Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;ZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/eclipse/jdt/internal/compiler/SourceElementParser;-><init>(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;ZZZ)V

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    sget-object p2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    const-wide/16 p3, 0x0

    invoke-direct {p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;-><init>([CJ)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexingParser;->singleNameReference:Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    sget-object p2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    const/4 p3, 0x0

    new-array p4, p3, [J

    invoke-direct {p1, p2, p4, p3, p3}, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;-><init>([[C[JII)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexingParser;->qualifiedNameReference:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    const/4 p4, 0x1

    new-array p4, p4, [J

    invoke-direct {p1, p2, p4, p3, p3}, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;-><init>([[C[JZI)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexingParser;->importReference:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    return-void
.end method


# virtual methods
.method public newImportReference([[C[JZI)Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;
    .locals 2

    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexingParser;->importReference:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    iput-object p1, p4, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    iput-object p2, p4, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->sourcePositions:[J

    if-eqz p3, :cond_0

    iget p1, p4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 p3, 0x20000

    or-int/2addr p1, p3

    iput p1, p4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_0
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    aget-wide v0, p2, p1

    long-to-int p1, v0

    iput p1, p4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    const/4 p1, 0x0

    aget-wide p1, p2, p1

    const/16 p3, 0x20

    ushr-long/2addr p1, p3

    long-to-int p1, p1

    iput p1, p4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiers:I

    iput p1, p4, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->modifiers:I

    return-object p4
.end method

.method public newQualifiedNameReference([[C[JII)Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexingParser;->qualifiedNameReference:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;

    iput-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->tokens:[[C

    iput-object p2, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedNameReference;->sourcePositions:[J

    iput p3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-object v0
.end method

.method public newSingleNameReference([CJ)Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/indexing/IndexingParser;->singleNameReference:Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;

    iput-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/SingleNameReference;->token:[C

    const/16 p1, 0x20

    ushr-long v1, p2, p1

    long-to-int p1, v1

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    long-to-int p1, p2

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-object v0
.end method
