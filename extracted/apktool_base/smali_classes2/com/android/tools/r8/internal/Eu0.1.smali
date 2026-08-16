.class public abstract Lcom/android/tools/r8/internal/Eu0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Yx0;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    new-instance v2, Lcom/android/tools/r8/internal/Du0;

    invoke-direct {v2, v1, p0}, Lcom/android/tools/r8/internal/Du0;-><init>(Lcom/android/tools/r8/internal/FE;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/f60;

    new-instance v2, Lcom/android/tools/r8/internal/Du0;

    invoke-direct {v2, v1, p0}, Lcom/android/tools/r8/internal/Du0;-><init>(Lcom/android/tools/r8/internal/FE;Lcom/android/tools/r8/internal/xw0;)V

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method
