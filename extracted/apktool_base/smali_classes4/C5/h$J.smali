.class public LC5/h$J;
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

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Landroid/view/View;


# direct methods
.method public constructor <init>(LC5/b;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$entry",
            "val$textView",
            "val$content",
            "val$dropdownTouchArea"
        }
    .end annotation

    iput-object p1, p0, LC5/h$J;->b:LC5/b;

    iput-object p2, p0, LC5/h$J;->c:Landroid/widget/TextView;

    iput-object p3, p0, LC5/h$J;->d:Landroid/view/View;

    iput-object p4, p0, LC5/h$J;->e:Landroid/view/View;

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
            "view"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LC5/h$J;->b:LC5/b;

    iget-object v1, v0, LC5/b;->z:Ljava/util/List;

    if-eqz v1, :cond_3

    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LC5/h$J;->b:LC5/b;

    iget-object v1, v1, LC5/b;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, LC5/h$J;->b:LC5/b;

    iget-object v1, v1, LC5/b;->z:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "@SPACE@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ldd/b;

    invoke-direct {v1}, Ldd/b;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    new-instance v2, Ldd/b;

    new-instance v3, LC5/h$J$a;

    invoke-direct {v3, p0, v0}, LC5/h$J$a;-><init>(LC5/h$J;I)V

    invoke-direct {v2, v1, v3}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, LC5/h$J;->e:Landroid/view/View;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, LC5/h$J;->c:Landroid/widget/TextView;

    :goto_2
    sget-object v1, Lr4/a$e;->Left:Lr4/a$e;

    invoke-static {v0, v1, p1}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    goto :goto_4

    :cond_3
    iget-object v0, v0, LC5/b;->b:LD5/h;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string v2, ""

    invoke-direct {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Landroid/view/View;)V

    invoke-interface {v0, v1}, LD5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-void
.end method
