.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$g;
.super Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->N()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
        "Ldd/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$g;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v0, Ldd/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->useBoundingCenter:Z

    const-string v4, " "

    const-string v5, "X"

    if-eqz v3, :cond_0

    move-object v3, v5

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] Use bounding center"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$g$a;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$g$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$g;)V

    invoke-direct {v0, v1, v3}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ldd/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->g0:Z

    if-eqz v3, :cond_1

    move-object v3, v5

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] Physics debug mode "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$g$b;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$g$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$g;)V

    invoke-direct {v0, v1, v3}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ldd/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->enableLight:Z

    if-eqz v3, :cond_2

    move-object v3, v5

    goto :goto_2

    :cond_2
    move-object v3, v4

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->RENDER_LIGHT:LAc/b;

    invoke-static {v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$g$c;

    invoke-direct {v6, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$g$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$g;)V

    invoke-direct {v0, v1, v6}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ldd/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->enableGrid:Z

    if-eqz v6, :cond_3

    move-object v6, v5

    goto :goto_3

    :cond_3
    move-object v6, v4

    :goto_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->RENDER_GRID:LAc/b;

    invoke-static {v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$g$d;

    invoke-direct {v6, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$g$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$g;)V

    invoke-direct {v0, v1, v6}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ldd/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->enable3DCursor:Z

    if-eqz v6, :cond_4

    move-object v6, v5

    goto :goto_4

    :cond_4
    move-object v6, v4

    :goto_4
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->RENDER_3D_CURSOR:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$g$e;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$g$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$g;)V

    invoke-direct {v0, v1, v3}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ldd/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->renderNavMesh:Z

    if-eqz p1, :cond_5

    move-object v4, v5

    :cond_5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] Render navmesh"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$g$f;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$g$f;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$g;)V

    invoke-direct {v0, p1, v1}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
