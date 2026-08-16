.class public Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public duplicableGUID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public uniqueGUID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;->uniqueGUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;->duplicableGUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/ObjectReferencing/CompData;->type:Ljava/lang/String;

    return-void
.end method
