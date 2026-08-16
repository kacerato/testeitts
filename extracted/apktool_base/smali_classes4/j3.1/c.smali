.class public final Lj3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lj3/b;Ljava/lang/String;)LK2/g;
    .locals 1
    .param p0    # Lj3/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LK2/g;->q(Ljava/lang/String;)LK2/g;

    move-result-object p0

    const-string p1, "getInstance(name)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final synthetic b()LT2/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">()",
            "LT2/g<",
            "Leg/M;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->y(ILjava/lang/String;)V

    const-class v2, Leg/M;

    const-class v3, Ljava/lang/annotation/Annotation;

    invoke-static {v3, v2}, LT2/F;->a(Ljava/lang/Class;Ljava/lang/Class;)LT2/F;

    move-result-object v2

    invoke-static {v2}, LT2/g;->f(LT2/F;)LT2/g$b;

    move-result-object v2

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->y(ILjava/lang/String;)V

    const-class v0, Ljava/util/concurrent/Executor;

    invoke-static {v3, v0}, LT2/F;->a(Ljava/lang/Class;Ljava/lang/Class;)LT2/F;

    move-result-object v0

    invoke-static {v0}, LT2/v;->l(LT2/F;)LT2/v;

    move-result-object v0

    invoke-virtual {v2, v0}, LT2/g$b;->b(LT2/v;)LT2/g$b;

    move-result-object v0

    invoke-static {}, Lkotlin/jvm/internal/M;->w()V

    sget-object v1, Lj3/c$a;->a:Lj3/c$a;

    invoke-virtual {v0, v1}, LT2/g$b;->f(LT2/k;)LT2/g$b;

    move-result-object v0

    invoke-virtual {v0}, LT2/g$b;->d()LT2/g;

    move-result-object v0

    const-string v1, "builder(Qualified.qualif\u2026cher()\n    }\n    .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final c(Lj3/b;)LK2/g;
    .locals 1
    .param p0    # Lj3/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, LK2/g;->p()LK2/g;

    move-result-object p0

    const-string v0, "getInstance()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final d(Lj3/b;)LK2/p;
    .locals 1
    .param p0    # Lj3/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lj3/b;->a:Lj3/b;

    invoke-static {p0}, Lj3/c;->c(Lj3/b;)LK2/g;

    move-result-object p0

    invoke-virtual {p0}, LK2/g;->s()LK2/p;

    move-result-object p0

    const-string v0, "Firebase.app.options"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final e(Lj3/b;Landroid/content/Context;)LK2/g;
    .locals 1
    .param p0    # Lj3/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lnf/o;
        message = "Migrate to use the KTX API from the main module: https://firebase.google.com/docs/android/kotlin-migration."
        replaceWith = .subannotation Lnf/g0;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LK2/g;->x(Landroid/content/Context;)LK2/g;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Lj3/b;Landroid/content/Context;LK2/p;)LK2/g;
    .locals 1
    .param p0    # Lj3/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LK2/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lnf/o;
        message = "Migrate to use the KTX API from the main module: https://firebase.google.com/docs/android/kotlin-migration."
        replaceWith = .subannotation Lnf/g0;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "options"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, LK2/g;->y(Landroid/content/Context;LK2/p;)LK2/g;

    move-result-object p0

    const-string p1, "initializeApp(context, options)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final g(Lj3/b;Landroid/content/Context;LK2/p;Ljava/lang/String;)LK2/g;
    .locals 1
    .param p0    # Lj3/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LK2/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lnf/o;
        message = "Migrate to use the KTX API from the main module: https://firebase.google.com/docs/android/kotlin-migration."
        replaceWith = .subannotation Lnf/g0;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "options"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, LK2/g;->z(Landroid/content/Context;LK2/p;Ljava/lang/String;)LK2/g;

    move-result-object p0

    const-string p1, "initializeApp(context, options, name)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
