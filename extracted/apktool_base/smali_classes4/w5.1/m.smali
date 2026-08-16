.class public Lw5/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lw5/m;->b:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, Lw5/m;->b:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const-string v1, ".dex"

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lw5/m;->b:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const-string v1, ".javac"

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lw5/m;->b:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const-string v1, ".astc"

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lw5/m;->b:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    return-object v0
.end method

.method public static b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lw5/m;->a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, Lw5/m;->a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const-string v1, ".msc"

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lw5/m;->a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const-string v1, ".config"

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lw5/m;->a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const-string v1, ".texture"

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lw5/m;->a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const-string v1, ".sound"

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lw5/m;->a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const-string v1, ".nm"

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lw5/m;->a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const-string v1, ".manifest"

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lw5/m;->a:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    return-object v0
.end method
