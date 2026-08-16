.class Lcom/ardor3d/input/logical/DummyKeyboardWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/g2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/input/logical/DummyKeyboardWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/g2<",
        "Lcom/ardor3d/input/KeyEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ardor3d/input/logical/DummyKeyboardWrapper;


# direct methods
.method public constructor <init>(Lcom/ardor3d/input/logical/DummyKeyboardWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/input/logical/DummyKeyboardWrapper$1;->this$0:Lcom/ardor3d/input/logical/DummyKeyboardWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public next()Lcom/ardor3d/input/KeyEvent;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/input/logical/DummyKeyboardWrapper$1;->next()Lcom/ardor3d/input/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public peek()Lcom/ardor3d/input/KeyEvent;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/input/logical/DummyKeyboardWrapper$1;->peek()Lcom/ardor3d/input/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    return-void
.end method
