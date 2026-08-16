.class public final Lz1/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz1/b;->d(Lz1/a;Landroidx/appcompat/widget/Toolbar;ILandroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroidx/appcompat/widget/Toolbar;

.field public final synthetic c:I

.field public final synthetic d:Lz1/a;

.field public final synthetic e:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;ILz1/a;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lz1/b$a;->b:Landroidx/appcompat/widget/Toolbar;

    iput p2, p0, Lz1/b$a;->c:I

    iput-object p3, p0, Lz1/b$a;->d:Lz1/a;

    iput-object p4, p0, Lz1/b$a;->e:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lz1/b$a;->b:Landroidx/appcompat/widget/Toolbar;

    iget v1, p0, Lz1/b$a;->c:I

    invoke-static {v0, v1}, Lcom/google/android/material/internal/t;->a(Landroidx/appcompat/widget/Toolbar;I)Landroidx/appcompat/view/menu/ActionMenuItemView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lz1/b$a;->d:Lz1/a;

    iget-object v2, p0, Lz1/b$a;->b:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lz1/b;->k(Lz1/a;Landroid/content/res/Resources;)V

    iget-object v1, p0, Lz1/b$a;->d:Lz1/a;

    iget-object v2, p0, Lz1/b$a;->e:Landroid/widget/FrameLayout;

    invoke-static {v1, v0, v2}, Lz1/b;->b(Lz1/a;Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_0
    return-void
.end method
