.class Lcom/ardor3d/input/ControllerState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ardor3d/input/ControllerState;->getEvents()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/ardor3d/input/ControllerEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ardor3d/input/ControllerState;


# direct methods
.method public constructor <init>(Lcom/ardor3d/input/ControllerState;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/input/ControllerState$1;->this$0:Lcom/ardor3d/input/ControllerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/ardor3d/input/ControllerEvent;Lcom/ardor3d/input/ControllerEvent;)I
    .locals 2

    .line 2
    invoke-virtual {p2}, Lcom/ardor3d/input/ControllerEvent;->getNanos()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/ardor3d/input/ControllerEvent;->getNanos()J

    move-result-wide p1

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/ardor3d/input/ControllerEvent;

    check-cast p2, Lcom/ardor3d/input/ControllerEvent;

    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/input/ControllerState$1;->compare(Lcom/ardor3d/input/ControllerEvent;Lcom/ardor3d/input/ControllerEvent;)I

    move-result p1

    return p1
.end method
