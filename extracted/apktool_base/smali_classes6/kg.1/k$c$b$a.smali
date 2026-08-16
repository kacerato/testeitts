.class public final Lkg/k$c$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljg/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkg/k$c$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field public final synthetic b:Lyf/j;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lgg/D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgg/D<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic e:Ljg/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljg/j<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final synthetic f:LMf/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/q<",
            "TT1;TT2;",
            "Lyf/f<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyf/j;Ljava/lang/Object;Lgg/D;Ljg/j;LMf/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/j;",
            "Ljava/lang/Object;",
            "Lgg/D<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljg/j<",
            "-TR;>;",
            "LMf/q<",
            "-TT1;-TT2;-",
            "Lyf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkg/k$c$b$a;->b:Lyf/j;

    iput-object p2, p0, Lkg/k$c$b$a;->c:Ljava/lang/Object;

    iput-object p3, p0, Lkg/k$c$b$a;->d:Lgg/D;

    iput-object p4, p0, Lkg/k$c$b$a;->e:Ljg/j;

    iput-object p5, p0, Lkg/k$c$b$a;->f:LMf/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;
    .locals 12
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Lkg/k$c$b$a$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkg/k$c$b$a$b;

    iget v1, v0, Lkg/k$c$b$a$b;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkg/k$c$b$a$b;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkg/k$c$b$a$b;

    invoke-direct {v0, p0, p2}, Lkg/k$c$b$a$b;-><init>(Lkg/k$c$b$a;Lyf/f;)V

    :goto_0
    iget-object p2, v0, Lkg/k$c$b$a$b;->b:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lkg/k$c$b$a$b;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lnf/j0;->n(Ljava/lang/Object;)V

    iget-object p2, p0, Lkg/k$c$b$a;->b:Lyf/j;

    sget-object v2, Lnf/P0;->a:Lnf/P0;

    iget-object v4, p0, Lkg/k$c$b$a;->c:Ljava/lang/Object;

    new-instance v11, Lkg/k$c$b$a$a;

    iget-object v6, p0, Lkg/k$c$b$a;->d:Lgg/D;

    iget-object v7, p0, Lkg/k$c$b$a;->e:Ljg/j;

    iget-object v8, p0, Lkg/k$c$b$a;->f:LMf/q;

    const/4 v10, 0x0

    move-object v5, v11

    move-object v9, p1

    invoke-direct/range {v5 .. v10}, Lkg/k$c$b$a$a;-><init>(Lgg/D;Ljg/j;LMf/q;Ljava/lang/Object;Lyf/f;)V

    iput v3, v0, Lkg/k$c$b$a$b;->d:I

    invoke-static {p2, v2, v4, v11, v0}, Lkg/e;->c(Lyf/j;Ljava/lang/Object;Ljava/lang/Object;LMf/p;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
