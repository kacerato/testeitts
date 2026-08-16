.class public final Log/p;
.super Leg/M;
.source "SourceFile"


# static fields
.field public static final b:Log/p;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Log/p;

    invoke-direct {v0}, Log/p;-><init>()V

    sput-object v0, Log/p;->b:Log/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Leg/M;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Lyf/j;Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sget-object p1, Log/d;->h:Log/d;

    sget-object v0, Log/o;->j:Log/l;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Log/i;->u(Ljava/lang/Runnable;Log/l;Z)V

    return-void
.end method

.method public dispatchYield(Lyf/j;Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Leg/F0;
    .end annotation

    sget-object p1, Log/d;->h:Log/d;

    sget-object v0, Log/o;->j:Log/l;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Log/i;->u(Ljava/lang/Runnable;Log/l;Z)V

    return-void
.end method

.method public limitedParallelism(I)Leg/M;
    .locals 1
    .annotation build Leg/z0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Lmg/t;->a(I)V

    sget v0, Log/o;->d:I

    if-lt p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Leg/M;->limitedParallelism(I)Leg/M;

    move-result-object p1

    return-object p1
.end method
