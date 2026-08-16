.class public Ll5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

.field public static b:Ljava/lang/String;

.field public static c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Ll5/a;->c:Z

    return p0
.end method

.method public static b()Lcom/itsmagic/engine/Engines/Engine/Material/Material;
    .locals 2

    sget-object v0, Ll5/a;->a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;-><init>()V

    sput-object v0, Ll5/a;->a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->g:Z

    const-string v1, "Unlit/Matcap"

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->f0(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Ll5/a;->a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    return-object v0
.end method

.method public static c(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "elements",
            "activity",
            "panel3DView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LM7/g;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public static d(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "elements",
            "activity",
            "panel3DView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LM7/g;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            ")V"
        }
    .end annotation

    new-instance p2, LM7/c;

    new-instance v0, Ll5/a$a;

    invoke-direct {v0}, Ll5/a$a;-><init>()V

    sget-object v1, LM7/c$b;->Disconnected:LM7/c$b;

    const v2, 0x7f0700e1

    invoke-direct {p2, v2, v0, v1, p1}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    sget-object v0, Lf5/d;->b:LAc/b;

    invoke-virtual {p2, v0}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object p2

    sget-object v0, Lf5/d;->c:LAc/b;

    invoke-virtual {p2, v0}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060232

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2, v0}, LM7/c;->m0(I)LM7/c;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060231

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2, p1}, LM7/c;->Y(I)LM7/c;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static e(Ljava/util/List;Landroid/app/Activity;F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "elements",
            "activity",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LM7/g;",
            ">;",
            "Landroid/app/Activity;",
            "F)V"
        }
    .end annotation

    new-instance v0, LM7/c;

    new-instance v1, Ll5/a$c;

    invoke-direct {v1}, Ll5/a$c;-><init>()V

    sget-object v2, LM7/c$b;->Disconnected:LM7/c$b;

    const v3, 0x7f070097

    invoke-direct {v0, v3, v1, v2, p1}, LM7/c;-><init>(ILM7/d;LM7/c$b;Landroid/content/Context;)V

    sget-object v1, Lf5/d;->b:LAc/b;

    invoke-virtual {v0, v1}, LM7/c;->U(LAc/b;)LM7/c;

    move-result-object v0

    sget-object v1, Lf5/d;->c:LAc/b;

    invoke-virtual {v0, v1}, LM7/c;->M(LAc/b;)LM7/c;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060232

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, LM7/c;->m0(I)LM7/c;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f060231

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {v0, p1}, LM7/c;->Y(I)LM7/c;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static f(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "elements",
            "activity",
            "panel3DView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LM7/g;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            ")V"
        }
    .end annotation

    sget-object v0, LM7/c$b;->Disconnected:LM7/c$b;

    invoke-static {p0, p1, p2, v0}, Ll5/a;->g(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;LM7/c$b;)V

    return-void
.end method

.method public static g(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;LM7/c$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "elements",
            "activity",
            "panel3DView",
            "connector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LM7/g;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            "LM7/c$b;",
            ")V"
        }
    .end annotation

    new-instance v0, LM7/o;

    new-instance v1, Ll5/a$b;

    invoke-direct {v1, p2}, Ll5/a$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    const v2, 0x7f070177

    invoke-direct {v0, v2, v1, p3, p1}, LM7/o;-><init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V

    sget-object p3, Lf5/d;->b:LAc/b;

    invoke-virtual {v0, p3}, LM7/o;->N0(LAc/b;)LM7/o;

    move-result-object p3

    sget-object v1, Lf5/d;->c:LAc/b;

    invoke-virtual {p3, v1}, LM7/o;->B0(LAc/b;)LM7/o;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060232

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p3, v1}, LM7/c;->m0(I)LM7/c;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f060231

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p3, p1}, LM7/c;->Y(I)LM7/c;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean p0, p2, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->enableLight:Z

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, LM7/o;->y0(ZZ)LM7/o;

    return-void
.end method

.method public static h(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "elements",
            "activity",
            "panel3DView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LM7/g;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            ")V"
        }
    .end annotation

    return-void
.end method
