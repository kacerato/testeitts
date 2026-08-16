.class public Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$b;
.super LF5/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode;->p(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LF5/c$n0<",
        "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$b;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode;

    invoke-direct {p0}, LF5/c$n0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$b;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode;->H(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode;)V

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

    check-cast p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$b;->e(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$b;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;->FBM:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;

    :goto_0
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode;->musgraveType:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode;->I(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode;)V

    return-void
.end method

.method public e(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enumObject"
        }
    .end annotation

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;->FBM:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;

    goto :goto_0

    :goto_1
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

    check-cast p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$b;->d(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/Nodes/MusgraveNode$c;)V

    return-void
.end method
