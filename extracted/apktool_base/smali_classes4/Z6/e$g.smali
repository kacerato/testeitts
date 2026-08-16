.class public LZ6/e$g;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ6/e;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LZ6/e;


# direct methods
.method public constructor <init>(LZ6/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LZ6/e$g;->b:LZ6/e;

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

    iget-object p1, p0, LZ6/e$g;->b:LZ6/e;

    invoke-static {p1}, LZ6/e;->w1(LZ6/e;)LZ6/e$i;

    move-result-object p1

    iget-object v0, p0, LZ6/e$g;->b:LZ6/e;

    invoke-static {v0}, LZ6/e;->v1(LZ6/e;)F

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, LZ6/e$i;->a(FZ)V

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->s0(Ljava/lang/Object;)V

    iget-object p1, p0, LZ6/e$g;->b:LZ6/e;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    return-void
.end method
