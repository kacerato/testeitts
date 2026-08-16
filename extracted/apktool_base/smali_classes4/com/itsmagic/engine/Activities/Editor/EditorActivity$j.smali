.class public Lcom/itsmagic/engine/Activities/Editor/EditorActivity$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->setEdgeToEdgeInsets(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$j;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "insets"
        }
    .end annotation

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object p2

    invoke-static {p2}, Landroidx/appcompat/widget/c;->a(Landroid/graphics/Insets;)I

    move-result v0

    invoke-static {p2}, Landroidx/appcompat/widget/d;->a(Landroid/graphics/Insets;)I

    move-result v1

    invoke-static {p2}, Landroidx/appcompat/widget/e;->a(Landroid/graphics/Insets;)I

    move-result v2

    invoke-static {p2}, Landroidx/appcompat/widget/f;->a(Landroid/graphics/Insets;)I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    invoke-static {p2}, Landroidx/appcompat/widget/c;->a(Landroid/graphics/Insets;)I

    move-result p1

    sput p1, LK8/c;->a:I

    invoke-static {p2}, Landroidx/appcompat/widget/d;->a(Landroid/graphics/Insets;)I

    move-result p1

    sput p1, LK8/c;->b:I

    sget-object p1, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p1
.end method
