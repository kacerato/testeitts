.class Lorg/eclipse/jdt/internal/core/JavaProject$4;
.super Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/JavaProject;->newTemporaryInfo()Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/JavaProject;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaProject;Lorg/eclipse/core/resources/IProject;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaProject$4;->this$0:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/JavaModelManager$PerProjectInfo;-><init>(Lorg/eclipse/core/resources/IProject;)V

    return-void
.end method


# virtual methods
.method public addClasspathChange()Lorg/eclipse/jdt/internal/core/ClasspathChange;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
