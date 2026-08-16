.class public final LXf/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements LNf/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LXf/d;->iterator()Ljava/util/Iterator;
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


# direct methods
.method public constructor <init>(LXf/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXf/d<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LXf/d;->d(LXf/d;)LXf/m;

    move-result-object v0

    invoke-interface {v0}, LXf/m;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, LXf/d$a;->b:Ljava/util/Iterator;

    invoke-static {p1}, LXf/d;->c(LXf/d;)I

    move-result p1

    iput p1, p0, LXf/d$a;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    :goto_0
    iget v0, p0, LXf/d$a;->c:I

    if-lez v0, :cond_0

    iget-object v0, p0, LXf/d$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LXf/d$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    iget v0, p0, LXf/d$a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LXf/d$a;->c:I

    goto :goto_0

    :cond_0
    return-void
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

    iget-object v0, p0, LXf/d$a;->b:Ljava/util/Iterator;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, LXf/d$a;->c:I

    return v0
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, LXf/d$a;->c:I

    return-void
.end method

.method public hasNext()Z
    .locals 1

    invoke-virtual {p0}, LXf/d$a;->a()V

    iget-object v0, p0, LXf/d$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, LXf/d$a;->a()V

    iget-object v0, p0, LXf/d$a;->b:Ljava/util/Iterator;

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
