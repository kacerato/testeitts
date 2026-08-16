.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a;
.super Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b;->click(Landroid/view/View;)V
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
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$view"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a;->b:Landroid/view/View;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance p1, Ldd/b;

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a$a;

    invoke-direct {p2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a;)V

    const-string v0, "Use texture"

    invoke-direct {p1, v0, p2}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a$b;

    invoke-direct {p2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b$a;)V

    const-string v0, "Use preset"

    invoke-direct {p1, v0, p2}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
