.class public final Lmg/Z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lmg/T;
    .annotation build LLf/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:LMf/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/p<",
            "Ljava/lang/Object;",
            "Lyf/j$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:LMf/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/p<",
            "Leg/l1<",
            "*>;",
            "Lyf/j$b;",
            "Leg/l1<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:LMf/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/p<",
            "Lmg/f0;",
            "Lyf/j$b;",
            "Lmg/f0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmg/T;

    const-string v1, "NO_THREAD_ELEMENTS"

    invoke-direct {v0, v1}, Lmg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmg/Z;->a:Lmg/T;

    sget-object v0, Lmg/Z$a;->b:Lmg/Z$a;

    sput-object v0, Lmg/Z;->b:LMf/p;

    sget-object v0, Lmg/Z$b;->b:Lmg/Z$b;

    sput-object v0, Lmg/Z;->c:LMf/p;

    sget-object v0, Lmg/Z$c;->b:Lmg/Z$c;

    sput-object v0, Lmg/Z;->d:LMf/p;

    return-void
.end method

.method public static final a(Lyf/j;Ljava/lang/Object;)V
    .locals 2
    .param p0    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, Lmg/Z;->a:Lmg/T;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lmg/f0;

    if-eqz v0, :cond_1

    check-cast p1, Lmg/f0;

    invoke-virtual {p1, p0}, Lmg/f0;->b(Lyf/j;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    sget-object v1, Lmg/Z;->c:LMf/p;

    invoke-interface {p0, v0, v1}, Lyf/j;->fold(Ljava/lang/Object;LMf/p;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Leg/l1;

    invoke-interface {v0, p0, p1}, Leg/l1;->h(Lyf/j;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final b(Lyf/j;)Ljava/lang/Object;
    .locals 2
    .param p0    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lmg/Z;->b:LMf/p;

    invoke-interface {p0, v0, v1}, Lyf/j;->fold(Ljava/lang/Object;LMf/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final c(Lyf/j;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p1, :cond_0

    invoke-static {p0}, Lmg/Z;->b(Lyf/j;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p0, Lmg/Z;->a:Lmg/T;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    new-instance v0, Lmg/f0;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lmg/f0;-><init>(Lyf/j;I)V

    sget-object p1, Lmg/Z;->d:LMf/p;

    invoke-interface {p0, v0, p1}, Lyf/j;->fold(Ljava/lang/Object;LMf/p;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Leg/l1;

    invoke-interface {p1, p0}, Leg/l1;->b0(Lyf/j;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method
