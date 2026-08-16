.class public Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$m;->d(Lec/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lec/a;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$m;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$m;Lec/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$m$a;->c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$m;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$m$a;->b:Lec/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$m$a;->c:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$m;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$m;->b:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder$m$a;->b:Lec/a;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphBinder;->blendingMode:Lec/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->P()V

    return-void
.end method
