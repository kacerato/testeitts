.class public LM3/a;
.super LN3/a;
.source "SourceFile"


# instance fields
.field public final c0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;",
            ">;"
        }
    .end annotation
.end field

.field public d0:Landroid/widget/LinearLayout;

.field public e0:LF7/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LF7/l<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->EDITOR_SETTINGS:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LN3/a;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LM3/a;->c0:Ljava/util/List;

    new-instance v1, LS3/b;

    invoke-direct {v1}, LS3/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LS3/d;

    invoke-direct {v1}, LS3/d;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LP3/a;

    invoke-direct {v1}, LP3/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LP3/c;

    invoke-direct {v1}, LP3/c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LP3/d;

    invoke-direct {v1}, LP3/d;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LR3/a;

    invoke-direct {v1}, LR3/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LR3/b;

    invoke-direct {v1}, LR3/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LW3/a;

    invoke-direct {v1}, LW3/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LQ3/a;

    invoke-direct {v1}, LQ3/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LT3/a;

    invoke-direct {v1}, LT3/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LU3/a;

    invoke-direct {v1}, LU3/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LP3/b;

    invoke-direct {v1}, LP3/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LV3/a;

    invoke-direct {v1}, LV3/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LX3/a;

    invoke-direct {v1}, LX3/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LS3/c;

    invoke-direct {v1}, LS3/c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-super {p0, v0}, LN3/a;->u1(Ljava/util/List;)V

    return-void
.end method

.method public static w1(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jumpTo"
        }
    .end annotation

    const/16 v0, 0x14a

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v0

    const/16 v1, 0x190

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v1

    new-instance v2, LM3/a;

    invoke-direct {v2}, LM3/a;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p0}, LN3/a;->s1(Ljava/lang/String;)V

    :cond_0
    const p0, 0x3e4ccccd    # 0.2f

    const v3, 0x3dcccccd    # 0.1f

    invoke-static {v2, p0, v3, v0, v1}, Lr4/a;->n(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FFFF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    return-object p0
.end method
