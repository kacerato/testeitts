.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z$b$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z$b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z$b$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z$b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z$b$a$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z$b$a$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z$b$a;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z$b$a;->b:Landroid/view/View;

    sget-object v0, Lr4/a$e;->Left:Lr4/a$e;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z$b$a$b$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z$b$a$b$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z$b$a$b;)V

    invoke-static {p1, v0, v1}, LH3/g;->K1(Landroid/view/View;Lr4/a$e;LH3/e;)V

    return-void
.end method
