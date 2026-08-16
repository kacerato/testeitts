.class public final LXf/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements LNf/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LXf/f;->iterator()Ljava/util/Iterator;
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
.field public final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final synthetic e:LXf/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXf/f<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LXf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXf/f<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, LXf/f$a;->e:LXf/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LXf/f;->d(LXf/f;)LXf/m;

    move-result-object p1

    invoke-interface {p1}, LXf/m;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, LXf/f$a;->b:Ljava/util/Iterator;

    const/4 p1, -0x1

    iput p1, p0, LXf/f$a;->c:I

    return-void
.end method

.method private final a()V
    .locals 2

    :cond_0
    iget-object v0, p0, LXf/f$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LXf/f$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, LXf/f$a;->e:LXf/f;

    invoke-static {v1}, LXf/f;->c(LXf/f;)LMf/l;

    move-result-object v1

    invoke-interface {v1, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, LXf/f$a;->d:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, LXf/f$a;->c:I

    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, LXf/f$a;->c:I

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget v0, p0, LXf/f$a;->c:I

    return v0
.end method

.method public final d()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LXf/f$a;->b:Ljava/util/Iterator;

    return-object v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, LXf/f$a;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, LXf/f$a;->c:I

    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, LXf/f$a;->d:Ljava/lang/Object;

    return-void
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, LXf/f$a;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, LXf/f$a;->a()V

    :cond_0
    iget v0, p0, LXf/f$a;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, LXf/f$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
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

    iget v0, p0, LXf/f$a;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, LXf/f$a;->a()V

    :cond_0
    iget v0, p0, LXf/f$a;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LXf/f$a;->d:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, LXf/f$a;->d:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, p0, LXf/f$a;->c:I

    return-object v0

    :cond_1
    iget-object v0, p0, LXf/f$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
