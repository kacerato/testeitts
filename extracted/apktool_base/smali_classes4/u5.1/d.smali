.class public Lu5/d;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu5/d$u;,
        Lu5/d$t;,
        Lu5/d$w;,
        Lu5/d$v;
    }
.end annotation


# static fields
.field public static final s0:Ljava/lang/String; = "FileImporterSAF"


# instance fields
.field public X:Landroid/view/View;

.field public Y:Landroid/view/View;

.field public Z:Landroid/widget/LinearLayout;

.field public a0:Landroid/view/View;

.field public b0:Landroid/view/View;

.field public c0:LF7/l;

.field public d0:LF7/l;

.field public final e0:Lu5/d$w;

.field public final f0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LF7/i;",
            ">;"
        }
    .end annotation
.end field

.field public final g0:Ljava/lang/String;

.field public final h0:Ljava/lang/String;

.field public final i0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/documentfile/provider/DocumentFile;",
            ">;"
        }
    .end annotation
.end field

.field public j0:Lw3/e$c;

.field public k0:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;

.field public l0:Lcn/pedant/SweetAlert/SweetAlertDialog;

.field public m0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LF7/i;",
            ">;"
        }
    .end annotation
.end field

.field public n0:Lu5/d$u;

.field public o0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public p0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public q0:I

.field public r0:I


# direct methods
.method public constructor <init>(Lu5/d$w;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "inProjectDestinationFolder"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->IMPORT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lu5/d;->c0:LF7/l;

    iput-object v1, p0, Lu5/d;->d0:LF7/l;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lu5/d;->f0:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lu5/d;->i0:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lu5/d;->m0:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lu5/d;->o0:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lu5/d;->p0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput v0, p0, Lu5/d;->q0:I

    iput v0, p0, Lu5/d;->r0:I

    iput-object p1, p0, Lu5/d;->e0:Lu5/d$w;

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lu5/d;->g0:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lu5/d;->h0:Ljava/lang/String;

    return-void
.end method

.method public static synthetic A1(Lu5/d;Lu5/d$t;Landroidx/documentfile/provider/DocumentFile;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lu5/d;->j2(Lu5/d$t;Landroidx/documentfile/provider/DocumentFile;)V

    return-void
.end method

.method public static synthetic B1(Lu5/d;)Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;
    .locals 0

    iget-object p0, p0, Lu5/d;->k0:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;

    return-object p0
.end method

.method public static synthetic C1(Lu5/d;Lu5/d$u;)Lu5/d$u;
    .locals 0

    iput-object p1, p0, Lu5/d;->n0:Lu5/d$u;

    return-object p1
.end method

.method public static synthetic D1(Lu5/d;Lw3/e$c;)Lw3/e$c;
    .locals 0

    iput-object p1, p0, Lu5/d;->j0:Lw3/e$c;

    return-object p1
.end method

.method public static synthetic E1(Lu5/d;Lu5/d$u;)V
    .locals 0

    invoke-virtual {p0, p1}, Lu5/d;->T1(Lu5/d$u;)V

    return-void
.end method

.method public static synthetic F1(Lu5/d;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lu5/d;->p0:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic G1(Lu5/d;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lu5/d;->o0:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic H1(Lu5/d;)V
    .locals 0

    invoke-direct {p0}, Lu5/d;->q2()V

    return-void
.end method

.method public static synthetic I1(Lu5/d;)V
    .locals 0

    invoke-direct {p0}, Lu5/d;->R1()V

    return-void
.end method

.method public static synthetic J1(Lu5/d;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lu5/d;->V1(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic K1(Lu5/d;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lu5/d;->P1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic L1(Lu5/d;LF7/i;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lu5/d;->f2(LF7/i;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M1(Lu5/d;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lu5/d;->U1()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N1(Lu5/d;)LF7/l;
    .locals 0

    iget-object p0, p0, Lu5/d;->c0:LF7/l;

    return-object p0
.end method

.method public static synthetic O1(Lu5/d;LF7/i;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lu5/d;->g2(LF7/i;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private Q1()V
    .locals 2

    invoke-direct {p0}, Lu5/d;->S1()V

    iget-object v0, p0, Lu5/d;->b0:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lu5/d;->b0:Landroid/view/View;

    const v1, 0x7f0904dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->READ_DIRECTORY_IS_REQUIRED:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lu5/d;->b0:Landroid/view/View;

    const v1, 0x7f0900c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SELECT:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lu5/d$a;

    invoke-direct {v1, p0}, Lu5/d$a;-><init>(Lu5/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private R1()V
    .locals 5

    iget-object v0, p0, Lu5/d;->Y:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lu5/d;->Y:Landroid/view/View;

    const v1, 0x7f0903e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0903b2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    const v3, 0x7f090544

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SELECT_FILES:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0903b3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PREVIEW_IN_PROJECT:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, LF7/l;

    new-instance v4, Lu5/d$l;

    invoke-direct {v4, p0}, Lu5/d$l;-><init>(Lu5/d;)V

    invoke-direct {v3, v1, v4}, LF7/l;-><init>(Landroidx/recyclerview/widget/RecyclerView;LF7/k;)V

    iput-object v3, p0, Lu5/d;->c0:LF7/l;

    new-instance v1, LF7/l;

    new-instance v3, Lu5/d$m;

    invoke-direct {v3, p0}, Lu5/d$m;-><init>(Lu5/d;)V

    invoke-direct {v1, v2, v3}, LF7/l;-><init>(Landroidx/recyclerview/widget/RecyclerView;LF7/k;)V

    iput-object v1, p0, Lu5/d;->d0:LF7/l;

    const v1, 0x7f0901ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->IMPORT:LAc/b;

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->k(Landroid/widget/Button;LAc/b;)V

    new-instance v2, Lu5/d$n;

    invoke-direct {v2, p0}, Lu5/d$n;-><init>(Lu5/d;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CANCEL:LAc/b;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->k(Landroid/widget/Button;LAc/b;)V

    new-instance v1, Lu5/d$o;

    invoke-direct {v1, p0}, Lu5/d$o;-><init>(Lu5/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private S1()V
    .locals 2

    iget-object v0, p0, Lu5/d;->a0:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lu5/d;->b0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lu5/d;->Y:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private U1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LF7/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lu5/d;->f0:Ljava/util/List;

    return-object v0
.end method

.method private W1()V
    .locals 3

    invoke-virtual {p0}, Lu5/d;->a2()Lu5/d$u;

    move-result-object v0

    iget-object v1, p0, Lu5/d;->h0:Ljava/lang/String;

    iget-object v2, v0, Lu5/d$u;->a:Ljava/util/List;

    invoke-virtual {p0, v2, v1, v0}, Lu5/d;->k2(Ljava/util/List;Ljava/lang/String;Lu5/d$u;)I

    move-result v2

    iput v2, p0, Lu5/d;->q0:I

    iget-object v2, v0, Lu5/d$u;->a:Ljava/util/List;

    invoke-virtual {p0, v2, v1, v0}, Lu5/d;->X1(Ljava/util/List;Ljava/lang/String;Lu5/d$u;)V

    return-void
.end method

.method private b2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LF7/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lu5/d;->m0:Ljava/util/List;

    return-object v0
.end method

.method private c2(Ljava/io/File;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lu5/d;->g0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    array-length v5, p1

    if-gt v5, v2, :cond_0

    return v4

    :cond_0
    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method

.method private d2(Ljava/io/File;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lu5/d;->g0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, p1

    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return v3

    :cond_0
    move v1, v3

    :goto_0
    array-length v2, v0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_3

    aget-object v2, v0, v1

    array-length v5, p1

    if-gt v5, v1, :cond_1

    return v4

    :cond_1
    aget-object v4, p1, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v4
.end method

.method private f2(LF7/i;)Ljava/util/List;
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
            "LF7/i;",
            ")",
            "Ljava/util/List<",
            "LF7/i;",
            ">;"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lu5/d$t;

    iget-object v1, v0, Lu5/d$t;->m:Landroidx/documentfile/provider/DocumentFile;

    iget-object v2, v0, Lu5/d$t;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v1, v2, v0}, Lu5/d;->e2(Landroidx/documentfile/provider/DocumentFile;Ljava/util/List;Lu5/d$t;)V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, LF7/i;->r(Z)V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LF7/i;

    invoke-virtual {p1}, LF7/i;->e()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, LF7/i;->q(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private g2(LF7/i;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "folder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LF7/i;",
            ")",
            "Ljava/util/List<",
            "LF7/i;",
            ">;"
        }
    .end annotation

    instance-of v0, p1, Lu5/e;

    if-eqz v0, :cond_0

    check-cast p1, Lu5/e;

    iget-object p1, p1, Lu5/e;->p:Ljava/util/List;

    return-object p1

    :cond_0
    instance-of v0, p1, Lu5/d$t;

    if-eqz v0, :cond_1

    check-cast p1, Lu5/d$t;

    iget-object p1, p1, Lu5/d$t;->o:Ljava/util/List;

    return-object p1

    :cond_1
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    return-object p1
.end method

.method public static l2(Ljava/lang/String;Lu5/d$w;)Lu5/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inProjectDestinationFolder",
            "listener"
        }
    .end annotation

    new-instance v0, Lu5/d;

    invoke-direct {v0, p1, p0}, Lu5/d;-><init>(Lu5/d$w;Ljava/lang/String;)V

    const p0, 0x3f4ccccd    # 0.8f

    invoke-static {v0, p0, p0}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object v0
.end method

.method private o2()V
    .locals 1

    iget-object v0, p0, Lu5/d;->c0:LF7/l;

    invoke-virtual {v0}, LF7/l;->s()V

    invoke-direct {p0}, Lu5/d;->q2()V

    return-void
.end method

.method public static synthetic p1(Lu5/d;)V
    .locals 0

    invoke-direct {p0}, Lu5/d;->o2()V

    return-void
.end method

.method public static synthetic q1(Lu5/d;Lu5/d$t;)V
    .locals 0

    invoke-virtual {p0, p1}, Lu5/d;->n2(Lu5/d$t;)V

    return-void
.end method

.method private q2()V
    .locals 3

    iget-object v0, p0, Lu5/d;->o0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lu5/d$i;

    invoke-direct {v1, p0}, Lu5/d$i;-><init>(Lu5/d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu5/d;->p0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void
.end method

.method public static synthetic r1(Lu5/d;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lu5/d;->b2()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s1(Lu5/d;)LF7/l;
    .locals 0

    iget-object p0, p0, Lu5/d;->d0:LF7/l;

    return-object p0
.end method

.method public static synthetic t1(Lu5/d;)Lcn/pedant/SweetAlert/SweetAlertDialog;
    .locals 0

    iget-object p0, p0, Lu5/d;->l0:Lcn/pedant/SweetAlert/SweetAlertDialog;

    return-object p0
.end method

.method public static synthetic u1(Lu5/d;Lcn/pedant/SweetAlert/SweetAlertDialog;)Lcn/pedant/SweetAlert/SweetAlertDialog;
    .locals 0

    iput-object p1, p0, Lu5/d;->l0:Lcn/pedant/SweetAlert/SweetAlertDialog;

    return-object p1
.end method

.method public static synthetic v1(Lu5/d;)V
    .locals 0

    invoke-direct {p0}, Lu5/d;->W1()V

    return-void
.end method

.method public static synthetic w1(Lu5/d;)Lu5/d$w;
    .locals 0

    iget-object p0, p0, Lu5/d;->e0:Lu5/d$w;

    return-object p0
.end method

.method public static synthetic x1(Lu5/d;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lu5/d;->i0:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic y1(Lu5/d;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lu5/d;->f0:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic z1(Lu5/d;Landroidx/documentfile/provider/DocumentFile;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lu5/d;->Y1(Landroidx/documentfile/provider/DocumentFile;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00b7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lu5/d;->X:Landroid/view/View;

    const v1, 0x7f090292

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lu5/d;->Y:Landroid/view/View;

    const v1, 0x7f0901f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lu5/d;->a0:Landroid/view/View;

    const v1, 0x7f0903f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lu5/d;->b0:Landroid/view/View;

    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    sget-object v2, LW7/b;->e:LX7/a;

    const-string v2, "pf"

    const-string v3, "pfsettings.config"

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, LX7/a;->C(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;

    iput-object v1, p0, Lu5/d;->k0:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v1, p0, Lu5/d;->k0:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;

    if-nez v1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;-><init>()V

    iput-object v1, p0, Lu5/d;->k0:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;

    :cond_0
    invoke-direct {p0}, Lu5/d;->Q1()V

    return-object v0
.end method

.method public final P1(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    invoke-direct {p0}, Lu5/d;->S1()V

    iget-object v0, p0, Lu5/d;->a0:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lu5/d;->X:Landroid/view/View;

    const v1, 0x7f0901f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final T1(Lu5/d$u;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "importData"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lu5/d$j;

    invoke-direct {v1, p0}, Lu5/d$j;-><init>(Lu5/d;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1, p1}, Lu5/d;->h2(Ljava/lang/String;Ljava/util/List;LYc/d;Lu5/d$u;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LF7/i;

    iget-object v2, v1, LF7/i;->f:LF7/h;

    const/4 v3, 0x1

    iput-boolean v3, v2, LF7/h;->c:Z

    invoke-virtual {p0, v1}, Lu5/d;->m2(LF7/i;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lu5/d;->m0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lu5/d;->m0:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final V1(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "files",
            "r"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/documentfile/provider/DocumentFile;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lu5/d$r;

    invoke-direct {v1, p0, p1, p2}, Lu5/d$r;-><init>(Lu5/d;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final X1(Ljava/util/List;Ljava/lang/String;Lu5/d$u;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "files",
            "destination",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lu5/d$v;",
            ">;",
            "Ljava/lang/String;",
            "Lu5/d$u;",
            ")V"
        }
    .end annotation

    new-instance v0, Lu5/d$p;

    invoke-direct {v0, p0}, Lu5/d$p;-><init>(Lu5/d;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu5/d$v;

    invoke-virtual {v1}, Lu5/d$v;->e()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lu5/d$v;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p3, Lu5/d$u;->b:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lu5/d$v;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lu5/d;->j0:Lw3/e$c;

    iget-object v1, v1, Lu5/d$v;->c:Landroidx/documentfile/provider/DocumentFile;

    invoke-interface {v2, v1, v3}, Lw3/e$c;->a(Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)Z

    iget v1, p0, Lu5/d;->r0:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lu5/d;->r0:I

    new-instance v1, Lu5/d$q;

    invoke-direct {v1, p0}, Lu5/d$q;-><init>(Lu5/d;)V

    invoke-static {v1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lu5/d$v;->d:Ljava/util/List;

    invoke-virtual {p0, v1, p2, p3}, Lu5/d;->X1(Ljava/util/List;Ljava/lang/String;Lu5/d$u;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final Y1(Landroidx/documentfile/provider/DocumentFile;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final Z1(Ljava/util/List;Lu5/d$u;Ljava/lang/String;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "elements",
            "importData",
            "folderInProject",
            "files"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LF7/i;",
            ">;",
            "Lu5/d$u;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lu5/d$v;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu5/d$v;

    invoke-virtual {v0}, Lu5/d$v;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lu5/d$u;->b:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lu5/d;->g0:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    iget-object p4, v0, Lu5/d$v;->d:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_2

    iget-object p4, v0, Lu5/d$v;->d:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu5/d$v;

    invoke-virtual {p0, p1, p3, p2, v0}, Lu5/d;->p2(Ljava/util/List;Ljava/lang/String;Lu5/d$u;Lu5/d$v;)V

    goto :goto_0

    :cond_2
    iget-object p2, v0, Lu5/d$v;->c:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p2}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object p2

    if-eqz p2, :cond_7

    array-length p3, p2

    move p4, v1

    :goto_1
    if-ge p4, p3, :cond_7

    aget-object v0, p2, p4

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, ".meta"

    invoke-static {v2, v4}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lu5/d$b;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, p0, v4, v5}, Lu5/d$b;-><init>(Lu5/d;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    new-instance v2, Lu5/d$c;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, p0, v4, v5}, Lu5/d$c;-><init>(Lu5/d;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v4, v0

    if-lez v4, :cond_4

    invoke-virtual {v2, v1}, LF7/i;->r(Z)V

    array-length v4, v0

    if-lez v4, :cond_5

    aget-object v0, v0, v1

    invoke-virtual {v2, v3}, LF7/i;->r(Z)V

    goto :goto_3

    :cond_4
    invoke-virtual {v2, v1}, LF7/i;->r(Z)V

    :cond_5
    :goto_3
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    new-instance v2, Lu5/d$d;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-direct {v2, p0, v4, v0, v5}, Lu5/d$d;-><init>(Lu5/d;Ljava/lang/String;Ljava/lang/String;Lj7/d;)V

    invoke-virtual {v2, v1}, LF7/i;->r(Z)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_7
    return v3

    :cond_8
    iget-object v0, v0, Lu5/d$v;->d:Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3, v0}, Lu5/d;->Z1(Ljava/util/List;Lu5/d$u;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_9
    return v1
.end method

.method public a2()Lu5/d$u;
    .locals 9

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v1, LMc/b;

    invoke-direct {v1}, LMc/b;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lu5/d;->f0:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lu5/d;->f0:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LF7/i;

    check-cast v4, Lu5/d$t;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v1, v0, v5}, Lu5/d;->i2(Lu5/d$t;Ljava/util/List;Ljava/util/List;Lu5/d$v;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, LTc/b;->g(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lu5/d$v;

    iget-boolean v6, v5, Lu5/d$v;->b:Z

    if-eqz v6, :cond_1

    iget-object v6, v5, Lu5/d$v;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lu5/d$v;->f()V

    goto :goto_1

    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v4, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v5, 0x1

    move v6, v5

    :goto_2
    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lu5/d$v;

    iget-boolean v8, v7, Lu5/d$v;->b:Z

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lu5/d$v;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v7}, Lu5/d$v;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_4
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, v7, Lu5/d$v;->d:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v7, v7, Lu5/d$v;->d:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-interface {v0, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move v6, v5

    goto :goto_4

    :cond_6
    move v6, v2

    :goto_4
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_2

    :cond_7
    new-instance v2, Lu5/d$u;

    invoke-direct {v2, v0, v1}, Lu5/d$u;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v2
.end method

.method public final e2(Landroidx/documentfile/provider/DocumentFile;Ljava/util/List;Lu5/d$t;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "elements",
            "parentElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/documentfile/provider/DocumentFile;",
            "Ljava/util/List<",
            "LF7/i;",
            ">;",
            "Lu5/d$t;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_4

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    array-length v3, p1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p1, v4

    invoke-virtual {v5}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lu5/c;

    invoke-direct {p1}, Lu5/c;-><init>()V

    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p1, Lu5/c;

    invoke-direct {p1}, Lu5/c;-><init>()V

    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v0, v2

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p0, v1}, Lu5/d;->Y1(Landroidx/documentfile/provider/DocumentFile;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_4

    :cond_2
    new-instance v3, Lu5/d$t;

    invoke-direct {v3, p0, v1}, Lu5/d$t;-><init>(Lu5/d;Landroidx/documentfile/provider/DocumentFile;)V

    iput-object p3, v3, Lu5/d$t;->p:Lu5/d$t;

    iget-boolean v4, p3, Lu5/d$t;->n:Z

    iput-boolean v4, v3, Lu5/d$t;->n:Z

    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-virtual {v3, v1}, LF7/i;->r(Z)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final h2(Ljava/lang/String;Ljava/util/List;LYc/d;Lu5/d$u;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "elements",
            "listFilter",
            "importData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "LF7/i;",
            ">;",
            "LYc/d;",
            "Lu5/d$u;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->clear()V

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_c

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_c

    aget-object v4, p1, v3

    if-eqz v4, :cond_b

    invoke-interface {p3, v4}, LYc/d;->a(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-direct {p0, v4}, Lu5/d;->c2(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    const-string v6, ".meta"

    const/4 v7, 0x1

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lu5/e;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Lu5/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v5, Lu5/e;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Lu5/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_4

    array-length v6, v4

    if-lez v6, :cond_4

    invoke-virtual {v5, v2}, LF7/i;->r(Z)V

    move v6, v2

    :goto_2
    array-length v8, v4

    if-ge v6, v8, :cond_5

    aget-object v8, v4, v6

    invoke-interface {p3, v8}, LYc/d;->a(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v5, v7}, LF7/i;->r(Z)V

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v5, v2}, LF7/i;->r(Z)V

    :cond_5
    :goto_3
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_6
    new-instance v5, Lj7/e;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v5, v8, v9, v10}, Lj7/e;-><init>(Ljava/lang/String;Ljava/lang/String;Lj7/d;)V

    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_8

    array-length v6, v4

    if-lez v6, :cond_8

    invoke-virtual {v5, v2}, LF7/i;->r(Z)V

    move v6, v2

    :goto_4
    array-length v8, v4

    if-ge v6, v8, :cond_a

    aget-object v8, v4, v6

    invoke-interface {p3, v8}, LYc/d;->a(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v5, v7}, LF7/i;->r(Z)V

    goto :goto_5

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {v5, v2}, LF7/i;->r(Z)V

    goto :goto_5

    :cond_9
    invoke-virtual {v5, v2}, LF7/i;->r(Z)V

    :cond_a
    :goto_5
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, ""

    invoke-virtual {p1, p3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_d

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_d
    iget-object p3, p0, Lu5/d;->g0:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e

    iget-object p3, p4, Lu5/d$u;->a:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu5/d$v;

    invoke-virtual {p0, p2, p1, p4, v0}, Lu5/d;->p2(Ljava/util/List;Ljava/lang/String;Lu5/d$u;Lu5/d$v;)V

    goto :goto_7

    :cond_e
    invoke-direct {p0, v0}, Lu5/d;->d2(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_f

    return-void

    :cond_f
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p4, Lu5/d$u;->b:Ljava/lang/String;

    invoke-virtual {p1, p3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lu5/d;->g0:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_10

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_10
    iget-object p3, p4, Lu5/d$u;->a:Ljava/util/List;

    invoke-virtual {p0, p2, p4, p1, p3}, Lu5/d;->Z1(Ljava/util/List;Lu5/d$u;Ljava/lang/String;Ljava/util/List;)Z

    :cond_11
    return-void
.end method

.method public final i2(Lu5/d$t;Ljava/util/List;Ljava/util/List;Lu5/d$v;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fileElement",
            "outFiles",
            "out",
            "parent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu5/d$t;",
            "Ljava/util/List<",
            "Landroidx/documentfile/provider/DocumentFile;",
            ">;",
            "Ljava/util/List<",
            "Lu5/d$v;",
            ">;",
            "Lu5/d$v;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p1, Lu5/d$t;->n:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Lu5/d$v;

    iget-object v2, p1, Lu5/d$t;->m:Landroidx/documentfile/provider/DocumentFile;

    invoke-direct {v0, v2}, Lu5/d$v;-><init>(Landroidx/documentfile/provider/DocumentFile;)V

    iget-object v2, p1, Lu5/d$t;->m:Landroidx/documentfile/provider/DocumentFile;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    invoke-virtual {p4, v0}, Lu5/d$v;->a(Lu5/d$v;)V

    goto :goto_0

    :cond_0
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p4, p1, Lu5/d$t;->o:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_3

    :goto_1
    iget-object p4, p1, Lu5/d$t;->o:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge v1, p4, :cond_3

    iget-object p4, p1, Lu5/d$t;->o:Ljava/util/List;

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, LF7/i;

    check-cast p4, Lu5/d$t;

    invoke-virtual {p0, p4, p2, p3, v0}, Lu5/d;->i2(Lu5/d$t;Ljava/util/List;Ljava/util/List;Lu5/d$v;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lu5/d$t;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lu5/d$v;

    iget-object v2, p1, Lu5/d$t;->m:Landroidx/documentfile/provider/DocumentFile;

    invoke-direct {v0, v2}, Lu5/d$v;-><init>(Landroidx/documentfile/provider/DocumentFile;)V

    if-eqz p4, :cond_2

    invoke-virtual {p4, v0}, Lu5/d$v;->a(Lu5/d$v;)V

    goto :goto_2

    :cond_2
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object p4, p1, Lu5/d$t;->o:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge v1, p4, :cond_3

    iget-object p4, p1, Lu5/d$t;->o:Ljava/util/List;

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, LF7/i;

    check-cast p4, Lu5/d$t;

    invoke-virtual {p0, p4, p2, p3, v0}, Lu5/d;->i2(Lu5/d$t;Ljava/util/List;Ljava/util/List;Lu5/d$v;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final j2(Lu5/d$t;Landroidx/documentfile/provider/DocumentFile;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "parentFile"
        }
    .end annotation

    invoke-virtual {p2}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object p2

    if-eqz p2, :cond_1

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    invoke-virtual {p0, v2}, Lu5/d;->Y1(Landroidx/documentfile/provider/DocumentFile;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Lu5/d$t;

    invoke-direct {v3, p0, v2}, Lu5/d$t;-><init>(Lu5/d;Landroidx/documentfile/provider/DocumentFile;)V

    invoke-virtual {p0, v3, v2}, Lu5/d;->j2(Lu5/d$t;Landroidx/documentfile/provider/DocumentFile;)V

    iget v2, p1, LF7/i;->c:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, v3, LF7/i;->c:I

    iget-object v2, p1, Lu5/d$t;->o:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v4}, LF7/i;->r(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 3

    new-instance v0, Lu5/d;

    iget-object v1, p0, Lu5/d;->e0:Lu5/d$w;

    iget-object v2, p0, Lu5/d;->g0:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lu5/d;-><init>(Lu5/d$w;Ljava/lang/String;)V

    return-object v0
.end method

.method public final k2(Ljava/util/List;Ljava/lang/String;Lu5/d$u;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "files",
            "destination",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lu5/d$v;",
            ">;",
            "Ljava/lang/String;",
            "Lu5/d$u;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu5/d$v;

    invoke-virtual {v2}, Lu5/d$v;->e()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v2, v2, Lu5/d$v;->d:Ljava/util/List;

    invoke-virtual {p0, v2, p2, p3}, Lu5/d;->k2(Ljava/util/List;Ljava/lang/String;Lu5/d$u;)I

    move-result v2

    add-int/2addr v1, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final m2(LF7/i;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "folder"
        }
    .end annotation

    iget-object v0, p0, Lu5/d;->n0:Lu5/d$u;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v2, p1, LF7/i;->a:Ljava/lang/String;

    new-instance v3, Lu5/d$s;

    invoke-direct {v3, p0}, Lu5/d$s;-><init>(Lu5/d;)V

    invoke-virtual {p0, v2, v1, v3, v0}, Lu5/d;->h2(Ljava/lang/String;Ljava/util/List;LYc/d;Lu5/d$u;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LF7/i;

    new-instance v4, Ljava/io/File;

    iget-object v5, v3, LF7/i;->a:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lu5/d;->d2(Ljava/io/File;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    iget-object v4, v3, LF7/i;->f:LF7/h;

    iput-boolean v5, v4, LF7/h;->c:Z

    goto :goto_1

    :cond_0
    iget-object v4, v3, LF7/i;->f:LF7/h;

    iput-boolean v0, v4, LF7/h;->c:Z

    :goto_1
    invoke-virtual {p1}, LF7/i;->e()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, LF7/i;->q(I)V

    invoke-virtual {p0, v3}, Lu5/d;->m2(LF7/i;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lu5/e;

    if-eqz v0, :cond_2

    check-cast p1, Lu5/e;

    iget-object v0, p1, Lu5/e;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p1, p1, Lu5/e;->p:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_2
    instance-of v0, p1, Lu5/d$t;

    if-eqz v0, :cond_3

    check-cast p1, Lu5/d$t;

    iget-object v0, p1, Lu5/d$t;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p1, p1, Lu5/d$t;->o:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_2
    return-void
.end method

.method public final n2(Lu5/d$t;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    iget-object v0, p0, Lu5/d;->c0:LF7/l;

    invoke-virtual {v0, p1}, LF7/l;->t(LF7/i;)V

    return-void
.end method

.method public final p2(Ljava/util/List;Ljava/lang/String;Lu5/d$u;Lu5/d$v;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "elements",
            "inProject",
            "importData",
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LF7/i;",
            ">;",
            "Ljava/lang/String;",
            "Lu5/d$u;",
            "Lu5/d$v;",
            ")V"
        }
    .end annotation

    invoke-virtual {p4}, Lu5/d$v;->c()Ljava/lang/String;

    move-result-object v0

    iget-object p3, p3, Lu5/d$u;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, p3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Lu5/d$v;->e()Z

    move-result p3

    const-string v0, ".meta"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_3

    invoke-virtual {p4}, Lu5/d$v;->d()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v0}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    new-instance p3, Lu5/d$e;

    invoke-virtual {p4}, Lu5/d$v;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, LTc/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, p0, v0, p2}, Lu5/d$e;-><init>(Lu5/d;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p3, Lu5/d$f;

    invoke-virtual {p4}, Lu5/d$v;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Lu5/d$v;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, p0, p2, v0}, Lu5/d$f;-><init>(Lu5/d;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p2, p4, Lu5/d$v;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p3, v2}, LF7/i;->r(Z)V

    iget-object p2, p4, Lu5/d$v;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    iget-object p2, p4, Lu5/d$v;->d:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lu5/d$v;

    invoke-virtual {p3, v1}, LF7/i;->r(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p3, v2}, LF7/i;->r(Z)V

    :cond_2
    :goto_1
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    new-instance p3, Lu5/d$g;

    invoke-virtual {p4}, Lu5/d$v;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p3, p0, v3, p2, v4}, Lu5/d$g;-><init>(Lu5/d;Ljava/lang/String;Ljava/lang/String;Lj7/d;)V

    new-instance p2, Lu5/d$h;

    invoke-direct {p2, p0, p4}, Lu5/d$h;-><init>(Lu5/d;Lu5/d$v;)V

    invoke-virtual {p3, p2}, LF7/i;->s(LF7/j;)V

    new-instance p2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lu5/d$v;->c()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_4

    array-length p4, p2

    if-lez p4, :cond_4

    invoke-virtual {p3, v2}, LF7/i;->r(Z)V

    array-length p4, p2

    if-lez p4, :cond_6

    aget-object p2, p2, v2

    invoke-virtual {p3, v1}, LF7/i;->r(Z)V

    goto :goto_2

    :cond_4
    invoke-virtual {p3, v2}, LF7/i;->r(Z)V

    goto :goto_2

    :cond_5
    invoke-virtual {p3, v2}, LF7/i;->r(Z)V

    :cond_6
    :goto_2
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    return-void
.end method
