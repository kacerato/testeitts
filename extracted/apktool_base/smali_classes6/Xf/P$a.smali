.class public final LXf/P$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements LNf/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LXf/P;->iterator()Ljava/util/Iterator;
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

.field public final synthetic d:LXf/P;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXf/P<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LXf/P;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXf/P<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, LXf/P$a;->d:LXf/P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LXf/P;->d(LXf/P;)LXf/m;

    move-result-object p1

    invoke-interface {p1}, LXf/m;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, LXf/P$a;->b:Ljava/util/Iterator;

    return-void
.end method

.method private final a()V
    .locals 2

    :goto_0
    iget v0, p0, LXf/P$a;->c:I

    iget-object v1, p0, LXf/P$a;->d:LXf/P;

    invoke-static {v1}, LXf/P;->e(LXf/P;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, LXf/P$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LXf/P$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    iget v0, p0, LXf/P$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LXf/P$a;->c:I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LXf/P$a;->b:Ljava/util/Iterator;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, LXf/P$a;->c:I

    return v0
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, LXf/P$a;->c:I

    return-void
.end method

.method public hasNext()Z
    .locals 2

    invoke-direct {p0}, LXf/P$a;->a()V

    iget v0, p0, LXf/P$a;->c:I

    iget-object v1, p0, LXf/P$a;->d:LXf/P;

    invoke-static {v1}, LXf/P;->c(LXf/P;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, LXf/P$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-direct {p0}, LXf/P$a;->a()V

    iget v0, p0, LXf/P$a;->c:I

    iget-object v1, p0, LXf/P$a;->d:LXf/P;

    invoke-static {v1}, LXf/P;->c(LXf/P;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, LXf/P$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LXf/P$a;->c:I

    iget-object v0, p0, LXf/P$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
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
