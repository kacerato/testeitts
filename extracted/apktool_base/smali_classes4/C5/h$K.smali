.class public LC5/h$K;
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

.field public final synthetic d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(LC5/b;Landroid/content/Context;Landroid/widget/ImageView;)V
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
            "val$colorImage"
        }
    .end annotation

    iput-object p1, p0, LC5/h$K;->b:LC5/b;

    iput-object p2, p0, LC5/h$K;->c:Landroid/content/Context;

    iput-object p3, p0, LC5/h$K;->d:Landroid/widget/ImageView;

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
            "v"
        }
    .end annotation

    iget-object v0, p0, LC5/h$K;->b:LC5/b;

    iget-object v1, v0, LC5/b;->n:LC5/b$a;

    sget-object v2, LC5/b$a;->UITexture:LC5/b$a;

    if-ne v1, v2, :cond_0

    invoke-static {}, LN7/c;->Y()V

    new-instance v0, LC5/h$K$a;

    invoke-direct {v0, p0}, LC5/h$K$a;-><init>(LC5/h$K;)V

    sget-object v1, Lr4/a$e;->Left:Lr4/a$e;

    invoke-static {p1, v1, v0}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    sget-object v2, LC5/b$a;->UIStyle:LC5/b$a;

    if-ne v1, v2, :cond_1

    :try_start_0
    iget-object p1, p0, LC5/h$K;->c:Landroid/content/Context;

    iget-object v1, p0, LC5/h$K;->d:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1}, LC5/h;->p(LC5/b;Landroid/content/Context;Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    sget-object v2, LC5/b$a;->Matcap:LC5/b$a;

    if-ne v1, v2, :cond_2

    invoke-static {}, LN7/c;->Y()V

    new-instance v0, LC5/h$K$b;

    invoke-direct {v0, p0}, LC5/h$K$b;-><init>(LC5/h$K;)V

    sget-object v1, Lr4/a$e;->Left:Lr4/a$e;

    invoke-static {p1, v1, v0}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object p1, p0, LC5/h$K;->c:Landroid/content/Context;

    iget-object v1, p0, LC5/h$K;->d:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1}, LC5/h;->n(LC5/b;Landroid/content/Context;Landroid/widget/ImageView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
