.class public final Leg/v1;
.super Leg/M;
.source "SourceFile"


# static fields
.field public static final b:Leg/v1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leg/v1;

    invoke-direct {v0}, Leg/v1;-><init>()V

    sput-object v0, Leg/v1;->b:Leg/v1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Leg/M;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Lyf/j;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sget-object p2, Leg/z1;->c:Leg/z1$a;

    invoke-interface {p1, p2}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object p1

    check-cast p1, Leg/z1;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p1, Leg/z1;->b:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isDispatchNeeded(Lyf/j;)Z
    .locals 0
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public limitedParallelism(I)Leg/M;
    .locals 1
    .annotation build Leg/z0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "limitedParallelism is not supported for Dispatchers.Unconfined"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "Dispatchers.Unconfined"

    return-object v0
.end method
