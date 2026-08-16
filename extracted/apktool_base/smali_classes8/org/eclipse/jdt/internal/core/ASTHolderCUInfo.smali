.class public Lorg/eclipse/jdt/internal/core/ASTHolderCUInfo;
.super Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;
.source "SourceFile"


# instance fields
.field ast:Lorg/eclipse/jdt/core/dom/CompilationUnit;

.field astLevel:I

.field problems:Ljava/util/HashMap;

.field reconcileFlags:I

.field resolveBindings:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/CompilationUnitElementInfo;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/ASTHolderCUInfo;->problems:Ljava/util/HashMap;

    return-void
.end method
