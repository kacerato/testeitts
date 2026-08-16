.class public LT1/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LT1/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LT1/e;


# direct methods
.method public constructor <init>(LT1/e;)V
    .locals 0

    iput-object p1, p0, LT1/e$a;->b:LT1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 2
    .param p2    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, LT1/e$a;->b:LT1/e;

    invoke-static {p1}, LT1/e;->a(LT1/e;)LT1/e$c;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    iget-object v1, p0, LT1/e$a;->b:LT1/e;

    invoke-virtual {v1}, LT1/e;->getSelectedItemId()I

    move-result v1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, LT1/e$a;->b:LT1/e;

    invoke-static {p1}, LT1/e;->a(LT1/e;)LT1/e$c;

    move-result-object p1

    invoke-interface {p1, p2}, LT1/e$c;->a(Landroid/view/MenuItem;)V

    return v0

    :cond_0
    iget-object p1, p0, LT1/e$a;->b:LT1/e;

    invoke-static {p1}, LT1/e;->b(LT1/e;)LT1/e$d;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LT1/e$a;->b:LT1/e;

    invoke-static {p1}, LT1/e;->b(LT1/e;)LT1/e$d;

    move-result-object p1

    invoke-interface {p1, p2}, LT1/e$d;->a(Landroid/view/MenuItem;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    return-void
.end method
