.class public LJ4/d$o;
.super Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJ4/d;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
        "LJ4/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:LJ4/d;


# direct methods
.method public constructor <init>(LJ4/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LJ4/d$o;->b:LJ4/d;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance p1, LJ4/c;

    const-string v0, "==============="

    invoke-direct {p1, v0}, LJ4/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, LJ4/c;

    const-string v1, " - - - -ITsMagic- - - - "

    invoke-direct {p1, v1}, LJ4/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, LJ4/c;

    const-string v1, "-Terminal started-"

    invoke-direct {p1, v1}, LJ4/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, LJ4/c;

    invoke-direct {p1, v0}, LJ4/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, LJ4/c;

    const-string v0, "To increase performance, the Terminal does not capture logs and exceptions while it is not visible."

    invoke-direct {p1, v0}, LJ4/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, LJ4/c;

    const-string v0, "Resolve all exceptions, it is extremely important!"

    invoke-direct {p1, v0}, LJ4/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
