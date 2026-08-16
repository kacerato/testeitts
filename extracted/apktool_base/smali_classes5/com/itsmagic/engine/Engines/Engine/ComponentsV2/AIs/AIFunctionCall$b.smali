.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$b;
.super LF5/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->l(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$h;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF5/c$n0<",
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$h;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$b;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$h;

    invoke-direct {p0}, LF5/c$n0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$h;

    invoke-interface {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$h;->a()V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enumObject"
        }
    .end annotation

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$b;->e(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$b;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    return-void
.end method

.method public e(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enumObject"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
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

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$b;->d(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;)V

    return-void
.end method
