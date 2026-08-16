.class public Lcom/itsmagic/engine/Activities/Editor/Utils/E$c;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


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

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/E$c;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

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
            "view"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/E$c;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->p1(Lcom/itsmagic/engine/Activities/Editor/Utils/E;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/E$c;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->p1(Lcom/itsmagic/engine/Activities/Editor/Utils/E;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    invoke-static {}, LN7/c;->Y()V

    return-void
.end method
