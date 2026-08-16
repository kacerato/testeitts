.class public Lub/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lub/l;->apply()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

.field public final synthetic c:Lub/l;


# direct methods
.method public constructor <init>(Lub/l;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$nativeTexture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lub/l$a;->c:Lub/l;

    iput-object p2, p0, Lub/l$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lub/l$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    iget-object v1, p0, Lub/l$a;->c:Lub/l;

    new-instance v2, Lub/k;

    invoke-direct {v2, v1}, Lub/k;-><init>(Lub/l;)V

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->e(Ljava/lang/Runnable;)Z

    return-void
.end method
