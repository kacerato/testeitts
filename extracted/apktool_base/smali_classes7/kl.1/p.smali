.class public Lkl/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkl/p$a;
    }
.end annotation


# instance fields
.field public final a:[B

.field public final b:[B

.field public final c:[Lkl/p$a;


# direct methods
.method public constructor <init>(Lkl/h;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lkl/p;->b:[B

    iget v0, p1, Lkl/h;->l:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lkl/t;->i(I)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lkl/p;->a:[B

    iget v0, p1, Lkl/h;->l:I

    new-array v0, v0, [Lkl/p$a;

    iput-object v0, p0, Lkl/p;->c:[Lkl/p$a;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkl/p;->c:[Lkl/p$a;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Lkl/p$a;

    invoke-direct {v2, p1}, Lkl/p$a;-><init>(Lkl/h;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
