.class Lorg/eclipse/jdt/internal/core/JavaModelManager$11;
.super Lorg/eclipse/jdt/core/ClasspathContainerInitializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/JavaModelManager;->initializeContainer(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/core/runtime/IPath;)Lorg/eclipse/jdt/core/IClasspathContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaModelManager;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaModelManager$11;->this$0:Lorg/eclipse/jdt/internal/core/JavaModelManager;

    invoke-direct {p0}, Lorg/eclipse/jdt/core/ClasspathContainerInitializer;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Lorg/eclipse/core/runtime/IPath;Lorg/eclipse/jdt/core/IJavaProject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    return-void
.end method
