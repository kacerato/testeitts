.class public final Ljg/r$b;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements LMf/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/r;->d(Ljg/i;LMf/l;)Ljg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "LMf/l<",
        "TT;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:LMf/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/l<",
            "TT;",
            "Lkotlin/time/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LMf/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/l<",
            "-TT;",
            "Lkotlin/time/h;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ljg/r$b;->b:LMf/l;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Ljg/r$b;->b:LMf/l;

    invoke-interface {v0, p1}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/time/h;

    invoke-virtual {p1}, Lkotlin/time/h;->m0()J

    move-result-wide v0

    invoke-static {v0, v1}, Leg/c0;->e(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ljg/r$b;->b(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
