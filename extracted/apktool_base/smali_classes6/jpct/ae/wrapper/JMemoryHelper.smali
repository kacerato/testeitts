.class public Ljpct/ae/wrapper/JMemoryHelper;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctMemoryHelper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Lcom/threed/jpct/util/MemoryHelper;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method

.method public static compact()V
    .locals 0

    invoke-static {}, Lcom/threed/jpct/util/MemoryHelper;->compact()V

    return-void
.end method

.method public static printMemory()V
    .locals 0

    invoke-static {}, Lcom/threed/jpct/util/MemoryHelper;->printMemory()V

    return-void
.end method


# virtual methods
.method public Initialize()V
    .locals 1

    new-instance v0, Lcom/threed/jpct/util/MemoryHelper;

    invoke-direct {v0}, Lcom/threed/jpct/util/MemoryHelper;-><init>()V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JMemoryHelper;->setObject(Ljava/lang/Object;)V

    return-void
.end method
