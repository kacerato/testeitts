.class public Li5/a$a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li5/a$a;->c(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lub/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public final synthetic c:Lub/n;

.field public final synthetic d:Li5/a$a;


# direct methods
.method public constructor <init>(Li5/a$a;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lub/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$outputVertex",
            "val$atlasTexture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Li5/a$a$d;->d:Li5/a$a;

    iput-object p2, p0, Li5/a$a$d;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iput-object p3, p0, Li5/a$a$d;->c:Lub/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Li5/a$a$d;->d:Li5/a$a;

    iget-object v0, v0, Li5/a$a;->a:Li5/a;

    invoke-static {v0}, Li5/a;->q1(Li5/a;)Lorg/ITsMagic/Atlas/e$c;

    move-result-object v0

    iget-object v1, p0, Li5/a$a$d;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object v2, p0, Li5/a$a$d;->c:Lub/n;

    invoke-interface {v0, v1, v2}, Lorg/ITsMagic/Atlas/e$c;->c(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lub/n;)V

    return-void
.end method
