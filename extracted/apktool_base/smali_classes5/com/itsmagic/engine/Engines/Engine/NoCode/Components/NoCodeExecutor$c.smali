.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor$c;
.super Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;->getLongTapMenu()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
        "Ldd/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor$c;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance p1, Ldd/b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor$c$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor$c$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor$c;)V

    const-string v1, "Edit script"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
