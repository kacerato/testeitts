.class public abstract Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract configure(Ljava/lang/Object;[Ljava/lang/String;)V
.end method

.method public abstract configureFromPlatform(Lorg/eclipse/jdt/internal/compiler/Compiler;Ljava/lang/Object;Ljava/lang/Object;Z)V
.end method

.method public abstract getDeletedUnits()[Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;
.end method

.method public abstract getNewClassFiles()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
.end method

.method public abstract getNewUnits()[Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;
.end method

.method public abstract processAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)V
.end method

.method public abstract reset()V
.end method

.method public abstract setErr(Ljava/io/PrintWriter;)V
.end method

.method public abstract setOut(Ljava/io/PrintWriter;)V
.end method

.method public abstract setProcessors([Ljava/lang/Object;)V
.end method
