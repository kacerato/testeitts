.class public Lfe/g$c;
.super Lfe/g$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfe/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfe/g<",
        "TK;>.d<TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lfe/g;


# direct methods
.method public constructor <init>(Lfe/g;)V
    .locals 1

    iput-object p1, p0, Lfe/g$c;->c:Lfe/g;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfe/g$d;-><init>(Lfe/g;Lfe/g$a;)V

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

    iget-object v0, p0, Lfe/g$c;->c:Lfe/g;

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

    iget-object v0, p0, Lfe/g$c;->c:Lfe/g;

    iget-short v1, v0, Lfe/g;->u:S

    invoke-virtual {v0, p1}, Lfe/g;->remove(Ljava/lang/Object;)S

    move-result p1

    if-eq v1, p1, :cond_0

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

    iget-object v1, p0, Lfe/g$c;->c:Lfe/g;

    invoke-direct {v0, v1}, Lae/a;-><init>(LWd/b0;)V

    return-object v0
.end method
