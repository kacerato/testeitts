.class public final Ln0/p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln0/p$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ln0/p;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v6, Ln0/p;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ln0/p;-><init>(Ln0/f;Ln0/f;Ln0/f;ILkotlin/jvm/internal/x;)V

    return-object v6
.end method

.method public final varargs b([F)Ln0/p;
    .locals 7
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    new-instance v0, Ln0/p;

    new-instance v1, Ln0/f;

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x3

    aget v3, p1, v3

    const/4 v4, 0x6

    aget v4, p1, v4

    invoke-direct {v1, v2, v3, v4}, Ln0/f;-><init>(FFF)V

    new-instance v2, Ln0/f;

    const/4 v3, 0x1

    aget v3, p1, v3

    const/4 v4, 0x4

    aget v4, p1, v4

    const/4 v5, 0x7

    aget v5, p1, v5

    invoke-direct {v2, v3, v4, v5}, Ln0/f;-><init>(FFF)V

    new-instance v3, Ln0/f;

    const/4 v4, 0x2

    aget v4, p1, v4

    const/4 v5, 0x5

    aget v5, p1, v5

    const/16 v6, 0x8

    aget p1, p1, v6

    invoke-direct {v3, v4, v5, p1}, Ln0/f;-><init>(FFF)V

    invoke-direct {v0, v1, v2, v3}, Ln0/p;-><init>(Ln0/f;Ln0/f;Ln0/f;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
