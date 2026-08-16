.class Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TmpVert;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TmpVert"
.end annotation


# instance fields
.field index:I

.field vert:[F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TmpVert;->vert:[F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TmpVert;-><init>()V

    return-void
.end method
