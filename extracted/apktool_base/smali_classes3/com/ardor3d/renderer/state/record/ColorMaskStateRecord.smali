.class public Lcom/ardor3d/renderer/state/record/ColorMaskStateRecord;
.super Lcom/ardor3d/renderer/state/record/StateRecord;
.source "SourceFile"


# instance fields
.field public alpha:Z

.field public blue:Z

.field public green:Z

.field public red:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/ColorMaskStateRecord;->red:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/ColorMaskStateRecord;->green:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/ColorMaskStateRecord;->blue:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/ColorMaskStateRecord;->alpha:Z

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    invoke-super {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;->invalidate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/ColorMaskStateRecord;->alpha:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/ColorMaskStateRecord;->blue:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/ColorMaskStateRecord;->green:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/ColorMaskStateRecord;->red:Z

    return-void
.end method

.method public is(ZZZZ)Z
    .locals 2

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/record/ColorMaskStateRecord;->alpha:Z

    const/4 v1, 0x0

    if-eq v0, p4, :cond_0

    return v1

    :cond_0
    iget-boolean p4, p0, Lcom/ardor3d/renderer/state/record/ColorMaskStateRecord;->red:Z

    if-eq p4, p1, :cond_1

    return v1

    :cond_1
    iget-boolean p1, p0, Lcom/ardor3d/renderer/state/record/ColorMaskStateRecord;->green:Z

    if-eq p1, p2, :cond_2

    return v1

    :cond_2
    iget-boolean p1, p0, Lcom/ardor3d/renderer/state/record/ColorMaskStateRecord;->blue:Z

    if-eq p1, p3, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public set(ZZZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/record/ColorMaskStateRecord;->red:Z

    iput-boolean p2, p0, Lcom/ardor3d/renderer/state/record/ColorMaskStateRecord;->green:Z

    iput-boolean p3, p0, Lcom/ardor3d/renderer/state/record/ColorMaskStateRecord;->blue:Z

    iput-boolean p4, p0, Lcom/ardor3d/renderer/state/record/ColorMaskStateRecord;->alpha:Z

    return-void
.end method
