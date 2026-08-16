.class public Lcom/itsmagic/engine/Activities/Editor/EditorActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/EditorActivity$p;
    }
.end annotation


# static fields
.field public static final M:I = 0x2329

.field public static final N:I = 0x232a

.field public static O:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv3/a;",
            ">;"
        }
    .end annotation
.end field

.field public static P:J

.field public static final Q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv3/i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field public B:Landroid/widget/LinearLayout;

.field public final C:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final D:Ljava/util/concurrent/atomic/AtomicInteger;

.field public E:Lrc/c;

.field public F:I

.field public G:F

.field public final H:Ljava/lang/Runnable;

.field public final I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv3/h;",
            ">;"
        }
    .end annotation
.end field

.field public J:Z

.field public K:Z

.field public L:Z

.field public b:Ly0/b;

.field public c:Landroidx/fragment/app/FragmentManager;

.field public d:Lf7/a;

.field public e:Lcom/itsmagic/engine/Activities/Editor/FacebookTerms;

.field public f:Landroid/content/Context;

.field public g:Landroid/app/Activity;

.field public h:Lcom/itsmagic/engine/Activities/Editor/EditorActivity$p;

.field public i:Landroid/view/View;

.field public j:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

.field public k:Lm0/m;

.field public l:LN7/c$g;

.field public m:Landroid/view/View;

.field public n:Lv3/b;

.field public o:Lv3/o;

.field public p:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

.field public q:Landroid/view/LayoutInflater;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/FrameLayout;

.field public t:Ld7/a;

.field public final u:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

.field public final v:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public w:Z

.field public x:Ljava/lang/String;

.field public y:Lu2/c;

.field public z:Lu2/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->O:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->P:J

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->Q:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$p;->Unlock:Lcom/itsmagic/engine/Activities/Editor/EditorActivity$p;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->h:Lcom/itsmagic/engine/Activities/Editor/EditorActivity$p;

    sget-object v0, LN7/c$g;->Editor:LN7/c$g;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->l:LN7/c$g;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->n:Lv3/b;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->t:Ld7/a;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->u:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->w:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->D:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$g;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$g;-><init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->H:Ljava/lang/Runnable;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->I:Ljava/util/List;

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->J:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->K:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->L:Z

    return-void
.end method

.method public static synthetic A(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->F:I

    return p1
.end method

.method public static synthetic B(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->w:Z

    return p0
.end method

.method public static synthetic C(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->w:Z

    return p1
.end method

.method public static synthetic D(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->i:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic E(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->H:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic F(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->j0(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic G(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->K:Z

    return p1
.end method

.method public static synthetic H(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->S()V

    return-void
.end method

.method public static synthetic I(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->k0(I)V

    return-void
.end method

.method public static synthetic J(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic K(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->B:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static synthetic L(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Ld7/a;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->t:Ld7/a;

    return-object p0
.end method

.method public static synthetic M(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Landroidx/fragment/app/FragmentManager;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->c:Landroidx/fragment/app/FragmentManager;

    return-object p0
.end method

.method public static synthetic N(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->m:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic O(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->m:Landroid/view/View;

    return-object p1
.end method

.method public static synthetic P(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->j:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    return-object p0
.end method

.method public static Q(Lv3/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p0, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->Q:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Listener can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d0(Lv3/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p0, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->Q:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Listener can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic g(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;Lo2/b;Lv1/k;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->a0(Lo2/b;Lv1/k;)V

    return-void
.end method

.method public static synthetic h(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;Lv1/k;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->Z(Lv1/k;)V

    return-void
.end method

.method public static synthetic j()J
    .locals 2

    sget-wide v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->P:J

    return-wide v0
.end method

.method public static synthetic k(J)J
    .locals 0

    sput-wide p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->P:J

    return-wide p0
.end method

.method public static synthetic l(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->G:F

    return p0
.end method

.method public static synthetic m(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)LN7/c$g;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->l:LN7/c$g;

    return-object p0
.end method

.method public static synthetic n(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;LN7/c$g;)LN7/c$g;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->l:LN7/c$g;

    return-object p1
.end method

.method public static synthetic o(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->G:F

    return p1
.end method

.method public static synthetic p(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->p:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    return-object p0
.end method

.method public static synthetic q(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->q:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method public static synthetic r()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->Q:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic s(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->I:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic t(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->A:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object p0
.end method

.method public static synthetic u(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->u:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    return-object p0
.end method

.method public static synthetic v(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Ly0/b;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->b:Ly0/b;

    return-object p0
.end method

.method public static synthetic w(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->e0()V

    return-void
.end method

.method public static synthetic x(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->c0()V

    return-void
.end method

.method public static synthetic y(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->F:I

    return p0
.end method

.method public static synthetic z(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->X(I)V

    return-void
.end method


# virtual methods
.method public R(Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$f;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method public final S()V
    .locals 1

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->A()V

    return-void
.end method

.method public T()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->d:Lf7/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lf7/a;->d()V

    :cond_0
    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->d:Lf7/a;

    return-void
.end method

.method public final U()V
    .locals 7

    const-string v0, "SHA1"

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/content/pm/a;->a(Landroid/content/pm/PackageInfo;)Landroid/content/pm/SigningInfo;

    move-result-object v1

    invoke-static {v1}, Lv3/e;->a(Landroid/content/pm/SigningInfo;)[Landroid/content/pm/Signature;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_0

    aget-byte v5, v1, v3

    const-string v6, "%02X"

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public V()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    return-object v0
.end method

.method public W()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    return-void
.end method

.method public final X(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    const v0, 0x7f0901e0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->B:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->q:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0101

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->q:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0100

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f0905a4

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->r:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    sget-object v0, LW7/b;->f:LC8/a;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, LC8/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    new-instance p1, Ld7/a;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->g:Landroid/app/Activity;

    invoke-direct {p1, v0}, Ld7/a;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->t:Ld7/a;

    const v0, 0x7f09056c

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09056d

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09056e

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->g:Landroid/app/Activity;

    invoke-virtual {p1, v0, v1, v2, v3}, Ld7/a;->x(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/app/Activity;)V

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$n;-><init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)V

    invoke-static {p1}, LN7/c;->m0(Lv3/m;)V

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$o;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$o;-><init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)V

    sput-object p1, LW7/b;->p:LW7/d;

    return-void
.end method

.method public final Y()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$m;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$m;-><init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public final synthetic Z(Lv1/k;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->J:Z

    return-void
.end method

.method public final synthetic a0(Lo2/b;Lv1/k;)V
    .locals 1

    invoke-virtual {p2}, Lv1/k;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lv1/k;->r()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo2/a;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->g:Landroid/app/Activity;

    invoke-interface {p1, v0, p2}, Lo2/b;->b(Landroid/app/Activity;Lo2/a;)Lv1/k;

    move-result-object p1

    new-instance p2, Lv3/g;

    invoke-direct {p2, p0}, Lv3/g;-><init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)V

    invoke-virtual {p1, p2}, Lv1/k;->f(Lv1/e;)Lv1/k;

    :cond_0
    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newBase"
        }
    .end annotation

    const-string v0, "ui_config"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "scale_factor"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {p1, v0}, Lw3/k;->a(Landroid/content/Context;F)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public b0()V
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->T()V

    const/4 v0, 0x1

    sput-boolean v0, LW7/b;->l:Z

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->V()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final c0()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->m:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->releasePointerCapture()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lrc/a;->x(Landroid/view/KeyEvent;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-static {p1}, Lrc/a;->z(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final e0()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->m:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestPointerCapture()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public final f0()V
    .locals 1

    sget-object v0, Lrc/a;->u:Lrc/a$g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lrc/a$g;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->e0()V

    :cond_0
    return-void
.end method

.method public final g0(LN7/c$g;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->l:LN7/c$g;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->Q:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->Q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv3/i;

    invoke-interface {v2, p1}, Lv3/i;->a(LN7/c$g;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h0()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    return-void
.end method

.method public i()V
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->T()V

    const/4 v0, 0x1

    sput-boolean v0, LW7/b;->l:Z

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->p0()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->K:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->L:Z

    return-void
.end method

.method public i0()V
    .locals 3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->J:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->g:Landroid/app/Activity;

    invoke-static {v0}, Lo2/c;->a(Landroid/content/Context;)Lo2/b;

    move-result-object v0

    invoke-interface {v0}, Lo2/b;->a()Lv1/k;

    move-result-object v1

    new-instance v2, Lv3/f;

    invoke-direct {v2, p0, v0}, Lv3/f;-><init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;Lo2/b;)V

    invoke-virtual {v1, v2}, Lv1/k;->f(Lv1/e;)Lv1/k;

    return-void
.end method

.method public final init()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->X(I)V

    const v0, 0x7f090423

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$l;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$l;-><init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public final j0(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oglContext"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->w:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->D:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->D:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->u:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->C(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public final k0(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameID"
        }
    .end annotation

    invoke-static {}, Lu6/l;->E1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Update topbar"

    invoke-static {v0}, Lu6/l;->L1(Ljava/lang/String;)Lu6/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->t:Ld7/a;

    invoke-virtual {v1}, Ld7/a;->L()V

    invoke-static {v0}, Lu6/l;->J1(Lu6/e;)V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->w:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->u:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->s:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->g:Landroid/app/Activity;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->f:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->J0(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;I)I

    :cond_2
    return-void
.end method

.method public final l0()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, LK8/c$a;->Portrait:LK8/c$a;

    sput-object v0, LK8/c;->e:LK8/c$a;

    goto :goto_0

    :cond_0
    sget-object v0, LK8/c$a;->Landscape:LK8/c$a;

    sput-object v0, LK8/c;->e:LK8/c$a;

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "intent"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->orientation:Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$b;

    invoke-static {v0}, LN7/c;->c(Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$b;)V

    const/16 v0, 0x6f

    if-eq p1, v0, :cond_4

    invoke-static {p1, p2, p3}, Lw3/f;->c(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lw3/e;->e(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->I:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->I:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv3/h;

    iget v3, v2, Lv3/h;->a:I

    if-ne v3, p1, :cond_2

    iget-object p1, v2, Lv3/h;->b:Lv3/l;

    invoke-interface {p1, p2, p3}, Lv3/l;->a(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->I:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->g:Landroid/app/Activity;

    invoke-static {p1, p2, p3, v0}, Lw3/l;->a(IILandroid/content/Intent;Landroid/app/Activity;)Z

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    invoke-static {p1, p2, p3}, Lqb/a;->b(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 6

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->O:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->O:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv3/a;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lv3/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_1
    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    new-instance v1, Li4/d;

    invoke-direct {v1}, Li4/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->B0(Ln4/f;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, LIc/B;

    invoke-direct {v0}, LIc/B;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/World/a;->i(LLb/c;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->l:LN7/c$g;

    sget-object v1, LN7/c$g;->Editor:LN7/c$g;

    if-ne v0, v1, :cond_6

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    invoke-static {}, Lc8/b;->k()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->L:Z

    if-nez v0, :cond_6

    new-instance v0, Lbd/a;

    const-string v3, "\"android_back\" key set to down, use in your script, show a menu or stop game"

    const-string v4, "a key \"android_back\" foi definida como \"down\", use nos seus scripts para exibir um menu ou parar o jogo"

    invoke-direct {v0, v3, v4}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->f:Landroid/content/Context;

    invoke-virtual {v0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->L:Z

    goto/16 :goto_1

    :cond_3
    iput-boolean v2, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->L:Z

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->K:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->f:Landroid/content/Context;

    new-instance v3, Lbd/a;

    const-string v4, "Press back again to return to projects"

    const-string v5, "Volte novamente para ir para a tela inicial"

    invoke-direct {v3, v4, v5}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->K:Z

    new-instance v0, Lkd/a;

    invoke-direct {v0}, Lkd/a;-><init>()V

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)V

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Lkd/a;->a(ILkd/b;)V

    goto/16 :goto_1

    :cond_4
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->d0()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->f:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3}, Lcn/pedant/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f11003a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v1

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11003b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v1

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v1

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$e;

    invoke-direct {v3, p0, v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;Lcn/pedant/SweetAlert/SweetAlertDialog;)V

    invoke-virtual {v1, v3}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v1

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11003d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setNeutralText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v1

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$d;

    invoke-direct {v3, p0, v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;Lcn/pedant/SweetAlert/SweetAlertDialog;)V

    invoke-virtual {v1, v3}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setNeutralClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v1

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110037

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v1

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$c;

    invoke-direct {v3, p0, v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;Lcn/pedant/SweetAlert/SweetAlertDialog;)V

    invoke-virtual {v1, v3}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->S()V

    :goto_0
    iput-boolean v2, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->K:Z

    :cond_6
    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$k;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$k;-><init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;Landroid/content/res/Configuration;)V

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/p;->b(Landroid/content/res/Configuration;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x802

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f050028

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    iput-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->g:Landroid/app/Activity;

    iput-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->f:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->q:Landroid/view/LayoutInflater;

    new-instance v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->g:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->p:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->c:Landroidx/fragment/app/FragmentManager;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Lv3/d;->a(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$h;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$h;-><init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)V

    invoke-static {v0, p1, v1}, Landroidx/appcompat/app/g;->a(Landroid/window/OnBackInvokedDispatcher;ILandroid/window/OnBackInvokedCallback;)V

    :cond_1
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->A:Lcom/google/firebase/analytics/FirebaseAnalytics;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$i;-><init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)V

    invoke-static {v0}, LN7/c;->l0(LN7/d;)V

    invoke-static {p0}, Lmb/a;->a(Landroid/app/Activity;)V

    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->setEdgeToEdgeInsets(Landroid/view/View;)V

    :try_start_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    :try_start_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->takeKeyEvents(Z)V

    invoke-static {p0}, LW7/b;->j(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->l0()V

    :try_start_4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->m:Landroid/view/View;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_7

    :catch_6
    move-exception p1

    goto :goto_6

    :catch_7
    move-exception p1

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_7
    new-instance p1, Lv3/o;

    invoke-direct {p1, p0}, Lv3/o;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->o:Lv3/o;

    new-instance p1, Lv3/b;

    invoke-direct {p1}, Lv3/b;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->n:Lv3/b;

    const p1, 0x7f090339

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->j:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;->I(Landroid/app/Activity;)V

    new-instance p1, Lrc/c;

    invoke-direct {p1, p0}, Lrc/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->E:Lrc/c;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->j:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->j:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->E:Lrc/c;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->j:Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->E:Lrc/c;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->m:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->E:Lrc/c;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCapturedPointerListener(Landroid/view/View$OnCapturedPointerListener;)V

    :cond_2
    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->g:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->x:Ljava/lang/String;

    new-instance p1, Lf7/a;

    const v0, 0x7f090476

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {p1, v0, p0}, Lf7/a;-><init>(Landroid/widget/LinearLayout;Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->d:Lf7/a;

    const p1, 0x7f090160

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->i:Landroid/view/View;

    if-eqz p1, :cond_3

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BACKGROUND:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->Y()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->init()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object p1

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->orientation:Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$b;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->R(Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings$b;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->U()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->d0()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x1000010

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :try_start_0
    sget-object v0, Lrc/a;->s:Lrc/a$e;

    invoke-virtual {v0, p1}, Lrc/a$e;->g(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :catch_2
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lrc/a;->w(Landroid/view/KeyEvent;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lrc/a;->y(Landroid/view/KeyEvent;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->D:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v0, "USER_EXITED_APP"

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/c;->a(Ljava/lang/String;)Z

    sget-object v0, LN7/c$g;->OutOfApp:LN7/c$g;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->g0(LN7/c$g;)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->V()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x24000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-static {p0}, LW7/b;->d(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-string v0, "USER_RESUMED_APP"

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/c;->a(Ljava/lang/String;)Z

    sget-object v0, LN7/c$g;->Editor:LN7/c$g;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->g0(LN7/c$g;)V

    invoke-static {}, LK8/d;->f()V

    invoke-static {}, LN7/c;->e()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->f0()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LW7/b;->q:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasFocus"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->f0()V

    :cond_0
    return-void
.end method

.method public setEdgeToEdgeInsets(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$j;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$j;-><init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    :cond_0
    return-void
.end method
