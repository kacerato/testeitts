.class public Lub/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lub/l;->destroyImmediate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lub/l;


# direct methods
.method public constructor <init>(Lub/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lub/l$b;->b:Lub/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lub/l$b;->b:Lub/l;

    invoke-static {v0}, Lub/l;->q0(Lub/l;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lub/l$b;->b:Lub/l;

    invoke-static {v0}, Lub/l;->q0(Lub/l;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/a;->destroyImmediate()V

    iget-object v0, p0, Lub/l$b;->b:Lub/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lub/l;->r0(Lub/l;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    :cond_0
    return-void
.end method
