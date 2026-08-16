.class Lorg/eclipse/jdt/internal/compiler/Compiler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/Compiler;-><init>(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;Ljava/io/PrintWriter;Lorg/eclipse/jdt/core/compiler/CompilationProgress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/Compiler;

.field private final synthetic val$requestor:Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/Compiler;Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler$1;->this$0:Lorg/eclipse/jdt/internal/compiler/Compiler;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler$1;->val$requestor:Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptResult(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/Compiler;->DebugRequestor:Lorg/eclipse/jdt/internal/compiler/IDebugRequestor;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/IDebugRequestor;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/Compiler;->DebugRequestor:Lorg/eclipse/jdt/internal/compiler/IDebugRequestor;

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/internal/compiler/IDebugRequestor;->acceptDebugResult(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler$1;->val$requestor:Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;->acceptResult(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    return-void
.end method
