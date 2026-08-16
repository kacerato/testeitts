.class public final Lkg/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LMf/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/q<",
            "Ljg/j<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lkg/u$a;->b:Lkg/u$a;

    const-string v1, "null cannot be cast to non-null type kotlin.Function3<kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>, kotlin.Any?, kotlin.coroutines.Continuation<kotlin.Unit>, kotlin.Any?>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lkotlin/jvm/internal/w0;->q(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LMf/q;

    sput-object v0, Lkg/u;->a:LMf/q;

    return-void
.end method

.method public static final synthetic a()LMf/q;
    .locals 1

    sget-object v0, Lkg/u;->a:LMf/q;

    return-object v0
.end method

.method public static synthetic b()V
    .locals 0

    return-void
.end method
