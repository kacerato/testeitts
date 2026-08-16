.class public LP6/c;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# instance fields
.field public final X:Ljava/lang/String;

.field public Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

.field public Z:Landroid/widget/LinearLayout;

.field public final a0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public b0:Landroid/view/View;

.field public c0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation
.end field

.field public final d0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public e0:Landroid/view/View;

.field public f0:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inProjectFile"
        }
    .end annotation

    invoke-static {p1}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LP6/c;->a0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v1, p0, LP6/c;->c0:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LP6/c;->d0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    iput-object p1, p0, LP6/c;->X:Ljava/lang/String;

    return-void
.end method

.method private A1(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object v0, p0, LP6/c;->d0:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, LP6/c;->e0:Landroid/view/View;

    iget-object p1, p0, LP6/c;->d0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private B1(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object v0, p0, LP6/c;->a0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    if-nez p1, :cond_0

    iget-object p1, p0, LP6/c;->f0:Landroid/view/View;

    :cond_0
    sget-object v0, Lr4/a$e;->Left:Lr4/a$e;

    invoke-static {p1, v0}, Lq7/a;->t1(Landroid/view/View;Lr4/a$e;)Lq7/a;

    move-result-object p1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LP6/c$l;

    invoke-direct {v1, p0, p1}, LP6/c$l;-><init>(LP6/c;Lq7/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method private C1()V
    .locals 3

    iget-object v0, p0, LP6/c;->b0:Landroid/view/View;

    const v1, 0x7f090532

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, LP6/c;->X:Ljava/lang/String;

    invoke-static {v2}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, LP6/c;->f2()V

    const v1, 0x7f090426

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, LP6/c;->Z:Landroid/widget/LinearLayout;

    invoke-direct {p0}, LP6/c;->e2()V

    const v1, 0x7f0901ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LP6/c;->f0:Landroid/view/View;

    new-instance v1, LP6/c$k;

    invoke-direct {v1, p0}, LP6/c$k;-><init>(LP6/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private D1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "org",
            "active"
        }
    .end annotation

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0}, LU/a;->y()LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    const v1, 0x7f070271

    invoke-virtual {v0, v1}, LU/a;->u(I)LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    iget-object v1, p0, LP6/c;->b0:Landroid/view/View;

    const v2, 0x7f09037f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0903f7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Original: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f09028d

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, LP6/c;->X:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    sget-object v6, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    new-instance v7, LP6/c$W;

    invoke-direct {v7, p0, v1}, LP6/c$W;-><init>(LP6/c;Landroid/widget/ImageView;)V

    invoke-static {v3, v4, v0, v6, v7}, LVc/e;->j(Ljava/lang/String;Landroid/content/Context;LU/h;Lcom/bumptech/glide/load/engine/i;LVc/e$k;)V

    iget-object v1, p0, LP6/c;->b0:Landroid/view/View;

    const v3, 0x7f0901dd

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Active: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance p2, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LP6/c;->X:Ljava/lang/String;

    invoke-static {v2}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".texture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    new-instance v2, LP6/c$X;

    invoke-direct {v2, p0, p1}, LP6/c$X;-><init>(LP6/c;Landroid/widget/ImageView;)V

    invoke-static {p2, v1, v0, v6, v2}, LVc/e;->j(Ljava/lang/String;Landroid/content/Context;LU/h;Lcom/bumptech/glide/load/engine/i;LVc/e$k;)V

    return-void
.end method

.method private I1()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v4, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const-string v1, "Pixel"

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Linear"

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, LC5/b;

    new-instance v2, LP6/c$n;

    invoke-direct {v2, p0}, LP6/c$n;-><init>(LP6/c;)V

    invoke-direct {p0}, LP6/c;->J1()Ljava/lang/String;

    move-result-object v3

    sget-object v12, LC5/b$a;->SLDropdown:LC5/b$a;

    const-string v6, "Filter"

    move-object v1, v7

    move-object v5, v12

    invoke-direct/range {v1 .. v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;Ljava/util/List;LC5/b$a;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v11}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const-string v1, "Clamp"

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Repeat"

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "MirrorRepeat"

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v9, LP6/c$o;

    invoke-direct {v9, p0}, LP6/c$o;-><init>(LP6/c;)V

    invoke-direct {p0}, LP6/c;->X1()Ljava/lang/String;

    move-result-object v10

    const-string v13, "Wrap"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, LC5/b;-><init>(LD5/h;Ljava/lang/String;Ljava/util/List;LC5/b$a;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, LP6/c$p;

    invoke-direct {v2, p0}, LP6/c$p;-><init>(LP6/c;)V

    const-string v3, "Mipmaps"

    sget-object v4, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, LP6/c$q;

    invoke-direct {v2, p0}, LP6/c$q;-><init>(LP6/c;)V

    const-string v3, "Mipmap levels"

    sget-object v4, LC5/b$a;->SLInt:LC5/b$a;

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private J1()Ljava/lang/String;
    .locals 2

    sget-object v0, LP6/c$V;->b:[I

    iget-object v1, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->k()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "Unknown"

    return-object v0

    :cond_0
    const-string v0, "Linear"

    return-object v0

    :cond_1
    const-string v0, "Pixel"

    return-object v0
.end method

.method private K1()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, LC5/b;

    new-instance v2, LP6/c$r;

    invoke-direct {v2, p0}, LP6/c$r;-><init>(LP6/c;)V

    sget-object v3, LC5/b$a;->SLBoolean:LC5/b$a;

    const-string v4, "Flip x"

    invoke-direct {v1, v2, v4, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, LP6/c$s;

    invoke-direct {v2, p0}, LP6/c$s;-><init>(LP6/c;)V

    const-string v4, "Flip y"

    invoke-direct {v1, v2, v4, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ROTATE:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->rotate:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$e;

    new-instance v3, LP6/c$t;

    invoke-direct {v3, p0}, LP6/c$t;-><init>(LP6/c;)V

    const-class v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$e;

    invoke-static {v1, v4, v2, v3}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private X1()Ljava/lang/String;
    .locals 2

    sget-object v0, LP6/c$V;->c:[I

    iget-object v1, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->wrap:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, "Unknown"

    return-object v0

    :cond_0
    const-string v0, "MirrorRepeat"

    return-object v0

    :cond_1
    const-string v0, "Repeat"

    return-object v0

    :cond_2
    const-string v0, "Clamp"

    return-object v0
.end method

.method private Z1()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LP6/c;->c0:Ljava/util/List;

    invoke-direct {p0}, LP6/c;->e2()V

    return-void
.end method

.method private a2()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LP6/c;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v2, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, LX7/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    return-void
.end method

.method public static b2(Landroid/view/View;Lr4/a$e;Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "anchorSide",
            "inProjectFile"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    const/16 v0, 0x172

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v0

    const/16 v1, 0x12c

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v1

    new-instance v2, LP6/c;

    invoke-direct {v2, p2}, LP6/c;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, p1, v0, v1}, Lr4/a;->g(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "listener can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Anchor can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c2(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inProjectFile"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    const/16 v0, 0x172

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v0

    const/16 v1, 0x12c

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v1

    new-instance v2, LP6/c;

    invoke-direct {v2, p0}, LP6/c;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v1}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "listener can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private e2()V
    .locals 14

    iget-object v0, p0, LP6/c;->c0:Ljava/util/List;

    if-nez v0, :cond_8

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LP6/c;->c0:Ljava/util/List;

    new-instance v4, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    array-length v1, v0

    const/4 v7, 0x0

    move v2, v7

    :goto_0
    const-string v3, "x"

    if-ge v2, v1, :cond_0

    aget v5, v0, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LP6/c;->c0:Ljava/util/List;

    new-instance v8, LC5/b;

    new-instance v2, LP6/c$Y;

    invoke-direct {v2, p0}, LP6/c$Y;-><init>(LP6/c;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    iget-object v6, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget v6, v6, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->maxResolutionID:I

    aget v5, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    iget-object v5, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget v5, v5, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->maxResolutionID:I

    aget v3, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, LC5/b$a;->SLDropdown:LC5/b$a;

    const-string v6, "Max resolution"

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;Ljava/util/List;LC5/b$a;Ljava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LP6/c;->c0:Ljava/util/List;

    iget-object v1, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->type:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    new-instance v2, LP6/c$Z;

    invoke-direct {v2, p0}, LP6/c$Z;-><init>(LP6/c;)V

    const-string v3, "Type"

    const-class v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    invoke-static {v3, v4, v1, v2}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->type:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;->Sprite:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LP6/c;->c0:Ljava/util/List;

    new-instance v1, LP6/c$a0;

    invoke-direct {v1, p0}, LP6/c$a0;-><init>(LP6/c;)V

    const-string v2, "Open Sprite Editor"

    invoke-static {v2, v1}, LF5/c;->c(Ljava/lang/String;LF5/b;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->compressionFormat:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->UNCOMPRESSED:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    if-eq v1, v2, :cond_2

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, LP6/c;->c0:Ljava/util/List;

    new-instance v1, LC5/b;

    new-instance v2, LP6/c$a;

    invoke-direct {v2, p0}, LP6/c$a;-><init>(LP6/c;)V

    const-string v3, "Quality"

    sget-object v4, LC5/b$a;->SLInt:LC5/b$a;

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v11, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v11}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;->values()[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$g;

    move-result-object v1

    const-string v2, ""

    move-object v10, v2

    :goto_1
    array-length v2, v1

    if-ge v7, v2, :cond_5

    aget-object v2, v1, v7

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v10, v3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    iget-object v1, p0, LP6/c;->c0:Ljava/util/List;

    new-instance v2, LC5/b;

    new-instance v9, LP6/c$b;

    invoke-direct {v9, p0, v0}, LP6/c$b;-><init>(LP6/c;Ljava/util/List;)V

    sget-object v12, LC5/b$a;->SLDropdown:LC5/b$a;

    const-string v13, "Format"

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, LC5/b;-><init>(LD5/h;Ljava/lang/String;Ljava/util/List;LC5/b$a;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LP6/c;->c0:Ljava/util/List;

    new-instance v1, LC5/b;

    new-instance v2, LP6/c$c;

    invoke-direct {v2, p0}, LP6/c$c;-><init>(LP6/c;)V

    sget-object v3, LC5/b$a;->SLBoolean:LC5/b$a;

    const-string v4, "Allow realtime modification"

    invoke-direct {v1, v2, v4, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    if-nez v1, :cond_6

    iget-object v1, p0, LP6/c;->c0:Ljava/util/List;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->compressionFormat:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    new-instance v2, LP6/c$d;

    invoke-direct {v2, p0}, LP6/c$d;-><init>(LP6/c;)V

    const-string v4, "Compression"

    const-class v5, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    invoke-static {v4, v5, v0, v2}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->compressionFormat:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->UNCOMPRESSED:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    if-eq v1, v2, :cond_7

    iget-object v1, p0, LP6/c;->c0:Ljava/util/List;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->compressionEffort:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    new-instance v2, LP6/c$e;

    invoke-direct {v2, p0}, LP6/c$e;-><init>(LP6/c;)V

    const-string v4, "Compression effort"

    const-class v5, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    invoke-static {v4, v5, v0, v2}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    iget-object v0, p0, LP6/c;->c0:Ljava/util/List;

    new-instance v1, LC5/b;

    const/16 v2, 0xc

    const v4, 0x7f05003c

    const-string v5, "Compression is not supported, be carefully"

    invoke-direct {v1, v5, v2, v4}, LC5/b;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    iget-object v0, p0, LP6/c;->c0:Ljava/util/List;

    new-instance v1, LC5/b;

    new-instance v2, LP6/c$f;

    invoke-direct {v2, p0}, LP6/c$f;-><init>(LP6/c;)V

    const-string v4, "Gamma correction"

    invoke-direct {v1, v2, v4, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LP6/c;->c0:Ljava/util/List;

    new-instance v1, LC5/b;

    new-instance v2, LP6/c$g;

    invoke-direct {v2, p0}, LP6/c$g;-><init>(LP6/c;)V

    const-string v4, "Black is alpha"

    invoke-direct {v1, v2, v4, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LP6/c;->c0:Ljava/util/List;

    new-instance v1, LC5/b;

    new-instance v2, LP6/c$h;

    invoke-direct {v2, p0}, LP6/c$h;-><init>(LP6/c;)V

    const-string v4, "Is 9 patch"

    invoke-direct {v1, v2, v4, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LP6/c;->c0:Ljava/util/List;

    new-instance v1, LC5/b;

    new-instance v2, LP6/c$i;

    invoke-direct {v2, p0}, LP6/c$i;-><init>(LP6/c;)V

    const-string v4, "Auto generate normalmap"

    invoke-direct {v1, v2, v4, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LP6/c;->c0:Ljava/util/List;

    new-instance v1, LC5/b;

    new-instance v2, LP6/c$j;

    invoke-direct {v2, p0}, LP6/c$j;-><init>(LP6/c;)V

    const-string v3, "Normal map bias"

    sget-object v4, LC5/b$a;->SLInt:LC5/b$a;

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LP6/c;->c0:Ljava/util/List;

    invoke-direct {p0}, LP6/c;->I1()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, LP6/c;->c0:Ljava/util/List;

    invoke-direct {p0}, LP6/c;->K1()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, LP6/c;->c0:Ljava/util/List;

    invoke-virtual {p0}, LP6/c;->R1()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_8
    iget-object v0, p0, LP6/c;->c0:Ljava/util/List;

    iget-object v1, p0, LP6/c;->Z:Landroid/widget/LinearLayout;

    new-instance v2, LP6/c$m;

    invoke-direct {v2, p0}, LP6/c$m;-><init>(LP6/c;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v3, v2}, LP6/c;->d2(Ljava/util/List;Landroid/widget/LinearLayout;ZLB5/b;)V

    return-void
.end method

.method private f2()V
    .locals 4

    iget-object v0, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->width:I

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->originalWidth:I

    if-nez v0, :cond_1

    :cond_0
    :try_start_0
    new-instance v0, LP6/c$H;

    invoke-direct {v0, p0}, LP6/c$H;-><init>(LP6/c;)V

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V
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

    :cond_1
    :goto_1
    iget-object v0, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->width:I

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->originalWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->originalHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->height:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LP6/c;->D1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v0, ""

    invoke-direct {p0, v0, v0}, LP6/c;->D1(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private g2()V
    .locals 6

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0}, LU/a;->y()LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    const v1, 0x7f070271

    invoke-virtual {v0, v1}, LU/a;->u(I)LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    iget-object v1, p0, LP6/c;->b0:Landroid/view/View;

    const v2, 0x7f0901dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09028d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, LP6/c;->X:Ljava/lang/String;

    invoke-static {v4}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".texture"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    new-instance v5, LP6/c$G;

    invoke-direct {v5, p0, v1}, LP6/c$G;-><init>(LP6/c;Landroid/widget/ImageView;)V

    invoke-static {v2, v3, v0, v4, v5}, LVc/e;->j(Ljava/lang/String;Landroid/content/Context;LU/h;Lcom/bumptech/glide/load/engine/i;LVc/e$k;)V

    return-void
.end method

.method public static synthetic p1(LP6/c;)V
    .locals 0

    invoke-direct {p0}, LP6/c;->a2()V

    return-void
.end method

.method public static synthetic q1(LP6/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LP6/c;->X:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic r1(LP6/c;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, LP6/c;->X1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s1(LP6/c;)V
    .locals 0

    invoke-direct {p0}, LP6/c;->g2()V

    return-void
.end method

.method public static synthetic t1(LP6/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, LP6/c;->a0:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic u1(LP6/c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;
    .locals 0

    iget-object p0, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    return-object p0
.end method

.method public static synthetic v1(LP6/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LP6/c;->D1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic w1(LP6/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, LP6/c;->A1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x1(LP6/c;)V
    .locals 0

    invoke-direct {p0}, LP6/c;->Z1()V

    return-void
.end method

.method public static synthetic y1(LP6/c;)V
    .locals 0

    invoke-direct {p0}, LP6/c;->e2()V

    return-void
.end method

.method public static synthetic z1(LP6/c;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, LP6/c;->J1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c01c3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LP6/c;->b0:Landroid/view/View;

    invoke-virtual {p0}, LP6/c;->Y1()V

    iget-object v1, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    if-eqz v1, :cond_0

    invoke-direct {p0}, LP6/c;->C1()V

    goto :goto_0

    :cond_0
    const-string v1, "Invalid texture"

    invoke-static {v1}, LN7/c;->v0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    :goto_0
    return-object v0
.end method

.method public final E1()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v2, LC5/b;

    new-instance v3, LC5/a;

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->BOOST:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-boolean v5, v5, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowBoost:Z

    new-instance v6, LP6/c$M;

    invoke-direct {v6, v0}, LP6/c$M;-><init>(LP6/c;)V

    invoke-direct {v3, v4, v5, v6}, LC5/a;-><init>(Ljava/lang/String;ZLD5/h;)V

    invoke-direct {v2, v3}, LC5/b;-><init>(LC5/a;)V

    iget-object v3, v2, LC5/b;->Q:LC5/a;

    iget-object v3, v3, LC5/a;->o:Ljava/util/List;

    new-instance v11, LC5/b;

    new-instance v5, LP6/c$N;

    invoke-direct {v5, v0}, LP6/c$N;-><init>(LP6/c;)V

    sget-object v19, LC5/b$a;->SLIntSlider:LC5/b$a;

    const/high16 v9, 0x43160000    # 150.0f

    const/4 v10, 0x0

    const-string v6, "Red "

    const/4 v8, 0x0

    move-object v4, v11

    move-object/from16 v7, v19

    invoke-direct/range {v4 .. v10}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;FFF)V

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, LC5/b;->Q:LC5/a;

    iget-object v3, v3, LC5/a;->o:Ljava/util/List;

    new-instance v4, LC5/b;

    new-instance v13, LP6/c$O;

    invoke-direct {v13, v0}, LP6/c$O;-><init>(LP6/c;)V

    const/high16 v17, 0x43160000    # 150.0f

    const/16 v18, 0x0

    const-string v14, "Green "

    const/16 v16, 0x0

    move-object v12, v4

    move-object/from16 v15, v19

    invoke-direct/range {v12 .. v18}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;FFF)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, LC5/b;->Q:LC5/a;

    iget-object v3, v3, LC5/a;->o:Ljava/util/List;

    new-instance v4, LC5/b;

    new-instance v13, LP6/c$P;

    invoke-direct {v13, v0}, LP6/c$P;-><init>(LP6/c;)V

    const-string v14, "Blue "

    move-object v12, v4

    invoke-direct/range {v12 .. v18}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;FFF)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, LC5/b;->Q:LC5/a;

    const v4, 0x7f0500b2

    iput v4, v3, LC5/a;->p:I

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public final F1()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, LC5/b;

    new-instance v2, LC5/a;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->BRIGHTNESS:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowBrightness:Z

    new-instance v5, LP6/c$K;

    invoke-direct {v5, p0}, LP6/c$K;-><init>(LP6/c;)V

    invoke-direct {v2, v3, v4, v5}, LC5/a;-><init>(Ljava/lang/String;ZLD5/h;)V

    invoke-direct {v1, v2}, LC5/b;-><init>(LC5/a;)V

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    new-instance v10, LC5/b;

    new-instance v4, LP6/c$L;

    invoke-direct {v4, p0}, LP6/c$L;-><init>(LP6/c;)V

    sget-object v6, LC5/b$a;->SLIntSlider:LC5/b$a;

    const/high16 v8, 0x42c80000    # 100.0f

    const/4 v9, 0x0

    const-string v5, "Value "

    const/high16 v7, -0x3d380000    # -100.0f

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;FFF)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    const v3, 0x7f0500b2

    iput v3, v2, LC5/a;->p:I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final G1()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, LC5/b;

    new-instance v2, LC5/a;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->COLOR_DEPTH:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowColorDepth:Z

    new-instance v5, LP6/c$Q;

    invoke-direct {v5, p0}, LP6/c$Q;-><init>(LP6/c;)V

    invoke-direct {v2, v3, v4, v5}, LC5/a;-><init>(Ljava/lang/String;ZLD5/h;)V

    invoke-direct {v1, v2}, LC5/b;-><init>(LC5/a;)V

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    new-instance v10, LC5/b;

    new-instance v4, LP6/c$R;

    invoke-direct {v4, p0}, LP6/c$R;-><init>(LP6/c;)V

    sget-object v6, LC5/b$a;->SLIntSlider:LC5/b$a;

    const/high16 v8, 0x40800000    # 4.0f

    const/4 v9, 0x0

    const-string v5, "Depth "

    const/4 v7, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;FFF)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    const v3, 0x7f0500b2

    iput v3, v2, LC5/a;->p:I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final H1()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, LC5/b;

    new-instance v2, LC5/a;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CONTRAST:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowContrast:Z

    new-instance v5, LP6/c$I;

    invoke-direct {v5, p0}, LP6/c$I;-><init>(LP6/c;)V

    invoke-direct {v2, v3, v4, v5}, LC5/a;-><init>(Ljava/lang/String;ZLD5/h;)V

    invoke-direct {v1, v2}, LC5/b;-><init>(LC5/a;)V

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    new-instance v10, LC5/b;

    new-instance v4, LP6/c$J;

    invoke-direct {v4, p0}, LP6/c$J;-><init>(LP6/c;)V

    sget-object v6, LC5/b$a;->SLIntSlider:LC5/b$a;

    const/high16 v8, 0x42c80000    # 100.0f

    const/4 v9, 0x0

    const-string v5, "Value "

    const/high16 v7, -0x3d380000    # -100.0f

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;FFF)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    const v3, 0x7f0500b2

    iput v3, v2, LC5/a;->p:I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final L1()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, LC5/b;

    new-instance v2, LC5/a;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->GAUSSIAN:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->gaussian:Z

    new-instance v5, LP6/c$F;

    invoke-direct {v5, p0}, LP6/c$F;-><init>(LP6/c;)V

    invoke-direct {v2, v3, v4, v5}, LC5/a;-><init>(Ljava/lang/String;ZLD5/h;)V

    invoke-direct {v1, v2}, LC5/b;-><init>(LC5/a;)V

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    const v3, 0x7f0500b2

    iput v3, v2, LC5/a;->p:I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final M1()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, LC5/b;

    new-instance v2, LC5/a;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->GREY_SCALE:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->grayscale:Z

    new-instance v5, LP6/c$u;

    invoke-direct {v5, p0}, LP6/c$u;-><init>(LP6/c;)V

    invoke-direct {v2, v3, v4, v5}, LC5/a;-><init>(Ljava/lang/String;ZLD5/h;)V

    invoke-direct {v1, v2}, LC5/b;-><init>(LC5/a;)V

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    const v3, 0x7f0500b2

    iput v3, v2, LC5/a;->p:I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final N1()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, LC5/b;

    new-instance v2, LC5/a;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->HUE:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowHUE:Z

    new-instance v5, LP6/c$x;

    invoke-direct {v5, p0}, LP6/c$x;-><init>(LP6/c;)V

    invoke-direct {v2, v3, v4, v5}, LC5/a;-><init>(Ljava/lang/String;ZLD5/h;)V

    invoke-direct {v1, v2}, LC5/b;-><init>(LC5/a;)V

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    new-instance v10, LC5/b;

    new-instance v4, LP6/c$y;

    invoke-direct {v4, p0}, LP6/c$y;-><init>(LP6/c;)V

    sget-object v6, LC5/b$a;->SLIntSlider:LC5/b$a;

    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v9, 0x0

    const-string v5, "Value "

    const/4 v7, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;FFF)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    const v3, 0x7f0500b2

    iput v3, v2, LC5/a;->p:I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final O1()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, LC5/b;

    new-instance v2, LC5/a;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->INVERT_COLORS:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->grayscale:Z

    new-instance v5, LP6/c$v;

    invoke-direct {v5, p0}, LP6/c$v;-><init>(LP6/c;)V

    invoke-direct {v2, v3, v4, v5}, LC5/a;-><init>(Ljava/lang/String;ZLD5/h;)V

    invoke-direct {v1, v2}, LC5/b;-><init>(LC5/a;)V

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    const v3, 0x7f0500b2

    iput v3, v2, LC5/a;->p:I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final P1()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, LC5/b;

    new-instance v2, LC5/a;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOISE:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->noise:Z

    new-instance v5, LP6/c$w;

    invoke-direct {v5, p0}, LP6/c$w;-><init>(LP6/c;)V

    invoke-direct {v2, v3, v4, v5}, LC5/a;-><init>(Ljava/lang/String;ZLD5/h;)V

    invoke-direct {v1, v2}, LC5/b;-><init>(LC5/a;)V

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    const v3, 0x7f0500b2

    iput v3, v2, LC5/a;->p:I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final Q1()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, LC5/b;

    new-instance v2, LC5/a;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OPACITY:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowOpacity:Z

    new-instance v5, LP6/c$S;

    invoke-direct {v5, p0}, LP6/c$S;-><init>(LP6/c;)V

    invoke-direct {v2, v3, v4, v5}, LC5/a;-><init>(Ljava/lang/String;ZLD5/h;)V

    invoke-direct {v1, v2}, LC5/b;-><init>(LC5/a;)V

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    new-instance v3, LC5/b;

    new-instance v4, LP6/c$T;

    invoke-direct {v4, p0}, LP6/c$T;-><init>(LP6/c;)V

    sget-object v5, LC5/b$a;->Texture:LC5/b$a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v6

    const-string v7, "Alpha texture"

    invoke-direct {v3, v4, v7, v5, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Landroid/content/Context;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    const v3, 0x7f0500b2

    iput v3, v2, LC5/a;->p:I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final R1()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, LC5/b;

    new-instance v2, LC5/a;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->POST_PROCESSING:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, LC5/a;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v2}, LC5/b;-><init>(LC5/a;)V

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    const v3, 0x7f0500b2

    iput v3, v2, LC5/a;->p:I

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    invoke-virtual {p0}, LP6/c;->O1()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    invoke-virtual {p0}, LP6/c;->M1()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    invoke-virtual {p0}, LP6/c;->N1()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    invoke-virtual {p0}, LP6/c;->P1()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    invoke-virtual {p0}, LP6/c;->S1()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    invoke-virtual {p0}, LP6/c;->T1()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    invoke-virtual {p0}, LP6/c;->U1()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    invoke-virtual {p0}, LP6/c;->V1()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    invoke-virtual {p0}, LP6/c;->W1()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    invoke-virtual {p0}, LP6/c;->L1()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    invoke-virtual {p0}, LP6/c;->H1()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    invoke-virtual {p0}, LP6/c;->F1()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    invoke-virtual {p0}, LP6/c;->E1()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    invoke-virtual {p0}, LP6/c;->G1()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    invoke-virtual {p0}, LP6/c;->Q1()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final S1()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, LC5/b;

    new-instance v2, LC5/a;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SATURATION:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowSaturation:Z

    new-instance v5, LP6/c$z;

    invoke-direct {v5, p0}, LP6/c$z;-><init>(LP6/c;)V

    invoke-direct {v2, v3, v4, v5}, LC5/a;-><init>(Ljava/lang/String;ZLD5/h;)V

    invoke-direct {v1, v2}, LC5/b;-><init>(LC5/a;)V

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    new-instance v10, LC5/b;

    new-instance v4, LP6/c$A;

    invoke-direct {v4, p0}, LP6/c$A;-><init>(LP6/c;)V

    sget-object v6, LC5/b$a;->SLIntSlider:LC5/b$a;

    const/high16 v8, 0x43480000    # 200.0f

    const/4 v9, 0x0

    const-string v5, "Value "

    const/4 v7, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;FFF)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    const v3, 0x7f0500b2

    iput v3, v2, LC5/a;->p:I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final T1()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, LC5/b;

    new-instance v2, LC5/a;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SEPIA:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->sepia:Z

    new-instance v5, LP6/c$B;

    invoke-direct {v5, p0}, LP6/c$B;-><init>(LP6/c;)V

    invoke-direct {v2, v3, v4, v5}, LC5/a;-><init>(Ljava/lang/String;ZLD5/h;)V

    invoke-direct {v1, v2}, LC5/b;-><init>(LC5/a;)V

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    const v3, 0x7f0500b2

    iput v3, v2, LC5/a;->p:I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final U1()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, LC5/b;

    new-instance v2, LC5/a;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SHARPEN:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->sharpen:Z

    new-instance v5, LP6/c$C;

    invoke-direct {v5, p0}, LP6/c$C;-><init>(LP6/c;)V

    invoke-direct {v2, v3, v4, v5}, LC5/a;-><init>(Ljava/lang/String;ZLD5/h;)V

    invoke-direct {v1, v2}, LC5/b;-><init>(LC5/a;)V

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    const v3, 0x7f0500b2

    iput v3, v2, LC5/a;->p:I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final V1()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, LC5/b;

    new-instance v2, LC5/a;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SKETCH:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->sketch:Z

    new-instance v5, LP6/c$D;

    invoke-direct {v5, p0}, LP6/c$D;-><init>(LP6/c;)V

    invoke-direct {v2, v3, v4, v5}, LC5/a;-><init>(Ljava/lang/String;ZLD5/h;)V

    invoke-direct {v1, v2}, LC5/b;-><init>(LC5/a;)V

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    const v3, 0x7f0500b2

    iput v3, v2, LC5/a;->p:I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final W1()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, LC5/b;

    new-instance v2, LC5/a;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->VIGNETTE:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->vignette:Z

    new-instance v5, LP6/c$E;

    invoke-direct {v5, p0}, LP6/c$E;-><init>(LP6/c;)V

    invoke-direct {v2, v3, v4, v5}, LC5/a;-><init>(Ljava/lang/String;ZLD5/h;)V

    invoke-direct {v1, v2}, LC5/b;-><init>(LC5/a;)V

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    const v3, 0x7f0500b2

    iput v3, v2, LC5/a;->p:I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final Y1()V
    .locals 3

    :try_start_0
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LP6/c;->X:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, LX7/a;->s(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iput-object v0, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v0, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    iput-object v0, p0, LP6/c;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    :cond_0
    return-void
.end method

.method public d2(Ljava/util/List;Landroid/widget/LinearLayout;ZLB5/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "entries",
            "content",
            "clearViews",
            "entriesListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LC5/b;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "Z",
            "LB5/b;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, LC5/b;

    iget-object v0, v3, LC5/b;->n:LC5/b$a;

    sget-object v1, LC5/b$a;->Vector:LC5/b$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    invoke-static {p2, v0, v3, v1, v2}, LC5/h;->y(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;)V

    goto :goto_0

    :cond_1
    sget-object v1, LC5/b$a;->Component:LC5/b$a;

    if-ne v0, v1, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v5

    new-instance v6, LP6/c$U;

    invoke-direct {v6, p0, p4, p1, p2}, LP6/c$U;-><init>(LP6/c;LB5/b;Ljava/util/List;Landroid/widget/LinearLayout;)V

    const/4 v4, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, LC5/h;->w(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;LC5/n;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v6

    const/4 v4, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 2

    new-instance v0, LP6/c;

    iget-object v1, p0, LP6/c;->X:Ljava/lang/String;

    invoke-direct {v0, v1}, LP6/c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public m1()V
    .locals 3

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->m1()V

    iget-object v0, p0, LP6/c;->d0:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LP6/c;->d0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, LP6/c;->a0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, LP6/c;->d0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    iget-object v0, p0, LP6/c;->e0:Landroid/view/View;

    invoke-direct {p0, v0}, LP6/c;->B1(Landroid/view/View;)V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
