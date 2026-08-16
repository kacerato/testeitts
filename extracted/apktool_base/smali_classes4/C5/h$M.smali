.class public LC5/h$M;
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

    iput-object p1, p0, LC5/h$M;->b:LC5/b;

    iput-object p2, p0, LC5/h$M;->c:Landroid/content/Context;

    iput-object p3, p0, LC5/h$M;->d:Landroid/widget/ImageView;

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

    invoke-static {}, LN7/c;->Y()V

    new-instance v0, LC5/h$M$a;

    invoke-direct {v0, p0}, LC5/h$M$a;-><init>(LC5/h$M;)V

    sget-object v1, Lr4/a$e;->Left:Lr4/a$e;

    invoke-static {p1, v1, v0}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    return-void
.end method
