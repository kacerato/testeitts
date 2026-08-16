.class public Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i$b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i$b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i;

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$i;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Landroid/content/Context;)V

    return-void
.end method
