.class public Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l$a;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l$a;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->b:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l$a;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l$a;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->p:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->e(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l$a;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;

    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    if-ne v0, v3, :cond_1

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->p:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l$a;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->destroyImmediate()V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l$a;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->p:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->h(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l$a;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;

    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    if-ne v0, v3, :cond_2

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->p:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l$a;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$l;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->destroyImmediate()V

    :cond_2
    return-void
.end method
