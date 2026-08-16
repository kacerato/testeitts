.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$b;
.super LF5/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF5/c$n0<",
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper;

    invoke-direct {p0}, LF5/c$n0;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper;->access$002(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$e;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$e;

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$e;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$b;->d(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/GamePadAxisMapper$e;)V

    return-void
.end method
