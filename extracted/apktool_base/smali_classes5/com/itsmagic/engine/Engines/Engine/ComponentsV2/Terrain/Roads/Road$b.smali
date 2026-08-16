.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a$q;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road;[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a$q;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$b;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$b;->a:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a$q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->int_value:I

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$b;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$b;->a:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a$q;

    aget-object p1, v1, p1

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road;->access$1302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a$q;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/a$q;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road$b;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Roads/Road;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    :cond_0
    return-void
.end method
