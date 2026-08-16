.class public LF5/c$a0$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LF5/c$a0;->onCreate(Landroid/view/View;Landroid/content/Context;LC5/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:[Landroid/widget/FrameLayout;

.field public final synthetic c:Landroid/widget/FrameLayout;

.field public final synthetic d:I

.field public final synthetic e:LF5/c$a0;


# direct methods
.method public constructor <init>(LF5/c$a0;[Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$lastSelectedIMG",
            "val$frameLayout",
            "val$finalI"
        }
    .end annotation

    iput-object p1, p0, LF5/c$a0$a;->e:LF5/c$a0;

    iput-object p2, p0, LF5/c$a0$a;->b:[Landroid/widget/FrameLayout;

    iput-object p3, p0, LF5/c$a0$a;->c:Landroid/widget/FrameLayout;

    iput p4, p0, LF5/c$a0$a;->d:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, LF5/c$a0$a;->b:[Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->TREE_LIST_ROW1:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, LF5/c$a0$a;->b:[Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_0
    iget-object p1, p0, LF5/c$a0$a;->c:Landroid/widget/FrameLayout;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY_DARK:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, LF5/c$a0$a;->b:[Landroid/widget/FrameLayout;

    iget-object v1, p0, LF5/c$a0$a;->c:Landroid/widget/FrameLayout;

    aput-object v1, p1, v0

    iget-object p1, p0, LF5/c$a0$a;->e:LF5/c$a0;

    iget-object p1, p1, LF5/c$a0;->b:LF5/f;

    iget v0, p0, LF5/c$a0$a;->d:I

    invoke-interface {p1, v0}, LF5/f;->b(I)V

    return-void
.end method
