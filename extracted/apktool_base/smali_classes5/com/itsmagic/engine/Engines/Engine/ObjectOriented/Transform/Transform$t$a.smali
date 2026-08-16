.class public Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$t;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$t;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$t;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$t$a;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$t;

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

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$t$a;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$t;

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$t;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$t;->a:LC5/b;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;LC5/b;)V

    return-void
.end method
