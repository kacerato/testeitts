.class public Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe/Q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhe/Q<",
        "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
        "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP$a;->a:Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "size",
            "lists"
        }
    .end annotation

    check-cast p2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP$a;->b(ILcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;)Z

    move-result p1

    return p1
.end method

.method public b(ILcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "size",
            "lists"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP$a;->a:Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;->access$100(Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP$InnerJP;)Lge/O;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP;->access$200(ILge/O;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/ListJP;->access$300(Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;)V

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->clear()V

    const/4 p1, 0x1

    return p1
.end method
