.class public final synthetic Lcom/android/tools/r8/shaking/ye;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/InputDependencyGraphConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/InputDependencyGraphConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/ye;->a:Lcom/android/tools/r8/InputDependencyGraphConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/ye;->a:Lcom/android/tools/r8/InputDependencyGraphConsumer;

    check-cast p1, Lcom/android/tools/r8/origin/Origin;

    check-cast p2, Ljava/nio/file/Path;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/InputDependencyGraphConsumer;->acceptProguardClassObfuscationDictionary(Lcom/android/tools/r8/origin/Origin;Ljava/nio/file/Path;)V

    return-void
.end method
