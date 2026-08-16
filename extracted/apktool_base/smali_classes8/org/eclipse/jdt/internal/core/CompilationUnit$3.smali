.class Lorg/eclipse/jdt/internal/core/CompilationUnit$3;
.super Lorg/eclipse/jdt/core/WorkingCopyOwner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/CompilationUnit;->getWorkingCopy(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/ICompilationUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/CompilationUnit;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/CompilationUnit;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnit$3;->this$0:Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-direct {p0}, Lorg/eclipse/jdt/core/WorkingCopyOwner;-><init>()V

    return-void
.end method
