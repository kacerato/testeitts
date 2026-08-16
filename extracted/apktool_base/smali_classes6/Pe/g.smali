.class public final LPe/g;
.super LXe/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LXe/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:[Lhn/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lhn/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lhn/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lhn/b<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LXe/b;-><init>()V

    iput-object p1, p0, LPe/g;->a:[Lhn/b;

    return-void
.end method


# virtual methods
.method public F()I
    .locals 1

    iget-object v0, p0, LPe/g;->a:[Lhn/b;

    array-length v0, v0

    return v0
.end method

.method public Q([Lhn/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, LXe/b;->U([Lhn/c;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, LPe/g;->a:[Lhn/b;

    aget-object v2, v2, v1

    aget-object v3, p1, v1

    invoke-interface {v2, v3}, Lhn/b;->l(Lhn/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
