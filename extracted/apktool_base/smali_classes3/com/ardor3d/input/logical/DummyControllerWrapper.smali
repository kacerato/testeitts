.class public Lcom/ardor3d/input/logical/DummyControllerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/input/ControllerWrapper;


# static fields
.field public static final INSTANCE:Lcom/ardor3d/input/logical/DummyControllerWrapper;


# instance fields
.field empty:Lcom/google/common/collect/g2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g2<",
            "Lcom/ardor3d/input/ControllerEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ardor3d/input/logical/DummyControllerWrapper;

    invoke-direct {v0}, Lcom/ardor3d/input/logical/DummyControllerWrapper;-><init>()V

    sput-object v0, Lcom/ardor3d/input/logical/DummyControllerWrapper;->INSTANCE:Lcom/ardor3d/input/logical/DummyControllerWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ardor3d/input/logical/DummyControllerWrapper$1;

    invoke-direct {v0, p0}, Lcom/ardor3d/input/logical/DummyControllerWrapper$1;-><init>(Lcom/ardor3d/input/logical/DummyControllerWrapper;)V

    iput-object v0, p0, Lcom/ardor3d/input/logical/DummyControllerWrapper;->empty:Lcom/google/common/collect/g2;

    return-void
.end method


# virtual methods
.method public getBlankState()Lcom/ardor3d/input/ControllerState;
    .locals 1

    new-instance v0, Lcom/ardor3d/input/ControllerState;

    invoke-direct {v0}, Lcom/ardor3d/input/ControllerState;-><init>()V

    return-object v0
.end method

.method public getEvents()Lcom/google/common/collect/g2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g2<",
            "Lcom/ardor3d/input/ControllerEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/input/logical/DummyControllerWrapper;->empty:Lcom/google/common/collect/g2;

    return-object v0
.end method

.method public init()V
    .locals 0

    return-void
.end method
