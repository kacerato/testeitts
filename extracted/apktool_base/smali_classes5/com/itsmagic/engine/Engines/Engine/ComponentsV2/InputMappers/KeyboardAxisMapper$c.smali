.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF5/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;

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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->access$102(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public get()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$c;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
