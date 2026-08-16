.class public abstract Lfg/e;
.super Leg/V0;
.source "SourceFile"

# interfaces
.implements Leg/b0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Leg/V0;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfg/e;-><init>()V

    return-void
.end method


# virtual methods
.method public m(JLjava/lang/Runnable;Lyf/j;)Leg/m0;
    .locals 0
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Leg/b0$a;->b(Leg/b0;JLjava/lang/Runnable;Lyf/j;)Leg/m0;

    move-result-object p1

    return-object p1
.end method

.method public p(JLyf/f;)Ljava/lang/Object;
    .locals 0
    .param p3    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->ERROR:Lnf/q;
        message = "Deprecated without replacement as an internal method never intended for public use"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Leg/b0$a;->a(Leg/b0;JLyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract u()Lfg/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
