.class public final Lcom/android/tools/r8/shaking/u3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/d1;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/y;

.field public final synthetic b:Ljava/util/function/Predicate;

.field public final synthetic c:Lcom/android/tools/r8/shaking/v3;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/shaking/v3;Lcom/android/tools/r8/graph/y;Ljava/util/function/Predicate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/shaking/u3;->c:Lcom/android/tools/r8/shaking/v3;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/u3;->a:Lcom/android/tools/r8/graph/y;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/u3;->b:Ljava/util/function/Predicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lcom/android/tools/r8/graph/u1;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/u3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;
    .locals 1

    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "Add support for multiple definitions with rule evaluation"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/u3;->c:Lcom/android/tools/r8/shaking/v3;

    iget-boolean v0, v0, Lcom/android/tools/r8/shaking/v3;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/shaking/u3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/u3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/u3;->b:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
