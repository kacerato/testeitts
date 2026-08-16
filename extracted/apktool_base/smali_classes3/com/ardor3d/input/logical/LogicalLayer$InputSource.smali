.class Lcom/ardor3d/input/logical/LogicalLayer$InputSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/input/logical/LogicalLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputSource"
.end annotation


# instance fields
.field private lastState:Lcom/ardor3d/input/InputState;

.field private final physicalLayer:Lcom/ardor3d/input/PhysicalLayer;

.field private final source:Lcom/ardor3d/framework/Canvas;


# direct methods
.method public constructor <init>(Lcom/ardor3d/framework/Canvas;Lcom/ardor3d/input/PhysicalLayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/input/logical/LogicalLayer$InputSource;->source:Lcom/ardor3d/framework/Canvas;

    iput-object p2, p0, Lcom/ardor3d/input/logical/LogicalLayer$InputSource;->physicalLayer:Lcom/ardor3d/input/PhysicalLayer;

    sget-object p1, Lcom/ardor3d/input/InputState;->EMPTY:Lcom/ardor3d/input/InputState;

    iput-object p1, p0, Lcom/ardor3d/input/logical/LogicalLayer$InputSource;->lastState:Lcom/ardor3d/input/InputState;

    return-void
.end method

.method public static synthetic access$000(Lcom/ardor3d/input/logical/LogicalLayer$InputSource;)Lcom/ardor3d/input/PhysicalLayer;
    .locals 0

    iget-object p0, p0, Lcom/ardor3d/input/logical/LogicalLayer$InputSource;->physicalLayer:Lcom/ardor3d/input/PhysicalLayer;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/ardor3d/input/logical/LogicalLayer$InputSource;)Lcom/ardor3d/framework/Canvas;
    .locals 0

    iget-object p0, p0, Lcom/ardor3d/input/logical/LogicalLayer$InputSource;->source:Lcom/ardor3d/framework/Canvas;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/ardor3d/input/logical/LogicalLayer$InputSource;)Lcom/ardor3d/input/InputState;
    .locals 0

    iget-object p0, p0, Lcom/ardor3d/input/logical/LogicalLayer$InputSource;->lastState:Lcom/ardor3d/input/InputState;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/ardor3d/input/logical/LogicalLayer$InputSource;Lcom/ardor3d/input/InputState;)Lcom/ardor3d/input/InputState;
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/input/logical/LogicalLayer$InputSource;->lastState:Lcom/ardor3d/input/InputState;

    return-object p1
.end method
