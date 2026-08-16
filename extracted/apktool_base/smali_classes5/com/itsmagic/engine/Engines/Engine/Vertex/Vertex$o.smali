.class public Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJb/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$o;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vertexBuffer",
            "indexBuffer"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$o;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->o(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$o;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->p(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;LRb/d;)LRb/d;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$o;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->t1()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$o;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->s1()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$o;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->F1()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$o;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->q(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$o;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->q(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    throw p1
.end method
