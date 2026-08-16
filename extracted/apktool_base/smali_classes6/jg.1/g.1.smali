.class public final Ljg/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljg/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljg/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Ljg/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:LMf/l;
    .annotation build LLf/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/l<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:LMf/p;
    .annotation build LLf/g;
    .end annotation

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
.method public constructor <init>(Ljg/i;LMf/l;LMf/p;)V
    .locals 0
    .param p1    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljg/g;->b:Ljg/i;

    iput-object p2, p0, Ljg/g;->c:LMf/l;

    iput-object p3, p0, Ljg/g;->d:LMf/p;

    return-void
.end method


# virtual methods
.method public a(Ljg/j;Lyf/f;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljg/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg/j<",
            "-TT;>;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lkotlin/jvm/internal/m0$h;

    invoke-direct {v0}, Lkotlin/jvm/internal/m0$h;-><init>()V

    sget-object v1, Lkg/s;->a:Lmg/T;

    iput-object v1, v0, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    iget-object v1, p0, Ljg/g;->b:Ljg/i;

    new-instance v2, Ljg/g$a;

    invoke-direct {v2, p0, v0, p1}, Ljg/g$a;-><init>(Ljg/g;Lkotlin/jvm/internal/m0$h;Ljg/j;)V

    invoke-interface {v1, v2, p2}, Ljg/i;->a(Ljg/j;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
