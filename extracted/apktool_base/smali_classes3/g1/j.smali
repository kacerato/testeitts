.class public final Lg1/j;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(Lg1/j;)V
    .locals 1
    .param p1    # Lg1/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    if-eqz p1, :cond_0

    iget v0, p1, Lg1/j;->a:I

    iput v0, p0, Lg1/j;->a:I

    iget p1, p1, Lg1/j;->b:I

    iput p1, p0, Lg1/j;->b:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 1

    iget v0, p0, Lg1/j;->a:I

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lg1/k;

    invoke-direct {v0, p0}, Lg1/k;-><init>(Lg1/j;)V

    return-object v0
.end method
