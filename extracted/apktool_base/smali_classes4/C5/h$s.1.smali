.class public LC5/h$s;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LC5/b;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(LC5/b;Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$entry",
            "val$context",
            "val$textView"
        }
    .end annotation

    iput-object p1, p0, LC5/h$s;->b:LC5/b;

    iput-object p2, p0, LC5/h$s;->c:Landroid/content/Context;

    iput-object p3, p0, LC5/h$s;->d:Landroid/widget/TextView;

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
            "view"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, LC5/h$s;->b:LC5/b;

    iget-object p1, p1, LC5/b;->c:LD5/k;

    invoke-interface {p1}, LD5/k;->allowSelect()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LC5/h$s;->b:LC5/b;

    iget-object v0, p0, LC5/h$s;->c:Landroid/content/Context;

    iget-object v1, p0, LC5/h$s;->d:Landroid/widget/TextView;

    invoke-static {p1, v0, v1}, LC5/h;->l(LC5/b;Landroid/content/Context;Landroid/widget/TextView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
