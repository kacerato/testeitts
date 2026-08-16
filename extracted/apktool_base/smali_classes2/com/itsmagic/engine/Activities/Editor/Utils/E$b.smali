.class public Lcom/itsmagic/engine/Activities/Editor/Utils/E$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/E;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Utils/E;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Utils/E;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/E$b;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "motionEvent"
        }
    .end annotation

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/E$b;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->p1(Lcom/itsmagic/engine/Activities/Editor/Utils/E;)Landroid/view/View$OnClickListener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/E$b;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->p1(Lcom/itsmagic/engine/Activities/Editor/Utils/E;)Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
