.class public LY5/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK7/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LY5/f;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LY5/f;


# direct methods
.method public constructor <init>(LY5/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LY5/f$a;->a:LY5/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object v0, p0, LY5/f$a;->a:LY5/f;

    invoke-static {v0}, LY5/f;->p1(LY5/f;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LY5/f$a;->a:LY5/f;

    invoke-static {v0}, LY5/f;->p1(LY5/f;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u0()V

    :cond_0
    iget-object v0, p0, LY5/f$a;->a:LY5/f;

    invoke-static {v0}, LY5/f;->r1(LY5/f;)LU5/a;

    move-result-object v1

    sget-object v2, Lr4/a$e;->Below:Lr4/a$e;

    new-instance v3, LY5/f$a$a;

    invoke-direct {v3, p0}, LY5/f$a$a;-><init>(LY5/f$a;)V

    invoke-static {v1, p1, v2, v3}, LK7/a;->w1(LU5/a;Landroid/view/View;Lr4/a$e;LK7/a$f;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p1

    invoke-static {v0, p1}, LY5/f;->q1(LY5/f;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method
