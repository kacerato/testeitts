.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$d;
.super LF5/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF5/c$n0<",
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$f;",
        ">;"
    }
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$d;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;

    invoke-direct {p0}, LF5/c$n0;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$d;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;->access$202(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$f;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$f;

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

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$f;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$d;->d(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/InputMappers/KeyboardAxisMapper$f;)V

    return-void
.end method
