.class public Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExport;
.super Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
.source "SourceFile"


# instance fields
.field public exportReference:Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;

.field targetCount:I

.field targets:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleReference;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;-><init>(Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    const/4 p2, 0x0

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExport;->targetCount:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExport;->exportReference:Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;

    return-void
.end method


# virtual methods
.method public add(Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExport;->targets:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleReference;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExport;->targets:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleReference;

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExport;->targetCount:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExport;->targetCount:I

    array-length v3, v0

    if-ne v2, v3, :cond_1

    mul-int/lit8 v3, v2, 0x2

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleReference;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExport;->targets:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleReference;

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleReference;

    invoke-direct {v0, p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleReference;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExport;->targets:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleReference;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExport;->targetCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExport;->targetCount:I

    aput-object v0, p2, v1

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method

.method public parseTree()Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExport;->exportReference:Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;

    return-object v0
.end method

.method public sourceEnd()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExport;->exportReference:Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;->declarationSourceEnd:I

    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->tabString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "Recovered export: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExport;->exportReference:Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateParseTree()V
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExport;->updatedExportReference()Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;

    return-void
.end method

.method public updateSourceEndIfNecessary(II)V
    .locals 1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExport;->exportReference:Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;->declarationSourceEnd:I

    if-nez v0, :cond_0

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;->declarationSourceEnd:I

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;->declarationEnd:I

    :cond_0
    return-void
.end method

.method public updatedExportReference()Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;
    .locals 6

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExport;->targetCount:I

    if-lez v0, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExport;->exportReference:Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    array-length v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    add-int/2addr v0, v3

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    if-lez v3, :cond_1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExport;->targetCount:I

    :goto_2
    if-lt v2, v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExport;->exportReference:Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;

    iput-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExport;->targets:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleReference;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleReference;->updatedModuleReference()Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    move-result-object v5

    aput-object v5, v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredExport;->exportReference:Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;

    return-object v0
.end method
