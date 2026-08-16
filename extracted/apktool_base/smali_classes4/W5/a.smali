.class public LW5/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final Y:Ljava/lang/String; = "ViewMediaPanel"


# instance fields
.field public final X:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>()V

    iput-object p1, p0, LW5/a;->X:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static synthetic p1(LW5/a;Landroid/view/View;Lr4/a$e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 0

    invoke-static {p0, p1, p2}, LW5/a;->q1(LW5/a;Landroid/view/View;Lr4/a$e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    return-object p0
.end method

.method public static q1(LW5/a;Landroid/view/View;Lr4/a$e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "panel",
            "anchor",
            "anchorSide"
        }
    .end annotation

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p1}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->f1()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M0()V

    return-object p0
.end method

.method public static r1(Ljava/io/File;Landroid/view/View;Lr4/a$e;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "anchor",
            "anchorSide"
        }
    .end annotation

    invoke-static {}, Lq7/a;->r1()Lq7/a;

    move-result-object v0

    new-instance v1, LU/h;

    invoke-direct {v1}, LU/h;-><init>()V

    const v2, 0x7f070115

    invoke-virtual {v1, v2}, LU/a;->v0(I)LU/a;

    move-result-object v1

    check-cast v1, LU/h;

    const v2, 0x7f070068

    invoke-virtual {v1, v2}, LU/a;->u(I)LU/a;

    move-result-object v1

    check-cast v1, LU/h;

    sget-object v2, Lcom/bumptech/glide/load/engine/i;->d:Lcom/bumptech/glide/load/engine/i;

    :try_start_0
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/k;->s()Lcom/bumptech/glide/j;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/bumptech/glide/j;->n1(Ljava/io/File;)Lcom/bumptech/glide/j;

    move-result-object p0

    sget-object v3, LC/b;->PREFER_RGB_565:LC/b;

    invoke-virtual {p0, v3}, LU/a;->z(LC/b;)LU/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/j;

    invoke-virtual {p0, v2}, LU/a;->m(Lcom/bumptech/glide/load/engine/i;)LU/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/j;

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/j;->S0(LU/a;)Lcom/bumptech/glide/j;

    move-result-object p0

    new-instance v1, LW5/a$c;

    invoke-direct {v1, v0, p1, p2}, LW5/a$c;-><init>(Lq7/a;Landroid/view/View;Lr4/a$e;)V

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/j;->e1(LV/p;)LV/p;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v0}, Lq7/a;->p1()V

    :goto_0
    return-void
.end method

.method public static s1(Ljava/lang/String;Landroid/view/View;Lr4/a$e;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "anchor",
            "anchorSide"
        }
    .end annotation

    invoke-static {}, Lq7/a;->r1()Lq7/a;

    move-result-object v7

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    const v1, 0x7f070115

    invoke-virtual {v0, v1}, LU/a;->v0(I)LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    const v1, 0x7f070068

    invoke-virtual {v0, v1}, LU/a;->u(I)LU/a;

    move-result-object v0

    move-object v3, v0

    check-cast v3, LU/h;

    sget-object v1, Lcom/bumptech/glide/load/engine/i;->d:Lcom/bumptech/glide/load/engine/i;

    :try_start_0
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/k;->s()Lcom/bumptech/glide/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/j;->q1(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object v0

    invoke-virtual {v0, v1}, LU/a;->m(Lcom/bumptech/glide/load/engine/i;)LU/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/j;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/j;->S0(LU/a;)Lcom/bumptech/glide/j;

    move-result-object v8

    new-instance v9, LW5/a$b;

    move-object v0, v9

    move-object v2, p0

    move-object v4, v7

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, LW5/a$b;-><init>(Lcom/bumptech/glide/load/engine/i;Ljava/lang/String;LU/h;Lq7/a;Landroid/view/View;Lr4/a$e;)V

    invoke-virtual {v8, v9}, Lcom/bumptech/glide/j;->j1(LU/g;)Lcom/bumptech/glide/j;

    move-result-object p0

    new-instance v0, LW5/a$a;

    invoke-direct {v0, v7, p1, p2}, LW5/a$a;-><init>(Lq7/a;Landroid/view/View;Lr4/a$e;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/j;->e1(LV/p;)LV/p;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v7}, Lq7/a;->p1()V

    :goto_0
    return-void
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0115

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, LU/h;

    invoke-direct {v1}, LU/h;-><init>()V

    const v2, 0x7f0700f1

    invoke-virtual {v1, v2}, LU/a;->v0(I)LU/a;

    move-result-object v1

    check-cast v1, LU/h;

    const v2, 0x7f070068

    invoke-virtual {v1, v2}, LU/a;->u(I)LU/a;

    move-result-object v1

    check-cast v1, LU/h;

    sget-object v1, Lcom/bumptech/glide/load/engine/i;->d:Lcom/bumptech/glide/load/engine/i;

    invoke-static {p0}, LN7/c;->a(Ljava/lang/Object;)V

    const v1, 0x7f090132

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, LW5/a$d;

    invoke-direct {v2, p0}, LW5/a$d;-><init>(LW5/a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09033a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/jsibbold/zoomage/ZoomageView;

    iget-object v2, p0, LW5/a;->X:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/jsibbold/zoomage/ZoomageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jsibbold/zoomage/ZoomageView;->setZoomable(Z)V

    return-object v0
.end method

.method public G0()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    invoke-static {p0}, LN7/c;->f0(Ljava/lang/Object;)V

    return-void
.end method
