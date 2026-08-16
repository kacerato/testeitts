.class Lorg/eclipse/jdt/internal/core/SearchableEnvironment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/search/processing/IJob;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/SearchableEnvironment;->findConstructorDeclarations([CZLorg/eclipse/jdt/internal/codeassist/ISearchRequestor;Lorg/eclipse/core/runtime/IProgressMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/SearchableEnvironment;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/SearchableEnvironment;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SearchableEnvironment$7;->this$0:Lorg/eclipse/jdt/internal/core/SearchableEnvironment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public belongsTo(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public cancel()V
    .locals 0

    return-void
.end method

.method public ensureReadyToRun()V
    .locals 0

    return-void
.end method

.method public execute(Lorg/eclipse/core/runtime/IProgressMonitor;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public getJobFamily()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
