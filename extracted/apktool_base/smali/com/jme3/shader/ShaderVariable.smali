.class public Lcom/jme3/shader/ShaderVariable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LOC_NOT_DEFINED:I = -0x1

.field public static final LOC_UNKNOWN:I = -0x2


# instance fields
.field protected location:I

.field protected name:Ljava/lang/String;

.field protected updateNeeded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/jme3/shader/ShaderVariable;->location:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/shader/ShaderVariable;->name:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/shader/ShaderVariable;->updateNeeded:Z

    return-void
.end method


# virtual methods
.method public getLocation()I
    .locals 1

    iget v0, p0, Lcom/jme3/shader/ShaderVariable;->location:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/ShaderVariable;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setLocation(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/shader/ShaderVariable;->location:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shader/ShaderVariable;->name:Ljava/lang/String;

    return-void
.end method
