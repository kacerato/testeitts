.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lib/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hierarchyMatrix"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/PathPoint;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    return-void
.end method
