.class public LC5/h$g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar$a;


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


# direct methods
.method public constructor <init>(LC5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LC5/h$g0;->a:LC5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "fromUser"
        }
    .end annotation

    iget-object p2, p0, LC5/h$g0;->a:LC5/b;

    iget-object v0, p2, LC5/b;->b:LD5/h;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget p2, p2, LC5/b;->u:F

    mul-float/2addr p1, p2

    const-string p2, ""

    invoke-direct {v1, p2, p1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v1}, LD5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    return-void
.end method
