.class public Le4/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le4/a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final synthetic d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final synthetic e:Le4/a$a;


# direct methods
.method public constructor <init>(Le4/a$a;Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$affectedChunksByHeight",
            "val$brushStart",
            "val$brushEnd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Le4/a$a$a;->e:Le4/a$a;

    iput-object p2, p0, Le4/a$a$a;->b:Ljava/util/List;

    iput-object p3, p0, Le4/a$a$a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iput-object p4, p0, Le4/a$a$a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Le4/a$a$a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Le4/a$a$a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv9/d;

    iget-object v2, p0, Le4/a$a$a;->e:Le4/a$a;

    iget-object v2, v2, Le4/a$a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v1, v2}, Lv9/d;->i(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le4/a$a$a;->e:Le4/a$a;

    iget-object v0, v0, Le4/a$a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object v1, p0, Le4/a$a$a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget-object v3, p0, Le4/a$a$a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v4, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->onProceduralBrushApplied(FFFF)V

    iget-object v0, p0, Le4/a$a$a;->e:Le4/a$a;

    iget-object v0, v0, Le4/a$a;->k:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
