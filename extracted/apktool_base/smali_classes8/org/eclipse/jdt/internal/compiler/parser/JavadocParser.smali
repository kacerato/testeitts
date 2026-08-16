.class public Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;
.super Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;
.source "SourceFile"


# static fields
.field private static final NO_EXPRESSION:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

.field private static final NO_SINGLE_NAME_REFERENCE:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

.field private static final NO_SINGLE_TYPE_REFERENCE:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

.field private static final NO_TYPE_REFERENCE:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;


# instance fields
.field public docComment:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

.field private invalidParamReferencesPtr:I

.field private invalidParamReferencesStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

.field private invalidValuePositions:J

.field public shouldReportProblems:Z

.field private tagWaitingForDescription:I

.field private validValuePositions:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->NO_SINGLE_NAME_REFERENCE:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->NO_SINGLE_TYPE_REFERENCE:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->NO_TYPE_REFERENCE:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->NO_EXPRESSION:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/parser/Parser;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;-><init>(Lorg/eclipse/jdt/internal/compiler/parser/Parser;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->invalidParamReferencesPtr:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->shouldReportProblems:Z

    const/16 v0, 0x201

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->kind:I

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->processAnnotations:Z

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->setJavadocPositions:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public checkDeprecation(I)Z
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStarts:[I

    aget v1, v1, p1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocStart:I

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStops:[I

    aget v1, v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocEnd:I

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentTagStarts:[I

    aget p1, v0, p1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->firstTagPosition:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->validValuePositions:J

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->invalidValuePositions:J

    const/4 p1, 0x0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->tagWaitingForDescription:I

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->checkDocComment:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocStart:I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocEnd:I

    invoke-direct {v0, v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;-><init>(II)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->docComment:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->setJavadocPositions:Z

    if-eqz v0, :cond_1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocStart:I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocEnd:I

    invoke-direct {v0, v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;-><init>(II)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->docComment:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const v4, -0x10001

    and-int/2addr v3, v4

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->docComment:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    :goto_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->firstTagPosition:I

    if-nez v0, :cond_3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->kind:I

    and-int/lit16 v0, v0, 0xff

    if-eq v0, v2, :cond_2

    const/16 v2, 0x10

    if-eq v0, v2, :cond_2

    goto :goto_1

    :cond_2
    return p1

    :cond_3
    :goto_1
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->checkDocComment:Z

    if-eqz v0, :cond_4

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iput-object v2, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnds:[I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->commentParse()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->deprecated:Z

    return p1

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_4
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocStart:I

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    invoke-static {v2, v3, p1, v4}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v2

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocEnd:I

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    invoke-static {v3, v4, p1, v0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result v0

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocStart:I

    add-int/lit8 v3, v3, 0x3

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->deprecated:Z

    move p1, v2

    :goto_2
    if-le p1, v0, :cond_5

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->deprecated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    return p1

    :cond_5
    if-ne p1, v2, :cond_6

    :try_start_2
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocStart:I

    add-int/lit8 v3, v3, 0x3

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getLineStart(I)I

    move-result v3

    :goto_3
    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    if-ne p1, v0, :cond_7

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocEnd:I

    add-int/lit8 v3, v3, -0x2

    goto :goto_4

    :cond_7
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getLineEnd(I)I

    move-result v3

    :goto_4
    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    :cond_8
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lineEnd:I

    if-lt v3, v4, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_8

    const/16 v4, 0xa

    if-eq v3, v4, :cond_8

    const/16 v4, 0xc

    if-eq v3, v4, :cond_8

    const/16 v4, 0xd

    if-eq v3, v4, :cond_8

    const/16 v4, 0x20

    if-eq v3, v4, :cond_8

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_8

    const/16 v4, 0x40

    if-eq v3, v4, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->parseSimpleTag()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :goto_6
    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    throw p1
.end method

.method public createArgumentReference([CIZLjava/lang/Object;[JJ)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    :try_start_0
    move-object v0, p4

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-lez p2, :cond_1

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    int-to-long v1, v1

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    int-to-long v3, v0

    add-long/2addr v1, v3

    instance-of v0, p4, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    if-eqz v0, :cond_0

    check-cast p4, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocArraySingleTypeReference;

    iget-object p4, p4, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    invoke-direct {v0, p4, p2, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocArraySingleTypeReference;-><init>([CIJ)V

    goto :goto_0

    :cond_0
    check-cast p4, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocArrayQualifiedTypeReference;

    invoke-direct {v0, p4, p2}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocArrayQualifiedTypeReference;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;I)V

    :cond_1
    :goto_0
    iget p4, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-lez p2, :cond_2

    add-int/lit8 p2, p2, -0x1

    aget-wide p4, p5, p2

    long-to-int p4, p4

    if-eqz p3, :cond_2

    iget p2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/lit16 p2, p2, 0x4000

    iput p2, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_2
    const-wide/16 p2, 0x0

    cmp-long p2, p6, p2

    if-ltz p2, :cond_3

    long-to-int p4, p6

    :cond_3
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/ast/JavadocArgumentExpression;

    iget p3, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    invoke-direct {p2, p1, p3, p4, v0}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocArgumentExpression;-><init>([CIILorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    new-instance p1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {p1}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>()V

    throw p1
.end method

.method public createFieldReference(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    :try_start_0
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->getMainTypeName()[C

    move-result-object p1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocImplicitTypeReference;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->memberStart:I

    invoke-direct {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocImplicitTypeReference;-><init>([CI)V

    move-object p1, v0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    aget-wide v2, v3, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;-><init>([CJ)V

    iput-object p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;->tagSourceStart:I

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;->tagSourceEnd:I

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iput p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocFieldReference;->tagValue:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {p1}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>()V

    throw p1
.end method

.method public createMethodReference(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    :try_start_0
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierLengthStack:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/16 v2, 0x20

    const/4 v3, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->getMainTypeName()[C

    move-result-object p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->getParsedTypeDeclaration()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object p1, v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    add-int/lit8 v5, v0, -0x1

    aget-object v4, v4, v5

    invoke-static {v4, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/ast/JavadocImplicitTypeReference;

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->memberStart:I

    invoke-direct {v5, p1, v6}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocImplicitTypeReference;-><init>([CI)V

    move-object p1, v5

    goto :goto_2

    :cond_1
    instance-of v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    if-eqz v4, :cond_2

    move-object v4, p1

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/SingleTypeReference;->token:[C

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    add-int/lit8 v6, v0, -0x1

    aget-object v5, v5, v6

    invoke-static {v5, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    goto :goto_2

    :cond_2
    instance-of v4, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;

    if-eqz v4, :cond_c

    move-object v4, p1

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    array-length v5, v4

    sub-int/2addr v5, v3

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    add-int/lit8 v7, v0, -0x1

    aget-object v6, v6, v7

    aget-object v5, v4, v5

    invoke-static {v6, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v5

    if-eqz v5, :cond_6

    move v6, v1

    move v8, v3

    :goto_0
    if-ge v6, v7, :cond_4

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    aget-object v8, v8, v6

    aget-object v9, v4, v6

    invoke-static {v8, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-nez v8, :cond_6

    iget-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    aget-wide v0, p2, v1

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    aget-wide v1, p2, v7

    long-to-int p2, v1

    const/4 v1, -0x1

    invoke-virtual {p1, v0, p2, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidMemberTypeQualification(III)V

    :cond_5
    const/4 p1, 0x0

    return-object p1

    :cond_6
    move v4, v5

    :goto_2
    if-nez p2, :cond_9

    if-eqz v4, :cond_8

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    add-int/lit8 v5, v0, -0x1

    aget-wide v5, v4, v5

    invoke-direct {p2, v5, v6}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;-><init>(J)V

    iput-object p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;->tagValue:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result p1

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-ne v0, v3, :cond_7

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    aget-object p1, p1, v1

    filled-new-array {p1}, [[C

    move-result-object p1

    iput-object p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;->qualification:[[C

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    new-array v3, v0, [[C

    iput-object v3, p2, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;->qualification:[[C

    invoke-static {p1, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    aget-wide v0, p1, v1

    ushr-long/2addr v0, v2

    long-to-int p1, v0

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    :goto_3
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->memberStart:I

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;->memberStart:I

    return-object p2

    :cond_8
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    sub-int/2addr v0, v3

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    aget-wide v3, v2, v0

    invoke-direct {p2, v1, v3, v4}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;-><init>([CJ)V

    iput-object p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;->tagValue:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result p1

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-object p2

    :cond_9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/eclipse/jdt/internal/compiler/ast/JavadocArgumentExpression;

    invoke-interface {p2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    if-eqz v4, :cond_b

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    add-int/lit8 v6, v0, -0x1

    aget-wide v6, v4, v6

    invoke-direct {p2, v6, v7}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;-><init>(J)V

    iput-object v5, p2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;->tagValue:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result p1

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-ne v0, v3, :cond_a

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    aget-object p1, p1, v1

    filled-new-array {p1}, [[C

    move-result-object p1

    iput-object p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;->qualification:[[C

    goto :goto_4

    :cond_a
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    new-array v3, v0, [[C

    iput-object v3, p2, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;->qualification:[[C

    invoke-static {p1, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    aget-wide v0, p1, v1

    ushr-long/2addr v0, v2

    long-to-int p1, v0

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    :goto_4
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->memberStart:I

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/JavadocAllocationExpression;->memberStart:I

    return-object p2

    :cond_b
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    sub-int/2addr v0, v3

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    aget-wide v3, v2, v0

    invoke-direct {p2, v1, v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;-><init>([CJ[Lorg/eclipse/jdt/internal/compiler/ast/JavadocArgumentExpression;)V

    iput-object p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/MessageSend;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/JavadocMessageSend;->tagValue:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result p1

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return-object p2

    :cond_c
    new-instance p1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {p1}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Lorg/eclipse/jdt/core/compiler/InvalidInputException;

    invoke-direct {p1}, Lorg/eclipse/jdt/core/compiler/InvalidInputException;-><init>()V

    throw p1
.end method

.method public createReturnStatement()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocReturnStatement;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenStartPosition()I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocReturnStatement;-><init>(II)V

    return-object v0
.end method

.method public createTag()V
    .locals 1

    const/16 v0, 0x64

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    return-void
.end method

.method public createTypeReference(I)Ljava/lang/Object;
    .locals 7

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierLengthStack:[I

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierLengthPtr:I

    aget p1, p1, v0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPtr:I

    aget-object v2, v0, v1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    aget-wide v3, v0, v1

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;-><init>([CJII)V

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    new-array v1, p1, [[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPtr:I

    sub-int/2addr v3, p1

    add-int/2addr v3, v0

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v2, p1, [J

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPtr:I

    sub-int/2addr v5, p1

    add-int/2addr v5, v0

    invoke-static {v3, v5, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    invoke-direct {p1, v1, v2, v0, v3}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;-><init>([[C[JII)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getParsedTypeDeclaration()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astPtr:I

    :goto_0
    if-gez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->astStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    aget-object v1, v1, v0

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyEnd:I

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public parseInheritDocTag()V
    .locals 0

    return-void
.end method

.method public parseParam()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->parseParam()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->tagWaitingForDescription:I

    return v0
.end method

.method public parseReturn()Z
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->returnStatement:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->createReturnStatement()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->returnStatement:Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenStartPosition()I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocDuplicatedReturnTag(II)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public parseSimpleTag()V
    .locals 10

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    aget-char v3, v0, v1

    const/16 v4, 0x5c

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    aget-char v0, v0, v2

    const/16 v4, 0x75

    if-ne v0, v4, :cond_2

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    aget-char v0, v0, v1

    if-eq v0, v4, :cond_1

    add-int/2addr v1, v5

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v0

    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    aget-char v4, v4, v6

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v4

    if-gt v4, v1, :cond_0

    if-ltz v4, :cond_0

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    aget-char v6, v6, v7

    invoke-static {v6}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v6

    if-gt v6, v1, :cond_0

    if-ltz v6, :cond_0

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->source:[C

    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    aget-char v7, v7, v8

    invoke-static {v7}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->getHexadecimalValue(C)I

    move-result v7

    if-gt v7, v1, :cond_0

    if-ltz v7, :cond_0

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v6

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v7

    int-to-char v3, v0

    goto :goto_1

    :cond_0
    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    goto :goto_0

    :cond_2
    :goto_1
    const/16 v0, 0x64

    if-eq v3, v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v1

    const/16 v3, 0x70

    if-ne v1, v3, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v1

    const/16 v3, 0x72

    if-ne v1, v3, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v1

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v1

    const/16 v3, 0x63

    if-ne v1, v3, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v1

    const/16 v3, 0x61

    if-ne v1, v3, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v1

    const/16 v3, 0x74

    if-ne v1, v3, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v1

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v1

    if-ne v1, v0, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_5

    :cond_4
    iput-boolean v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->abort:Z

    iput-boolean v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->deprecated:Z

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    :cond_5
    :goto_2
    return-void
.end method

.method public parseTag(I)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->tagWaitingForDescription:I

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/16 v5, 0x20

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    if-eq v2, v4, :cond_0

    if-eq v2, v3, :cond_0

    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    if-nez v2, :cond_1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_NAMES:[[C

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->tagWaitingForDescription:I

    aget-object v7, v7, v8

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    iget v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget v10, v10, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiers:I

    invoke-virtual {v2, v7, v8, v9, v10}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocMissingTagDescription([CIII)V

    goto :goto_0

    :cond_0
    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    if-nez v2, :cond_1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    aget-wide v7, v2, v6

    ushr-long/2addr v7, v5

    long-to-int v7, v7

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPtr:I

    aget-wide v8, v2, v8

    long-to-int v2, v8

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v8

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget v9, v9, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiers:I

    invoke-virtual {v8, v7, v2, v9}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocMissingTagDescriptionAfterReference(III)V

    :cond_1
    :goto_0
    iput v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->tagWaitingForDescription:I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput v2, v7, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->startPosition:I

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v5, :cond_2b

    const/16 v9, 0x23

    if-eq v7, v9, :cond_2b

    const/16 v10, 0x2a

    if-eq v7, v10, :cond_2b

    const/16 v11, 0x7d

    if-eq v7, v11, :cond_2b

    invoke-static {v7}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v12

    if-eqz v12, :cond_4

    iget-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidTag(II)V

    :cond_2
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->textStart:I

    if-ne v1, v8, :cond_3

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->textStart:I

    :cond_3
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput-char v7, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    return v6

    :cond_4
    new-array v1, v5, [C

    move v13, v5

    move v12, v6

    move v14, v7

    const/4 v15, 0x1

    :goto_1
    if-ne v12, v13, :cond_5

    add-int/lit8 v2, v13, 0x20

    new-array v4, v2, [C

    invoke-static {v1, v6, v4, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v13, v2

    move-object v1, v4

    :cond_5
    add-int/lit8 v2, v12, 0x1

    aput-char v14, v1, v12

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->readChar()C

    move-result v14

    if-eq v14, v5, :cond_8

    if-eq v14, v9, :cond_7

    if-eq v14, v10, :cond_8

    if-eq v14, v11, :cond_8

    invoke-static {v14}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_3

    :cond_6
    move v12, v2

    :goto_2
    const/4 v4, 0x2

    goto :goto_1

    :cond_7
    move v12, v2

    move v15, v6

    goto :goto_2

    :cond_8
    :goto_3
    add-int/lit8 v9, v4, -0x1

    iput v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput-char v14, v9, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    iput v4, v9, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    if-nez v15, :cond_b

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v1, :cond_9

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidTag(II)V

    :cond_9
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->textStart:I

    if-ne v1, v8, :cond_a

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->textStart:I

    :cond_a
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput-char v14, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    return v6

    :cond_b
    const/16 v4, 0x64

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    const/4 v8, 0x5

    const/4 v9, 0x3

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->createTag()V

    goto/16 :goto_6

    :pswitch_1
    sget v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_VALUE_LENGTH:I

    if-ne v2, v3, :cond_f

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_VALUE:[C

    invoke-static {v3, v1, v6, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CII)Z

    move-result v3

    if-eqz v3, :cond_f

    const/16 v1, 0xa

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceLevel:J

    const-wide/32 v7, 0x310000

    cmp-long v1, v1, v7

    if-ltz v1, :cond_c

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    if-eqz v1, :cond_25

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->parseReference()Z

    move-result v1

    goto/16 :goto_7

    :cond_c
    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->validValuePositions:J

    const-wide/16 v7, -0x1

    cmp-long v1, v1, v7

    if-nez v1, :cond_e

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->invalidValuePositions:J

    cmp-long v1, v1, v7

    if-eqz v1, :cond_d

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v1, :cond_d

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->invalidValuePositions:J

    ushr-long v7, v2, v5

    long-to-int v7, v7

    long-to-int v2, v2

    invoke-virtual {v1, v7, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocUnexpectedTag(II)V

    :cond_d
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    int-to-long v1, v1

    shl-long/2addr v1, v5

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    int-to-long v7, v3

    add-long/2addr v1, v7

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->invalidValuePositions:J

    goto/16 :goto_6

    :cond_e
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v1, :cond_25

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocUnexpectedTag(II)V

    goto/16 :goto_6

    :cond_f
    sget v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_VERSION_LENGTH:I

    if-ne v2, v3, :cond_10

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_VERSION:[C

    invoke-static {v3, v1, v6, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CII)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0x11

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->tagWaitingForDescription:I

    goto/16 :goto_6

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->createTag()V

    goto/16 :goto_6

    :pswitch_2
    sget v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_USES_LENGTH:I

    if-ne v2, v3, :cond_25

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_USES:[C

    invoke-static {v3, v1, v6, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CII)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v1, 0x16

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->tagWaitingForDescription:I

    goto/16 :goto_6

    :pswitch_3
    sget v5, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_THROWS_LENGTH:I

    if-ne v2, v5, :cond_25

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_THROWS:[C

    invoke-static {v5, v1, v6, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CII)Z

    move-result v1

    if-eqz v1, :cond_25

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    if-nez v1, :cond_25

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->parseThrows()Z

    move-result v1

    goto/16 :goto_7

    :pswitch_4
    sget v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_SEE_LENGTH:I

    if-ne v2, v3, :cond_11

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_SEE:[C

    invoke-static {v3, v1, v6, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CII)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v1, 0x6

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    if-nez v1, :cond_25

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->parseReference()Z

    move-result v1

    goto/16 :goto_7

    :cond_11
    sget v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_SERIAL_LENGTH:I

    if-ne v2, v3, :cond_12

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_SERIAL:[C

    invoke-static {v3, v1, v6, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CII)Z

    move-result v3

    if-eqz v3, :cond_12

    const/16 v1, 0xd

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->tagWaitingForDescription:I

    goto/16 :goto_6

    :cond_12
    sget v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_SERIAL_DATA_LENGTH:I

    if-ne v2, v3, :cond_13

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_SERIAL_DATA:[C

    invoke-static {v3, v1, v6, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CII)Z

    move-result v3

    if-eqz v3, :cond_13

    const/16 v1, 0xe

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->tagWaitingForDescription:I

    goto/16 :goto_6

    :cond_13
    sget v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_SERIAL_FIELD_LENGTH:I

    if-ne v2, v3, :cond_14

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_SERIAL_FIELD:[C

    invoke-static {v3, v1, v6, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CII)Z

    move-result v3

    if-eqz v3, :cond_14

    const/16 v1, 0xf

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->tagWaitingForDescription:I

    goto/16 :goto_6

    :cond_14
    sget v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_SINCE_LENGTH:I

    if-ne v2, v3, :cond_15

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_SINCE:[C

    invoke-static {v3, v1, v6, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CII)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v1, 0x10

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->tagWaitingForDescription:I

    goto/16 :goto_6

    :cond_15
    sget v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_SYSTEM_PROPERTY_LENGTH:I

    if-ne v2, v3, :cond_16

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_SYSTEM_PROPERTY:[C

    invoke-static {v3, v1, v6, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CII)Z

    move-result v3

    if-eqz v3, :cond_16

    const/16 v1, 0x15

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->tagWaitingForDescription:I

    goto/16 :goto_6

    :cond_16
    sget v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_SUMMARY_LENGTH:I

    if-ne v2, v3, :cond_25

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_SUMMARY:[C

    invoke-static {v3, v1, v6, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CII)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v1, 0x1a

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->tagWaitingForDescription:I

    goto/16 :goto_6

    :pswitch_5
    sget v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_RETURN_LENGTH:I

    if-ne v2, v3, :cond_25

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_RETURN:[C

    invoke-static {v3, v1, v6, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CII)Z

    move-result v1

    if-eqz v1, :cond_25

    iput v9, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    if-nez v1, :cond_25

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->parseReturn()Z

    move-result v1

    goto/16 :goto_7

    :pswitch_6
    sget v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_PARAM_LENGTH:I

    if-ne v2, v3, :cond_17

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_PARAM:[C

    invoke-static {v3, v1, v6, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CII)Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v3, 0x2

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    if-nez v1, :cond_25

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->parseParam()Z

    move-result v1

    goto/16 :goto_7

    :cond_17
    sget v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_PROVIDES_LENGTH:I

    if-ne v2, v3, :cond_25

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_PROVIDES:[C

    invoke-static {v3, v1, v6, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CII)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v1, 0x17

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->tagWaitingForDescription:I

    goto/16 :goto_6

    :pswitch_7
    sget v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_LINK_LENGTH:I

    const/16 v5, 0x8

    if-ne v2, v3, :cond_19

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_LINK:[C

    invoke-static {v3, v1, v6, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CII)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v1, 0x7

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    if-nez v1, :cond_18

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->kind:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_25

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->parseReference()Z

    move-result v1

    goto/16 :goto_7

    :cond_19
    sget v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_LINKPLAIN_LENGTH:I

    if-ne v2, v3, :cond_1a

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_LINKPLAIN:[C

    invoke-static {v3, v1, v6, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CII)Z

    move-result v3

    if-eqz v3, :cond_1a

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    if-eqz v1, :cond_25

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->parseReference()Z

    move-result v1

    goto/16 :goto_7

    :cond_1a
    sget v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_LITERAL_LENGTH:I

    if-ne v2, v3, :cond_25

    iget-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    if-eqz v3, :cond_25

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_LITERAL:[C

    invoke-static {v3, v1, v6, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CII)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v1, 0x13

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->tagWaitingForDescription:I

    goto/16 :goto_6

    :pswitch_8
    sget v7, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_INDEX_LENGTH:I

    if-ne v2, v7, :cond_1b

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_INDEX:[C

    invoke-static {v7, v1, v6, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CII)Z

    move-result v7

    if-eqz v7, :cond_1b

    const/16 v1, 0x19

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->tagWaitingForDescription:I

    :goto_4
    const/4 v1, 0x1

    goto/16 :goto_7

    :cond_1b
    sget v7, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_INHERITDOC_LENGTH:I

    if-ne v2, v7, :cond_20

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_INHERITDOC:[C

    invoke-static {v7, v1, v6, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CII)Z

    move-result v7

    if-eqz v7, :cond_20

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lastBlockTagValue:I

    if-eqz v1, :cond_1d

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1d

    if-eq v1, v9, :cond_1d

    if-eq v1, v3, :cond_1d

    if-eq v1, v8, :cond_1d

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocUnexpectedTag(II)V

    :cond_1c
    move v1, v6

    goto :goto_5

    :cond_1d
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v1, :cond_1e

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    int-to-long v1, v1

    shl-long/2addr v1, v5

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    int-to-long v7, v3

    add-long/2addr v1, v7

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->recordInheritedPosition(J)V

    :cond_1e
    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    if-eqz v1, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->parseInheritDocTag()V

    :cond_1f
    const/4 v1, 0x1

    :goto_5
    const/16 v2, 0x9

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    goto/16 :goto_7

    :cond_20
    sget v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_IMPL_SPEC_LENGTH:I

    if-ne v2, v3, :cond_21

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_IMPL_SPEC:[C

    invoke-static {v3, v1, v6, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CII)Z

    move-result v3

    if-eqz v3, :cond_21

    const/16 v1, 0x1c

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->tagWaitingForDescription:I

    goto/16 :goto_6

    :cond_21
    sget v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_IMPL_NOTE_LENGTH:I

    if-ne v2, v3, :cond_25

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_IMPL_NOTE:[C

    invoke-static {v3, v1, v6, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CII)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v1, 0x1d

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->tagWaitingForDescription:I

    goto/16 :goto_6

    :pswitch_9
    sget v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_HIDDEN_LENGTH:I

    if-ne v2, v3, :cond_25

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_HIDDEN:[C

    invoke-static {v3, v1, v6, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CII)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v1, 0x18

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    goto/16 :goto_4

    :pswitch_a
    sget v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_EXCEPTION_LENGTH:I

    if-ne v2, v3, :cond_25

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_EXCEPTION:[C

    invoke-static {v3, v1, v6, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CII)Z

    move-result v1

    if-eqz v1, :cond_25

    iput v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    if-nez v1, :cond_25

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->parseThrows()Z

    move-result v1

    goto/16 :goto_7

    :pswitch_b
    sget v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_DEPRECATED_LENGTH:I

    if-ne v2, v3, :cond_22

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_DEPRECATED:[C

    invoke-static {v3, v1, v6, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CII)Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v3, 0x1

    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->deprecated:Z

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->tagWaitingForDescription:I

    goto/16 :goto_4

    :cond_22
    sget v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_DOC_ROOT_LENGTH:I

    if-ne v2, v3, :cond_25

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_DOC_ROOT:[C

    invoke-static {v3, v1, v6, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CII)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v1, 0x14

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    goto/16 :goto_4

    :pswitch_c
    sget v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_CATEGORY_LENGTH:I

    if-ne v2, v3, :cond_23

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_CATEGORY:[C

    invoke-static {v3, v1, v6, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CII)Z

    move-result v3

    if-eqz v3, :cond_23

    const/16 v1, 0xb

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    if-nez v1, :cond_25

    invoke-virtual {v0, v6}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->parseIdentifierTag(Z)Z

    move-result v1

    goto :goto_7

    :cond_23
    sget v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_CODE_LENGTH:I

    if-ne v2, v3, :cond_25

    iget-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    if-eqz v3, :cond_25

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_CODE:[C

    invoke-static {v3, v1, v6, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CII)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v1, 0x12

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->tagWaitingForDescription:I

    goto :goto_6

    :pswitch_d
    sget v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_AUTHOR_LENGTH:I

    if-ne v2, v3, :cond_24

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_AUTHOR:[C

    invoke-static {v3, v1, v6, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CII)Z

    move-result v3

    if-eqz v3, :cond_24

    const/16 v1, 0xc

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->tagWaitingForDescription:I

    goto :goto_6

    :cond_24
    sget v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_API_NOTE_LENGTH:I

    if-ne v2, v3, :cond_25

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_API_NOTE:[C

    invoke-static {v3, v1, v6, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[CII)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v1, 0x1b

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->tagWaitingForDescription:I

    :cond_25
    :goto_6
    move v1, v6

    :goto_7
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->index:I

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->textStart:I

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    if-eq v2, v4, :cond_29

    iget-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    if-nez v3, :cond_26

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->lastBlockTagValue:I

    :cond_26
    if-eqz v3, :cond_27

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->JAVADOC_TAG_TYPE:[S

    aget-short v5, v5, v2

    const/4 v7, 0x2

    if-eq v5, v7, :cond_28

    :cond_27
    if-nez v3, :cond_29

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->JAVADOC_TAG_TYPE:[S

    aget-short v2, v3, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_29

    :cond_28
    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagValue:I

    iput v6, v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->tagWaitingForDescription:I

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocUnexpectedTag(II)V

    goto :goto_8

    :cond_29
    move v6, v1

    :cond_2a
    :goto_8
    return v6

    :cond_2b
    iget-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v3, :cond_2c

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocInvalidTag(II)V

    :cond_2c
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->textStart:I

    if-ne v1, v8, :cond_2d

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->textStart:I

    :cond_2d
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput-char v7, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentCharacter:C

    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public parseThrows()Z
    .locals 2

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->parseThrows()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->tagWaitingForDescription:I

    return v0
.end method

.method public pushParamName(Z)Z
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    new-instance v9, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    aget-object v4, v3, v2

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    aget-wide v5, v3, v2

    iget v7, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;-><init>([CJII)V

    goto :goto_0

    :cond_0
    new-instance v9, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    aget-object v11, v3, v1

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    aget-wide v12, v3, v1

    iget v14, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    iget v15, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    move-object v10, v9

    invoke-direct/range {v10 .. v15}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;-><init>([CJII)V

    :goto_0
    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astLengthPtr:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {v0, v9, v2}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushOnAstStack(Ljava/lang/Object;Z)V

    goto :goto_3

    :cond_1
    if-nez p1, :cond_7

    move v3, v2

    :goto_1
    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astLengthPtr:I

    if-le v3, v4, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astLengthStack:[I

    aget v4, v4, v3

    if-eqz v4, :cond_6

    iget-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    if-eqz v3, :cond_3

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocUnexpectedTag(II)V

    :cond_3
    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->invalidParamReferencesPtr:I

    int-to-long v4, v3

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    const/16 v4, 0xa

    new-array v4, v4, [Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    iput-object v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->invalidParamReferencesStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    :cond_4
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->invalidParamReferencesStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    array-length v5, v4

    add-int/2addr v3, v2

    iput v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->invalidParamReferencesPtr:I

    if-lt v3, v5, :cond_5

    add-int/lit8 v2, v5, 0xa

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->invalidParamReferencesStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-static {v4, v1, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->invalidParamReferencesStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->invalidParamReferencesPtr:I

    aput-object v9, v2, v3

    return v1

    :cond_6
    add-int/lit8 v3, v3, 0x3

    goto :goto_1

    :cond_7
    :goto_2
    iget v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astLengthPtr:I

    rem-int/lit8 v3, v3, 0x3

    if-eqz v3, :cond_9

    const/4 v4, 0x2

    if-eq v3, v4, :cond_8

    return v1

    :cond_8
    invoke-virtual {v0, v9, v2}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushOnAstStack(Ljava/lang/Object;Z)V

    goto :goto_3

    :cond_9
    invoke-virtual {v0, v9, v1}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushOnAstStack(Ljava/lang/Object;Z)V

    :goto_3
    return v2
.end method

.method public pushSeeRef(Ljava/lang/Object;)Z
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astLengthPtr:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushOnAstStack(Ljava/lang/Object;Z)V

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushOnAstStack(Ljava/lang/Object;Z)V

    invoke-virtual {p0, p1, v3}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushOnAstStack(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    rem-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushOnAstStack(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v3}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushOnAstStack(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushOnAstStack(Ljava/lang/Object;Z)V

    invoke-virtual {p0, p1, v3}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushOnAstStack(Ljava/lang/Object;Z)V

    :goto_0
    return v3
.end method

.method public pushText(II)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->tagWaitingForDescription:I

    return-void
.end method

.method public pushThrowName(Ljava/lang/Object;)Z
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astLengthPtr:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushOnAstStack(Ljava/lang/Object;Z)V

    invoke-virtual {p0, p1, v3}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushOnAstStack(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    rem-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    if-eq v0, v3, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushOnAstStack(Ljava/lang/Object;Z)V

    invoke-virtual {p0, p1, v3}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushOnAstStack(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushOnAstStack(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, v3}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->pushOnAstStack(Ljava/lang/Object;Z)V

    :goto_0
    return v3
.end method

.method public refreshInlineTagPosition(I)V
    .locals 4

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->tagWaitingForDescription:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_NAMES:[[C

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->tagWaitingForDescription:I

    aget-object v0, v0, v1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiers:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocMissingTagDescription([CIII)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->tagWaitingForDescription:I

    :cond_0
    return-void
.end method

.method public refreshReturnStatement()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->returnStatement:Ljava/lang/Object;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocReturnStatement;

    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const v2, -0x40001

    and-int/2addr v1, v2

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "check javadoc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->checkDocComment:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "javadoc: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->docComment:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDocComment()V
    .locals 14

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->tagWaitingForDescription:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_NAMES:[[C

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->tagWaitingForDescription:I

    aget-object v3, v3, v4

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget v6, v6, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiers:I

    invoke-virtual {v0, v3, v4, v5, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocMissingTagDescription([CIII)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inlineTagStarted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    aget-wide v3, v0, v2

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPtr:I

    aget-wide v4, v0, v4

    long-to-int v0, v4

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->modifiers:I

    invoke-virtual {v4, v3, v0, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->javadocMissingTagDescriptionAfterReference(III)V

    :cond_1
    :goto_0
    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->tagWaitingForDescription:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inheritedPositions:[J

    if-eqz v0, :cond_2

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inheritedPositionsPtr:I

    array-length v4, v0

    if-eq v3, v4, :cond_2

    new-array v4, v3, [J

    iput-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inheritedPositions:[J

    invoke-static {v0, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->docComment:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->inheritedPositions:[J

    iput-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->inheritedPositions:[J

    iget-wide v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->validValuePositions:J

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    iget-wide v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->invalidValuePositions:J

    :goto_1
    iput-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->valuePositions:J

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->returnStatement:Ljava/lang/Object;

    if-eqz v3, :cond_4

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/JavadocReturnStatement;

    iput-object v3, v0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->returnStatement:Lorg/eclipse/jdt/internal/compiler/ast/JavadocReturnStatement;

    :cond_4
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->invalidParamReferencesPtr:I

    const/4 v4, 0x1

    if-ltz v3, :cond_5

    add-int/lit8 v5, v3, 0x1

    new-array v5, v5, [Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    iput-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->invalidParameters:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->invalidParamReferencesStack:[Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    add-int/2addr v3, v4

    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astLengthPtr:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_6

    return-void

    :cond_6
    const/4 v0, 0x3

    new-array v0, v0, [I

    move v3, v2

    :goto_2
    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astLengthPtr:I

    if-le v3, v5, :cond_16

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->docComment:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    aget v5, v0, v1

    if-lez v5, :cond_7

    new-array v5, v5, [Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    goto :goto_3

    :cond_7
    sget-object v5, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->NO_EXPRESSION:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    :goto_3
    iput-object v5, v3, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->seeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget v5, v0, v4

    if-lez v5, :cond_8

    new-array v5, v5, [Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    goto :goto_4

    :cond_8
    sget-object v5, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->NO_TYPE_REFERENCE:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    :goto_4
    iput-object v5, v3, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->exceptionReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget v5, v0, v2

    if-lez v5, :cond_9

    new-array v6, v5, [Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    goto :goto_5

    :cond_9
    sget-object v6, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->NO_SINGLE_NAME_REFERENCE:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    :goto_5
    iput-object v6, v3, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramReferences:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    if-lez v5, :cond_a

    new-array v6, v5, [Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    goto :goto_6

    :cond_a
    sget-object v6, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->NO_SINGLE_TYPE_REFERENCE:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    :goto_6
    iput-object v6, v3, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    move v3, v5

    :goto_7
    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astLengthPtr:I

    if-gez v6, :cond_d

    const/4 v1, 0x0

    if-nez v5, :cond_b

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->docComment:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    goto :goto_8

    :cond_b
    if-nez v3, :cond_c

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->docComment:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramReferences:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    goto :goto_8

    :cond_c
    aget v0, v0, v2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->docComment:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramReferences:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    sub-int v6, v0, v5

    new-array v7, v6, [Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    iput-object v7, v1, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramReferences:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    invoke-static {v4, v5, v7, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->docComment:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    sub-int/2addr v0, v3

    new-array v5, v0, [Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    iput-object v5, v1, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    invoke-static {v4, v3, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_8
    return-void

    :cond_d
    rem-int/lit8 v7, v6, 0x3

    if-eqz v7, :cond_12

    if-eq v7, v4, :cond_10

    if-eq v7, v1, :cond_e

    goto :goto_7

    :cond_e
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astLengthStack:[I

    add-int/lit8 v9, v6, -0x1

    iput v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astLengthPtr:I

    aget v8, v8, v6

    move v6, v2

    :goto_9
    if-lt v6, v8, :cond_f

    goto :goto_7

    :cond_f
    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->docComment:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->seeReferences:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aget v10, v0, v7

    sub-int/2addr v10, v4

    aput v10, v0, v7

    iget-object v11, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astStack:[Ljava/lang/Object;

    iget v12, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astPtr:I

    add-int/lit8 v13, v12, -0x1

    iput v13, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astPtr:I

    aget-object v11, v11, v12

    check-cast v11, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    aput-object v11, v9, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_10
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astLengthStack:[I

    add-int/lit8 v9, v6, -0x1

    iput v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astLengthPtr:I

    aget v8, v8, v6

    move v6, v2

    :goto_a
    if-lt v6, v8, :cond_11

    goto :goto_7

    :cond_11
    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->docComment:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->exceptionReferences:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aget v10, v0, v7

    sub-int/2addr v10, v4

    aput v10, v0, v7

    iget-object v11, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astStack:[Ljava/lang/Object;

    iget v12, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astPtr:I

    add-int/lit8 v13, v12, -0x1

    iput v13, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astPtr:I

    aget-object v11, v11, v12

    check-cast v11, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    aput-object v11, v9, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_12
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astLengthStack:[I

    add-int/lit8 v8, v6, -0x1

    iput v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astLengthPtr:I

    aget v6, v7, v6

    move v7, v2

    :goto_b
    if-lt v7, v6, :cond_13

    goto/16 :goto_7

    :cond_13
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astStack:[Ljava/lang/Object;

    iget v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astPtr:I

    add-int/lit8 v10, v9, -0x1

    iput v10, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astPtr:I

    aget-object v8, v8, v9

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    instance-of v9, v8, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    if-eqz v9, :cond_14

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->docComment:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramReferences:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    add-int/lit8 v5, v5, -0x1

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleNameReference;

    aput-object v8, v9, v5

    goto :goto_c

    :cond_14
    instance-of v9, v8, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    if-eqz v9, :cond_15

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->docComment:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;->paramTypeParameters:[Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    add-int/lit8 v3, v3, -0x1

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/ast/JavadocSingleTypeReference;

    aput-object v8, v9, v3

    :cond_15
    :goto_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_16
    rem-int/lit8 v5, v3, 0x3

    aget v6, v0, v5

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astLengthStack:[I

    aget v7, v7, v3

    add-int/2addr v6, v7

    aput v6, v0, v5

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2
.end method
