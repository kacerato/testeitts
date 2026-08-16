.class public final Lpg/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOnTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnTimeout.kt\nkotlinx/coroutines/selects/OnTimeout\n+ 2 Runnable.kt\nkotlinx/coroutines/RunnableKt\n*L\n1#1,66:1\n17#2:67\n*S KotlinDebug\n*F\n+ 1 OnTimeout.kt\nkotlinx/coroutines/selects/OnTimeout\n*L\n56#1:67\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nOnTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnTimeout.kt\nkotlinx/coroutines/selects/OnTimeout\n+ 2 Runnable.kt\nkotlinx/coroutines/RunnableKt\n*L\n1#1,66:1\n17#2:67\n*S KotlinDebug\n*F\n+ 1 OnTimeout.kt\nkotlinx/coroutines/selects/OnTimeout\n*L\n56#1:67\n*E\n"
    }
.end annotation


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lpg/a;->a:J

    return-void
.end method

.method public static final synthetic a(Lpg/a;Lpg/m;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lpg/a;->d(Lpg/m;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final b()Lpg/e;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v6, Lpg/f;

    sget-object v0, Lpg/a$b;->b:Lpg/a$b;

    const-string v1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \'clauseObject\')] kotlin.Any, @[ParameterName(name = \'select\')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \'param\')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lkotlin/jvm/internal/w0;->q(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, LMf/q;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lpg/f;-><init>(Ljava/lang/Object;LMf/q;LMf/q;ILkotlin/jvm/internal/x;)V

    return-object v6
.end method

.method public final d(Lpg/m;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpg/m<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-wide v0, p0, Lpg/a;->a:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gtz p2, :cond_0

    sget-object p2, Lnf/P0;->a:Lnf/P0;

    invoke-interface {p1, p2}, Lpg/m;->w(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p2, Lpg/a$a;

    invoke-direct {p2, p1, p0}, Lpg/a$a;-><init>(Lpg/m;Lpg/a;)V

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lpg/l;

    invoke-interface {p1}, Lpg/m;->getContext()Lyf/j;

    move-result-object v0

    invoke-static {v0}, Leg/c0;->d(Lyf/j;)Leg/b0;

    move-result-object v1

    iget-wide v2, p0, Lpg/a;->a:J

    invoke-interface {v1, v2, v3, p2, v0}, Leg/b0;->m(JLjava/lang/Runnable;Lyf/j;)Leg/m0;

    move-result-object p2

    invoke-interface {p1, p2}, Lpg/m;->o(Leg/m0;)V

    return-void
.end method
