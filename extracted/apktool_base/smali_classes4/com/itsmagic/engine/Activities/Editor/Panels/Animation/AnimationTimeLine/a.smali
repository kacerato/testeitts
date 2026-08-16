.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;
    }
.end annotation


# static fields
.field public static final A0:Ljava/lang/Class;

.field public static final B0:LAc/b;

.field public static final C0:LAc/b;

.field public static final D0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv4/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final z0:Ljava/lang/String; = "AnimationTimeLine"


# instance fields
.field public X:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

.field public Y:Landroid/widget/LinearLayout;

.field public final Z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv4/b;",
            ">;"
        }
    .end annotation
.end field

.field public a0:Landroidx/recyclerview/widget/RecyclerView;

.field public b0:LF7/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LF7/l<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;",
            ">;"
        }
    .end annotation
.end field

.field public c0:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

.field public d0:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

.field public e0:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

.field public f0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public g0:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

.field public final h0:F

.field public i0:F

.field public j0:Landroid/widget/LinearLayout;

.field public k0:LM7/p;

.field public l0:I

.field public m0:LM7/e;

.field public n0:LM7/c;

.field public o0:LE5/g;

.field public p0:Landroid/view/View;

.field public q0:LC5/b;

.field public r0:LE5/g;

.field public s0:Landroid/view/View;

.field public t0:LC5/b;

.field public u0:LL8/e;

.field public v0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LM7/g;",
            ">;"
        }
    .end annotation
.end field

.field public w0:I

.field public final x0:Lv4/c;

.field public y0:LM7/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->A0:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$k;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$k;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$k;)V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->B0:LAc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY_DARK:LAc/b;

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->C0:LAc/b;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->D0:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 9
    const-string v0, "Animation editor"

    const-string v1, "AnimationTimeLine"

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->Z:Ljava/util/List;

    const v0, 0x3c888889

    .line 11
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->h0:F

    .line 12
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->i0:F

    const/high16 v0, 0x41000000    # 8.0f

    .line 13
    invoke-static {v0}, LNc/b;->k0(F)I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->l0:I

    .line 14
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->v0:Ljava/util/List;

    .line 15
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$r;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$r;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->x0:Lv4/c;

    const/4 v0, 0x0

    .line 16
    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->c1(Z)V

    return-void
.end method

.method public constructor <init>(LK8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(LK8/a;)V

    .line 2
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->Z:Ljava/util/List;

    const p1, 0x3c888889

    .line 3
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->h0:F

    .line 4
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->i0:F

    const/high16 p1, 0x41000000    # 8.0f

    .line 5
    invoke-static {p1}, LNc/b;->k0(F)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->l0:I

    .line 6
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->v0:Ljava/util/List;

    .line 7
    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$r;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$r;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->x0:Lv4/c;

    const/4 p1, 0x0

    .line 8
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->c1(Z)V

    return-void
.end method

.method public static synthetic A1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->w0:I

    return p0
.end method

.method public static A2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "entryName"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->m2()Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Animation/a;->a:LAc/b;

    invoke-virtual {v0, p0, v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->h2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LAc/b;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static synthetic B1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e3(Ljava/util/List;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public static synthetic C1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->w0:I

    return p1
.end method

.method public static synthetic D1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->X:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    return-object p0
.end method

.method public static synthetic E1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->b3()V

    return-void
.end method

.method public static synthetic F1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->c3()V

    return-void
.end method

.method public static synthetic G1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->a3()V

    return-void
.end method

.method public static synthetic H1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)LL8/e;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->u0:LL8/e;

    return-object p0
.end method

.method public static synthetic I1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;I)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->q2(I)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic J1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)LE5/g;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->o0:LE5/g;

    return-object p0
.end method

.method public static synthetic K1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;Lv4/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->f3(Lv4/b;)V

    return-void
.end method

.method public static synthetic L1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->Z:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic M1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)Lcom/itsmagic/engine/Engines/Engine/Animation/d;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e0:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    return-object p0
.end method

.method public static synthetic N1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->V2()V

    return-void
.end method

.method public static synthetic O1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)LF7/l;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->b0:LF7/l;

    return-object p0
.end method

.method public static synthetic P1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->f0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object p0
.end method

.method public static P2(Lcom/itsmagic/engine/Engines/Engine/Animation/d;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "animation",
            "animationPlayer",
            "animationObject"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->D0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv4/c;

    if-eqz v3, :cond_0

    invoke-interface {v3, p0, p1, p2}, Lv4/c;->h(Lcom/itsmagic/engine/Engines/Engine/Animation/d;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    :goto_2
    move p0, v0

    :goto_3
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->D0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge p0, p2, :cond_3

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lv4/c;

    if-nez p2, :cond_2

    invoke-interface {p1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static synthetic Q1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->g0:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    return-object p0
.end method

.method public static synthetic R1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;IZ)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->r2(IZ)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->M2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p0

    return p0
.end method

.method public static S2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    return-void
.end method

.method public static synthetic T1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;Lcom/itsmagic/engine/Engines/Engine/Animation/d;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->Q2(Lcom/itsmagic/engine/Engines/Engine/Animation/d;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public static T2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    return-void
.end method

.method public static synthetic U1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->O2(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static U2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    return-void
.end method

.method public static W2()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->D0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv4/c;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lv4/c;->i()V

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    :goto_2
    move v1, v0

    :goto_3
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->D0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv4/c;

    if-nez v3, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static X1()Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->D0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv4/c;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lv4/c;->a()Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    :goto_1
    move v1, v0

    :goto_2
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->D0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv4/c;

    if-nez v3, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static Y1(I)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameTime"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->D0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv4/c;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0}, Lv4/c;->f(I)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    :goto_1
    move p0, v0

    :goto_2
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->D0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_3

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv4/c;

    if-nez v2, :cond_2

    invoke-interface {v1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d2()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->D0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv4/c;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lv4/c;->d()V

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    :goto_2
    move v1, v0

    :goto_3
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->D0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv4/c;

    if-nez v3, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private e3(Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entries",
            "content"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LC5/b;",
            ">;",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, LC5/b;

    iget-object v2, v5, LC5/b;->n:LC5/b$a;

    sget-object v3, LC5/b$a;->Vector:LC5/b$a;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v3

    invoke-static {p2, v2, v5, v0, v3}, LC5/h;->y(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    sget-object v3, LC5/b$a;->Component:LC5/b$a;

    if-ne v2, v3, :cond_1

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$w;

    invoke-direct {v8, p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$w;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;Ljava/util/List;Landroid/widget/LinearLayout;)V

    const/4 v6, 0x0

    move-object v3, p2

    invoke-static/range {v3 .. v8}, LC5/h;->w(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;LC5/n;)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v8

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, p2

    invoke-static/range {v3 .. v8}, LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public static g3(LAc/b;LAc/b;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "objectUID",
            "componentUID",
            "entryName",
            "type",
            "value"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->m2()Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->i3(LAc/b;LAc/b;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static h3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "object",
            "component",
            "entryName",
            "type",
            "value"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->m2()Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->j3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static i2()Lcom/itsmagic/engine/Engines/Engine/Animation/d;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->D0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv4/c;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lv4/c;->k()Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    :goto_1
    move v1, v0

    :goto_2
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->D0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv4/c;

    if-nez v3, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static j2()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->D0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv4/c;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lv4/c;->b()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    :goto_1
    move v1, v0

    :goto_2
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->D0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv4/c;

    if-nez v3, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static k2()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->D0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv4/c;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lv4/c;->l()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    :goto_1
    move v1, v0

    :goto_2
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->D0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv4/c;

    if-nez v3, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static k3(LAc/b;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "objectUID",
            "position"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->m2()Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v1, "p"

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->VEC3:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->q3(LAc/b;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static l2()Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->D0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv4/c;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lv4/c;->j()Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    :goto_1
    move v1, v0

    :goto_2
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->D0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv4/c;

    if-nez v3, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static l3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "position"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->m2()Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v1, "p"

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->VEC3:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->r3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static m2()Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->D0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv4/c;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lv4/c;->getInstance()Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    :goto_1
    move v1, v0

    :goto_2
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->D0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv4/c;

    if-nez v3, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static m3(LAc/b;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "objectUID",
            "rotation"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->m2()Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v1, "r"

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->QUAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->q3(LAc/b;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static n3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "rotation"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->m2()Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v1, "r"

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->QUAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->r3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static o3(LAc/b;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "objectUID",
            "scale"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->m2()Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v1, "s"

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->VEC3:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->q3(LAc/b;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic p1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e2()V

    return-void
.end method

.method public static p2()I
    .locals 1

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->m2()Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->w0:I

    return v0
.end method

.method public static p3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "scale"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->m2()Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v1, "s"

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->VEC3:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->r3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic q1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;I)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->a2(I)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->b2()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->c0:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    return-object p0
.end method

.method public static synthetic t1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->c0:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    return-object p1
.end method

.method public static synthetic u1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->d0:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    return-object p0
.end method

.method public static u2(LAc/b;LAc/b;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "objectUID",
            "componentUID",
            "entryName"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->m2()Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->w0:I

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->w2(LAc/b;LAc/b;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic v1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->d0:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    return-object p1
.end method

.method public static v2(LAc/b;LAc/b;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "objectUID",
            "componentUID",
            "entryName"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->m2()Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->g2(LAc/b;LAc/b;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static synthetic w1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->V1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public static synthetic x1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->X2()V

    return-void
.end method

.method public static synthetic y1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;IZ)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->s2(Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;IZ)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    move-result-object p0

    return-object p0
.end method

.method public static y2(LAc/b;LAc/b;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "objectUID",
            "componentUID",
            "entryName"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->m2()Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v1, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->w0:I

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->w2(LAc/b;LAc/b;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic z1(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->G2(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)V

    return-void
.end method

.method public static z2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "entryName"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->m2()Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Animation/a;->a:LAc/b;

    iget v2, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->w0:I

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->x2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LAc/b;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public B0()V
    .locals 0

    return-void
.end method

.method public B2()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->Z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->d3()V

    return-void
.end method

.method public C0()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0034

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0903df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->X:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    const v1, 0x7f0902b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->a0:Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090379

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->Y:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->w0:I

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->F2(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->E2(Landroid/view/View;)V

    const v1, 0x7f090556

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->j0:Landroid/widget/LinearLayout;

    new-instance v2, LM7/h;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v1, v3}, LM7/h;-><init>(Landroid/widget/LinearLayout;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->y0:LM7/h;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->H2()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->s3()V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->D0:Ljava/util/List;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->x0:Lv4/c;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->D2()V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->a0:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    new-instance v2, LF7/l;

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$s;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)V

    invoke-direct {v2, v1, v3}, LF7/l;-><init>(Landroidx/recyclerview/widget/RecyclerView;LF7/k;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->b0:LF7/l;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->X2()V

    :cond_0
    return-object v0
.end method

.method public final C2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "objectsToInclude"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Ljava/util/Set<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;)V"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->f0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final D2()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->X:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$l;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$l;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->setInteractionListener(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView$c;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->X:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->l0:I

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->setPinSize(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->X:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->setFramesPerSecond(I)V

    return-void
.end method

.method public E0()V
    .locals 0

    return-void
.end method

.method public final E2(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const v0, 0x7f090229

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->s0:Landroid/view/View;

    new-instance p1, LC5/b;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$y;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$y;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)V

    const-string v1, ""

    sget-object v2, LC5/b$a;->SLInt:LC5/b$a;

    invoke-direct {p1, v0, v1, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->t0:LC5/b;

    new-instance p1, LE5/g;

    invoke-direct {p1}, LE5/g;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->r0:LE5/g;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->t0:LC5/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->s0:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, LE5/g;->d(LC5/b;Landroid/view/View;Landroid/widget/TextView;)V

    return-void
.end method

.method public final F2(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const v0, 0x7f09022d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->p0:Landroid/view/View;

    new-instance p1, LC5/b;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$x;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$x;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)V

    const-string v1, ""

    sget-object v2, LC5/b$a;->SLInt:LC5/b$a;

    invoke-direct {p1, v0, v1, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->q0:LC5/b;

    new-instance p1, LE5/g;

    invoke-direct {p1}, LE5/g;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->o0:LE5/g;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->q0:LC5/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->p0:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, LE5/g;->d(LC5/b;Landroid/view/View;Landroid/widget/TextView;)V

    return-void
.end method

.method public G0()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->X:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->b0:LF7/l;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->D0:Ljava/util/List;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->x0:Lv4/c;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final G2(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->Y:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->c0:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->I2(Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;)Z

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    if-nez p1, :cond_0

    if-eqz v1, :cond_0

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->f()Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    move-result-object v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Easing"

    invoke-static {v5, v3, v4}, LJ9/c;->b(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;Landroid/content/Context;)LC5/b;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$t;

    invoke-direct {v4, p0, v1, v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$t;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;Z[Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)V

    const-string v5, "Event"

    sget-object v6, LC5/b$a;->SLString:LC5/b$a;

    invoke-direct {v3, v4, v5, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$u;

    invoke-direct {v4, p0, v1, p1, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$u;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;ZLcom/itsmagic/engine/Engines/Engine/Animation/Frame;[Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)V

    const-string v1, "Event arg"

    sget-object v2, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v3, v4, v1, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$v;

    invoke-direct {v2, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$v;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)V

    const-string p1, "Interpolate event"

    sget-object v3, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v1, v2, p1, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->Y:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e3(Ljava/util/List;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public final H2()V
    .locals 14

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v1, LM7/c;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$a;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)V

    sget-object v3, LM7/c$b;->Disconnected:LM7/c$b;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f070091

    invoke-direct {v1, v5, v2, v3, v4}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->B0:LAc/b;

    invoke-virtual {v1, v2}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object v1

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->C0:LAc/b;

    invoke-virtual {v1, v4}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060232

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1, v5}, LM7/c;->m0(I)LM7/c;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f060231

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1, v5}, LM7/c;->Y(I)LM7/c;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->n0:LM7/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->n0:LM7/c;

    invoke-virtual {v1}, LM7/g;->g()V

    new-instance v1, LM7/e;

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b;

    invoke-direct {v5, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f070222

    const-string v10, ""

    invoke-direct {v1, v9, v10, v5, v8}, LM7/e;-><init>(ILjava/lang/String;LM7/f;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, LM7/e;->T(LAc/b;)LM7/e;

    move-result-object v1

    invoke-virtual {v1, v4}, LM7/e;->M(LAc/b;)LM7/e;

    move-result-object v1

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_ICON_TINT:LAc/b;

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v8

    invoke-direct {v5, v8}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    invoke-virtual {v1, v5}, LM7/e;->b0(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/e;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->m0:LM7/e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LM7/c;

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$c;

    invoke-direct {v5, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0701ee

    invoke-direct {v1, v9, v5, v3, v8}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object v1

    invoke-virtual {v1, v4}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1, v5}, LM7/c;->m0(I)LM7/c;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1, v5}, LM7/c;->Y(I)LM7/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LM7/o;

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$d;

    invoke-direct {v5, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)V

    sget-object v8, LM7/c$b;->Left:LM7/c$b;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0701dc

    invoke-direct {v1, v10, v5, v8, v9}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object v5

    invoke-virtual {v5, v4}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object v5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v5, v9}, LM7/c;->m0(I)LM7/c;

    move-result-object v5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v5, v9}, LM7/c;->Y(I)LM7/c;

    new-instance v5, LM7/o;

    new-instance v9, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$e;

    invoke-direct {v9, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)V

    sget-object v10, LM7/c$b;->Middle:LM7/c$b;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0701d6

    invoke-direct {v5, v12, v9, v10, v11}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v5, v2}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object v9

    invoke-virtual {v9, v4}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object v9

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v9, v10}, LM7/c;->m0(I)LM7/c;

    move-result-object v9

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v9, v10}, LM7/c;->Y(I)LM7/c;

    new-instance v9, LM7/o;

    new-instance v10, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$f;

    invoke-direct {v10, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$f;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)V

    sget-object v11, LM7/c$b;->Right:LM7/c$b;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0701db

    invoke-direct {v9, v13, v10, v11, v12}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v9, v2}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object v10

    invoke-virtual {v10, v4}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object v10

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v10, v12}, LM7/c;->m0(I)LM7/c;

    move-result-object v10

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v10, v12}, LM7/c;->Y(I)LM7/c;

    new-instance v10, LM7/p;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v10, v12}, LM7/p;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->k0:LM7/p;

    invoke-virtual {v10, v1}, LM7/p;->s(LM7/g;)LM7/p;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->k0:LM7/p;

    invoke-virtual {v1, v5}, LM7/p;->s(LM7/g;)LM7/p;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->k0:LM7/p;

    invoke-virtual {v1, v9}, LM7/p;->s(LM7/g;)LM7/p;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->k0:LM7/p;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LM7/c;

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$g;

    invoke-direct {v5, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$g;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0701a3

    invoke-direct {v1, v10, v5, v8, v9}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object v1

    invoke-virtual {v1, v4}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1, v5}, LM7/c;->m0(I)LM7/c;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1, v5}, LM7/c;->Y(I)LM7/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LM7/c;

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$h;

    invoke-direct {v5, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$h;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0701a4

    invoke-direct {v1, v9, v5, v11, v8}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object v1

    invoke-virtual {v1, v4}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1, v5}, LM7/c;->m0(I)LM7/c;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1, v5}, LM7/c;->Y(I)LM7/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LM7/c;

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$i;

    invoke-direct {v5, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$i;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f070097

    invoke-direct {v1, v9, v5, v3, v8}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object v1

    invoke-virtual {v1, v4}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1, v5}, LM7/c;->m0(I)LM7/c;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1, v5}, LM7/c;->Y(I)LM7/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LM7/c;

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$j;

    invoke-direct {v5, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$j;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f070169

    invoke-direct {v1, v9, v5, v3, v8}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object v1

    invoke-virtual {v1, v4}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, LM7/c;->m0(I)LM7/c;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, LM7/c;->Y(I)LM7/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->v0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->v0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x2

    invoke-interface {v0, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->y0:LM7/h;

    invoke-virtual {v1, v0}, LM7/h;->g(Ljava/util/List;)V

    return-void
.end method

.method public final I2(Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeline"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->j()Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    move-result-object p1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->EVENTS:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public J0()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->g0:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;->saveAnimations()V

    :cond_0
    return-void
.end method

.method public final J2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    invoke-static {p1}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->f0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->f0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public final K2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o",
            "compareTo"
        }
    .end annotation

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->K2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final L2(Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeline"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->f()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public M0()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M0()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->y0:LM7/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LM7/h;->n()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->X:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->z()V

    :cond_1
    return-void
.end method

.method public final M2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->g0:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->K2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p1

    return p1
.end method

.method public N0()V
    .locals 0

    return-void
.end method

.method public N2(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->w0:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->V2()V

    iget p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->w0:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->c2(IZ)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e0:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->f0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$n;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$n;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)V

    invoke-static {p1}, LK8/a;->I(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e0:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->w0:I

    int-to-float v0, v0

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->g:F

    :cond_0
    iget p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->w0:I

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->q2(I)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->d0:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->o0:LE5/g;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, LE5/g;->h()V

    :cond_1
    return-void
.end method

.method public final O2(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;",
            ")",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->w(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;

    invoke-virtual {p1}, LF7/i;->e()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, LF7/i;->q(I)V

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->w(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, LF7/i;->r(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final Q2(Lcom/itsmagic/engine/Engines/Engine/Animation/d;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "animation",
            "animationPlayer",
            "animationObject"
        }
    .end annotation

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e0:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    new-instance p1, LL8/e;

    invoke-direct {p1}, LL8/e;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->u0:LL8/e;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->g0:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->f0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->c0:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->d0:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->X2()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->s3()V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->r0:LE5/g;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LE5/g;->h()V

    :cond_0
    invoke-static {}, LA5/a;->y1()V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->n0:LM7/c;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, LM7/g;->p()V

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->v0:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->v0:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LM7/g;

    invoke-virtual {p2}, LM7/g;->p()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public R2()V
    .locals 0

    return-void
.end method

.method public final V1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e0:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    if-eqz v0, :cond_2

    invoke-static {p1}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Animation/a;->e:LAc/b;

    const-string v1, "e"

    invoke-virtual {p0, p1, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->h2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LAc/b;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;-><init>()V

    new-instance v3, LAc/b;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->j()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, LAc/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->n(LAc/b;)V

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->l(LAc/b;)V

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->m(Ljava/lang/String;)V

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->EVENTS:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->o(Lcom/itsmagic/engine/Engines/Engine/Animation/c;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e0:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->h()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->l()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->c0:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->d0:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->X2()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final V2()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->X:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->w0:I

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->setSelected(I)V

    :cond_0
    return-void
.end method

.method public final W1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/Map;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "objectNodes",
            "objectsToInclude"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Ljava/util/Map<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->A(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;

    if-nez v3, :cond_2

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->A(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->w(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->W1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/Map;Ljava/util/Set;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final X2()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->b0:LF7/l;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$p;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$p;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final Y2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LAc/b;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "componentUID"
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Animation/a;->a:LAc/b;

    invoke-virtual {p2, v0}, LAc/b;->W(LAc/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Transform"

    return-object p1

    :cond_1
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Animation/a;->e:LAc/b;

    invoke-virtual {p2, v0}, LAc/b;->W(LAc/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "Extras"

    return-object p1

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->f2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LAc/b;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getDisplayableTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p2}, LAc/b;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Z1()V
    .locals 7

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->Z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e0:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->d3()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->c0:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->h()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->m()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->p()V

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->c0:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->h()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x64

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->Z2(I)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    move-result-object v1

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->Z:Ljava/util/List;

    new-instance v4, Lv4/b;

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->c0:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e0:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->h()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object v6

    invoke-direct {v4, v2, v1, v5, v6}, Lv4/b;-><init>(ILcom/itsmagic/engine/Engines/Engine/Animation/Frame;Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e0:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->i:Z

    if-eqz v1, :cond_5

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->j:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->a3()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->b3()V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->c3()V

    :goto_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->d3()V

    return-void
.end method

.method public final Z2(I)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameTime"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->c0:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->f()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->i()I

    move-result v4

    if-ne v4, p1, :cond_2

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->c0:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->I2(Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->t2(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final a2(I)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameTime"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->c0:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->s2(Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;IZ)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->d0:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->Z1()V

    return-object p1
.end method

.method public final a3()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->k0:LM7/p;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LM7/p;->y(I)V

    return-void
.end method

.method public final b2()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e0:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->f0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v1}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_7

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e0:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->h()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->k()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_e

    iget-object v8, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e0:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->h()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->j(I)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->L2(Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;)Z

    move-result v9

    if-nez v9, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->d()LAc/b;

    move-result-object v9

    if-nez v9, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->e()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->i()LAc/b;

    move-result-object v10

    if-nez v10, :cond_4

    goto/16 :goto_2

    :cond_4
    iget-object v10, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->f0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->i()LAc/b;

    move-result-object v11

    invoke-static {v10, v11}, Lgb/e;->l(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LAc/b;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v10

    invoke-static {v10}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p0, v10}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->J2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v11

    if-nez v11, :cond_6

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p0, v10, v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->C2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/Set;)V

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;

    if-nez v11, :cond_7

    invoke-static {v10}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->A(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->d()LAc/b;

    move-result-object v11

    invoke-virtual {v11}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/LinkedHashMap;

    if-nez v12, :cond_8

    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v2, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual {v12, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;

    if-nez v13, :cond_b

    sget-object v13, Lcom/itsmagic/engine/Engines/Engine/Animation/a;->a:LAc/b;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->d()LAc/b;

    move-result-object v14

    invoke-virtual {v13, v14}, LAc/b;->W(LAc/b;)Z

    move-result v13

    if-eqz v13, :cond_9

    const v13, 0x7f07026e

    goto :goto_1

    :cond_9
    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->d()LAc/b;

    move-result-object v13

    invoke-virtual {p0, v10, v13}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->f2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LAc/b;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v13

    if-eqz v13, :cond_a

    invoke-virtual {v13}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getIconResource()I

    move-result v13

    goto :goto_1

    :cond_a
    move v13, v6

    :goto_1
    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->d()LAc/b;

    move-result-object v14

    invoke-virtual {p0, v10, v14}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->Y2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LAc/b;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v13}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->z(Ljava/lang/String;I)Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/LinkedHashMap;

    if-nez v10, :cond_c

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v3, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    invoke-virtual {v10, v9}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    invoke-static {v9, v8}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->B(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;)Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;

    move-result-object v8

    invoke-virtual {v10, v9, v8}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_e
    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->f0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    return-object v0

    :cond_f
    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->f0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;

    if-nez v5, :cond_10

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->f0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->A(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;

    move-result-object v5

    iget-object v7, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->f0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    iget-object v7, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->f0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0, v7, v1, v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->W1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/Map;Ljava/util/Set;)V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/LinkedHashMap;

    const/4 v9, 0x1

    if-eqz v8, :cond_17

    invoke-virtual {v8}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_17

    new-instance v10, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v10}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sget-object v11, Lcom/itsmagic/engine/Engines/Engine/Animation/a;->a:LAc/b;

    invoke-virtual {v11}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;

    if-eqz v11, :cond_11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    move v11, v6

    :goto_4
    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v12

    if-ge v11, v12, :cond_13

    invoke-virtual {v7, v11}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v12

    if-eqz v12, :cond_12

    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->j()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;

    if-eqz v12, :cond_12

    invoke-interface {v10, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_13
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_14
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;

    invoke-interface {v10, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_14

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_15
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/LinkedHashMap;

    if-eqz v10, :cond_16

    invoke-virtual {v10}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_16

    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->w(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_16
    invoke-static {v8}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->w(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    xor-int/2addr v10, v9

    invoke-virtual {v8, v10}, LF7/i;->r(Z)V

    iget-object v10, v8, LF7/i;->f:LF7/h;

    iput-boolean v9, v10, LF7/h;->c:Z

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->w(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_17
    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;->w(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$z;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v9

    invoke-virtual {v4, v7}, LF7/i;->r(Z)V

    iget-object v4, v4, LF7/i;->f:LF7/h;

    iput-boolean v9, v4, LF7/h;->c:Z

    goto/16 :goto_3

    :cond_18
    invoke-virtual {v5, v6}, LF7/i;->q(I)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    :goto_7
    return-object v0
.end method

.method public final b3()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->k0:LM7/p;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LM7/p;->y(I)V

    return-void
.end method

.method public final c2(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "frame",
            "smooth"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->X:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->t(IZ)V

    return-void
.end method

.method public final c3()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->k0:LM7/p;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LM7/p;->y(I)V

    return-void
.end method

.method public d3()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->X:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$o;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$o;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e2()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->Z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e0:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->g0:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->u0:LL8/e;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->f0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->c0:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->d0:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->Z1()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->X2()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->s3()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->n0:LM7/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LM7/g;->g()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->v0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->v0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM7/g;

    invoke-virtual {v1}, LM7/g;->g()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LAc/b;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "componentUID"
        }
    .end annotation

    invoke-static {p1}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->e(LAc/b;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public final f3(Lv4/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyFrame"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p1, Lv4/b;->b:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$m;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;Lv4/b;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->X:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    sget-object v1, Lr4/a$e;->Left:Lr4/a$e;

    invoke-static {p1, v1, v0}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final g2(LAc/b;LAc/b;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "objectUID",
            "componentUID",
            "entryName"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e0:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->h()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->k()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e0:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->h()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->j(I)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->i()LAc/b;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->d()LAc/b;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->i()LAc/b;

    move-result-object v4

    invoke-virtual {v4, p1}, LAc/b;->W(LAc/b;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->d()LAc/b;

    move-result-object v4

    invoke-virtual {v4, p2}, LAc/b;->W(LAc/b;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v1
.end method

.method public final h2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LAc/b;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "object",
            "componentUID",
            "entryName"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e0:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->j()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e0:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->h()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->k()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e0:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->h()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->j(I)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->i()LAc/b;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->d()LAc/b;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->i()LAc/b;

    move-result-object v4

    invoke-virtual {v4, p1}, LAc/b;->X(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->d()LAc/b;

    move-result-object v4

    invoke-virtual {v4, p2}, LAc/b;->W(LAc/b;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v1
.end method

.method public final i3(LAc/b;LAc/b;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "objectUID",
            "componentUID",
            "entryName",
            "type",
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e0:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_6

    if-nez p3, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->n2(LAc/b;LAc/b;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->w0:I

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->s2(Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;IZ)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    move-result-object p2

    if-nez p2, :cond_2

    return v1

    :cond_2
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$q;->a:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, v0, p4

    packed-switch p4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p5, Ljava/lang/String;

    invoke-virtual {p2, p5}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->y(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    if-eqz p5, :cond_3

    check-cast p5, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->a()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object p4

    goto :goto_0

    :cond_3
    const/4 p4, 0x0

    :goto_0
    invoke-virtual {p2, p4}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->C(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;)V

    goto :goto_1

    :pswitch_2
    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p2, p4}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->z(I)V

    goto :goto_1

    :pswitch_3
    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p4

    invoke-virtual {p2, p4}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->w(F)V

    goto :goto_1

    :pswitch_4
    check-cast p5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {p5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->k(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->u(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto :goto_1

    :pswitch_5
    check-cast p5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-static {p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->D(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    goto :goto_1

    :pswitch_6
    check-cast p5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-static {p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->D(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    goto :goto_1

    :pswitch_7
    check-cast p5, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {p5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->k(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->B(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    goto :goto_1

    :pswitch_8
    check-cast p5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->E(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    :goto_1
    iget-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->c0:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    if-nez p4, :cond_4

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->c0:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    :cond_4
    iget-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->c0:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    if-ne p4, p1, :cond_5

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->d0:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->Z1()V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->X2()V

    :goto_2
    return p3

    :cond_6
    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "object",
            "component",
            "entryName",
            "type",
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e0:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p2, :cond_6

    if-nez p3, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, LAc/b;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->j()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, LAc/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->o2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LAc/b;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->w0:I

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->s2(Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;IZ)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    move-result-object p2

    if-nez p2, :cond_2

    return v1

    :cond_2
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$q;->a:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, v0, p4

    packed-switch p4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p5, Ljava/lang/String;

    invoke-virtual {p2, p5}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->y(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    if-eqz p5, :cond_3

    check-cast p5, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->a()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object p4

    goto :goto_0

    :cond_3
    const/4 p4, 0x0

    :goto_0
    invoke-virtual {p2, p4}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->C(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;)V

    goto :goto_1

    :pswitch_2
    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p2, p4}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->z(I)V

    goto :goto_1

    :pswitch_3
    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p4

    invoke-virtual {p2, p4}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->w(F)V

    goto :goto_1

    :pswitch_4
    check-cast p5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {p5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->k(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->u(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto :goto_1

    :pswitch_5
    check-cast p5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-static {p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->D(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    goto :goto_1

    :pswitch_6
    check-cast p5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-static {p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->D(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    goto :goto_1

    :pswitch_7
    check-cast p5, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {p5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->k(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->B(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    goto :goto_1

    :pswitch_8
    check-cast p5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->E(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    :goto_1
    iget-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->c0:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    if-nez p4, :cond_4

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->c0:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    :cond_4
    iget-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->c0:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    if-ne p4, p1, :cond_5

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->d0:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->Z1()V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->X2()V

    :goto_2
    return p3

    :cond_6
    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;-><init>()V

    return-object v0
.end method

.method public n1()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->X:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e0:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->i0:F

    invoke-static {}, LK8/d;->e()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->i0:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e0:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->g:F

    float-to-int v0, v0

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->w0:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->w0:I

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->X:Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/ATLTimelineCanvasView;->setSelected(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->o0:LE5/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LE5/g;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    const v0, 0x3c888889

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->i0:F

    :cond_1
    return-void
.end method

.method public final n2(LAc/b;LAc/b;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "objectUID",
            "componentUID",
            "entryName",
            "type"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->g2(LAc/b;LAc/b;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;-><init>()V

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->n(LAc/b;)V

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->l(LAc/b;)V

    invoke-virtual {v0, p3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->m(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->o(Lcom/itsmagic/engine/Engines/Engine/Animation/c;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e0:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->h()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->l()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->X2()V

    return-object v0
.end method

.method public o1()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e0:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->i:Z

    if-eqz v1, :cond_1

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->j:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->a3()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->b3()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->c3()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final o2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LAc/b;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "object",
            "componentUID",
            "entryName",
            "type"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->h2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LAc/b;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;-><init>()V

    new-instance v1, LAc/b;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->j()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, LAc/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->n(LAc/b;)V

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->l(LAc/b;)V

    invoke-virtual {v0, p3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->m(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->o(Lcom/itsmagic/engine/Engines/Engine/Animation/c;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e0:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->h()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->l()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->X2()V

    return-object v0
.end method

.method public final q2(I)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameTime"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->r2(IZ)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->c0:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->I2(Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->t2(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public final q3(LAc/b;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "objectUID",
            "entryName",
            "type",
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e0:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Animation/a;->a:LAc/b;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->n2(LAc/b;LAc/b;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->w0:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->s2(Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;IZ)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    move-result-object p2

    if-nez p2, :cond_2

    return v1

    :cond_2
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$q;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v1, p3

    if-eq p3, v0, :cond_4

    const/4 v1, 0x2

    if-eq p3, v1, :cond_3

    goto :goto_0

    :cond_3
    check-cast p4, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {p4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->k(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->B(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    goto :goto_0

    :cond_4
    check-cast p4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->E(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    :goto_0
    iget-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->c0:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    if-nez p3, :cond_5

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->c0:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    :cond_5
    iget-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->c0:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    if-ne p3, p1, :cond_6

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->d0:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->Z1()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->X2()V

    :goto_1
    return v0
.end method

.method public final r2(IZ)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "frameTime",
            "createIfMissing"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->c0:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-virtual {p0, v0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->s2(Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;IZ)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    move-result-object p1

    return-object p1
.end method

.method public final r3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "object",
            "entryName",
            "type",
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e0:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Animation/a;->a:LAc/b;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->o2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LAc/b;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->w0:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->s2(Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;IZ)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    move-result-object p2

    if-nez p2, :cond_2

    return v1

    :cond_2
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a$q;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v1, p3

    if-eq p3, v0, :cond_4

    const/4 v1, 0x2

    if-eq p3, v1, :cond_3

    goto :goto_0

    :cond_3
    check-cast p4, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {p4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->k(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->B(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    goto :goto_0

    :cond_4
    check-cast p4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->E(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    :goto_0
    iget-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->c0:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    if-nez p3, :cond_5

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->c0:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    :cond_5
    iget-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->c0:Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    if-ne p3, p1, :cond_6

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->d0:Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->Z1()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->X2()V

    :goto_1
    return v0

    :cond_7
    :goto_2
    return v1
.end method

.method public final s2(Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;IZ)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeline",
            "frameTime",
            "createIfMissing"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->f()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->i()I

    move-result v4

    if-ne v4, p2, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    if-eqz p3, :cond_4

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;-><init>()V

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->x(I)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->f()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e0:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->h()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->m()V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->p()V

    :cond_4
    :goto_2
    return-object v0
.end method

.method public final s3()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->m0:LM7/e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e0:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-static {v0, v1}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "Select.."

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->m0:LM7/e;

    invoke-virtual {v1, v0}, LM7/e;->h0(Ljava/lang/String;)V

    return-void
.end method

.method public final t2(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final w2(LAc/b;LAc/b;Ljava/lang/String;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "objectUID",
            "componentUID",
            "entryName",
            "frameTime"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e0:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->g2(LAc/b;LAc/b;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1, p4, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->s2(Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;IZ)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final x2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LAc/b;Ljava/lang/String;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "object",
            "componentUID",
            "entryName",
            "frameTime"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->e0:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->h2(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LAc/b;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1, p4, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->s2(Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;IZ)Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public z(Lo4/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engineUpdateData"
        }
    .end annotation

    return-void
.end method
