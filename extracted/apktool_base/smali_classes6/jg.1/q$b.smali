.class public final Ljg/q$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljg/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/q;->b(Ljg/i;Lyf/f;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljg/j;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lkotlin/jvm/internal/m0$f;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/m0$f;)V
    .locals 0

    iput-object p1, p0, Ljg/q$b;->b:Lkotlin/jvm/internal/m0$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p1, p0, Ljg/q$b;->b:Lkotlin/jvm/internal/m0$f;

    iget p2, p1, Lkotlin/jvm/internal/m0$f;->b:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lkotlin/jvm/internal/m0$f;->b:I

    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
