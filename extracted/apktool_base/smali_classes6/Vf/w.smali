.class public final LVf/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements LNf/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lnf/B0;",
        ">;",
        "LNf/a;"
    }
.end annotation

.annotation build Lnf/l0;
    version = "1.3"
.end annotation


# instance fields
.field public final b:I

.field public c:Z

.field public final d:I

.field public e:I


# direct methods
.method public constructor <init>(III)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p2, p0, LVf/w;->b:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v2

    if-lez p3, :cond_0

    if-gtz v2, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    if-ltz v2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean v0, p0, LVf/w;->c:Z

    .line 5
    invoke-static {p3}, Lnf/B0;->o(I)I

    move-result p3

    iput p3, p0, LVf/w;->d:I

    .line 6
    iget-boolean p3, p0, LVf/w;->c:Z

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    move p1, p2

    :goto_2
    iput p1, p0, LVf/w;->e:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, LVf/w;-><init>(III)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget v0, p0, LVf/w;->e:I

    iget v1, p0, LVf/w;->b:I

    if-ne v0, v1, :cond_1

    iget-boolean v1, p0, LVf/w;->c:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, LVf/w;->c:Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    iget v1, p0, LVf/w;->d:I

    add-int/2addr v1, v0

    invoke-static {v1}, Lnf/B0;->o(I)I

    move-result v1

    iput v1, p0, LVf/w;->e:I

    :goto_0
    return v0
.end method

.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, LVf/w;->c:Z

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LVf/w;->a()I

    move-result v0

    invoke-static {v0}, Lnf/B0;->e(I)Lnf/B0;

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
