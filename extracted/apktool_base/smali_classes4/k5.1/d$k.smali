.class public Lk5/d$k;
.super Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
        "Lk5/d$D;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lk5/d;


# direct methods
.method public constructor <init>(Lk5/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lk5/d$k;->b:Lk5/d;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance p1, Lk5/d$D;

    const-string v0, "Free"

    const/4 v1, -0x1

    invoke-direct {p1, v0, v1, v1}, Lk5/d$D;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lk5/d$D;

    const-string v1, "18:9"

    const/16 v2, 0x5a0

    const/16 v3, 0x2d0

    invoke-direct {v0, v1, v2, v3}, Lk5/d$D;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lk5/d$D;

    const-string v1, "19:9"

    const/16 v2, 0x5f0

    invoke-direct {v0, v1, v2, v3}, Lk5/d$D;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lk5/d$D;

    const-string v1, "20:9"

    const/16 v2, 0x640

    invoke-direct {v0, v1, v2, v3}, Lk5/d$D;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lk5/d$D;

    const-string v0, "16:9"

    const/16 v1, 0x500

    invoke-direct {p1, v0, v1, v3}, Lk5/d$D;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lk5/d$D;

    const-string v0, "16:10"

    const/16 v1, 0x480

    invoke-direct {p1, v0, v1, v3}, Lk5/d$D;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
