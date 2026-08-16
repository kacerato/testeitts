.class public Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;
.source "SourceFile"

# interfaces
.implements Lk4/a;


# static fields
.field public static final w:Ljava/lang/String; = "HUBPanel"

.field public static final x:Ljava/lang/Class;


# instance fields
.field public panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public r:Z

.field public s:Z

.field public serializedSelectedPanelIndex:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public t:Z

.field private tittle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public u:Ljava/lang/String;

.field public final v:Lk4/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->x:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->u(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$i;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "HUBPanel"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->r:Z

    .line 3
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->s:Z

    .line 4
    const-string v0, "HUB"

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->tittle:Ljava/lang/String;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->t:Z

    .line 6
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->v:Lk4/b;

    .line 7
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializedComponentType"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->r:Z

    .line 10
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->s:Z

    .line 11
    const-string p1, "HUB"

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->tittle:Ljava/lang/String;

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->t:Z

    .line 13
    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel$b;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->v:Lk4/b;

    .line 14
    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-direct {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serializedComponentType",
            "panelArea"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->r:Z

    .line 25
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->s:Z

    .line 26
    const-string p1, "HUB"

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->tittle:Ljava/lang/String;

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->t:Z

    .line 28
    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel$b;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->v:Lk4/b;

    if-eqz p2, :cond_0

    .line 29
    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "PanelArea can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serializedComponentType",
            "tittle"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->r:Z

    .line 17
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->s:Z

    .line 18
    const-string p1, "HUB"

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->tittle:Ljava/lang/String;

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->t:Z

    .line 20
    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel$b;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->v:Lk4/b;

    .line 21
    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->tittle:Ljava/lang/String;

    .line 22
    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-direct {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "serializedComponentType",
            "tittle",
            "panelArea"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->r:Z

    .line 33
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->s:Z

    .line 34
    const-string p1, "HUB"

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->tittle:Ljava/lang/String;

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->t:Z

    .line 36
    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel$b;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->v:Lk4/b;

    if-eqz p3, :cond_0

    .line 37
    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    .line 38
    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->tittle:Ljava/lang/String;

    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "PanelArea can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic z0(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->u:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public A0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-direct {v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->h(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    return-object p0
.end method

.method public B0(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->h(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    return-object p0
.end method

.method public C()Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->tittle:Ljava/lang/String;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->o()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    return-object v0
.end method

.method public C0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->t:Z

    return v0
.end method

.method public D(Landroid/widget/FrameLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "screenArea"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public D0(I)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    return-object p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public E0()I
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public F0(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tittle"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->tittle:Ljava/lang/String;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public G(Landroid/widget/FrameLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "screenArea"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->v(Landroid/widget/FrameLayout;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->A(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public J(Lo4/b;Li4/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "engineUpdateData",
            "panelsControllerListener"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->D(Lo4/b;Li4/e;)V

    return-void
.end method

.method public S()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->tittle:Ljava/lang/String;

    return-object v0
.end method

.method public Y()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->Y()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u()V

    return-void
.end method

.method public Z()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->h0()V

    return-void
.end method

.method public a(Lk4/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->r0(Lk4/c;)V

    return-void
.end method

.method public a0(Lo4/b;Li4/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "engineUpdateData",
            "panelsControllerListener"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k0(Lo4/b;Li4/e;)V

    return-void
.end method

.method public b(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelArea"
        }
    .end annotation

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Override!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b0()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->r:Z

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->S()Z

    return-void
.end method

.method public c0(Landroid/app/Activity;Landroid/view/LayoutInflater;Li4/a;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "layoutInflater",
            "editor3DScreen"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->K()Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->F(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object p1

    return-object p1
.end method

.method public d0(Landroid/app/Activity;Landroid/view/LayoutInflater;Li4/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "layoutInflater",
            "editor3DScreen"
        }
    .end annotation

    return-void
.end method

.method public e(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->s(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->D0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public e0(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "json",
            "jsonObj"
        }
    .end annotation

    const-string p1, "panelArea"

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    :try_start_0
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public f(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z

    move-result p1

    return p1
.end method

.method public f0(Landroid/app/Activity;Landroid/view/LayoutInflater;Li4/a;Landroid/widget/FrameLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "layoutInflater",
            "editor3DScreen",
            "parent"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->K()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->K()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u()V

    return-void
.end method

.method public g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->E(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object p1

    return-object p1
.end method

.method public g0()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->g0()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->u()V

    return-void
.end method

.method public h(Lj4/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeDirection"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->y0(Lj4/a;)V

    return-void
.end method

.method public i(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->t(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Z

    move-result p1

    return p1
.end method

.method public i0()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->i0()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->m0()V

    :cond_0
    return-void
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->R()Z

    move-result v0

    return v0
.end method

.method public j0()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->n0()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iget v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->serializedSelectedPanelIndex:I

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->serializedSelectedPanelIndex:I

    return-void
.end method

.method public k(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Li4/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "screenArea",
            "activity",
            "context",
            "layoutInflater",
            "editor3DScreen",
            "panelsControllerListener"
        }
    .end annotation

    iput-object p6, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->i:Li4/e;

    return-void
.end method

.method public k0()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->k0()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->o0()V

    return-void
.end method

.method public l(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->s(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->D0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public l0()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->l0()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->p0()V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->A0()V

    return-void
.end method

.method public n(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->s0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z

    move-result p1

    return p1
.end method

.method public n0(Landroid/app/Activity;Landroid/view/LayoutInflater;Li4/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "layoutInflater",
            "editor3DScreen"
        }
    .end annotation

    return-void
.end method

.method public o(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iget-object v2, v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->B(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->B(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    return-object p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->G(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public p(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Li4/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "screenArea",
            "activity",
            "context",
            "layoutInflater",
            "editor3DScreen",
            "panelsControllerListener"
        }
    .end annotation

    iput-object p6, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->i:Li4/e;

    return-void
.end method

.method public p0(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "activity",
            "context",
            "layoutInflater",
            "editor3DScreen"
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->p0(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->r:Z

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->K0()Z

    return-void
.end method

.method public q(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->t(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->E0(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public q0(Ln4/f;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelIntent"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w0(Ln4/f;)Z

    move-result p1

    return p1
.end method

.method public s0(Landroid/app/Activity;Landroid/view/LayoutInflater;Li4/a;Landroid/widget/FrameLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "layoutInflater",
            "editor3DScreen",
            "parent"
        }
    .end annotation

    invoke-static {p4, p1}, LVc/e;->l(Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->K0()Z

    return-void
.end method

.method public v(Lo4/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelsBundle"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->v(Lo4/e;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->k(Lo4/e;)V

    return-void
.end method

.method public v0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->r:Z

    return-void
.end method

.method public w()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public w0(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "activity",
            "context",
            "layoutInflater",
            "editor3DScreen"
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->w0(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->r:Z

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->S()Z

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->i:Li4/e;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-interface {p1, p2}, Li4/e;->t(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->i:Li4/e;

    invoke-interface {p1}, Li4/e;->a()V

    :cond_0
    return-void
.end method

.method public x0(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;FFFFFFFFLandroid/widget/FrameLayout;Landroid/view/View;Li4/e;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "screenArea",
            "activity",
            "context",
            "layoutInflater",
            "editor3DScreen",
            "x",
            "y",
            "w",
            "h",
            "ax",
            "ay",
            "aw",
            "ah",
            "panelContentLayout",
            "fullPanelArea",
            "panelsControllerListener"
        }
    .end annotation

    move-object v0, p0

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->i:Li4/e;

    iget-object v3, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move v4, p7

    iput v4, v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->x:F

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v1, v4

    add-float/2addr v4, p8

    iput v4, v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->y:F

    iget-object v3, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move v4, p9

    iput v4, v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->width:F

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    sub-float v1, p10, v1

    iput v1, v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->height:F

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iget-object v3, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->v:Lk4/b;

    iget-boolean v4, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->r:Z

    move-object p7, v1

    move-object p8, p2

    move-object p9, p3

    move-object p10, p4

    move-object/from16 p11, p5

    move-object/from16 p12, p6

    move-object/from16 p13, p17

    move-object/from16 p14, v3

    move/from16 p15, v4

    invoke-virtual/range {p7 .. p15}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->U0(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Li4/e;Lk4/b;Z)V

    iget-boolean v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->s:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->r:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->K0()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->s:Z

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->S()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->s:Z

    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->R()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;)V

    invoke-static {v1}, LN7/c;->c0(Ljava/lang/Runnable;)V

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->S()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->S()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->S()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->u:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->e:Landroid/widget/TextView;

    const-string v2, "Unamed panel"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public y(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Lp4/c;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "activity",
            "context",
            "layoutInflater",
            "editor3DScreen",
            "panelToPanelArea"
        }
    .end annotation

    iput-object p6, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->h:Lp4/c;

    const v0, 0x7f0c0081

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p6, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->c:Landroid/view/View;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel$d;

    invoke-direct {v1, p0, p6}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;Lp4/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->c:Landroid/view/View;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel$e;

    invoke-direct {v1, p0, p6}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;Lp4/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->c:Landroid/view/View;

    const v1, 0x7f090544

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->S()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->c:Landroid/view/View;

    const v1, 0x7f09025a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->c:Landroid/view/View;

    const v1, 0x7f090130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->g:Landroid/widget/ImageView;

    if-eqz p6, :cond_2

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel$f;

    invoke-direct {v1, p0, p6}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel$f;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;Lp4/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual/range {p0 .. p5}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->w0(Landroid/widget/LinearLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;)V

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;->TopBar:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->o:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$g;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->c:Landroid/view/View;

    return-object p1
.end method

.method public y0(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;FFFFFFFFLandroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "screenArea",
            "activity",
            "context",
            "layoutInflater",
            "editor3DScreen",
            "x",
            "y",
            "w",
            "h",
            "ax",
            "ay",
            "aw",
            "ah",
            "panelContentLayout",
            "fullPanelArea"
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->i:Li4/e;

    iput-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->i:Li4/e;

    return-void
.end method

.method public z(Lo4/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelsBundle"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->z(Lo4/e;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->n(Lo4/e;)V

    return-void
.end method
