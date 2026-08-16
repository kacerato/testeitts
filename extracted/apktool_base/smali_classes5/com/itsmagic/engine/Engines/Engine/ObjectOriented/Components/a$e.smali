.class public Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->C(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$component"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$e;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$e;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$e;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$e;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$e;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$e;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$e;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$e;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {v3, v2, v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$e;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a$e;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;->b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/a;)V

    :cond_0
    return-void
.end method
