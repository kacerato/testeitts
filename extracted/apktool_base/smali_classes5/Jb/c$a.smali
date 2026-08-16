.class public LJb/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJb/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

.field public final synthetic d:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

.field public final synthetic e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final synthetic f:LJb/c;


# direct methods
.method public constructor <init>(LJb/c;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$finalGeneratedUvs",
            "val$finalQuatS4",
            "val$finalSkinBuffer",
            "val$finalBoundsBuffer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJb/c$a;->f:LJb/c;

    iput-object p2, p0, LJb/c$a;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p3, p0, LJb/c$a;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    iput-object p4, p0, LJb/c$a;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    iput-object p5, p0, LJb/c$a;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LJb/c$a;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_0
    iget-object v0, p0, LJb/c$a;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->destroyImmediate()V

    iget-object v0, p0, LJb/c$a;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->destroyImmediate()V

    :cond_1
    iget-object v0, p0, LJb/c$a;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    return-void
.end method
