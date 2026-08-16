.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/InputSystem/UIEventEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public clickable:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public dispatchTouchWhenOutsideRect:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public exclusiveMode:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public objectReference:LV9/p;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public onlyDownInside:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public rectObject:LS9/b;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/InputSystem/UIEventEntry;->clickable:Z

    sget-object v1, LS9/b;->MySelf:LS9/b;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/InputSystem/UIEventEntry;->rectObject:LS9/b;

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/InputSystem/UIEventEntry;->onlyDownInside:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/InputSystem/UIEventEntry;->exclusiveMode:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/InputSystem/UIEventEntry;->dispatchTouchWhenOutsideRect:Z

    return-void
.end method
