.class public LC5/h$m;
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
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:LC5/b;

.field public final synthetic d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;LC5/b;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$context",
            "val$entry",
            "val$textView"
        }
    .end annotation

    iput-object p1, p0, LC5/h$m;->b:Landroid/content/Context;

    iput-object p2, p0, LC5/h$m;->c:LC5/b;

    iput-object p3, p0, LC5/h$m;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LC5/h$m;->b:Landroid/content/Context;

    iget-object v1, p0, LC5/h$m;->c:LC5/b;

    iget-object v2, p0, LC5/h$m;->d:Landroid/widget/TextView;

    new-instance v3, LC5/h$m$a;

    invoke-direct {v3, p0}, LC5/h$m$a;-><init>(LC5/h$m;)V

    invoke-static {p1, v0, v1, v2, v3}, LC5/h;->j(Landroid/view/View;Landroid/content/Context;LC5/b;Landroid/widget/TextView;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
