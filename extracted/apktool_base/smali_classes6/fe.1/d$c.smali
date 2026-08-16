.class public Lfe/d$c;
.super Lfe/d$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfe/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfe/d<",
        "TK;>.d<TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lfe/d;


# direct methods
.method public constructor <init>(Lfe/d;)V
    .locals 1

    iput-object p1, p0, Lfe/d$c;->c:Lfe/d;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfe/d$d;-><init>(Lfe/d;Lfe/d$a;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    iget-object v0, p0, Lfe/d$c;->c:Lfe/d;

    invoke-virtual {v0, p1}, LWd/b0;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    iget-object v0, p0, Lfe/d$c;->c:Lfe/d;

    iget v1, v0, Lfe/d;->u:F

    invoke-virtual {v0, p1}, Lfe/d;->remove(Ljava/lang/Object;)F

    move-result p1

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lae/a;

    iget-object v1, p0, Lfe/d$c;->c:Lfe/d;

    invoke-direct {v0, v1}, Lae/a;-><init>(LWd/b0;)V

    return-object v0
.end method
