.class public Lorg/eclipse/jdt/internal/compiler/parser/RecoveredPackageVisibilityStatement;
.super Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleStatement;
.source "SourceFile"


# instance fields
.field pkgRef:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredImport;

.field targetCount:I

.field targets:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleReference;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredPackageVisibilityStatement;->targetCount:I

    return-void
.end method


# virtual methods
.method public add(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 1

    .line 1
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredImport;

    invoke-direct {v0, p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredImport;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredPackageVisibilityStatement;->pkgRef:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredImport;

    return-object p0
.end method

.method public add(Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;I)Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;
    .locals 4

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredPackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    .line 3
    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleReference;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredPackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleReference;

    .line 4
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredPackageVisibilityStatement;->targetCount:I

    goto :goto_0

    .line 5
    :cond_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredPackageVisibilityStatement;->targetCount:I

    array-length v3, v0

    if-ne v2, v3, :cond_1

    mul-int/lit8 v3, v2, 0x2

    .line 6
    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleReference;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredPackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleReference;

    .line 7
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    :cond_1
    :goto_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleReference;

    invoke-direct {v0, p1, p0, p2}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleReference;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;I)V

    .line 9
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredPackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleReference;

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredPackageVisibilityStatement;->targetCount:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredPackageVisibilityStatement;->targetCount:I

    aput-object v0, p1, p2

    return-object p0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredElement;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public updateParseTree()V
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredPackageVisibilityStatement;->updatedPackageVisibilityStatement()Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;

    return-void
.end method

.method public updatedPackageVisibilityStatement()Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleStatement;->moduleStatement:Lorg/eclipse/jdt/internal/compiler/ast/ModuleStatement;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredPackageVisibilityStatement;->pkgRef:Lorg/eclipse/jdt/internal/compiler/parser/RecoveredImport;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredImport;->updatedImportReference()Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->pkgRef:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredPackageVisibilityStatement;->targetCount:I

    if-lez v1, :cond_4

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    array-length v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    add-int/2addr v1, v4

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    if-lez v4, :cond_2

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredPackageVisibilityStatement;->targetCount:I

    :goto_2
    if-lt v3, v2, :cond_3

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v4, 0x1

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredPackageVisibilityStatement;->targets:[Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleReference;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveredModuleReference;->updatedModuleReference()Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;

    move-result-object v6

    aput-object v6, v1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_2

    :cond_4
    :goto_3
    return-object v0
.end method
