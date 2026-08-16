.class public Lnd/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packID",
            "files",
            "projectName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnd/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lnd/c;->b:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    iput-object p3, p0, Lnd/c;->c:Ljava/lang/String;

    return-void
.end method
