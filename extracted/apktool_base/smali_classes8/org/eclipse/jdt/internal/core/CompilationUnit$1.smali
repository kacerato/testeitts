.class Lorg/eclipse/jdt/internal/core/CompilationUnit$1;
.super Lorg/eclipse/jdt/internal/core/CompilationUnit;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/CompilationUnit;->cloneCachingContents()Lorg/eclipse/jdt/internal/core/CompilationUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private cachedContents:[C

.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/CompilationUnit;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/CompilationUnit;Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/CompilationUnit$1;->this$0:Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/CompilationUnit;-><init>(Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    return-void
.end method


# virtual methods
.method public getContents()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnit$1;->cachedContents:[C

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnit$1;->this$0:Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getContents()[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnit$1;->cachedContents:[C

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnit$1;->cachedContents:[C

    return-object v0
.end method

.method public originalFromClone()Lorg/eclipse/jdt/internal/core/CompilationUnit;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CompilationUnit$1;->this$0:Lorg/eclipse/jdt/internal/core/CompilationUnit;

    return-object v0
.end method
