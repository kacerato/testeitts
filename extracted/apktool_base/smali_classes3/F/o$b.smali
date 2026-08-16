.class public final LF/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF/m;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = LF/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:LF/o$c;

.field public b:I

.field public c:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(LF/o$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LF/o$b;->a:LF/o$c;

    return-void
.end method

.method public constructor <init>(LF/o$c;ILandroid/graphics/Bitmap$Config;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 3
    invoke-direct {p0, p1}, LF/o$b;-><init>(LF/o$c;)V

    .line 4
    invoke-virtual {p0, p2, p3}, LF/o$b;->b(ILandroid/graphics/Bitmap$Config;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LF/o$b;->a:LF/o$c;

    invoke-virtual {v0, p0}, LF/d;->c(LF/m;)V

    return-void
.end method

.method public b(ILandroid/graphics/Bitmap$Config;)V
    .locals 0

    iput p1, p0, LF/o$b;->b:I

    iput-object p2, p0, LF/o$b;->c:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, LF/o$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, LF/o$b;

    iget v0, p0, LF/o$b;->b:I

    iget v2, p1, LF/o$b;->b:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, LF/o$b;->c:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, LF/o$b;->c:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1}, LY/m;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, LF/o$b;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LF/o$b;->c:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, LF/o$b;->b:I

    iget-object v1, p0, LF/o$b;->c:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1}, LF/o;->h(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
