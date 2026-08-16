.class public LZ5/f;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LZ5/f$p;,
        LZ5/f$o;
    }
.end annotation


# static fields
.field public static final x0:Ljava/lang/String; = "StorePanel"

.field public static final y0:J = 0x3e8L


# instance fields
.field public final X:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;",
            ">;"
        }
    .end annotation
.end field

.field public Y:Lh7/d;

.field public final Z:LZ5/f$p;

.field public final a0:Ln7/d;

.field public final b0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;",
            ">;"
        }
    .end annotation
.end field

.field public final c0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;",
            ">;"
        }
    .end annotation
.end field

.field public final d0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g0:Landroid/view/View;

.field public h0:LZ5/f$o;

.field public i0:Landroid/view/View;

.field public j0:Landroid/widget/EditText;

.field public k0:Landroid/widget/TextView;

.field public l0:Landroid/widget/LinearLayout;

.field public m0:LZ5/b;

.field public n0:LZ5/b;

.field public o0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public p0:Z

.field public q0:Z

.field public final r0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final s0:LU5/a;

.field public t0:Landroid/view/View;

.field public u0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public v0:Landroid/os/Handler;

.field public w0:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LZ5/f;->X:Ljava/util/List;

    .line 18
    new-instance v0, LZ5/f$p;

    invoke-direct {v0, p0, v1}, LZ5/f$p;-><init>(LZ5/f;LZ5/f$f;)V

    iput-object v0, p0, LZ5/f;->Z:LZ5/f$p;

    .line 19
    new-instance v0, LZ5/f$f;

    invoke-direct {v0, p0}, LZ5/f$f;-><init>(LZ5/f;)V

    iput-object v0, p0, LZ5/f;->a0:Ln7/d;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LZ5/f;->b0:Ljava/util/Map;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LZ5/f;->c0:Ljava/util/Map;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LZ5/f;->d0:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LZ5/f;->e0:Ljava/util/Map;

    .line 24
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LZ5/f;->f0:Ljava/util/List;

    .line 25
    sget-object v0, LZ5/f$o;->Home:LZ5/f$o;

    iput-object v0, p0, LZ5/f;->h0:LZ5/f$o;

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LZ5/f;->o0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LZ5/f;->r0:Ljava/util/List;

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LZ5/f;->v0:Landroid/os/Handler;

    .line 29
    new-instance v0, LU5/a;

    invoke-direct {v0}, LU5/a;-><init>()V

    iput-object v0, p0, LZ5/f;->s0:LU5/a;

    const/4 v0, 0x0

    .line 30
    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    return-void
.end method

.method public constructor <init>(LK8/a;)V
    .locals 1
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

    iput-object p1, p0, LZ5/f;->X:Ljava/util/List;

    .line 3
    new-instance p1, LZ5/f$p;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, LZ5/f$p;-><init>(LZ5/f;LZ5/f$f;)V

    iput-object p1, p0, LZ5/f;->Z:LZ5/f$p;

    .line 4
    new-instance p1, LZ5/f$f;

    invoke-direct {p1, p0}, LZ5/f$f;-><init>(LZ5/f;)V

    iput-object p1, p0, LZ5/f;->a0:Ln7/d;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LZ5/f;->b0:Ljava/util/Map;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LZ5/f;->c0:Ljava/util/Map;

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LZ5/f;->d0:Ljava/util/Map;

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LZ5/f;->e0:Ljava/util/Map;

    .line 9
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p1, p0, LZ5/f;->f0:Ljava/util/List;

    .line 10
    sget-object p1, LZ5/f$o;->Home:LZ5/f$o;

    iput-object p1, p0, LZ5/f;->h0:LZ5/f$o;

    .line 11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, LZ5/f;->o0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object p1, p0, LZ5/f;->r0:Ljava/util/List;

    .line 13
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, LZ5/f;->v0:Landroid/os/Handler;

    .line 14
    new-instance p1, LU5/a;

    invoke-direct {p1}, LU5/a;-><init>()V

    iput-object p1, p0, LZ5/f;->s0:LU5/a;

    const/4 p1, 0x0

    .line 15
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    return-void
.end method

.method public constructor <init>(LU5/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "searchOptions"
        }
    .end annotation

    .line 31
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LZ5/f;->X:Ljava/util/List;

    .line 33
    new-instance v0, LZ5/f$p;

    invoke-direct {v0, p0, v1}, LZ5/f$p;-><init>(LZ5/f;LZ5/f$f;)V

    iput-object v0, p0, LZ5/f;->Z:LZ5/f$p;

    .line 34
    new-instance v0, LZ5/f$f;

    invoke-direct {v0, p0}, LZ5/f$f;-><init>(LZ5/f;)V

    iput-object v0, p0, LZ5/f;->a0:Ln7/d;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LZ5/f;->b0:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LZ5/f;->c0:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LZ5/f;->d0:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LZ5/f;->e0:Ljava/util/Map;

    .line 39
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LZ5/f;->f0:Ljava/util/List;

    .line 40
    sget-object v0, LZ5/f$o;->Home:LZ5/f$o;

    iput-object v0, p0, LZ5/f;->h0:LZ5/f$o;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LZ5/f;->o0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LZ5/f;->r0:Ljava/util/List;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LZ5/f;->v0:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1}, LU5/a;->c()LU5/a;

    move-result-object p1

    iput-object p1, p0, LZ5/f;->s0:LU5/a;

    goto :goto_0

    .line 45
    :cond_0
    new-instance p1, LU5/a;

    invoke-direct {p1}, LU5/a;-><init>()V

    iput-object p1, p0, LZ5/f;->s0:LU5/a;

    :goto_0
    const/4 p1, 0x0

    .line 46
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    return-void
.end method

.method public static synthetic A1([Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, LZ5/f;->i2([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static A2(Ljava/util/List;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packages",
            "offset",
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;",
            ">;II)",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p1}, LNc/b;->N(II)I

    move-result p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p2, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-lt p1, p2, :cond_1

    new-instance p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    return-object p0

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_2
    :goto_0
    new-instance p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    return-object p0
.end method

.method public static synthetic B1(LZ5/f;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, LZ5/f;->e2(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C1(LZ5/f;)LZ5/b;
    .locals 0

    iget-object p0, p0, LZ5/f;->n0:LZ5/b;

    return-object p0
.end method

.method public static synthetic D1(LZ5/f;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LZ5/f;->r0:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic E1(LZ5/f;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, LZ5/f;->W1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic F1(LZ5/f;Z)Z
    .locals 0

    iput-boolean p1, p0, LZ5/f;->q0:Z

    return p1
.end method

.method public static synthetic G1(LZ5/f;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LZ5/f;->f0:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic H1(LZ5/f;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, LZ5/f;->e0:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic I1(LZ5/f;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LZ5/f;->X:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic J1(LZ5/f;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, LZ5/f;->c0:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic K1(LZ5/f;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, LZ5/f;->d0:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic L1(LZ5/f;Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, LZ5/f;->X1(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M1(LZ5/f;Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, LZ5/f;->s2(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic N1(LZ5/f;)V
    .locals 0

    invoke-direct {p0}, LZ5/f;->x2()V

    return-void
.end method

.method public static synthetic O1(LZ5/f;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, LZ5/f;->j0:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic P1(LZ5/f;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, LZ5/f;->y2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic Q1(LZ5/f;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, LZ5/f;->w0:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic R1(LZ5/f;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, LZ5/f;->w0:Ljava/lang/Runnable;

    return-object p1
.end method

.method public static synthetic S1(LZ5/f;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, LZ5/f;->v0:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic T1(LZ5/f;)LZ5/f$p;
    .locals 0

    iget-object p0, p0, LZ5/f;->Z:LZ5/f$p;

    return-object p0
.end method

.method public static synthetic U1(LZ5/f;Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;
    .locals 0

    invoke-virtual {p0, p1}, LZ5/f;->g2(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    move-result-object p0

    return-object p0
.end method

.method private W1(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newPosts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    if-eqz v3, :cond_2

    move v4, v1

    :goto_1
    iget-object v5, p0, LZ5/f;->X:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v5, p0, LZ5/f;->X:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    if-eqz v5, :cond_0

    iget-object v6, v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;->id:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v5, v5, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;->id:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object p1, p0, LZ5/f;->X:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, LZ5/f;->v2()V

    iget-object p1, p0, LZ5/f;->Y:Lh7/d;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lh7/d;->K()V

    :cond_4
    return-void
.end method

.method private Z1()V
    .locals 1

    iget-object v0, p0, LZ5/f;->X:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, LZ5/f;->b0:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, LZ5/f;->c0:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, LZ5/f;->d0:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, LZ5/f;->e0:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, LZ5/f;->f0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LZ5/f;->p0:Z

    iput-boolean v0, p0, LZ5/f;->q0:Z

    iget-object v0, p0, LZ5/f;->Y:Lh7/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh7/d;->j()V

    :cond_0
    return-void
.end method

.method private d2()V
    .locals 3

    iget-boolean v0, p0, LZ5/f;->q0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LZ5/f;->o0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LZ5/f;->g0:Landroid/view/View;

    sget-object v1, Lr4/a$e;->Left:Lr4/a$e;

    invoke-static {v0, v1}, Lq7/a;->t1(Landroid/view/View;Lr4/a$e;)Lq7/a;

    move-result-object v0

    iget-object v1, p0, LZ5/f;->s0:LU5/a;

    invoke-virtual {v1, v2}, LU5/a;->o(I)V

    iget-object v1, p0, LZ5/f;->s0:LU5/a;

    invoke-virtual {v1, v2}, LU5/a;->m(I)V

    iget-object v1, p0, LZ5/f;->s0:LU5/a;

    iget-object v2, p0, LZ5/f;->m0:LZ5/b;

    invoke-virtual {v2}, LZ5/b;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, LU5/a;->p(Z)V

    iget-object v1, p0, LZ5/f;->s0:LU5/a;

    iget-object v2, p0, LZ5/f;->n0:LZ5/b;

    invoke-virtual {v2}, LZ5/b;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, LU5/a;->q(Z)V

    new-instance v1, LZ5/f$e;

    invoke-direct {v1, p0, v0}, LZ5/f$e;-><init>(LZ5/f;Lq7/a;)V

    invoke-static {v1}, LO9/b;->d(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private f2()I
    .locals 1

    iget-object v0, p0, LZ5/f;->X:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private static i2([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tags"
        }
    .end annotation

    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    aget-object v2, p0, v1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic j2(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)I
    .locals 2

    invoke-static {p1}, LT5/b;->g0(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)J

    move-result-wide v0

    invoke-static {p0}, LT5/b;->g0(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static n2()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 3

    new-instance v0, LZ5/f;

    invoke-direct {v0}, LZ5/f;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v1}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->N0(ZZZZ)V

    return-object v0
.end method

.method public static o2(LU5/a;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "storeSearchOptions"
        }
    .end annotation

    new-instance v0, LZ5/f;

    invoke-direct {v0, p0}, LZ5/f;-><init>(LU5/a;)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {v0, p0, p0}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->N0(ZZZZ)V

    return-object p0
.end method

.method public static synthetic p1(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)I
    .locals 0

    invoke-static {p0, p1}, LZ5/f;->j2(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)I

    move-result p0

    return p0
.end method

.method public static p2(LU5/a;Landroid/view/View;Lr4/a$e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "storeSearchOptions",
            "anchor",
            "anchorSide"
        }
    .end annotation

    new-instance v0, LZ5/f;

    invoke-direct {v0, p0}, LZ5/f;-><init>(LU5/a;)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p1, v0, p2, p0, p0}, Lr4/a;->g(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p1, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->N0(ZZZZ)V

    return-object p0
.end method

.method public static synthetic q1(LZ5/f;)LZ5/b;
    .locals 0

    iget-object p0, p0, LZ5/f;->m0:LZ5/b;

    return-object p0
.end method

.method public static q2(Landroid/view/View;Lr4/a$e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "anchor",
            "anchorSide"
        }
    .end annotation

    new-instance v0, LZ5/f;

    invoke-direct {v0}, LZ5/f;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, p1, v1, v1}, Lr4/a;->g(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p1, p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->N0(ZZZZ)V

    return-object p0
.end method

.method public static synthetic r1(LZ5/f;Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LZ5/f;->r2(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s1(LZ5/f;)Z
    .locals 0

    iget-boolean p0, p0, LZ5/f;->p0:Z

    return p0
.end method

.method public static synthetic t1(LZ5/f;Z)Z
    .locals 0

    iput-boolean p1, p0, LZ5/f;->p0:Z

    return p1
.end method

.method public static synthetic u1(LZ5/f;)V
    .locals 0

    invoke-direct {p0}, LZ5/f;->d2()V

    return-void
.end method

.method public static synthetic v1(LZ5/f;LZ5/f$o;)V
    .locals 0

    invoke-virtual {p0, p1}, LZ5/f;->Y1(LZ5/f$o;)V

    return-void
.end method

.method public static synthetic w1(LZ5/f;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, LZ5/f;->o0:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic x1(LZ5/f;)V
    .locals 0

    invoke-direct {p0}, LZ5/f;->Z1()V

    return-void
.end method

.method private x2()V
    .locals 2

    iget-object v0, p0, LZ5/f;->o0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lob/b;

    new-instance v1, LZ5/f$d;

    invoke-direct {v1, p0}, LZ5/f$d;-><init>(LZ5/f;)V

    invoke-direct {v0, v1}, Lob/b;-><init>(Lob/b$a;)V

    invoke-static {v0}, LK8/a;->J(Lob/b;)V

    return-void

    :cond_0
    invoke-direct {p0}, LZ5/f;->Z1()V

    invoke-direct {p0}, LZ5/f;->d2()V

    return-void
.end method

.method public static synthetic y1(LZ5/f;)LU5/a;
    .locals 0

    iget-object p0, p0, LZ5/f;->s0:LU5/a;

    return-object p0
.end method

.method private y2(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    iget-object v0, p0, LZ5/f;->o0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LZ5/f;->r0:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LZ5/f;->r0:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    iget-object v0, p0, LZ5/f;->s0:LU5/a;

    invoke-virtual {v0, p1}, LU5/a;->t(Ljava/lang/String;)V

    invoke-direct {p0}, LZ5/f;->Z1()V

    invoke-direct {p0}, LZ5/f;->x2()V

    return-void
.end method

.method public static synthetic z1(LZ5/f;)LZ5/f$o;
    .locals 0

    iget-object p0, p0, LZ5/f;->h0:LZ5/f$o;

    return-object p0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0119

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, LZ5/f$g;

    invoke-direct {v1, p0}, LZ5/f$g;-><init>(LZ5/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f09015f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f09053c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, LZ5/f;->k0:Landroid/widget/TextView;

    const v2, 0x7f0904ce

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, LZ5/f;->l0:Landroid/widget/LinearLayout;

    const v2, 0x7f090436

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, LZ5/f;->i0:Landroid/view/View;

    if-eqz v2, :cond_0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    new-instance v2, LZ5/b;

    const v3, 0x7f090370

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct {v2, v3}, LZ5/b;-><init>(Landroid/widget/LinearLayout;)V

    iput-object v2, p0, LZ5/f;->m0:LZ5/b;

    new-instance v2, LZ5/b;

    const v3, 0x7f090371

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct {v2, v3}, LZ5/b;-><init>(Landroid/widget/LinearLayout;)V

    iput-object v2, p0, LZ5/f;->n0:LZ5/b;

    iget-object v2, p0, LZ5/f;->m0:LZ5/b;

    new-instance v3, LZ5/f$h;

    invoke-direct {v3, p0}, LZ5/f$h;-><init>(LZ5/f;)V

    invoke-virtual {v2, v3}, LZ5/b;->e(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, LZ5/f;->n0:LZ5/b;

    new-instance v3, LZ5/f$i;

    invoke-direct {v3, p0}, LZ5/f$i;-><init>(LZ5/f;)V

    invoke-virtual {v2, v3}, LZ5/b;->e(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, LZ5/f;->h2()V

    invoke-virtual {p0, v1}, LZ5/f;->c2(Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v0}, LZ5/f;->t2(Landroid/view/View;)V

    invoke-virtual {p0, v0}, LZ5/f;->z2(Landroid/view/View;)V

    invoke-direct {p0}, LZ5/f;->d2()V

    return-object v0
.end method

.method public G0()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    return-void
.end method

.method public final V1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "rootPath"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, LZ5/f;->f0:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LZ5/f;->d0:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LZ5/f;->e0:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final X1(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pack",
            "folderPath"
        }
    .end annotation

    invoke-static {p1}, LT5/b;->P(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_ERROR_DEFAULT_NAME:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "/"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "Package"

    :cond_2
    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;->id:Ljava/lang/String;

    invoke-static {p2}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " __id__"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final Y1(LZ5/f$o;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    iput-object p1, p0, LZ5/f;->h0:LZ5/f$o;

    invoke-direct {p0}, LZ5/f;->Z1()V

    invoke-direct {p0}, LZ5/f;->x2()V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, LZ5/f;->k0:Landroid/widget/TextView;

    const-string v0, "My Packages"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, LZ5/f;->i0:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, LZ5/f;->k0:Landroid/widget/TextView;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, LZ5/f;->i0:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final a2()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, LZ5/f;->X:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, LZ5/f;->X:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;->tags:Ljava/lang/String;

    if-nez v3, :cond_0

    goto :goto_4

    :cond_0
    const-string v4, "[,;]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v4, v1

    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_4

    aget-object v5, v3, v4

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_1
    const-string v5, ""

    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p0, v0, v5}, LZ5/f;->b2(Ljava/util/List;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public final b2(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final c2(Landroid/view/ViewGroup;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    new-instance v0, LZ5/f$m;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, LZ5/f;->Z:LZ5/f$p;

    iget-object v3, p0, LZ5/f;->a0:Ln7/d;

    invoke-direct {v0, p0, v1, v2, v3}, LZ5/f$m;-><init>(LZ5/f;Landroid/app/Activity;Ln7/e;Ln7/d;)V

    iput-object v0, p0, LZ5/f;->Y:Lh7/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lh7/d;->D(Z)V

    iget-object v0, p0, LZ5/f;->Y:Lh7/d;

    invoke-virtual {v0, v1}, Lh7/d;->y(Z)V

    iget-object v0, p0, LZ5/f;->Y:Lh7/d;

    new-instance v1, LZ5/f$n;

    invoke-direct {v1, p0}, LZ5/f$n;-><init>(LZ5/f;)V

    invoke-virtual {v0, v1}, Lh7/d;->f(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, LZ5/f;->Y:Lh7/d;

    invoke-virtual {v0, p1}, Lh7/d;->i(Landroid/view/ViewGroup;)V

    iget-object p1, p0, LZ5/f;->Y:Lh7/d;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Lh7/d;->o(Ljava/lang/String;)V

    return-void
.end method

.method public final e2(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v1, p0, LZ5/f;->s0:LU5/a;

    invoke-virtual {v1}, LU5/a;->i()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LZ5/f;->s0:LU5/a;

    invoke-virtual {v2}, LU5/a;->g()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LZ5/f;->s0:LU5/a;

    invoke-virtual {v3}, LU5/a;->h()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LZ5/f;->s0:LU5/a;

    invoke-virtual {v4}, LU5/a;->j()Z

    move-result v4

    const/4 v5, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    iget-boolean v7, v6, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;->isTemplate:Z

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v6, v1}, LZ5/f;->m2(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v6, v2}, LZ5/f;->l2(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v6, v3}, LZ5/f;->k2(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    new-instance p1, LZ5/e;

    invoke-direct {p1}, LZ5/e;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object v0

    :cond_7
    :goto_2
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    return-object p1
.end method

.method public final g2(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    iget-object v0, p0, LZ5/f;->c0:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    return-object p1
.end method

.method public final h2()V
    .locals 9

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v2, LM7/p;

    invoke-direct {v2, v0}, LM7/p;-><init>(Landroid/content/Context;)V

    sget-object v3, LW7/b;->f:LC8/a;

    iget-object v3, v3, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    const v4, 0x7f070156

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->Q()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, LM7/o;

    new-instance v5, LZ5/f$a;

    invoke-direct {v5, p0}, LZ5/f$a;-><init>(LZ5/f;)V

    sget-object v6, LM7/c$b;->Left:LM7/c$b;

    invoke-direct {v3, v4, v5, v6, v0}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-virtual {v3, v4}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object v3

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL:LAc/b;

    invoke-virtual {v3, v5}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object v3

    invoke-virtual {v2, v3}, LM7/p;->s(LM7/g;)LM7/p;

    new-instance v3, LM7/o;

    new-instance v6, LZ5/f$b;

    invoke-direct {v6, p0}, LZ5/f$b;-><init>(LZ5/f;)V

    sget-object v7, LM7/c$b;->Right:LM7/c$b;

    const v8, 0x7f0701b1

    invoke-direct {v3, v8, v6, v7, v0}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object v3

    invoke-virtual {v3, v5}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object v3

    invoke-virtual {v2, v3}, LM7/p;->s(LM7/g;)LM7/p;

    goto :goto_0

    :cond_0
    new-instance v3, LM7/o;

    new-instance v5, LZ5/f$c;

    invoke-direct {v5, p0}, LZ5/f$c;-><init>(LZ5/f;)V

    sget-object v6, LM7/c$b;->Disconnected:LM7/c$b;

    invoke-direct {v3, v4, v5, v6, v0}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-virtual {v3, v4}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object v3

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL:LAc/b;

    invoke-virtual {v3, v4}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object v3

    invoke-virtual {v2, v3}, LM7/p;->s(LM7/g;)LM7/p;

    :goto_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, LZ5/f;->l0:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LM7/g;

    iget-object v4, p0, LZ5/f;->l0:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v4, v0, v5}, LM7/g;->a(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/view/LayoutInflater;)V

    new-instance v4, LM7/k;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5, v0}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v5

    invoke-direct {v4, v5}, LM7/k;-><init>(I)V

    iget-object v5, p0, LZ5/f;->l0:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v5, v0, v6}, LM7/k;->a(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/view/LayoutInflater;)V

    invoke-virtual {v4}, LM7/g;->e()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, LM7/g;->n(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 2

    new-instance v0, LZ5/f;

    iget-object v1, p0, LZ5/f;->s0:LU5/a;

    invoke-direct {v0, v1}, LZ5/f;-><init>(LU5/a;)V

    return-object v0
.end method

.method public final k2(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pack",
            "text"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, LT5/b;->P(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;->userName:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;->tags:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public final l2(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;[Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pack",
            "tags"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_3

    aget-object v3, p2, v2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, v3}, LZ5/f;->s2(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_2
    return v0
.end method

.method public m1()V
    .locals 1

    iget-object v0, p0, LZ5/f;->Y:Lh7/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh7/d;->K()V

    :cond_0
    return-void
.end method

.method public final m2(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;[Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pack",
            "users"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_5

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;->userName:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    return v2

    :cond_2
    move v1, v2

    :goto_1
    array-length v3, p2

    if-ge v1, v3, :cond_4

    aget-object v3, p2, v1

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v2

    :cond_5
    :goto_2
    return v0
.end method

.method public final r2(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pack",
            "view"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lr4/a$e;->Right:Lr4/a$e;

    invoke-static {p2, v0, p1}, LX5/b;->Q1(Landroid/view/View;Lr4/a$e;Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method

.method public final s2(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pack",
            "tag"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;->tags:Ljava/lang/String;

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "[,;]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    aget-object v2, p1, v1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v0
.end method

.method public final t2(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const v0, 0x7f090130

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, LZ5/f;->g0:Landroid/view/View;

    new-instance v0, LZ5/f$j;

    invoke-direct {v0, p0}, LZ5/f$j;-><init>(LZ5/f;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final u2(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const v0, 0x7f090430

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, LZ5/f;->j0:Landroid/widget/EditText;

    new-instance v0, LZ5/f$k;

    invoke-direct {v0, p0}, LZ5/f$k;-><init>(LZ5/f;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p1, p0, LZ5/f;->j0:Landroid/widget/EditText;

    new-instance v0, LZ5/f$l;

    invoke-direct {v0, p0}, LZ5/f$l;-><init>(LZ5/f;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final v2()V
    .locals 4

    iget-object v0, p0, LZ5/f;->b0:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LZ5/f;->X:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, LZ5/f;->X:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    if-eqz v1, :cond_0

    iget-object v2, p0, LZ5/f;->b0:Ljava/util/Map;

    iget-object v3, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;->id:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LZ5/f;->w2()V

    return-void
.end method

.method public final w2()V
    .locals 4

    iget-object v0, p0, LZ5/f;->d0:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, LZ5/f;->e0:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, LZ5/f;->f0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "Latest"

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, LZ5/f;->V1(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LZ5/f;->a2()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3, v1}, LZ5/f;->V1(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final z2(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const v0, 0x7f0903f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Repository: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LT5/b;->M()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
