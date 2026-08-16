.class public La7/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La7/a$g;
    }
.end annotation


# static fields
.field public static final j0:Ljava/lang/String; = "RevertFilePanel"


# instance fields
.field public X:Landroidx/recyclerview/widget/RecyclerView;

.field public Y:Le7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le7/a<",
            "La7/b;",
            "La7/c;",
            ">;"
        }
    .end annotation
.end field

.field public Z:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public a0:Ljava/lang/String;

.field public b0:Landroid/widget/TextView;

.field public c0:Landroid/widget/TextView;

.field public d0:I

.field public e0:Landroid/view/View;

.field public f0:La7/b;

.field public g0:Landroid/view/View;

.field public h0:Landroid/view/View;

.field public i0:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, La7/a;->d0:I

    iput-object p1, p0, La7/a;->a0:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-static {p1, v1}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " VCS"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->f1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic p1(La7/a;)I
    .locals 0

    iget p0, p0, La7/a;->d0:I

    return p0
.end method

.method public static synthetic q1(La7/a;I)I
    .locals 0

    iput p1, p0, La7/a;->d0:I

    return p1
.end method

.method public static synthetic r1(La7/a;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, La7/a;->e0:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic s1(La7/a;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, La7/a;->e0:Landroid/view/View;

    return-object p1
.end method

.method public static synthetic t1(La7/a;)La7/b;
    .locals 0

    iget-object p0, p0, La7/a;->f0:La7/b;

    return-object p0
.end method

.method public static synthetic u1(La7/a;La7/b;)La7/b;
    .locals 0

    iput-object p1, p0, La7/a;->f0:La7/b;

    return-object p1
.end method

.method public static synthetic v1(La7/a;)Le7/a;
    .locals 0

    iget-object p0, p0, La7/a;->Y:Le7/a;

    return-object p0
.end method

.method public static synthetic w1(La7/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, La7/a;->a0:Ljava/lang/String;

    return-object p0
.end method

.method public static z1(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    new-instance v0, La7/a;

    invoke-direct {v0, p0}, La7/a;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x28a

    invoke-static {p0}, LN7/c;->g(I)F

    move-result p0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-static {v0, p0, v1}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0191

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, La7/a$a;

    invoke-direct {v1, p0}, La7/a$a;-><init>(La7/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0903e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, La7/a;->X:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, La7/a$b;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, p0, v3}, La7/a$b;-><init>(La7/a;Landroid/content/Context;)V

    iput-object v1, p0, La7/a;->Z:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, La7/a;->X:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Le7/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v3

    new-instance v4, La7/a$c;

    invoke-direct {v4, p0}, La7/a$c;-><init>(La7/a;)V

    invoke-direct {v1, v3, v4}, Le7/a;-><init>(Landroid/content/Context;Le7/a$a;)V

    iput-object v1, p0, La7/a;->Y:Le7/a;

    iget-object v3, p0, La7/a;->X:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, La7/a;->X:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    const v1, 0x7f09046f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, La7/a;->b0:Landroid/widget/TextView;

    const v1, 0x7f090190

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, La7/a;->c0:Landroid/widget/TextView;

    const v1, 0x7f090523

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, La7/a;->g0:Landroid/view/View;

    const v1, 0x7f090287

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, La7/a;->h0:Landroid/view/View;

    const v1, 0x7f09046b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, La7/a;->i0:Landroid/view/View;

    const v1, 0x7f09019e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0903fb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, La7/a$d;

    invoke-direct {v3, p0}, La7/a$d;-><init>(La7/a;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, La7/a$e;

    invoke-direct {v1, p0}, La7/a$e;-><init>(La7/a;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, La7/a;->y1()V

    return-object v0
.end method

.method public x1(La7/b;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    iget-object v1, p0, La7/a;->i0:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, La7/a;->h0:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, La7/a;->g0:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, La7/b;->c:Lh4/d;

    iput-object p1, p0, La7/a;->f0:La7/b;

    iget-object v1, p0, La7/a;->b0:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v0}, Lh4/d;->a()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, LTc/b;->r(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, La7/a;->c0:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lh4/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, La7/b;->c:Lh4/d;

    invoke-interface {v0}, Lh4/d;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, La7/a;->g0:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, La7/a;->g0:Landroid/view/View;

    const v3, 0x7f09051e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p1, La7/b;->c:Lh4/d;

    invoke-interface {p1}, Lh4/d;->d()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm"

    invoke-static {v0, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f090266

    if-eqz v0, :cond_1

    iget-object v0, p0, La7/a;->h0:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, La7/a;->h0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, p1, v1}, LIc/l;->i(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".texture"

    invoke-static {v0, v3}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, La7/a;->h0:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, La7/a;->h0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, p1, v1}, LVc/e;->O(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, La7/a;->i0:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, La7/a;->h0:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, La7/a;->g0:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    iput-object p1, p0, La7/a;->f0:La7/b;

    :cond_3
    :goto_0
    return-void
.end method

.method public final y1()V
    .locals 1

    new-instance v0, La7/a$f;

    invoke-direct {v0, p0}, La7/a$f;-><init>(La7/a;)V

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method
