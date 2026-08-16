.class public final LXf/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements LNf/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LXf/k;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lpf/d0<",
        "+TT;>;>;",
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


# direct methods
.method public constructor <init>(LXf/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXf/k<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LXf/k;->c(LXf/k;)LXf/m;

    move-result-object p1

    invoke-interface {p1}, LXf/m;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, LXf/k$a;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, LXf/k$a;->c:I

    return v0
.end method

.method public final b()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LXf/k$a;->b:Ljava/util/Iterator;

    return-object v0
.end method

.method public d()Lpf/d0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lpf/d0<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lpf/d0;

    iget v1, p0, LXf/k$a;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LXf/k$a;->c:I

    if-gez v1, :cond_0

    invoke-static {}, Lpf/H;->b0()V

    :cond_0
    iget-object v2, p0, LXf/k$a;->b:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lpf/d0;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, LXf/k$a;->c:I

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LXf/k$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LXf/k$a;->d()Lpf/d0;

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
