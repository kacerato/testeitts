.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->mousePick(Laa/c;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$h;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LJAVARuntime/GizmoObject;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gizmoObject"
        }
    .end annotation

    invoke-static {}, Lt6/j;->J1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EmbeddedMatMR - gizmo draw"

    invoke-static {v0}, Lt6/j;->S1(Ljava/lang/String;)Lt6/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-static {p1}, LJAVARuntime/Gizmo;->draw(LJAVARuntime/GizmoElement;)V

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$h;->a:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$h;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x96

    if-lt p1, v2, :cond_1

    invoke-static {v0}, Lt6/j;->P1(Lt6/e;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-static {v0}, Lt6/j;->P1(Lt6/e;)V

    return v1

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lt6/j;->P1(Lt6/e;)V

    throw p1
.end method
