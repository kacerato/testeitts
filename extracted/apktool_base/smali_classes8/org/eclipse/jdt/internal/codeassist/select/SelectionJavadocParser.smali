.class public Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;
.super Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;
.source "SourceFile"


# instance fields
.field public inheritDocTagSelected:Z

.field selectedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

.field selectionEnd:I

.field selectionStart:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;-><init>(Lorg/eclipse/jdt/internal/compiler/parser/Parser;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->shouldReportProblems:Z

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->reportProblems:Z

    const/16 v0, 0x104

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->kind:I

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->inheritDocTagSelected:Z

    return-void
.end method


# virtual methods
.method public checkDeprecation(I)Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->sourceParser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    move-object v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;

    iget v1, v1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->selectionStart:I

    iput v1, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->selectionStart:I

    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;

    iget v2, v2, Lorg/eclipse/jdt/internal/codeassist/select/SelectionParser;->selectionEnd:I

    iput v2, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->selectionEnd:I

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStarts:[I

    aget v3, v3, p1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocStart:I

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->commentStops:[I

    aget v0, v0, p1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocEnd:I

    if-gt v3, v1, :cond_1

    if-gt v2, v0, :cond_1

    sget-boolean v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SELECTION in Javadoc:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->checkDeprecation(I)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->docComment:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public commentParse()Z
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadoc;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocStart:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->javadocEnd:I

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadoc;-><init>(II)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->docComment:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->commentParse()Z

    move-result v0

    return v0
.end method

.method public createArgumentReference([CIZLjava/lang/Object;[JJ)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    invoke-super/range {p0 .. p7}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->createArgumentReference([CIZLjava/lang/Object;[JJ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    check-cast p4, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget p2, p4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget p3, p4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iget p4, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->selectionStart:I

    if-gt p2, p4, :cond_0

    iget p2, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->selectionEnd:I

    if-gt p2, p3, :cond_0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->selectedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->abort:Z

    sget-boolean p2, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz p2, :cond_0

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "\tselected argument="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->selectedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public createFieldReference(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/16 v0, 0x20

    ushr-long v3, v1, v0

    long-to-int v0, v3

    long-to-int v1, v1

    iget v2, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->selectionStart:I

    if-gt v0, v2, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->selectionEnd:I

    if-gt v0, v1, :cond_0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->createFieldReference(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->selectedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->abort:Z

    sget-boolean p1, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\tselected field="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->selectedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public createMethodReference(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/compiler/InvalidInputException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierLengthStack:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    aget-wide v3, v2, v0

    const/16 v0, 0x20

    ushr-long v5, v3, v0

    long-to-int v0, v5

    long-to-int v2, v3

    iget v3, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->selectionStart:I

    if-gt v0, v3, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->selectionEnd:I

    if-gt v0, v2, :cond_0

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->createMethodReference(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->selectedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->abort:Z

    sget-boolean p1, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\tselected method="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->selectedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public createTypeReference(I)Ljava/lang/Object;
    .locals 10

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->createTypeReference(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->selectionStart:I

    if-gt v0, v1, :cond_4

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->selectionEnd:I

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-gt v0, v1, :cond_4

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->tokens:[[C

    array-length v2, v2

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/QualifiedTypeReference;->sourcePositions:[J

    aget-wide v6, v5, v4

    const/16 v5, 0x20

    ushr-long v8, v6, v5

    long-to-int v5, v8

    long-to-int v6, v6

    iget v7, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->selectionStart:I

    if-gt v5, v7, :cond_2

    iget v5, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->selectionEnd:I

    if-gt v5, v6, :cond_2

    add-int/2addr v4, v1

    new-array v0, v4, [[C

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPtr:I

    sub-int/2addr v5, v2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierStack:[[C

    invoke-static {v2, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v2, v4, [J

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->identifierPositionStack:[J

    invoke-static {v6, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    invoke-direct {v3, v0, v2, v4, v5}, Lorg/eclipse/jdt/internal/compiler/ast/JavadocQualifiedTypeReference;-><init>([[C[JII)V

    iput-object v3, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->selectedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->abort:Z

    sget-boolean v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tselected partial qualified type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->selectedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return-object p1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->selectedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->abort:Z

    sget-boolean v0, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz v0, :cond_4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\tselected type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->selectedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    return-object p1
.end method

.method public parseInheritDocTag()V
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceStart:I

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->selectionStart:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->tagSourceEnd:I

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->selectionEnd:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->inheritDocTagSelected:Z

    :cond_0
    return-void
.end method

.method public pushParamName(Z)Z
    .locals 2

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->pushParamName(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astStack:[Ljava/lang/Object;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astPtr:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->astPtr:I

    aget-object p1, p1, v0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iget v1, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->selectionStart:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->selectionEnd:I

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-gt v0, v1, :cond_0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->selectedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/AbstractCommentParser;->abort:Z

    sget-boolean p1, Lorg/eclipse/jdt/internal/codeassist/SelectionEngine;->DEBUG:Z

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\tselected param="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->selectedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public updateDocComment()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->selectedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isTrulyExpression()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->docComment:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    check-cast v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadoc;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->selectedNode:Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadoc;->selectedNode:Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadocParser;->inheritDocTagSelected:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocParser;->docComment:Lorg/eclipse/jdt/internal/compiler/ast/Javadoc;

    check-cast v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadoc;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/codeassist/select/SelectionJavadoc;->inheritDocSelected:Z

    :cond_1
    :goto_0
    return-void
.end method
