.class public Lud/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/picasso/Transformation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lud/d;->j()Lcom/squareup/picasso/Transformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lud/d;


# direct methods
.method public constructor <init>(Lud/d;)V
    .locals 0

    iput-object p1, p0, Lud/d$a;->a:Lud/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "r:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lud/d$a;->a:Lud/d;

    invoke-static {v1}, Lud/d;->d(Lud/d;)[F

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "b:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lud/d$a;->a:Lud/d;

    invoke-static {v1}, Lud/d;->c(Lud/d;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lud/d$a;->a:Lud/d;

    invoke-static {v1}, Lud/d;->b(Lud/d;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "o:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lud/d$a;->a:Lud/d;

    invoke-static {v1}, Lud/d;->a(Lud/d;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    invoke-static {p1}, Lud/c;->d(Landroid/graphics/Bitmap;)Lud/c;

    move-result-object v0

    iget-object v1, p0, Lud/d$a;->a:Lud/d;

    invoke-static {v1}, Lud/d;->e(Lud/d;)Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lud/c;->z(Landroid/widget/ImageView$ScaleType;)Lud/c;

    move-result-object v0

    iget-object v1, p0, Lud/d$a;->a:Lud/d;

    invoke-static {v1}, Lud/d;->d(Lud/d;)[F

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lud/d$a;->a:Lud/d;

    invoke-static {v2}, Lud/d;->d(Lud/d;)[F

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lud/d$a;->a:Lud/d;

    invoke-static {v3}, Lud/d;->d(Lud/d;)[F

    move-result-object v3

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lud/d$a;->a:Lud/d;

    invoke-static {v4}, Lud/d;->d(Lud/d;)[F

    move-result-object v4

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lud/c;->w(FFFF)Lud/c;

    move-result-object v0

    iget-object v1, p0, Lud/d$a;->a:Lud/d;

    invoke-static {v1}, Lud/d;->c(Lud/d;)F

    move-result v1

    invoke-virtual {v0, v1}, Lud/c;->u(F)Lud/c;

    move-result-object v0

    iget-object v1, p0, Lud/d$a;->a:Lud/d;

    invoke-static {v1}, Lud/d;->b(Lud/d;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lud/c;->t(Landroid/content/res/ColorStateList;)Lud/c;

    move-result-object v0

    iget-object v1, p0, Lud/d$a;->a:Lud/d;

    invoke-static {v1}, Lud/d;->a(Lud/d;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lud/c;->y(Z)Lud/c;

    move-result-object v0

    invoke-virtual {v0}, Lud/c;->C()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-object v0
.end method
