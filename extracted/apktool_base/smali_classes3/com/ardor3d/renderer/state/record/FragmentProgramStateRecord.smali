.class public Lcom/ardor3d/renderer/state/record/FragmentProgramStateRecord;
.super Lcom/ardor3d/renderer/state/record/StateRecord;
.source "SourceFile"


# instance fields
.field private reference:Lcom/ardor3d/renderer/state/FragmentProgramState;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/FragmentProgramStateRecord;->reference:Lcom/ardor3d/renderer/state/FragmentProgramState;

    return-void
.end method


# virtual methods
.method public getReference()Lcom/ardor3d/renderer/state/FragmentProgramState;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/FragmentProgramStateRecord;->reference:Lcom/ardor3d/renderer/state/FragmentProgramState;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    invoke-super {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;->invalidate()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/FragmentProgramStateRecord;->reference:Lcom/ardor3d/renderer/state/FragmentProgramState;

    return-void
.end method

.method public setReference(Lcom/ardor3d/renderer/state/FragmentProgramState;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/record/FragmentProgramStateRecord;->reference:Lcom/ardor3d/renderer/state/FragmentProgramState;

    return-void
.end method
