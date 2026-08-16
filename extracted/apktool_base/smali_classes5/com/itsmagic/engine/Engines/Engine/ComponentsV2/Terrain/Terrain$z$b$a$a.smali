.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z$b$a$a;
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z$b$a$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z$b$a;

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

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z$b$a$a$a;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z$b$a$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$z$b$a$a;)V

    const-string v0, ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm"

    invoke-static {v0, p1}, Lv5/a;->x1(Ljava/lang/String;Lv5/a$i;)V

    return-void
.end method
