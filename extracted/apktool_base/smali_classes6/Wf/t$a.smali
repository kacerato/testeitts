.class public final LWf/t$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LWf/t;
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
    invoke-direct {p0}, LWf/t$a;-><init>()V

    return-void
.end method

.method public static synthetic d()V
    .locals 0
    .annotation build Lnf/f0;
    .end annotation

    return-void
.end method


# virtual methods
.method public final a(LWf/r;)LWf/t;
    .locals 2
    .param p1    # LWf/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LLf/o;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LWf/t;

    sget-object v1, LWf/u;->IN:LWf/u;

    invoke-direct {v0, v1, p1}, LWf/t;-><init>(LWf/u;LWf/r;)V

    return-object v0
.end method

.method public final b(LWf/r;)LWf/t;
    .locals 2
    .param p1    # LWf/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LLf/o;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LWf/t;

    sget-object v1, LWf/u;->OUT:LWf/u;

    invoke-direct {v0, v1, p1}, LWf/t;-><init>(LWf/u;LWf/r;)V

    return-object v0
.end method

.method public final c()LWf/t;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LWf/t;->d:LWf/t;

    return-object v0
.end method

.method public final e(LWf/r;)LWf/t;
    .locals 2
    .param p1    # LWf/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LLf/o;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LWf/t;

    sget-object v1, LWf/u;->INVARIANT:LWf/u;

    invoke-direct {v0, v1, p1}, LWf/t;-><init>(LWf/u;LWf/r;)V

    return-object v0
.end method
