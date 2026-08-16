.class public final Lag/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements LNf/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lag/i;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "LVf/l;",
        ">;",
        "LNf/a;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:LVf/l;

.field public f:I

.field public final synthetic g:Lag/i;


# direct methods
.method public constructor <init>(Lag/i;)V
    .locals 2

    iput-object p1, p0, Lag/i$a;->g:Lag/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lag/i$a;->b:I

    invoke-static {p1}, Lag/i;->f(Lag/i;)I

    move-result v0

    invoke-static {p1}, Lag/i;->d(Lag/i;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, LVf/u;->K(III)I

    move-result p1

    iput p1, p0, Lag/i$a;->c:I

    iput p1, p0, Lag/i$a;->d:I

    return-void
.end method

.method private final a()V
    .locals 6

    iget v0, p0, Lag/i$a;->d:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iput v1, p0, Lag/i$a;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lag/i$a;->e:LVf/l;

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lag/i$a;->g:Lag/i;

    invoke-static {v0}, Lag/i;->e(Lag/i;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-lez v0, :cond_1

    iget v0, p0, Lag/i$a;->f:I

    add-int/2addr v0, v3

    iput v0, p0, Lag/i$a;->f:I

    iget-object v4, p0, Lag/i$a;->g:Lag/i;

    invoke-static {v4}, Lag/i;->e(Lag/i;)I

    move-result v4

    if-ge v0, v4, :cond_2

    :cond_1
    iget v0, p0, Lag/i$a;->d:I

    iget-object v4, p0, Lag/i$a;->g:Lag/i;

    invoke-static {v4}, Lag/i;->d(Lag/i;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v0, v4, :cond_3

    :cond_2
    new-instance v0, LVf/l;

    iget v1, p0, Lag/i$a;->c:I

    iget-object v4, p0, Lag/i$a;->g:Lag/i;

    invoke-static {v4}, Lag/i;->d(Lag/i;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lag/P;->C3(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v0, v1, v4}, LVf/l;-><init>(II)V

    iput-object v0, p0, Lag/i$a;->e:LVf/l;

    iput v2, p0, Lag/i$a;->d:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lag/i$a;->g:Lag/i;

    invoke-static {v0}, Lag/i;->c(Lag/i;)LMf/p;

    move-result-object v0

    iget-object v4, p0, Lag/i$a;->g:Lag/i;

    invoke-static {v4}, Lag/i;->d(Lag/i;)Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p0, Lag/i$a;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, LMf/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnf/Z;

    if-nez v0, :cond_4

    new-instance v0, LVf/l;

    iget v1, p0, Lag/i$a;->c:I

    iget-object v4, p0, Lag/i$a;->g:Lag/i;

    invoke-static {v4}, Lag/i;->d(Lag/i;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lag/P;->C3(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v0, v1, v4}, LVf/l;-><init>(II)V

    iput-object v0, p0, Lag/i$a;->e:LVf/l;

    iput v2, p0, Lag/i$a;->d:I

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lnf/Z;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lnf/Z;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v4, p0, Lag/i$a;->c:I

    invoke-static {v4, v2}, LVf/u;->Y1(II)LVf/l;

    move-result-object v4

    iput-object v4, p0, Lag/i$a;->e:LVf/l;

    add-int/2addr v2, v0

    iput v2, p0, Lag/i$a;->c:I

    if-nez v0, :cond_5

    move v1, v3

    :cond_5
    add-int/2addr v2, v1

    iput v2, p0, Lag/i$a;->d:I

    :goto_0
    iput v3, p0, Lag/i$a;->b:I

    :goto_1
    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget v0, p0, Lag/i$a;->f:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lag/i$a;->c:I

    return v0
.end method

.method public final e()LVf/l;
    .locals 1

    iget-object v0, p0, Lag/i$a;->e:LVf/l;

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lag/i$a;->d:I

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lag/i$a;->b:I

    return v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lag/i$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lag/i$a;->a()V

    :cond_0
    iget v0, p0, Lag/i$a;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public j()LVf/l;
    .locals 3

    iget v0, p0, Lag/i$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lag/i$a;->a()V

    :cond_0
    iget v0, p0, Lag/i$a;->b:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lag/i$a;->e:LVf/l;

    const-string v2, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lag/i$a;->e:LVf/l;

    iput v1, p0, Lag/i$a;->b:I

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final k(I)V
    .locals 0

    iput p1, p0, Lag/i$a;->f:I

    return-void
.end method

.method public final l(I)V
    .locals 0

    iput p1, p0, Lag/i$a;->c:I

    return-void
.end method

.method public final m(LVf/l;)V
    .locals 0

    iput-object p1, p0, Lag/i$a;->e:LVf/l;

    return-void
.end method

.method public final n(I)V
    .locals 0

    iput p1, p0, Lag/i$a;->d:I

    return-void
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lag/i$a;->j()LVf/l;

    move-result-object v0

    return-object v0
.end method

.method public final o(I)V
    .locals 0

    iput p1, p0, Lag/i$a;->b:I

    return-void
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
