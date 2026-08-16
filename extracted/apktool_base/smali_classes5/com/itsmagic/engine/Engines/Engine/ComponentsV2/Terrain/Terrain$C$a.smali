.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJc/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:[I

.field public final synthetic d:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public final synthetic e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;II[ILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$imageWidth",
            "val$imageHeight",
            "val$heightmapPixels",
            "val$colorINT"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C$a;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C$a;->a:I

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C$a;->b:I

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C$a;->c:[I

    iput-object p5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C$a;->d:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FF)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C$a;->a:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C$a;->b:I

    add-int/lit8 v1, v0, -0x1

    int-to-float v1, v1

    mul-float/2addr p2, v1

    float-to-int p2, p2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C$a;->c:[I

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C$a;->e:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;

    invoke-static {v2, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;->a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C;III)I

    move-result p1

    aget p1, v1, p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C$a;->d:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->J(I)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$C$a;->d:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result p1

    return p1
.end method
