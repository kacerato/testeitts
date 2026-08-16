.class Lcom/jme3/input/JoystickCompatibilityMappings$AxisData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/input/JoystickCompatibilityMappings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AxisData"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field range:[F


# direct methods
.method public constructor <init>(Ljava/lang/String;[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jme3/input/JoystickCompatibilityMappings$AxisData;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/jme3/input/JoystickCompatibilityMappings$AxisData;->range:[F

    return-void
.end method
