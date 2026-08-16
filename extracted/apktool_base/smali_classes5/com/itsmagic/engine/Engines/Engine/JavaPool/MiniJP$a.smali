.class public Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiConsumer<",
        "Ljava/lang/Class;",
        "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP$a;->a:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "aClass",
            "objects"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP$a;->a:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->access$000(Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->access$100(Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;Ljava/lang/Class;Ljava/util/Map;)Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->access$200(Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;)V

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->clear()V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "aClass",
            "objects"
        }
    .end annotation

    check-cast p1, Ljava/lang/Class;

    check-cast p2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP$a;->a(Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;)V

    return-void
.end method
