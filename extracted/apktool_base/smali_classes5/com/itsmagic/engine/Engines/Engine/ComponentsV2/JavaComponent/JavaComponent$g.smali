.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$g;
.super Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent;->getLongTapMenu()Ljava/util/List;
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
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$g;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance p1, Ldd/b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$g$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$g$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$g;)V

    const-string v1, "Edit script"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ldd/b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$g$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$g$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent$g;)V

    const-string v1, "Show in files"

    invoke-direct {p1, v1, v0}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
