.class public final Ljg/L;
.super Lkg/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkg/c<",
        "Ljg/J<",
        "*>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowSlot\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,731:1\n1#2:732\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowSlot\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,731:1\n1#2:732\n*E\n"
    }
.end annotation


# instance fields
.field public a:J
    .annotation build LLf/g;
    .end annotation
.end field

.field public b:Lyf/f;
    .annotation build LLf/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lkg/c;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljg/L;->a:J

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljg/J;

    invoke-virtual {p0, p1}, Ljg/L;->c(Ljg/J;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)[Lyf/f;
    .locals 0

    check-cast p1, Ljg/J;

    invoke-virtual {p0, p1}, Ljg/L;->d(Ljg/J;)[Lyf/f;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljg/J;)Z
    .locals 4
    .param p1    # Ljg/J;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg/J<",
            "*>;)Z"
        }
    .end annotation

    iget-wide v0, p0, Ljg/L;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Ljg/J;->c0()J

    move-result-wide v0

    iput-wide v0, p0, Ljg/L;->a:J

    const/4 p1, 0x1

    return p1
.end method

.method public d(Ljg/J;)[Lyf/f;
    .locals 4
    .param p1    # Ljg/J;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg/J<",
            "*>;)[",
            "Lyf/f<",
            "Lnf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-wide v0, p0, Ljg/L;->a:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Ljg/L;->a:J

    const/4 v2, 0x0

    iput-object v2, p0, Ljg/L;->b:Lyf/f;

    invoke-virtual {p1, v0, v1}, Ljg/J;->b0(J)[Lyf/f;

    move-result-object p1

    return-object p1
.end method
