.class public Lorg/ITsMagic/Atlas/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ITsMagic/Atlas/g;->p(Lorg/ITsMagic/Atlas/g$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lorg/ITsMagic/Atlas/g$b;

.field public final synthetic c:Lorg/ITsMagic/Atlas/XAtlas;

.field public final synthetic d:Lorg/ITsMagic/Atlas/g;


# direct methods
.method public constructor <init>(Lorg/ITsMagic/Atlas/g;Lorg/ITsMagic/Atlas/g$b;Lorg/ITsMagic/Atlas/XAtlas;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener",
            "val$atlas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    iput-object p2, p0, Lorg/ITsMagic/Atlas/g$a;->b:Lorg/ITsMagic/Atlas/g$b;

    iput-object p3, p0, Lorg/ITsMagic/Atlas/g$a;->c:Lorg/ITsMagic/Atlas/XAtlas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/ITsMagic/Atlas/g$a;->b:Lorg/ITsMagic/Atlas/g$b;

    const-string v1, "Preparing"

    invoke-interface {v0, v1}, Lorg/ITsMagic/Atlas/g$b;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v1}, Lorg/ITsMagic/Atlas/g;->a(Lorg/ITsMagic/Atlas/g;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    invoke-static {v1}, Lorg/ITsMagic/Atlas/g;->a(Lorg/ITsMagic/Atlas/g;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/ITsMagic/Atlas/g$a;->d:Lorg/ITsMagic/Atlas/g;

    iget-object v3, p0, Lorg/ITsMagic/Atlas/g$a;->c:Lorg/ITsMagic/Atlas/XAtlas;

    invoke-static {v2, v3, v1}, Lorg/ITsMagic/Atlas/g;->b(Lorg/ITsMagic/Atlas/g;Lorg/ITsMagic/Atlas/XAtlas;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/ITsMagic/Atlas/g$a$a;

    invoke-direct {v1, p0}, Lorg/ITsMagic/Atlas/g$a$a;-><init>(Lorg/ITsMagic/Atlas/g$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
