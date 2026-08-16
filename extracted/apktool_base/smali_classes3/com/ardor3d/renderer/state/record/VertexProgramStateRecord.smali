.class public Lcom/ardor3d/renderer/state/record/VertexProgramStateRecord;
.super Lcom/ardor3d/renderer/state/record/StateRecord;
.source "SourceFile"


# instance fields
.field reference:Lcom/ardor3d/renderer/state/VertexProgramState;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/VertexProgramStateRecord;->reference:Lcom/ardor3d/renderer/state/VertexProgramState;

    return-void
.end method


# virtual methods
.method public getReference()Lcom/ardor3d/renderer/state/VertexProgramState;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/VertexProgramStateRecord;->reference:Lcom/ardor3d/renderer/state/VertexProgramState;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    invoke-super {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;->invalidate()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/VertexProgramStateRecord;->reference:Lcom/ardor3d/renderer/state/VertexProgramState;

    return-void
.end method

.method public setReference(Lcom/ardor3d/renderer/state/VertexProgramState;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/record/VertexProgramStateRecord;->reference:Lcom/ardor3d/renderer/state/VertexProgramState;

    return-void
.end method
