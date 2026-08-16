.class public final Lcom/android/tools/r8/graph/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Ir0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/y;

.field public final synthetic b:Lcom/android/tools/r8/internal/R00;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/R00;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/graph/u;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/graph/u;->b:Lcom/android/tools/r8/internal/R00;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/ns0;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/u;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, v0, Lcom/android/tools/r8/graph/y;->m:Lcom/android/tools/r8/shaking/n3;

    iget-object v2, p0, Lcom/android/tools/r8/graph/u;->b:Lcom/android/tools/r8/internal/R00;

    invoke-virtual {v1, v2, p1}, Lcom/android/tools/r8/shaking/n3;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/n3;

    move-result-object p1

    sget-boolean v1, Lcom/android/tools/r8/graph/y;->W:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ;->d1:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, v0, Lcom/android/tools/r8/graph/y;->m:Lcom/android/tools/r8/shaking/n3;

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/u;->a:Lcom/android/tools/r8/graph/y;

    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->m:Lcom/android/tools/r8/shaking/n3;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/shaking/n3;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
