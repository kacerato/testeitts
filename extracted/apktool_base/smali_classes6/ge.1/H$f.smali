.class public Lge/H$f;
.super Lge/H$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lge/H<",
        "TK;TV;>.g<TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lge/H;


# direct methods
.method public constructor <init>(Lge/H;)V
    .locals 1

    iput-object p1, p0, Lge/H$f;->c:Lge/H;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lge/H$g;-><init>(Lge/H;Lge/H$a;)V

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

    iget-object v0, p0, Lge/H$f;->c:Lge/H;

    invoke-virtual {v0, p1}, LWd/b0;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    iget-object v0, p0, Lge/H$f;->c:Lge/H;

    invoke-virtual {v0, p1}, Lge/H;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

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

    iget-object v1, p0, Lge/H$f;->c:Lge/H;

    invoke-direct {v0, v1}, Lae/a;-><init>(LWd/b0;)V

    return-object v0
.end method
