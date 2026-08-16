.class public final Lkg/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljg/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkg/f;->f(Lgg/B;Lyf/f;)Ljava/lang/Object;
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
.field public final synthetic b:Leg/K0;

.field public final synthetic c:Lrg/d;

.field public final synthetic d:Lgg/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgg/B<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic e:Lkg/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkg/w<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Leg/K0;Lrg/d;Lgg/B;Lkg/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/K0;",
            "Lrg/d;",
            "Lgg/B<",
            "-TT;>;",
            "Lkg/w<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkg/f$a;->b:Leg/K0;

    iput-object p2, p0, Lkg/f$a;->c:Lrg/d;

    iput-object p3, p0, Lkg/f$a;->d:Lgg/B;

    iput-object p4, p0, Lkg/f$a;->e:Lkg/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljg/i;Lyf/f;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljg/i;
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
            "Ljg/i<",
            "+TT;>;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Lkg/f$a$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkg/f$a$b;

    iget v1, v0, Lkg/f$a$b;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkg/f$a$b;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkg/f$a$b;

    invoke-direct {v0, p0, p2}, Lkg/f$a$b;-><init>(Lkg/f$a;Lyf/f;)V

    :goto_0
    iget-object p2, v0, Lkg/f$a$b;->d:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lkg/f$a$b;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lkg/f$a$b;->c:Ljava/lang/Object;

    check-cast p1, Ljg/i;

    iget-object v0, v0, Lkg/f$a$b;->b:Ljava/lang/Object;

    check-cast v0, Lkg/f$a;

    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    iget-object p2, p0, Lkg/f$a;->b:Leg/K0;

    if-eqz p2, :cond_3

    invoke-static {p2}, Leg/N0;->z(Leg/K0;)V

    :cond_3
    iget-object p2, p0, Lkg/f$a;->c:Lrg/d;

    iput-object p0, v0, Lkg/f$a$b;->b:Ljava/lang/Object;

    iput-object p1, v0, Lkg/f$a$b;->c:Ljava/lang/Object;

    iput v3, v0, Lkg/f$a$b;->f:I

    invoke-interface {p2, v0}, Lrg/d;->g(Lyf/f;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v0, p0

    :goto_1
    iget-object v1, v0, Lkg/f$a;->d:Lgg/B;

    new-instance v4, Lkg/f$a$a;

    iget-object p2, v0, Lkg/f$a;->e:Lkg/w;

    iget-object v0, v0, Lkg/f$a;->c:Lrg/d;

    const/4 v2, 0x0

    invoke-direct {v4, p1, p2, v0, v2}, Lkg/f$a$a;-><init>(Ljg/i;Lkg/w;Lrg/d;Lyf/f;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Leg/i;->e(Leg/S;Lyf/j;Leg/U;LMf/p;ILjava/lang/Object;)Leg/K0;

    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljg/i;

    invoke-virtual {p0, p1, p2}, Lkg/f$a;->a(Ljg/i;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
