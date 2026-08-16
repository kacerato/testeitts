.class public Lt5/f$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt5/f;->N1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lt5/f;


# direct methods
.method public constructor <init>(Lt5/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lt5/f$e;->a:Lt5/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "hasFocus"
        }
    .end annotation

    if-nez p2, :cond_0

    iget-object p1, p0, Lt5/f$e;->a:Lt5/f;

    invoke-static {p1}, Lt5/f;->v1(Lt5/f;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    iget-object p2, p0, Lt5/f$e;->a:Lt5/f;

    invoke-static {p2}, Lt5/f;->y1(Lt5/f;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, LNc/b;->w1(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->L(I)V

    iget-object p1, p0, Lt5/f$e;->a:Lt5/f;

    invoke-static {p1}, Lt5/f;->v1(Lt5/f;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p2

    iget p2, p2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lt5/f;->x1(Lt5/f;IZ)V

    :cond_0
    return-void
.end method
