.class public abstract Lcom/google/android/gms/common/images/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/common/images/f;

.field public b:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/images/i;->b:I

    new-instance v0, Lcom/google/android/gms/common/images/f;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/images/f;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/i;->a:Lcom/google/android/gms/common/images/f;

    iput p2, p0, Lcom/google/android/gms/common/images/i;->b:I

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/graphics/drawable/Drawable;ZZZ)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public final b(Landroid/content/Context;Lg1/m;Z)V
    .locals 0

    iget p2, p0, Lcom/google/android/gms/common/images/i;->b:I

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p3, p2, p2}, Lcom/google/android/gms/common/images/i;->a(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method

.method public final c(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V
    .locals 0

    invoke-static {p2}, LG0/d;->c(Ljava/lang/Object;)V

    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p3, p1, p1, p2}, Lcom/google/android/gms/common/images/i;->a(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method
