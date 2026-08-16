.class Lorg/eclipse/jdt/internal/core/SearchableEnvironment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/runtime/IProgressMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->findConstructorDeclarations([CZLorg/eclipse/jdt/internal/codeassist/ISearchRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field isCanceled:Z

.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/SearchableEnvironment;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/SearchableEnvironment;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment$5;->this$0:Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment$5;->isCanceled:Z

    return-void
.end method


# virtual methods
.method public beginTask(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public done()V
    .locals 0

    return-void
.end method

.method public internalWorked(D)V
    .locals 0

    return-void
.end method

.method public isCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment$5;->isCanceled:Z

    return v0
.end method

.method public setCanceled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment$5;->isCanceled:Z

    return-void
.end method

.method public setTaskName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public subTask(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public worked(I)V
    .locals 0

    return-void
.end method
