.class public final Lpg/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpg/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation$ClauseData\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,873:1\n1#2:874\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation$ClauseData\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,873:1\n1#2:874\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation build LLf/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:LMf/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/q<",
            "Ljava/lang/Object;",
            "Lpg/m<",
            "*>;",
            "Ljava/lang/Object;",
            "Lnf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:LMf/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/q<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:LMf/q;
    .annotation build LLf/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/q<",
            "Lpg/m<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "LMf/l<",
            "Ljava/lang/Throwable;",
            "Lnf/P0;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Ljava/lang/Object;
    .annotation build LLf/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:I
    .annotation build LLf/g;
    .end annotation
.end field

.field public final synthetic i:Lpg/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpg/l<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpg/l;Ljava/lang/Object;LMf/q;LMf/q;Ljava/lang/Object;Ljava/lang/Object;LMf/q;)V
    .locals 0
    .param p1    # Lpg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LMf/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # LMf/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "LMf/q<",
            "Ljava/lang/Object;",
            "-",
            "Lpg/m<",
            "*>;",
            "Ljava/lang/Object;",
            "Lnf/P0;",
            ">;",
            "LMf/q<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "LMf/q<",
            "-",
            "Lpg/m<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "+",
            "LMf/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lnf/P0;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lpg/l$a;->i:Lpg/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lpg/l$a;->a:Ljava/lang/Object;

    iput-object p3, p0, Lpg/l$a;->b:LMf/q;

    iput-object p4, p0, Lpg/l$a;->c:LMf/q;

    iput-object p5, p0, Lpg/l$a;->d:Ljava/lang/Object;

    iput-object p6, p0, Lpg/l$a;->e:Ljava/lang/Object;

    iput-object p7, p0, Lpg/l$a;->f:LMf/q;

    const/4 p1, -0x1

    iput p1, p0, Lpg/l$a;->h:I

    return-void
.end method


# virtual methods
.method public final a(Lpg/m;Ljava/lang/Object;)LMf/l;
    .locals 2
    .param p1    # Lpg/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpg/m<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "LMf/l<",
            "Ljava/lang/Throwable;",
            "Lnf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lpg/l$a;->f:LMf/q;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lpg/l$a;->d:Ljava/lang/Object;

    invoke-interface {v0, p1, v1, p2}, LMf/q;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LMf/l;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lpg/l$a;->g:Ljava/lang/Object;

    iget-object v1, p0, Lpg/l$a;->i:Lpg/l;

    instance-of v2, v0, Lmg/P;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v0, Lmg/P;

    iget v2, p0, Lpg/l$a;->h:I

    invoke-virtual {v1}, Lpg/l;->getContext()Lyf/j;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lmg/P;->q(ILjava/lang/Throwable;Lyf/j;)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Leg/m0;

    if-eqz v1, :cond_1

    move-object v3, v0

    check-cast v3, Leg/m0;

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Leg/m0;->dispose()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lyf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lpg/l$a;->e:Ljava/lang/Object;

    iget-object v1, p0, Lpg/l$a;->d:Ljava/lang/Object;

    invoke-static {}, Lpg/o;->l()Lmg/T;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const-string p1, "null cannot be cast to non-null type kotlin.coroutines.SuspendFunction0<R of kotlinx.coroutines.selects.SelectImplementation>"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, LMf/l;

    invoke-interface {v0, p2}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "null cannot be cast to non-null type kotlin.coroutines.SuspendFunction1<kotlin.Any?, R of kotlinx.coroutines.selects.SelectImplementation>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, LMf/p;

    invoke-interface {v0, p1, p2}, LMf/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lpg/l$a;->c:LMf/q;

    iget-object v1, p0, Lpg/l$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lpg/l$a;->d:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p1}, LMf/q;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lpg/l;)Z
    .locals 3
    .param p1    # Lpg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpg/l<",
            "TR;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lpg/l$a;->b:LMf/q;

    iget-object v1, p0, Lpg/l$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lpg/l$a;->d:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, LMf/q;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lpg/l;->C(Lpg/l;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lpg/o;->g()Lmg/T;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
