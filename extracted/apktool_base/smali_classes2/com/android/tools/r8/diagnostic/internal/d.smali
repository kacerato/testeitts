.class public Lcom/android/tools/r8/diagnostic/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/E5;)Lcom/android/tools/r8/diagnostic/DefinitionContext;
    .locals 2

    .line 7
    invoke-interface {p0}, Lcom/android/tools/r8/graph/E5;->getContext()Lcom/android/tools/r8/graph/o0;

    move-result-object p0

    .line 8
    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->isClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-static {}, Lcom/android/tools/r8/diagnostic/internal/a;->a()Lcom/android/tools/r8/diagnostic/internal/a$a;

    move-result-object v0

    .line 10
    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->asClass()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->M0()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/diagnostic/internal/a$a;->a(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/diagnostic/internal/a$a;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-static {}, Lcom/android/tools/r8/diagnostic/internal/e;->a()Lcom/android/tools/r8/diagnostic/internal/e$a;

    move-result-object v0

    .line 13
    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->c()Lcom/android/tools/r8/graph/F0;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    .line 15
    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/l1;->v0()Lcom/android/tools/r8/references/FieldReference;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/diagnostic/internal/e$a;->a(Lcom/android/tools/r8/references/FieldReference;)Lcom/android/tools/r8/diagnostic/internal/e$a;

    move-result-object v0

    goto :goto_0

    .line 17
    :cond_1
    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->I()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    invoke-static {}, Lcom/android/tools/r8/diagnostic/internal/f;->a()Lcom/android/tools/r8/diagnostic/internal/f$a;

    move-result-object v0

    .line 19
    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->b()Lcom/android/tools/r8/graph/H0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H0;->w()Lcom/android/tools/r8/references/MethodReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/diagnostic/internal/f$a;->a(Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/diagnostic/internal/f$a;

    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {p0}, Lcom/android/tools/r8/graph/o0;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/diagnostic/internal/b;->a(Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/diagnostic/internal/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/diagnostic/internal/b;->a()Lcom/android/tools/r8/diagnostic/DefinitionContext;

    move-result-object p0

    return-object p0

    .line 21
    :cond_2
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/diagnostic/DefinitionClassContext;)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-interface {p0}, Lcom/android/tools/r8/diagnostic/DefinitionClassContext;->getClassReference()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/diagnostic/DefinitionContext;)Ljava/lang/String;
    .locals 4

    .line 22
    new-instance v0, Lcom/android/tools/r8/diagnostic/internal/r;

    invoke-direct {v0}, Lcom/android/tools/r8/diagnostic/internal/r;-><init>()V

    new-instance v1, Lcom/android/tools/r8/diagnostic/internal/s;

    invoke-direct {v1}, Lcom/android/tools/r8/diagnostic/internal/s;-><init>()V

    new-instance v2, Lcom/android/tools/r8/diagnostic/internal/t;

    invoke-direct {v2}, Lcom/android/tools/r8/diagnostic/internal/t;-><init>()V

    .line 23
    invoke-interface {p0}, Lcom/android/tools/r8/diagnostic/DefinitionContext;->isClassContext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 24
    invoke-interface {p0}, Lcom/android/tools/r8/diagnostic/DefinitionContext;->asClassContext()Lcom/android/tools/r8/diagnostic/DefinitionClassContext;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 25
    :cond_0
    invoke-interface {p0}, Lcom/android/tools/r8/diagnostic/DefinitionContext;->isFieldContext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    invoke-interface {p0}, Lcom/android/tools/r8/diagnostic/DefinitionContext;->asFieldContext()Lcom/android/tools/r8/diagnostic/DefinitionFieldContext;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 27
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/diagnostic/internal/d;->a:Z

    if-nez v0, :cond_3

    invoke-interface {p0}, Lcom/android/tools/r8/diagnostic/DefinitionContext;->isMethodContext()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 28
    :cond_3
    :goto_0
    invoke-interface {p0}, Lcom/android/tools/r8/diagnostic/DefinitionContext;->asMethodContext()Lcom/android/tools/r8/diagnostic/DefinitionMethodContext;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 29
    :goto_1
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/diagnostic/DefinitionFieldContext;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-interface {p0}, Lcom/android/tools/r8/diagnostic/DefinitionFieldContext;->getFieldReference()Lcom/android/tools/r8/references/FieldReference;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/Gw;->a(Lcom/android/tools/r8/references/FieldReference;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/diagnostic/DefinitionMethodContext;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-interface {p0}, Lcom/android/tools/r8/diagnostic/DefinitionMethodContext;->getMethodReference()Lcom/android/tools/r8/references/MethodReference;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/hX;->b(Lcom/android/tools/r8/references/MethodReference;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/diagnostic/DefinitionContext;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/diagnostic/DefinitionContext;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/diagnostic/DefinitionClassContext;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/diagnostic/DefinitionFieldContext;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/diagnostic/DefinitionMethodContext;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/android/tools/r8/diagnostic/DefinitionContext;->isClassContext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/tools/r8/diagnostic/DefinitionContext;->asClassContext()Lcom/android/tools/r8/diagnostic/DefinitionClassContext;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/android/tools/r8/diagnostic/DefinitionContext;->isFieldContext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p0}, Lcom/android/tools/r8/diagnostic/DefinitionContext;->asFieldContext()Lcom/android/tools/r8/diagnostic/DefinitionFieldContext;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    sget-boolean p1, Lcom/android/tools/r8/diagnostic/internal/d;->a:Z

    if-nez p1, :cond_3

    invoke-interface {p0}, Lcom/android/tools/r8/diagnostic/DefinitionContext;->isMethodContext()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 6
    :cond_3
    :goto_0
    invoke-interface {p0}, Lcom/android/tools/r8/diagnostic/DefinitionContext;->asMethodContext()Lcom/android/tools/r8/diagnostic/DefinitionMethodContext;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
