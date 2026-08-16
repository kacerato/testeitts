.class public final Lrg/b$e;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements LMf/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrg/b;-><init>(Z)V
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
.field public final synthetic b:Lrg/b;


# direct methods
.method public constructor <init>(Lrg/b;)V
    .locals 0

    iput-object p1, p0, Lrg/b$e;->b:Lrg/b;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lpg/m;Ljava/lang/Object;Ljava/lang/Object;)LMf/l;
    .locals 0
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

    new-instance p1, Lrg/b$e$a;

    iget-object p3, p0, Lrg/b$e;->b:Lrg/b;

    invoke-direct {p1, p3, p2}, Lrg/b$e$a;-><init>(Lrg/b;Ljava/lang/Object;)V

    return-object p1
.end method

.method public bridge synthetic n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lpg/m;

    invoke-virtual {p0, p1, p2, p3}, Lrg/b$e;->b(Lpg/m;Ljava/lang/Object;Ljava/lang/Object;)LMf/l;

    move-result-object p1

    return-object p1
.end method
