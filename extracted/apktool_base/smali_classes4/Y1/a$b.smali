.class public final LY1/a$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LY1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:La2/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public b:Z


# direct methods
.method public constructor <init>(LY1/a$b;)V
    .locals 1
    .param p1    # LY1/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 5
    iget-object v0, p1, LY1/a$b;->a:La2/j;

    invoke-virtual {v0}, La2/j;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, La2/j;

    iput-object v0, p0, LY1/a$b;->a:La2/j;

    .line 6
    iget-boolean p1, p1, LY1/a$b;->b:Z

    iput-boolean p1, p0, LY1/a$b;->b:Z

    return-void
.end method

.method public constructor <init>(La2/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 2
    iput-object p1, p0, LY1/a$b;->a:La2/j;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, LY1/a$b;->b:Z

    return-void
.end method


# virtual methods
.method public a()LY1/a;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LY1/a;

    new-instance v1, LY1/a$b;

    invoke-direct {v1, p0}, LY1/a$b;-><init>(LY1/a$b;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LY1/a;-><init>(LY1/a$b;LY1/a$a;)V

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, LY1/a$b;->a()LY1/a;

    move-result-object v0

    return-object v0
.end method
