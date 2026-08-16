.class public Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;
.super Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
.source "SourceFile"


# instance fields
.field public importCount:I

.field public imports:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredImport;

.field public module:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;

.field pendingAnnotationCount:I

.field pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

.field pendingModifersSourceStart:I

.field pendingModifiers:I

.field public typeCount:I

.field public types:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

.field public unitDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;ILorg/eclipse/jdt/internal/compiler/parser/Parser;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;-><init>(Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;ILorg/eclipse/jdt/internal/compiler/parser/Parser;)V

    const/4 p2, -0x1

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->pendingModifersSourceStart:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->unitDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    return-void
.end method


# virtual methods
.method public add(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 5

    .line 1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->typeCount:I

    if-lez v0, :cond_1

    .line 2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->types:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    .line 3
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->bodyEnd:I

    .line 4
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyEnd:I

    const/4 v4, 0x0

    .line 5
    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->bodyEnd:I

    .line 6
    iput v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    .line 7
    iput v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyEnd:I

    .line 8
    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    invoke-static {v2}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result v2

    if-lez v1, :cond_0

    if-ge v1, v3, :cond_0

    const/4 v1, 0x2

    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-eq v2, v1, :cond_0

    .line 9
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ast/Block;

    invoke-direct {v1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Block;-><init>(I)V

    .line 10
    iput v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v3, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 11
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;

    invoke-direct {v2, v1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/Block;I)V

    .line 12
    iput v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->bodyStart:I

    .line 13
    iput v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/Initializer;->bodyEnd:I

    .line 14
    iput v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceStart:I

    .line 15
    iput v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->declarationSourceEnd:I

    .line 16
    iput v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    .line 17
    iput v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    .line 18
    invoke-virtual {v0, v2, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->add(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    .line 19
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->resetPendingModifiers()V

    .line 20
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->add(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p0
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->module:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->add(Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 3

    .line 21
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->typeCount:I

    if-lez v0, :cond_0

    .line 22
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->types:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    const/4 v1, 0x0

    .line 23
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->bodyEnd:I

    .line 24
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iput v1, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    .line 25
    iput v1, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyEnd:I

    .line 26
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->resetPendingModifiers()V

    .line 27
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->add(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p0
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 4

    .line 29
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->resetPendingModifiers()V

    .line 30
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->imports:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredImport;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    .line 31
    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredImport;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->imports:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredImport;

    .line 32
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->importCount:I

    goto :goto_0

    .line 33
    :cond_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->importCount:I

    array-length v3, v0

    if-ne v2, v3, :cond_1

    mul-int/lit8 v3, v2, 0x2

    .line 34
    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredImport;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->imports:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredImport;

    .line 35
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    :cond_1
    :goto_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredImport;

    invoke-direct {v0, p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredImport;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    .line 37
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->imports:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredImport;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->importCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->importCount:I

    aput-object v0, p2, v1

    .line 38
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->declarationSourceEnd:I

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 1

    .line 39
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;

    invoke-direct {v0, p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->module:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;

    return-object v0
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 4

    .line 40
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, 0x200

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 41
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->typeCount:I

    if-lez v0, :cond_0

    .line 42
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->types:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v2, v0

    .line 43
    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->bodyEnd:I

    .line 44
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iput v1, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyEnd:I

    .line 45
    iput v1, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    .line 46
    iget v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->bracketBalance:I

    .line 47
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->resetPendingModifiers()V

    .line 48
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->add(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;

    move-result-object p1

    return-object p1

    .line 49
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->types:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    if-nez v0, :cond_1

    const/4 v0, 0x5

    .line 50
    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->types:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    .line 51
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->typeCount:I

    goto :goto_0

    .line 52
    :cond_1
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->typeCount:I

    array-length v3, v0

    if-ne v2, v3, :cond_2

    mul-int/lit8 v3, v2, 0x2

    .line 53
    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->types:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    .line 54
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    :cond_2
    :goto_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    invoke-direct {v0, p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    .line 56
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->types:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->typeCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->typeCount:I

    aput-object v0, p2, v1

    .line 57
    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->pendingAnnotationCount:I

    if-lez p2, :cond_3

    .line 58
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    .line 59
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->pendingModifiers:I

    .line 60
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->pendingModifersSourceStart:I

    .line 61
    invoke-virtual {v0, v1, p2, v2, v3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->attach([Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;III)V

    .line 62
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->resetPendingModifiers()V

    .line 63
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    return-object p0
.end method

.method public addAnnotationName(IIII)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 10

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->pendingAnnotationCount:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->pendingAnnotationCount:I

    array-length v3, v0

    if-ne v2, v3, :cond_1

    mul-int/lit8 v3, v2, 0x2

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    move-object v4, v0

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p0

    move v9, p4

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;-><init>(IIILorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->pendingAnnotationCount:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->pendingAnnotationCount:I

    aput-object v0, p1, p2

    return-object v0
.end method

.method public addModifier(II)V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->pendingModifiers:I

    or-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->pendingModifiers:I

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->pendingModifersSourceStart:I

    if-gez p1, :cond_0

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->pendingModifersSourceStart:I

    :cond_0
    return-void
.end method

.method public getLastStart()I
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->typeCount:I

    const/4 v1, -0x1

    if-lez v0, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->types:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v2, v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    if-ge v1, v0, :cond_0

    if-eqz v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public parseTree()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->unitDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    return-object v0
.end method

.method public resetPendingModifiers()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->pendingAnnotations:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredAnnotation;

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->pendingAnnotationCount:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->pendingModifiers:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->pendingModifersSourceStart:I

    return-void
.end method

.method public sourceEnd()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->unitDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->tabString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "Recovered unit: [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->unitDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->tabString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->imports:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredImport;

    const-string v2, "\n"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v3

    :goto_0
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->importCount:I

    if-lt v1, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->imports:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredImport;

    aget-object v4, v4, v1

    invoke-virtual {v4, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredImport;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->types:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    if-eqz v1, :cond_3

    :goto_2
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->typeCount:I

    if-lt v3, v1, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->types:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    aget-object v1, v1, v3

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateParseTree()V
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->updatedCompilationUnitDeclaration()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    return-void
.end method

.method public updateSourceEndIfNecessary(II)V
    .locals 1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->unitDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-nez v0, :cond_0

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    :cond_0
    return-void
.end method

.method public updatedCompilationUnitDeclaration()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    .locals 8

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->importCount:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->importCount:I

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->unitDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iput-object v0, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->imports:[Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->imports:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredImport;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredImport;->updatedImportReference()Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->module:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->unitDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModule;->updatedModuleDeclaration()Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    move-result-object v0

    iput-object v0, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;

    :cond_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->typeCount:I

    if-lez v0, :cond_9

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->unitDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-nez v2, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    array-length v3, v2

    :goto_2
    add-int/2addr v0, v3

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-lez v3, :cond_4

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->types:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->typeCount:I

    add-int/lit8 v5, v4, -0x1

    aget-object v5, v2, v5

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    if-nez v5, :cond_5

    add-int/lit8 v5, v4, -0x1

    aget-object v5, v2, v5

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->unitDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget v6, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    iput v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceEnd:I

    add-int/lit8 v4, v4, -0x1

    aget-object v2, v2, v4

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->typeDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iput v6, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->bodyEnd:I

    :cond_5
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move v4, v1

    move v5, v3

    :goto_3
    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->typeCount:I

    if-lt v4, v6, :cond_7

    if-eq v5, v6, :cond_6

    add-int/2addr v3, v5

    new-array v2, v3, [Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    :cond_6
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->unitDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iput-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->types:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    goto :goto_4

    :cond_7
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->types:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;

    aget-object v6, v6, v4

    invoke-virtual {v6, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredType;->updatedTypeDeclaration(ILjava/util/Set;)Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v6

    if-eqz v6, :cond_8

    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v7, v7, 0x100

    if-nez v7, :cond_8

    add-int/lit8 v7, v5, 0x1

    aput-object v6, v0, v5

    move v5, v7

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredUnit;->unitDeclaration:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    return-object v0
.end method
