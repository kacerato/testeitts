.class public Lj5/b$l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/e$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj5/b$l;->onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lj5/b$l;


# direct methods
.method public constructor <init>(Lj5/b$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lj5/b$l$a;->a:Lj5/b$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "canceled"
        }
    .end annotation

    iget-object p2, p0, Lj5/b$l$a;->a:Lj5/b$l;

    iget-object p2, p2, Lj5/b$l;->a:Lj5/b;

    invoke-static {p2}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object p2

    iput p1, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->brushIntensity:F

    return-void
.end method
