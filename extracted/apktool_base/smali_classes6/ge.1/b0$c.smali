.class public Lge/b0$c;
.super Lge/b0$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lge/b0<",
        "TK;>.d<TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lge/b0;


# direct methods
.method public constructor <init>(Lge/b0;)V
    .locals 1

    iput-object p1, p0, Lge/b0$c;->c:Lge/b0;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lge/b0$d;-><init>(Lge/b0;Lge/b0$a;)V

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

    iget-object v0, p0, Lge/b0$c;->c:Lge/b0;

    invoke-virtual {v0, p1}, LWd/b0;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    iget-object v0, p0, Lge/b0$c;->c:Lge/b0;

    iget-wide v1, v0, Lge/b0;->s:D

    invoke-virtual {v0, p1}, Lge/b0;->remove(Ljava/lang/Object;)D

    move-result-wide v3

    cmpl-double p1, v1, v3

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

    iget-object v1, p0, Lge/b0$c;->c:Lge/b0;

    invoke-direct {v0, v1}, Lae/a;-><init>(LWd/b0;)V

    return-object v0
.end method
