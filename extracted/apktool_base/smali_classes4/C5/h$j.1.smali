.class public LC5/h$j;
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

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public constructor <init>(LC5/b;Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$entry",
            "val$textView",
            "val$context"
        }
    .end annotation

    iput-object p1, p0, LC5/h$j;->b:LC5/b;

    iput-object p2, p0, LC5/h$j;->c:Landroid/widget/TextView;

    iput-object p3, p0, LC5/h$j;->d:Landroid/content/Context;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, LC5/h$j;->b:LC5/b;

    iget-object v0, p0, LC5/h$j;->c:Landroid/widget/TextView;

    iget-object v1, p0, LC5/h$j;->d:Landroid/content/Context;

    new-instance v2, LC5/h$j$a;

    invoke-direct {v2, p0}, LC5/h$j$a;-><init>(LC5/h$j;)V

    invoke-static {p1, v0, v1, v2}, LC5/h;->i(LC5/b;Landroid/widget/TextView;Landroid/content/Context;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
