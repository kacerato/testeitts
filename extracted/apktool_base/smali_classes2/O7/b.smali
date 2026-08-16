.class public final synthetic LO7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LO7/b;->a:I

    iput p2, p0, LO7/b;->b:I

    iput p3, p0, LO7/b;->c:I

    iput p4, p0, LO7/b;->d:I

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 6

    iget v0, p0, LO7/b;->a:I

    iget v1, p0, LO7/b;->b:I

    iget v2, p0, LO7/b;->c:I

    iget v3, p0, LO7/b;->d:I

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/itsmagic/engine/Activities/Share/ShareImportActivity;->g(IIIILandroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
