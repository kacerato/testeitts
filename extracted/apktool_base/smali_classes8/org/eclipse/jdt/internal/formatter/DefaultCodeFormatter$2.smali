.class Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter$2;
.super Lorg/eclipse/jdt/internal/core/CompilationUnit;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->createDummyModuleInfoCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;

.field private final synthetic val$dummyProject:Lorg/eclipse/jdt/core/IJavaProject;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/core/IJavaProject;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter$2;->this$0:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;

    iput-object p5, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter$2;->val$dummyProject:Lorg/eclipse/jdt/core/IJavaProject;

    invoke-direct {p0, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/CompilationUnit;-><init>(Lorg/eclipse/jdt/internal/core/PackageFragment;Ljava/lang/String;Lorg/eclipse/jdt/core/WorkingCopyOwner;)V

    return-void
.end method


# virtual methods
.method public getContents()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter$2;->this$0:Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter;->sourceArray:[C

    return-object v0
.end method

.method public getJavaProject()Lorg/eclipse/jdt/core/IJavaProject;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/DefaultCodeFormatter$2;->val$dummyProject:Lorg/eclipse/jdt/core/IJavaProject;

    return-object v0
.end method
