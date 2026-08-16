.class public final LXf/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements LNf/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LXf/j;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "LNf/a;"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public c:I

.field public final synthetic d:LXf/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXf/j<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LXf/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXf/j<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, LXf/j$a;->d:LXf/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x2

    iput p1, p0, LXf/j$a;->c:I

    return-void
.end method

.method private final a()V
    .locals 2

    iget v0, p0, LXf/j$a;->c:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LXf/j$a;->d:LXf/j;

    invoke-static {v0}, LXf/j;->c(LXf/j;)LMf/a;

    move-result-object v0

    invoke-interface {v0}, LMf/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LXf/j$a;->d:LXf/j;

    invoke-static {v0}, LXf/j;->d(LXf/j;)LMf/l;

    move-result-object v0

    iget-object v1, p0, LXf/j$a;->b:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, LXf/j$a;->b:Ljava/lang/Object;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iput v0, p0, LXf/j$a;->c:I

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, LXf/j$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, LXf/j$a;->c:I

    return v0
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, LXf/j$a;->b:Ljava/lang/Object;

    return-void
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, LXf/j$a;->c:I

    return-void
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, LXf/j$a;->c:I

    if-gez v0, :cond_0

    invoke-direct {p0}, LXf/j$a;->a()V

    :cond_0
    iget v0, p0, LXf/j$a;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, LXf/j$a;->c:I

    if-gez v0, :cond_0

    invoke-direct {p0}, LXf/j$a;->a()V

    :cond_0
    iget v0, p0, LXf/j$a;->c:I

    if-eqz v0, :cond_1

    iget-object v0, p0, LXf/j$a;->b:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type T of kotlin.sequences.GeneratorSequence"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    iput v1, p0, LXf/j$a;->c:I

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
