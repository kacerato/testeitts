.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$b;
.super LF5/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF5/c$n0<",
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$p;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;

    invoke-direct {p0}, LF5/c$n0;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$p;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->access$1602(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$p;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$p;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->access$502(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;Z)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$p;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$b;->d(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$p;)V

    return-void
.end method
