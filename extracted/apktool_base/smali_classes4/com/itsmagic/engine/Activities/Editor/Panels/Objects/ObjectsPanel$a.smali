.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel$a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$j;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;->e0:Ljava/lang/Class;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "Objects"

    return-object v0
.end method
