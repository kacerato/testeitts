.class public Lge/O$f;
.super Lge/O$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge/O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lge/O$f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lge/O<",
        "TV;>.d<TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lge/O;


# direct methods
.method public constructor <init>(Lge/O;)V
    .locals 1

    iput-object p1, p0, Lge/O$f;->c:Lge/O;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lge/O$d;-><init>(Lge/O;Lge/O$a;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    iget-object v0, p0, Lge/O$f;->c:Lge/O;

    invoke-virtual {v0, p1}, Lge/O;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    iget-object v0, p0, Lge/O$f;->c:Lge/O;

    iget-object v1, v0, Lge/O;->v:[Ljava/lang/Object;

    iget-object v0, v0, LWd/c0;->l:[B

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_2

    aget-byte v2, v0, v3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    aget-object v2, v1, v3

    if-eq p1, v2, :cond_0

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object p1, p0, Lge/O$f;->c:Lge/O;

    invoke-virtual {p1, v3}, Lge/O;->hf(I)V

    return v4

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lge/O$f$a;

    iget-object v1, p0, Lge/O$f;->c:Lge/O;

    invoke-direct {v0, p0, v1}, Lge/O$f$a;-><init>(Lge/O$f;Lge/O;)V

    return-object v0
.end method
