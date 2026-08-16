.class public interface abstract Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;,
        Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;,
        Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;,
        Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$PackageExportInfo;,
        Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ParameterInfo;,
        Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$RequiresInfo;,
        Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ServicesInfo;,
        Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;,
        Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeParameterInfo;
    }
.end annotation


# virtual methods
.method public abstract acceptAnnotationTypeReference([CI)V
.end method

.method public abstract acceptAnnotationTypeReference([[CII)V
.end method

.method public abstract acceptConstructorReference([CII)V
.end method

.method public abstract acceptFieldReference([CI)V
.end method

.method public abstract acceptImport(IIII[[CZI)V
.end method

.method public abstract acceptLineSeparatorPositions([I)V
.end method

.method public abstract acceptMethodReference([CII)V
.end method

.method public abstract acceptPackage(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V
.end method

.method public abstract acceptProblem(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
.end method

.method public abstract acceptTypeReference([CI)V
.end method

.method public abstract acceptTypeReference([[CII)V
.end method

.method public abstract acceptUnknownReference([CI)V
.end method

.method public abstract acceptUnknownReference([[CII)V
.end method

.method public abstract enterCompilationUnit()V
.end method

.method public abstract enterConstructor(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;)V
.end method

.method public abstract enterField(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$FieldInfo;)V
.end method

.method public abstract enterInitializer(II)V
.end method

.method public abstract enterMethod(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$MethodInfo;)V
.end method

.method public enterModule(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$ModuleInfo;)V
    .locals 0

    return-void
.end method

.method public abstract enterType(Lorg/eclipse/jdt/internal/compiler/ISourceElementRequestor$TypeInfo;)V
.end method

.method public abstract exitCompilationUnit(I)V
.end method

.method public abstract exitConstructor(I)V
.end method

.method public abstract exitField(III)V
.end method

.method public abstract exitInitializer(I)V
.end method

.method public abstract exitMethod(ILorg/eclipse/jdt/internal/compiler/ast/Expression;)V
.end method

.method public exitModule(I)V
    .locals 0

    return-void
.end method

.method public abstract exitType(I)V
.end method
