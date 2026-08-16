.class public LI/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LI/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public c:Landroid/graphics/Bitmap$Config;

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p1}, LI/d$a;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, LI/d$a;->d:I

    if-lez p1, :cond_1

    if-lez p2, :cond_0

    .line 4
    iput p1, p0, LI/d$a;->a:I

    .line 5
    iput p2, p0, LI/d$a;->b:I

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Height must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()LI/d;
    .locals 5

    new-instance v0, LI/d;

    iget v1, p0, LI/d$a;->a:I

    iget v2, p0, LI/d$a;->b:I

    iget-object v3, p0, LI/d$a;->c:Landroid/graphics/Bitmap$Config;

    iget v4, p0, LI/d$a;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, LI/d;-><init>(IILandroid/graphics/Bitmap$Config;I)V

    return-object v0
.end method

.method public b()Landroid/graphics/Bitmap$Config;
    .locals 1

    iget-object v0, p0, LI/d$a;->c:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public c(Landroid/graphics/Bitmap$Config;)LI/d$a;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap$Config;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, LI/d$a;->c:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method public d(I)LI/d$a;
    .locals 1

    if-lez p1, :cond_0

    iput p1, p0, LI/d$a;->d:I

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Weight must be > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
