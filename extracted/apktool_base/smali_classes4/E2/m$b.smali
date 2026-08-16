.class public final LE2/m$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LE2/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    const-string v1, "Quantile scale must be positive"

    invoke-static {v0, v1}, Lw2/H;->e(ZLjava/lang/Object;)V

    .line 4
    iput p1, p0, LE2/m$b;->a:I

    return-void
.end method

.method public synthetic constructor <init>(ILE2/m$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LE2/m$b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(I)LE2/m$c;
    .locals 3

    new-instance v0, LE2/m$c;

    iget v1, p0, LE2/m$b;->a:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, LE2/m$c;-><init>(IILE2/m$a;)V

    return-object v0
.end method

.method public b(Ljava/util/Collection;)LE2/m$d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "LE2/m$d;"
        }
    .end annotation

    new-instance v0, LE2/m$d;

    iget v1, p0, LE2/m$b;->a:I

    invoke-static {p1}, Lcom/google/common/primitives/l;->B(Ljava/util/Collection;)[I

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, LE2/m$d;-><init>(I[ILE2/m$a;)V

    return-object v0
.end method

.method public varargs c([I)LE2/m$d;
    .locals 3

    new-instance v0, LE2/m$d;

    iget v1, p0, LE2/m$b;->a:I

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, LE2/m$d;-><init>(I[ILE2/m$a;)V

    return-object v0
.end method
