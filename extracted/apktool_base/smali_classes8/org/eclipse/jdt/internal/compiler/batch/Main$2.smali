.class Lorg/eclipse/jdt/internal/compiler/batch/Main$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/batch/Main;->getHandlingPolicy()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/batch/Main;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/batch/Main;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$2;->this$0:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ignoreAllErrors()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public proceedOnErrors()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/batch/Main$2;->this$0:Lorg/eclipse/jdt/internal/compiler/batch/Main;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/batch/Main;->proceedOnError:Z

    return v0
.end method

.method public stopOnFirstError()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
