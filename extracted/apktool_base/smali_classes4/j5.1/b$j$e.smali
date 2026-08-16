.class public Lj5/b$j$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj5/b$j;->onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lj5/b$j;


# direct methods
.method public constructor <init>(Lj5/b$j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lj5/b$j$e;->a:Lj5/b$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, Lj5/b$j$e;->a:Lj5/b$j;

    iget-object v0, v0, Lj5/b$j;->a:Lj5/b;

    invoke-static {v0}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v0

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->selectedBrushID:I

    return-void
.end method

.method public getSelected()I
    .locals 1

    iget-object v0, p0, Lj5/b$j$e;->a:Lj5/b$j;

    iget-object v0, v0, Lj5/b$j;->a:Lj5/b;

    invoke-static {v0}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->selectedBrushID:I

    return v0
.end method
