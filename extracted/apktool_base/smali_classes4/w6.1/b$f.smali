.class public Lw6/b$f;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw6/b;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lw6/b;


# direct methods
.method public constructor <init>(Lw6/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lw6/b$f;->b:Lw6/b;

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

    new-instance p1, Lw6/b$f$a;

    invoke-direct {p1, p0}, Lw6/b$f$a;-><init>(Lw6/b$f;)V

    invoke-static {p1}, Ld6/b;->O1(Lo4/a;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p1

    iget-object v0, p0, Lw6/b$f;->b:Lw6/b;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->x:Li4/e;

    invoke-interface {v0, p1}, Li4/e;->s(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    return-void
.end method
