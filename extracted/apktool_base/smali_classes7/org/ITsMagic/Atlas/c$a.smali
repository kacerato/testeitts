.class public Lorg/ITsMagic/Atlas/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ITsMagic/Atlas/c;->e(Lub/p;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/ITsMagic/Atlas/c$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LUg/n;

.field public final synthetic c:LBb/b;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lorg/ITsMagic/Atlas/c$b;

.field public final synthetic f:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic g:Lorg/ITsMagic/Atlas/c;


# direct methods
.method public constructor <init>(Lorg/ITsMagic/Atlas/c;LUg/n;LBb/b;Ljava/util/List;Lorg/ITsMagic/Atlas/c$b;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$gpuTriangleRasterizer",
            "val$output",
            "val$bakeDataList",
            "val$listener",
            "val$latch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/Atlas/c$a;->g:Lorg/ITsMagic/Atlas/c;

    iput-object p2, p0, Lorg/ITsMagic/Atlas/c$a;->b:LUg/n;

    iput-object p3, p0, Lorg/ITsMagic/Atlas/c$a;->c:LBb/b;

    iput-object p4, p0, Lorg/ITsMagic/Atlas/c$a;->d:Ljava/util/List;

    iput-object p5, p0, Lorg/ITsMagic/Atlas/c$a;->e:Lorg/ITsMagic/Atlas/c$b;

    iput-object p6, p0, Lorg/ITsMagic/Atlas/c$a;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lorg/ITsMagic/Atlas/c$a;->b:LUg/n;

    iget-object v1, p0, Lorg/ITsMagic/Atlas/c$a;->c:LBb/b;

    invoke-virtual {v0, v1}, LUg/n;->g(LBb/b;)V

    iget-object v0, p0, Lorg/ITsMagic/Atlas/c$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lorg/ITsMagic/Atlas/c$a;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LUg/h;

    invoke-virtual {v3}, LUg/h;->a()LUg/g;

    move-result-object v4

    invoke-virtual {v3}, LUg/h;->b()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v3

    iget-object v5, p0, Lorg/ITsMagic/Atlas/c$a;->b:LUg/n;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->h0()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v6

    invoke-virtual {v5, v4, v6, v3}, LUg/n;->f(LUg/g;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    iget-object v3, p0, Lorg/ITsMagic/Atlas/c$a;->e:Lorg/ITsMagic/Atlas/c$b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preparing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/ITsMagic/Atlas/c$b;->b(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/ITsMagic/Atlas/c$a;->e:Lorg/ITsMagic/Atlas/c$b;

    const/4 v4, 0x0

    const-string v5, ""

    invoke-interface {v3, v1, v1, v4, v5}, Lorg/ITsMagic/Atlas/c$b;->a(IIFLjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lob/b;

    new-instance v1, Lorg/ITsMagic/Atlas/c$a$a;

    invoke-direct {v1, p0}, Lorg/ITsMagic/Atlas/c$a$a;-><init>(Lorg/ITsMagic/Atlas/c$a;)V

    invoke-direct {v0, v1}, Lob/b;-><init>(Lob/b$a;)V

    invoke-static {v0}, LK8/a;->J(Lob/b;)V

    return-void
.end method
