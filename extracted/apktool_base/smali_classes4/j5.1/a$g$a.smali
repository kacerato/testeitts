.class public Lj5/a$g$a;
.super Lt5/h$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj5/a$g;->onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lj5/a$g;


# direct methods
.method public constructor <init>(Lj5/a$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lj5/a$g$a;->a:Lj5/a$g;

    invoke-direct {p0}, Lt5/h$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lj5/a$g$a;->a:Lj5/a$g;

    iget-object v0, v0, Lj5/a$g;->a:Lj5/a;

    invoke-static {v0}, Lj5/a;->I(Lj5/a;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;

    move-result-object v0

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->brushPlaceObjectsPerMeter:F

    return-void
.end method

.method public get()F
    .locals 1

    iget-object v0, p0, Lj5/a$g$a;->a:Lj5/a$g;

    iget-object v0, v0, Lj5/a$g;->a:Lj5/a;

    invoke-static {v0}, Lj5/a;->I(Lj5/a;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/ObjectPool;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->brushPlaceObjectsPerMeter:F

    return v0
.end method
