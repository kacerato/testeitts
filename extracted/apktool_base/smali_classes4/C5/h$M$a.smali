.class public LC5/h$M$a;
.super Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/h$M;->click(Landroid/view/View;)V
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
.field public final synthetic b:LC5/h$M;


# direct methods
.method public constructor <init>(LC5/h$M;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LC5/h$M$a;->b:LC5/h$M;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance p1, Ldd/b;

    new-instance v0, LC5/h$M$a$a;

    invoke-direct {v0, p0}, LC5/h$M$a$a;-><init>(LC5/h$M$a;)V

    const-string v1, "Select cubemap"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, LC5/h$M$a$b;

    invoke-direct {v0, p0}, LC5/h$M$a$b;-><init>(LC5/h$M$a;)V

    const-string v1, "Select from gallery"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
