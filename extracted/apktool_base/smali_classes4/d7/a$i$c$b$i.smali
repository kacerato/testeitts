.class public Ld7/a$i$c$b$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld7/a$i$c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld7/a$i$c$b;


# direct methods
.method public constructor <init>(Ld7/a$i$c$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Ld7/a$i$c$b$i;->a:Ld7/a$i$c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const-string v0, "EDITOR_TOP_BAR_EDITOR_SETTINGS_BUTTON"

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/c;->a(Ljava/lang/String;)Z

    const/16 v0, 0x14a

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v0

    const/16 v1, 0x190

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v1

    new-instance v2, LM3/a;

    invoke-direct {v2}, LM3/a;-><init>()V

    const-string v3, "Graphics"

    invoke-virtual {v2, v3}, LN3/a;->s1(Ljava/lang/String;)V

    sget-object v3, Lr4/a$e;->Right:Lr4/a$e;

    invoke-static {p1, v2, v3, v0, v1}, Lr4/a;->g(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method
