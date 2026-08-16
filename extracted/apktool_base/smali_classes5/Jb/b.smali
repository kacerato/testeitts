.class public final synthetic LJb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LJb/c;

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final synthetic f:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

.field public final synthetic g:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

.field public final synthetic h:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final synthetic i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final synthetic j:Z

.field public final synthetic k:I

.field public final synthetic l:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;


# direct methods
.method public synthetic constructor <init>(LJb/c;IZLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;ZILcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJb/b;->b:LJb/c;

    iput p2, p0, LJb/b;->c:I

    iput-boolean p3, p0, LJb/b;->d:Z

    iput-object p4, p0, LJb/b;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p5, p0, LJb/b;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    iput-object p6, p0, LJb/b;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    iput-object p7, p0, LJb/b;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p8, p0, LJb/b;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-boolean p9, p0, LJb/b;->j:Z

    iput p10, p0, LJb/b;->k:I

    iput-object p11, p0, LJb/b;->l:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, LJb/b;->b:LJb/c;

    iget v1, p0, LJb/b;->c:I

    iget-boolean v2, p0, LJb/b;->d:Z

    iget-object v3, p0, LJb/b;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v4, p0, LJb/b;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    iget-object v5, p0, LJb/b;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    iget-object v6, p0, LJb/b;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v7, p0, LJb/b;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-boolean v8, p0, LJb/b;->j:Z

    iget v9, p0, LJb/b;->k:I

    iget-object v10, p0, LJb/b;->l:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-static/range {v0 .. v10}, LJb/c;->a(LJb/c;IZLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;ZILcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V

    return-void
.end method
