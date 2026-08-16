.class public Lu6/l$b;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu6/l;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:Lu6/l;


# direct methods
.method public constructor <init>(Lu6/l;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$pauseButton"
        }
    .end annotation

    iput-object p1, p0, Lu6/l$b;->c:Lu6/l;

    iput-object p2, p0, Lu6/l$b;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lu6/l$b;->c:Lu6/l;

    invoke-static {p1}, Lu6/l;->s1(Lu6/l;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lu6/l;->t1(Lu6/l;Z)Z

    iget-object p1, p0, Lu6/l$b;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lu6/l$b;->c:Lu6/l;

    invoke-static {v0}, Lu6/l;->s1(Lu6/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0701d6

    goto :goto_0

    :cond_0
    const v0, 0x7f0701db

    :goto_0
    invoke-static {p1, v0}, LVc/e;->U(Landroid/widget/ImageView;I)V

    return-void
.end method
