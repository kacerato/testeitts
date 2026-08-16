.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor$d;
.super Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->getInspectorExtras()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
        "LC5/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor$d;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance p1, LC5/m;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor$d$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor$d$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor$d;)V

    const v1, 0x7f0700f4

    invoke-direct {p1, v1, v0}, LC5/m;-><init>(ILandroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
