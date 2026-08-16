.class public Lh5/a$f$a;
.super Lt5/i$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh5/a$f;->onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh5/a$f;


# direct methods
.method public constructor <init>(Lh5/a$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lh5/a$f$a;->a:Lh5/a$f;

    invoke-direct {p0}, Lt5/i$d;-><init>()V

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

    iget-object v0, p0, Lh5/a$f$a;->a:Lh5/a$f;

    iget-object v0, v0, Lh5/a$f;->a:Lh5/a;

    invoke-static {v0}, Lh5/a;->I(Lh5/a;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    move-result-object v0

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->brushIntensity:F

    return-void
.end method

.method public get()F
    .locals 1

    iget-object v0, p0, Lh5/a$f$a;->a:Lh5/a$f;

    iget-object v0, v0, Lh5/a$f;->a:Lh5/a;

    invoke-static {v0}, Lh5/a;->I(Lh5/a;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->brushIntensity:F

    return v0
.end method

.method public getMax()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getMin()F
    .locals 1

    const v0, 0x3a83126f    # 0.001f

    return v0
.end method
