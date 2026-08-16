.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardMapper$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF5/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardMapper;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardMapper;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardMapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardMapper$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardMapper$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardMapper;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardMapper;->access$002(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardMapper;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public get()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardMapper$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardMapper;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardMapper;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardMapper;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
