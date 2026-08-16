.class public abstract Lcom/ardor3d/renderer/state/record/StateRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected valid:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/StateRecord;->valid:Z

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/StateRecord;->valid:Z

    return-void
.end method

.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/record/StateRecord;->valid:Z

    return v0
.end method

.method public validate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/StateRecord;->valid:Z

    return-void
.end method
