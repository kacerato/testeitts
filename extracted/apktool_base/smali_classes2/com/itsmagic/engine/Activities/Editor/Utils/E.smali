.class public Lcom/itsmagic/engine/Activities/Editor/Utils/E;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;
    }
.end annotation


# static fields
.field public static final Y:Ljava/lang/String; = "UIBlockPanel"

.field public static final Z:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itsmagic/engine/Activities/Editor/Utils/E;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile a0:Z = false

.field public static final b0:I = 0x7


# instance fields
.field public X:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->Z:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "UIBlockPanel"

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a1(Z)V

    return-void
.end method

.method public static synthetic p1(Lcom/itsmagic/engine/Activities/Editor/Utils/E;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->X:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static synthetic q1()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->Z:Ljava/util/Set;

    return-object v0
.end method

.method public static s1(Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "post"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/E;-><init>()V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->Z:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    sput-boolean v2, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->a0:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Utils/E$a;

    invoke-direct {v1, v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/E$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/E;Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;)V

    const/4 p0, 0x7

    invoke-static {p0, v1}, LN7/c;->d0(ILjava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c01c6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Utils/E$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/E$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/E;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Utils/E$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/E$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/E;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public G0()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/E$d;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/E$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/E;)V

    const/4 v1, 0x7

    invoke-static {v1, v0}, LN7/c;->d0(ILjava/lang/Runnable;)V

    return-void
.end method

.method public r1(Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->X:Landroid/view/View$OnClickListener;

    return-void
.end method
