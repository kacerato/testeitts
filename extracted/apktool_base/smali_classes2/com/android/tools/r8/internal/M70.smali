.class public abstract Lcom/android/tools/r8/internal/M70;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/M70;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->d:Lcom/android/tools/r8/internal/l4;

    .line 3
    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->q:Lcom/android/tools/r8/internal/qo0;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/l4;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qo0;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, Lcom/android/tools/r8/internal/M70;->b()Lcom/android/tools/r8/internal/b10;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/vg;

    invoke-direct {v1, v0, p0}, Lcom/android/tools/r8/internal/vg;-><init>(Lcom/android/tools/r8/internal/l4;Lcom/android/tools/r8/internal/qo0;)V

    return-object v1
.end method

.method public static b()Lcom/android/tools/r8/internal/b10;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/b10;->a:Lcom/android/tools/r8/internal/b10;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/internal/l4;)Lcom/android/tools/r8/internal/M70;
.end method

.method public abstract a(Lcom/android/tools/r8/internal/qo0;)Lcom/android/tools/r8/internal/M70;
.end method

.method public abstract a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/M70;
.end method

.method public a()Lcom/android/tools/r8/internal/vg;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/Consumer;)V
.end method

.method public abstract a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
.end method

.method public abstract a(Lcom/android/tools/r8/graph/y;)V
.end method

.method public abstract c()V
.end method
