.class public final LPe/h;
.super LXe/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LPe/h$a;
    }
.end annotation

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
.field public final a:Lhn/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Lhn/b;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/b<",
            "+TT;>;II)V"
        }
    .end annotation

    invoke-direct {p0}, LXe/b;-><init>()V

    iput-object p1, p0, LPe/h;->a:Lhn/b;

    iput p2, p0, LPe/h;->b:I

    iput p3, p0, LPe/h;->c:I

    return-void
.end method


# virtual methods
.method public F()I
    .locals 1

    iget v0, p0, LPe/h;->b:I

    return v0
.end method

.method public Q([Lhn/c;)V
    .locals 3
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
    iget-object v0, p0, LPe/h;->a:Lhn/b;

    new-instance v1, LPe/h$a;

    iget v2, p0, LPe/h;->c:I

    invoke-direct {v1, p1, v2}, LPe/h$a;-><init>([Lhn/c;I)V

    invoke-interface {v0, v1}, Lhn/b;->l(Lhn/c;)V

    return-void
.end method
