.class public abstract Lcom/android/tools/r8/graph/x3;
.super Lcom/android/tools/r8/graph/D3;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/D3;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;
    .locals 0

    .line 1
    sget-object p1, Lcom/android/tools/r8/internal/t40;->b:Lcom/android/tools/r8/internal/t40;

    return-object p1
.end method

.method public final a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0

    .line 2
    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic g()Lcom/android/tools/r8/graph/Z5;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final x()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
