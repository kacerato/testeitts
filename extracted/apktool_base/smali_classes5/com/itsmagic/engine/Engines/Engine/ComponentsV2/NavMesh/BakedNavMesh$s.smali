.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$s;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$s$a;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$s$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$s;)V

    invoke-static {p1}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method
