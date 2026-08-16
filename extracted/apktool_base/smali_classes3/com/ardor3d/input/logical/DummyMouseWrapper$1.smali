.class Lcom/ardor3d/input/logical/DummyMouseWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/g2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/input/logical/DummyMouseWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/g2<",
        "Lcom/ardor3d/input/MouseState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ardor3d/input/logical/DummyMouseWrapper;


# direct methods
.method public constructor <init>(Lcom/ardor3d/input/logical/DummyMouseWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/input/logical/DummyMouseWrapper$1;->this$0:Lcom/ardor3d/input/logical/DummyMouseWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public next()Lcom/ardor3d/input/MouseState;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/input/logical/DummyMouseWrapper$1;->next()Lcom/ardor3d/input/MouseState;

    move-result-object v0

    return-object v0
.end method

.method public peek()Lcom/ardor3d/input/MouseState;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/input/logical/DummyMouseWrapper$1;->peek()Lcom/ardor3d/input/MouseState;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    return-void
.end method
