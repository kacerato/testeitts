.class public Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniFloatArrayJP$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe/Q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniFloatArrayJP;
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
        "[F>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniFloatArrayJP;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniFloatArrayJP;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniFloatArrayJP$a;->a:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniFloatArrayJP;

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
            "arrays"
        }
    .end annotation

    check-cast p2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniFloatArrayJP$a;->b(ILcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;)Z

    move-result p1

    return p1
.end method

.method public b(ILcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "size",
            "arrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "[F>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniFloatArrayJP$a;->a:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniFloatArrayJP;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniFloatArrayJP;->access$000(Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniFloatArrayJP;)Lge/O;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniFloatArrayJP;->access$100(Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniFloatArrayJP;ILge/O;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniFloatArrayJP;->access$200(Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;)V

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->clear()V

    const/4 p1, 0x1

    return p1
.end method
