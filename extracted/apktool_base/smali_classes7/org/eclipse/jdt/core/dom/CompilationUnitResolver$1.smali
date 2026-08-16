.class Lorg/eclipse/jdt/core/dom/CompilationUnitResolver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/core/dom/CompilationUnitResolver;->getHandlingPolicy()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

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

    const/4 v0, 0x0

    return v0
.end method

.method public stopOnFirstError()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
