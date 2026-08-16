.class public abstract Lcom/android/tools/r8/errors/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/util/ArrayList;Lcom/android/tools/r8/internal/qo0;)Lcom/android/tools/r8/errors/StartupClassesNonStartupFractionDiagnostic;
    .locals 10

    sget-boolean v0, Lcom/android/tools/r8/errors/f;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qo0;->c()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Lcom/android/tools/r8/internal/hF;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/hF;-><init>(I)V

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/tools/r8/internal/K;->b:I

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    move v5, v4

    move v6, v5

    :goto_2
    if-ge v4, v3, :cond_8

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v4, v4, 0x1

    check-cast v7, Lcom/android/tools/r8/graph/H2;

    sget-boolean v8, Lcom/android/tools/r8/errors/f;->a:Z

    if-nez v8, :cond_5

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/android/tools/r8/internal/qo0;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_5
    :goto_3
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v2

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p1, v9}, Lcom/android/tools/r8/internal/m1;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v9

    if-eqz v9, :cond_6

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    add-int/2addr v5, v8

    invoke-virtual {v1, v8}, Lcom/android/tools/r8/internal/hF;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v8, v7}, Lcom/android/tools/r8/internal/hF;->b(II)I

    goto :goto_2

    :cond_8
    new-instance p0, Lcom/android/tools/r8/errors/StartupClassesNonStartupFractionDiagnostic;

    invoke-direct {p0, v0, v5, v6, v1}, Lcom/android/tools/r8/errors/StartupClassesNonStartupFractionDiagnostic;-><init>(IIILcom/android/tools/r8/internal/hF;)V

    return-object p0
.end method
