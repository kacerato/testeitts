.class public final Lmg/J$a;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements LMf/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmg/J;->a(LMf/l;Ljava/lang/Object;Lyf/j;)LMf/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "LMf/l<",
        "Ljava/lang/Throwable;",
        "Lnf/P0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:LMf/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/l<",
            "TE;",
            "Lnf/P0;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public final synthetic d:Lyf/j;


# direct methods
.method public constructor <init>(LMf/l;Ljava/lang/Object;Lyf/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/l<",
            "-TE;",
            "Lnf/P0;",
            ">;TE;",
            "Lyf/j;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lmg/J$a;->b:LMf/l;

    iput-object p2, p0, Lmg/J$a;->c:Ljava/lang/Object;

    iput-object p3, p0, Lmg/J$a;->d:Lyf/j;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lmg/J$a;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, Lmg/J$a;->b:LMf/l;

    iget-object v0, p0, Lmg/J$a;->c:Ljava/lang/Object;

    iget-object v1, p0, Lmg/J$a;->d:Lyf/j;

    invoke-static {p1, v0, v1}, Lmg/J;->b(LMf/l;Ljava/lang/Object;Lyf/j;)V

    return-void
.end method
