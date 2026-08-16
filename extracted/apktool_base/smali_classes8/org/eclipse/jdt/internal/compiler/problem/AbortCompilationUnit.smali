.class public Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilationUnit;
.super Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x3b08dda09eec512eL


# instance fields
.field public encoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Ljava/io/IOException;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Ljava/lang/Throwable;)V

    .line 3
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilationUnit;->encoding:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;-><init>(Lorg/eclipse/jdt/internal/compiler/CompilationResult;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    return-void
.end method
