.class public LC5/h$L$a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LC5/h$L$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC5/h$L$a;


# direct methods
.method public constructor <init>(LC5/h$L$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LC5/h$L$a$e;->a:LC5/h$L$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, LC5/h$L$a$e;->a:LC5/h$L$a;

    iget-object p1, p1, LC5/h$L$a;->b:LC5/h$L;

    iget-object p1, p1, LC5/h$L;->e:Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, LQ6/a;->J1(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    goto :goto_0

    :cond_0
    const-string p1, "No style attached!"

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
