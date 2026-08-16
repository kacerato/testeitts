.class public Lz5/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final k0:Ljava/lang/String; = "GameView"

.field public static final l0:Ljava/lang/Class;

.field public static m0:Lz5/g;

.field public static final n0:Lo4/f;

.field public static final o0:Lz5/g;


# instance fields
.field public X:Lz5/g;

.field public final Y:Lc8/b$f;

.field public Z:Z

.field public a0:F

.field public b0:Z

.field public c0:Landroid/widget/VideoView;

.field public d0:Landroid/view/View;

.field public final e0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public f0:Z

.field public g0:Lo4/f;

.field public final h0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$i;

.field public final i0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$d;

.field public final j0:Lcom/itsmagic/engine/Engines/Engine/World/World$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lz5/a;

    sput-object v0, Lz5/a;->l0:Ljava/lang/Class;

    new-instance v0, Lz5/a$a;

    invoke-direct {v0}, Lz5/a$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$k;)V

    new-instance v0, Lo4/f;

    invoke-direct {v0}, Lo4/f;-><init>()V

    sput-object v0, Lz5/a;->n0:Lo4/f;

    new-instance v0, Lz5/a$b;

    invoke-direct {v0}, Lz5/a$b;-><init>()V

    sput-object v0, Lz5/a;->o0:Lz5/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 8
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->GAME:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameView"

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lz5/a$c;

    invoke-direct {v0, p0}, Lz5/a$c;-><init>(Lz5/a;)V

    iput-object v0, p0, Lz5/a;->Y:Lc8/b$f;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lz5/a;->a0:F

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lz5/a;->e0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    new-instance v0, Lz5/a$g;

    invoke-direct {v0, p0}, Lz5/a$g;-><init>(Lz5/a;)V

    iput-object v0, p0, Lz5/a;->h0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$i;

    .line 13
    new-instance v0, Lz5/a$h;

    invoke-direct {v0, p0}, Lz5/a$h;-><init>(Lz5/a;)V

    iput-object v0, p0, Lz5/a;->i0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$d;

    .line 14
    new-instance v0, Lz5/a$i;

    invoke-direct {v0, p0}, Lz5/a$i;-><init>(Lz5/a;)V

    iput-object v0, p0, Lz5/a;->j0:Lcom/itsmagic/engine/Engines/Engine/World/World$d;

    const/4 v0, 0x0

    .line 15
    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a1(Z)V

    .line 16
    new-instance v0, Lz5/a$d;

    invoke-direct {v0, p0}, Lz5/a$d;-><init>(Lz5/a;)V

    iput-object v0, p0, Lz5/a;->X:Lz5/g;

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
    new-instance p1, Lz5/a$c;

    invoke-direct {p1, p0}, Lz5/a$c;-><init>(Lz5/a;)V

    iput-object p1, p0, Lz5/a;->Y:Lc8/b$f;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lz5/a;->a0:F

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lz5/a;->e0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance p1, Lz5/a$g;

    invoke-direct {p1, p0}, Lz5/a$g;-><init>(Lz5/a;)V

    iput-object p1, p0, Lz5/a;->h0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$i;

    .line 6
    new-instance p1, Lz5/a$h;

    invoke-direct {p1, p0}, Lz5/a$h;-><init>(Lz5/a;)V

    iput-object p1, p0, Lz5/a;->i0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$d;

    .line 7
    new-instance p1, Lz5/a$i;

    invoke-direct {p1, p0}, Lz5/a$i;-><init>(Lz5/a;)V

    iput-object p1, p0, Lz5/a;->j0:Lcom/itsmagic/engine/Engines/Engine/World/World$d;

    return-void
.end method

.method public static synthetic p1(Lz5/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lz5/a;->e0:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic q1(Lz5/a;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lz5/a;->d0:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic r1(Lz5/a;)V
    .locals 0

    invoke-virtual {p0}, Lz5/a;->x1()V

    return-void
.end method

.method public static synthetic s1(Lz5/a;)Landroid/widget/VideoView;
    .locals 0

    iget-object p0, p0, Lz5/a;->c0:Landroid/widget/VideoView;

    return-object p0
.end method

.method public static synthetic t1(Lz5/a;)Z
    .locals 0

    iget-boolean p0, p0, Lz5/a;->f0:Z

    return p0
.end method

.method public static synthetic u1(Lz5/a;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0

    invoke-virtual {p0, p1}, Lz5/a;->w1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method


# virtual methods
.method public A0(Lo4/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engineUpdateData"
        }
    .end annotation

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lz5/a;->y1(Z)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->i1(Z)V

    return-void
.end method

.method public C0()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00c5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lz5/a;->d0:Landroid/view/View;

    const v1, 0x7f0905a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    iput-object v1, p0, Lz5/a;->c0:Landroid/widget/VideoView;

    iget-object v1, p0, Lz5/a;->d0:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lz5/a;->X:Lz5/g;

    sput-object v1, Lz5/a;->m0:Lz5/g;

    iget-object v1, p0, Lz5/a;->Y:Lc8/b$f;

    invoke-static {v1}, Lc8/b;->g(Lc8/b$f;)V

    return-object v0
.end method

.method public G0()V
    .locals 2

    sget-object v0, Lz5/a;->m0:Lz5/g;

    iget-object v1, p0, Lz5/a;->X:Lz5/g;

    if-ne v0, v1, :cond_0

    sget-object v0, Lz5/a;->o0:Lz5/g;

    sput-object v0, Lz5/a;->m0:Lz5/g;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lz5/a;->y1(Z)V

    :cond_0
    iget-object v0, p0, Lz5/a;->Y:Lc8/b$f;

    invoke-static {v0}, Lc8/b;->r(Lc8/b$f;)V

    return-void
.end method

.method public L0()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->L0()V

    iget-object v0, p0, Lz5/a;->e0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Entered APK testing mode, press back twice to exit"

    invoke-static {v0}, LN7/c;->P(Ljava/lang/String;)V

    iget-object v0, p0, Lz5/a;->c0:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1

    new-instance v0, Lz5/a;

    invoke-direct {v0}, Lz5/a;-><init>()V

    return-object v0
.end method

.method public m1()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->m1()V

    sget-object v0, Lc8/b;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lz5/a;->v1()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lc8/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_0
    sget-object v0, Lc8/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lz5/a;->d0:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final v1()V
    .locals 3

    invoke-static {}, Lq7/a;->r1()Lq7/a;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lz5/a$e;

    invoke-direct {v2, p0, v0}, Lz5/a$e;-><init>(Lz5/a;Lq7/a;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final w1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->m:Lgb/g;

    iget-object v1, p0, Lz5/a;->g0:Lo4/f;

    invoke-virtual {v0, v1}, Lgb/g;->f(Lo4/f;)V

    iget-object v0, p0, Lz5/a;->h0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$i;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->x0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$i;)V

    iget-object v0, p0, Lz5/a;->i0:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$d;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->w0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject$d;)V

    return-void
.end method

.method public final x1()V
    .locals 3

    iget-object v0, p0, Lz5/a;->e0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->c(Landroid/content/Context;)Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->worldZero:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->worldZero:Ljava/lang/String;

    new-instance v1, Lz5/a$f;

    invoke-direct {v1, p0}, Lz5/a$f;-><init>(Lz5/a;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/World/a;->H(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/World/a$k;)V

    goto :goto_0

    :cond_0
    const-string v0, "Please configure the world at APK exporter."

    invoke-static {v0}, LN7/c;->v0(Ljava/lang/String;)V

    sget-object v0, Lc8/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lc8/b;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lz5/a;->d0:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final y1(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVisible"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->O()Lo4/f;

    move-result-object v0

    iput-object v0, p0, Lz5/a;->g0:Lo4/f;

    iput-boolean p1, p0, Lz5/a;->f0:Z

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    iget-object v0, p0, Lz5/a;->j0:Lcom/itsmagic/engine/Engines/Engine/World/World$d;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/World/World;->l(Lcom/itsmagic/engine/Engines/Engine/World/World$d;)V

    :cond_0
    return-void
.end method

.method public z(Lo4/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engineUpdateData"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->x:Li4/e;

    invoke-interface {p1}, Li4/e;->g()Z

    move-result p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->w0()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-virtual {p0, p1}, Lz5/a;->y1(Z)V

    sget-object p1, Lc8/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lz5/a;->Z:Z

    if-nez p1, :cond_1

    iput-boolean v1, p0, Lz5/a;->Z:Z

    invoke-static {p0}, LN7/c;->a(Ljava/lang/Object;)V

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->e0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    :cond_1
    const-string p1, "android_back"

    invoke-static {p1}, Lrc/a;->j(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Input/Key;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Input/Key;->f()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BACK "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lz5/a;->b0:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " | "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lz5/a;->a0:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-boolean p1, p0, Lz5/a;->b0:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget p1, p0, Lz5/a;->a0:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lc8/b;->u(Landroid/content/Context;)V

    invoke-static {p0}, LN7/c;->f0(Ljava/lang/Object;)V

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->H0()V

    iput-boolean v2, p0, Lz5/a;->Z:Z

    goto :goto_1

    :cond_2
    iput v0, p0, Lz5/a;->a0:F

    iput-boolean v2, p0, Lz5/a;->b0:Z

    goto :goto_1

    :cond_3
    iput-boolean v1, p0, Lz5/a;->b0:Z

    iput v0, p0, Lz5/a;->a0:F

    :cond_4
    :goto_1
    iget-boolean p1, p0, Lz5/a;->b0:Z

    if-eqz p1, :cond_6

    iget p1, p0, Lz5/a;->a0:F

    invoke-static {}, LK8/d;->d()F

    move-result v0

    add-float/2addr p1, v0

    iput p1, p0, Lz5/a;->a0:F

    goto :goto_2

    :cond_5
    iget-boolean p1, p0, Lz5/a;->Z:Z

    if-eqz p1, :cond_6

    iput-boolean v2, p0, Lz5/a;->Z:Z

    invoke-static {p0}, LN7/c;->f0(Ljava/lang/Object;)V

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->H0()V

    :cond_6
    :goto_2
    return-void
.end method
