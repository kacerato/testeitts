.class public LC5/h$a;
.super Ldn/a;
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
.field public final synthetic a:LC5/b;

.field public final synthetic b:LE5/g;


# direct methods
.method public constructor <init>(LC5/b;LE5/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$entry",
            "val$textInt"
        }
    .end annotation

    iput-object p1, p0, LC5/h$a;->a:LC5/b;

    iput-object p2, p0, LC5/h$a;->b:LE5/g;

    invoke-direct {p0}, Ldn/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lorg/mohammedalaa/seekbar/RangeSeekBarView;IZ)V
    .locals 1
    .param p1    # Lorg/mohammedalaa/seekbar/RangeSeekBarView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rangeSeekBarView",
            "progress",
            "fromUser"
        }
    .end annotation

    if-eqz p3, :cond_0

    :try_start_0
    iget-object p1, p0, LC5/h$a;->a:LC5/b;

    iget-object p1, p1, LC5/b;->b:LD5/h;

    new-instance p3, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string v0, ""

    invoke-direct {p3, v0, p2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, p3}, LD5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    iget-object p1, p0, LC5/h$a;->b:LE5/g;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LE5/g;->h()V
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
