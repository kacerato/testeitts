.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public data:Lcom/google/gson/JsonObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public serializedType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serializedType",
            "data"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeRecord;->serializedType:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeRecord;->data:Lcom/google/gson/JsonObject;

    return-void
.end method
