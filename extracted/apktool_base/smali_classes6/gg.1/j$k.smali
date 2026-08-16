.class public final Lgg/j$k;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements LMf/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgg/j;-><init>(ILMf/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "LMf/q<",
        "Lpg/m<",
        "*>;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "LMf/l<",
        "-",
        "Ljava/lang/Throwable;",
        "+",
        "Lnf/P0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lgg/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgg/j<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgg/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgg/j<",
            "TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lgg/j$k;->b:Lgg/j;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lpg/m;Ljava/lang/Object;Ljava/lang/Object;)LMf/l;
    .locals 1
    .param p1    # Lpg/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpg/m<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "LMf/l<",
            "Ljava/lang/Throwable;",
            "Lnf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p2, Lgg/j$k$a;

    iget-object v0, p0, Lgg/j$k;->b:Lgg/j;

    invoke-direct {p2, p3, v0, p1}, Lgg/j$k$a;-><init>(Ljava/lang/Object;Lgg/j;Lpg/m;)V

    return-object p2
.end method

.method public bridge synthetic n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lpg/m;

    invoke-virtual {p0, p1, p2, p3}, Lgg/j$k;->b(Lpg/m;Ljava/lang/Object;Ljava/lang/Object;)LMf/l;

    move-result-object p1

    return-object p1
.end method
