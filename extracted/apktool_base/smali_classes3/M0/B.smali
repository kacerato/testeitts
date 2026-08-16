.class public final LM0/B;
.super Lcom/google/android/gms/common/api/k;
.source "SourceFile"

# interfaces
.implements LL0/d;


# static fields
.field public static final k:Lcom/google/android/gms/common/api/a$g;

.field public static final l:Lcom/google/android/gms/common/api/a$a;

.field public static final m:Lcom/google/android/gms/common/api/a;

.field public static final synthetic n:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, LM0/B;->k:Lcom/google/android/gms/common/api/a$g;

    new-instance v1, LM0/t;

    invoke-direct {v1}, LM0/t;-><init>()V

    sput-object v1, LM0/B;->l:Lcom/google/android/gms/common/api/a$a;

    new-instance v2, Lcom/google/android/gms/common/api/a;

    const-string v3, "ModuleInstall.API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v2, LM0/B;->m:Lcom/google/android/gms/common/api/a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 1
    sget-object v0, LM0/B;->m:Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/common/api/a$d;->n4:Lcom/google/android/gms/common/api/a$d$d;

    sget-object v2, Lcom/google/android/gms/common/api/k$a;->c:Lcom/google/android/gms/common/api/k$a;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/k$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 2
    sget-object v0, LM0/B;->m:Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/common/api/a$d;->n4:Lcom/google/android/gms/common/api/a$d$d;

    sget-object v2, Lcom/google/android/gms/common/api/k$a;->c:Lcom/google/android/gms/common/api/k$a;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/k$a;)V

    return-void
.end method

.method public static final varargs g0(Z[Lcom/google/android/gms/common/api/n;)LM0/a;
    .locals 4

    const-string v0, "Requested APIs must not be null."

    invoke-static {p1, v0}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Please provide at least one OptionalModuleApi."

    invoke-static {v2, v3}, LG0/A;->b(ZLjava/lang/Object;)V

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    const-string v3, "Requested API must not be null."

    invoke-static {v2, v3}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p0}, LM0/a;->p(Ljava/util/List;Z)LM0/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final F(LL0/a;)Lv1/k;
    .locals 1
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LL0/a;",
            ")",
            "Lv1/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-class v0, LL0/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/g;->c(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/f$a;

    move-result-object p1

    const/16 v0, 0x6aaa

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/k;->R(Lcom/google/android/gms/common/api/internal/f$a;I)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public final j(LL0/f;)Lv1/k;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LL0/f;",
            ")",
            "Lv1/k<",
            "LL0/g;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, LM0/a;->b(LL0/f;)LM0/a;

    move-result-object v4

    invoke-virtual {p1}, LL0/f;->b()LL0/a;

    move-result-object v3

    invoke-virtual {p1}, LL0/f;->c()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {v4}, LM0/a;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, LL0/g;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, LL0/g;-><init>(I)V

    invoke-static {p1}, Lv1/n;->g(Ljava/lang/Object;)Lv1/k;

    move-result-object p1

    goto/16 :goto_1

    :cond_0
    const/4 v6, 0x1

    if-nez v3, :cond_1

    invoke-static {}, LD0/r;->a()LD0/r$a;

    move-result-object p1

    sget-object v0, Lg1/v;->a:LB0/e;

    filled-new-array {v0}, [LB0/e;

    move-result-object v0

    invoke-virtual {p1, v0}, LD0/r$a;->e([LB0/e;)LD0/r$a;

    invoke-virtual {p1, v6}, LD0/r$a;->d(Z)LD0/r$a;

    const/16 v0, 0x6aa8

    invoke-virtual {p1, v0}, LD0/r$a;->f(I)LD0/r$a;

    new-instance v0, LM0/r;

    invoke-direct {v0, p0, v4}, LM0/r;-><init>(LM0/B;LM0/a;)V

    invoke-virtual {p1, v0}, LD0/r$a;->c(LD0/n;)LD0/r$a;

    invoke-virtual {p1}, LD0/r$a;->a()LD0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->N(LD0/r;)Lv1/k;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {v3}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, LL0/a;

    if-nez p1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/common/api/k;->a0(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/f;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, p1, v0}, Lcom/google/android/gms/common/api/internal/g;->b(Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/f;

    move-result-object p1

    :goto_0
    new-instance v7, LM0/d;

    invoke-direct {v7, p1}, LM0/d;-><init>(Lcom/google/android/gms/common/api/internal/f;)V

    new-instance v8, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v8}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v9, LM0/l;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v8

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, LM0/l;-><init>(LM0/B;Ljava/util/concurrent/atomic/AtomicReference;LL0/a;LM0/a;LM0/d;)V

    new-instance v0, LM0/m;

    invoke-direct {v0, p0, v7}, LM0/m;-><init>(LM0/B;LM0/d;)V

    invoke-static {}, Lcom/google/android/gms/common/api/internal/i;->a()Lcom/google/android/gms/common/api/internal/i$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/internal/i$a;->h(Lcom/google/android/gms/common/api/internal/f;)Lcom/google/android/gms/common/api/internal/i$a;

    sget-object p1, Lg1/v;->a:LB0/e;

    filled-new-array {p1}, [LB0/e;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/internal/i$a;->e([LB0/e;)Lcom/google/android/gms/common/api/internal/i$a;

    invoke-virtual {v1, v6}, Lcom/google/android/gms/common/api/internal/i$a;->d(Z)Lcom/google/android/gms/common/api/internal/i$a;

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/i$a;->c(LD0/n;)Lcom/google/android/gms/common/api/internal/i$a;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/i$a;->g(LD0/n;)Lcom/google/android/gms/common/api/internal/i$a;

    const/16 p1, 0x6aa9

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/internal/i$a;->f(I)Lcom/google/android/gms/common/api/internal/i$a;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/i$a;->a()Lcom/google/android/gms/common/api/internal/i;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->P(Lcom/google/android/gms/common/api/internal/i;)Lv1/k;

    move-result-object p1

    new-instance v0, LM0/n;

    invoke-direct {v0, v8}, LM0/n;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p1, v0}, Lv1/k;->x(Lv1/j;)Lv1/k;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final varargs k([Lcom/google/android/gms/common/api/n;)Lv1/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/common/api/n;",
            ")",
            "Lv1/k<",
            "LL0/e;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0, p1}, LM0/B;->g0(Z[Lcom/google/android/gms/common/api/n;)LM0/a;

    move-result-object p1

    invoke-virtual {p1}, LM0/a;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, LL0/e;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, LL0/e;-><init>(Landroid/app/PendingIntent;)V

    invoke-static {p1}, Lv1/n;->g(Ljava/lang/Object;)Lv1/k;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, LD0/r;->a()LD0/r$a;

    move-result-object v0

    sget-object v1, Lg1/v;->a:LB0/e;

    filled-new-array {v1}, [LB0/e;

    move-result-object v1

    invoke-virtual {v0, v1}, LD0/r$a;->e([LB0/e;)LD0/r$a;

    const/16 v1, 0x6aab

    invoke-virtual {v0, v1}, LD0/r$a;->f(I)LD0/r$a;

    new-instance v1, LM0/q;

    invoke-direct {v1, p0, p1}, LM0/q;-><init>(LM0/B;LM0/a;)V

    invoke-virtual {v0, v1}, LD0/r$a;->c(LD0/n;)LD0/r$a;

    invoke-virtual {v0}, LD0/r$a;->a()LD0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->N(LD0/r;)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public final varargs l([Lcom/google/android/gms/common/api/n;)Lv1/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/common/api/n;",
            ")",
            "Lv1/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p1}, LM0/B;->g0(Z[Lcom/google/android/gms/common/api/n;)LM0/a;

    move-result-object p1

    invoke-virtual {p1}, LM0/a;->n()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Lv1/n;->g(Ljava/lang/Object;)Lv1/k;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, LD0/r;->a()LD0/r$a;

    move-result-object v1

    sget-object v2, Lg1/v;->a:LB0/e;

    filled-new-array {v2}, [LB0/e;

    move-result-object v2

    invoke-virtual {v1, v2}, LD0/r$a;->e([LB0/e;)LD0/r$a;

    const/16 v2, 0x6aa7

    invoke-virtual {v1, v2}, LD0/r$a;->f(I)LD0/r$a;

    invoke-virtual {v1, v0}, LD0/r$a;->d(Z)LD0/r$a;

    new-instance v0, LM0/p;

    invoke-direct {v0, p0, p1}, LM0/p;-><init>(LM0/B;LM0/a;)V

    invoke-virtual {v1, v0}, LD0/r$a;->c(LD0/n;)LD0/r$a;

    invoke-virtual {v1}, LD0/r$a;->a()LD0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->N(LD0/r;)Lv1/k;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final varargs r([Lcom/google/android/gms/common/api/n;)Lv1/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/common/api/n;",
            ")",
            "Lv1/k<",
            "LL0/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p1}, LM0/B;->g0(Z[Lcom/google/android/gms/common/api/n;)LM0/a;

    move-result-object p1

    invoke-virtual {p1}, LM0/a;->n()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, LL0/b;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, LL0/b;-><init>(ZI)V

    invoke-static {p1}, Lv1/n;->g(Ljava/lang/Object;)Lv1/k;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, LD0/r;->a()LD0/r$a;

    move-result-object v1

    sget-object v2, Lg1/v;->a:LB0/e;

    filled-new-array {v2}, [LB0/e;

    move-result-object v2

    invoke-virtual {v1, v2}, LD0/r$a;->e([LB0/e;)LD0/r$a;

    const/16 v2, 0x6aa5

    invoke-virtual {v1, v2}, LD0/r$a;->f(I)LD0/r$a;

    invoke-virtual {v1, v0}, LD0/r$a;->d(Z)LD0/r$a;

    new-instance v0, LM0/o;

    invoke-direct {v0, p0, p1}, LM0/o;-><init>(LM0/B;LM0/a;)V

    invoke-virtual {v1, v0}, LD0/r$a;->c(LD0/n;)LD0/r$a;

    invoke-virtual {v1}, LD0/r$a;->a()LD0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->N(LD0/r;)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public final varargs z([Lcom/google/android/gms/common/api/n;)Lv1/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/common/api/n;",
            ")",
            "Lv1/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p1}, LM0/B;->g0(Z[Lcom/google/android/gms/common/api/n;)LM0/a;

    move-result-object p1

    invoke-virtual {p1}, LM0/a;->n()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Lv1/n;->g(Ljava/lang/Object;)Lv1/k;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, LD0/r;->a()LD0/r$a;

    move-result-object v1

    sget-object v2, Lg1/v;->a:LB0/e;

    filled-new-array {v2}, [LB0/e;

    move-result-object v2

    invoke-virtual {v1, v2}, LD0/r$a;->e([LB0/e;)LD0/r$a;

    const/16 v2, 0x6aa6

    invoke-virtual {v1, v2}, LD0/r$a;->f(I)LD0/r$a;

    invoke-virtual {v1, v0}, LD0/r$a;->d(Z)LD0/r$a;

    new-instance v0, LM0/s;

    invoke-direct {v0, p0, p1}, LM0/s;-><init>(LM0/B;LM0/a;)V

    invoke-virtual {v1, v0}, LD0/r$a;->c(LD0/n;)LD0/r$a;

    invoke-virtual {v1}, LD0/r$a;->a()LD0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->N(LD0/r;)Lv1/k;

    move-result-object p1

    :goto_0
    return-object p1
.end method
