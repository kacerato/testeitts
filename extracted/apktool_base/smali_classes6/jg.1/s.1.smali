.class public final synthetic Ljg/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LMf/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/l<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:LMf/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/p<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljg/s$b;->b:Ljg/s$b;

    sput-object v0, Ljg/s;->a:LMf/l;

    sget-object v0, Ljg/s$a;->b:Ljg/s$a;

    sput-object v0, Ljg/s;->b:LMf/p;

    return-void
.end method

.method public static final a(Ljg/i;)Ljg/i;
    .locals 2
    .param p0    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg/i<",
            "+TT;>;)",
            "Ljg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    instance-of v0, p0, Ljg/U;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljg/s;->a:LMf/l;

    sget-object v1, Ljg/s;->b:LMf/p;

    invoke-static {p0, v0, v1}, Ljg/s;->d(Ljg/i;LMf/l;LMf/p;)Ljg/i;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final b(Ljg/i;LMf/p;)Ljg/i;
    .locals 2
    .param p0    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg/i<",
            "+TT;>;",
            "LMf/p<",
            "-TT;-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Ljg/s;->a:LMf/l;

    const-string v1, "null cannot be cast to non-null type kotlin.Function2<kotlin.Any?, kotlin.Any?, kotlin.Boolean>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lkotlin/jvm/internal/w0;->q(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LMf/p;

    invoke-static {p0, v0, p1}, Ljg/s;->d(Ljg/i;LMf/l;LMf/p;)Ljg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ljg/i;LMf/l;)Ljg/i;
    .locals 1
    .param p0    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg/i<",
            "+TT;>;",
            "LMf/l<",
            "-TT;+TK;>;)",
            "Ljg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Ljg/s;->b:LMf/p;

    invoke-static {p0, p1, v0}, Ljg/s;->d(Ljg/i;LMf/l;LMf/p;)Ljg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Ljg/i;LMf/l;LMf/p;)Ljg/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg/i<",
            "+TT;>;",
            "LMf/l<",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "LMf/p<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljg/i<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Ljg/g;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljg/g;

    iget-object v1, v0, Ljg/g;->c:LMf/l;

    if-ne v1, p1, :cond_0

    iget-object v0, v0, Ljg/g;->d:LMf/p;

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljg/g;

    invoke-direct {v0, p0, p1, p2}, Ljg/g;-><init>(Ljg/i;LMf/l;LMf/p;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
