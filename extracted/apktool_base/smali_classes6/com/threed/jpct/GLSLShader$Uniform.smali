.class Lcom/threed/jpct/GLSLShader$Uniform;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threed/jpct/GLSLShader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Uniform"
.end annotation


# static fields
.field public static final FLOAT:I = 0x1

.field public static final FLOAT_ARRAY:I = 0x2

.field public static final INT:I = 0x0

.field public static final MATRIX:I = 0x3

.field public static final SINGLE_FLOAT_ARRAY:I = 0x6

.field public static final VECTOR:I = 0x4

.field public static final VECTOR_ARRAY:I = 0x5


# instance fields
.field private fValue:F

.field private faValue:[F

.field private handle:I

.field private iValue:I

.field private mValue:Ljava/nio/FloatBuffer;

.field private name:Ljava/lang/String;

.field private sValue:Lcom/threed/jpct/SimpleVector;

.field private saData:[F

.field private staticUniform:Z

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    const-string v1, "--tmp--"

    invoke-direct {p0, v0, v1}, Lcom/threed/jpct/GLSLShader$Uniform;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/threed/jpct/GLSLShader$Uniform;->iValue:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/threed/jpct/GLSLShader$Uniform;->fValue:F

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/threed/jpct/GLSLShader$Uniform;->faValue:[F

    .line 6
    iput-object v1, p0, Lcom/threed/jpct/GLSLShader$Uniform;->mValue:Ljava/nio/FloatBuffer;

    .line 7
    iput-object v1, p0, Lcom/threed/jpct/GLSLShader$Uniform;->sValue:Lcom/threed/jpct/SimpleVector;

    .line 8
    iput-object v1, p0, Lcom/threed/jpct/GLSLShader$Uniform;->saData:[F

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lcom/threed/jpct/GLSLShader$Uniform;->handle:I

    .line 10
    iput-boolean v0, p0, Lcom/threed/jpct/GLSLShader$Uniform;->staticUniform:Z

    .line 11
    iput p1, p0, Lcom/threed/jpct/GLSLShader$Uniform;->type:I

    .line 12
    iput-object p2, p0, Lcom/threed/jpct/GLSLShader$Uniform;->name:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$0(Lcom/threed/jpct/GLSLShader$Uniform;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/threed/jpct/GLSLShader$Uniform;->name:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getFloatArrayValue()[F
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/GLSLShader$Uniform;->faValue:[F

    return-object v0
.end method

.method public getFloatValue()F
    .locals 1

    iget v0, p0, Lcom/threed/jpct/GLSLShader$Uniform;->fValue:F

    return v0
.end method

.method public getHandle()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/GLSLShader$Uniform;->handle:I

    return v0
.end method

.method public getIntValue()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/GLSLShader$Uniform;->iValue:I

    return v0
.end method

.method public getMatrixValue()Ljava/nio/FloatBuffer;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/GLSLShader$Uniform;->mValue:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/GLSLShader$Uniform;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/GLSLShader$Uniform;->type:I

    return v0
.end method

.method public getVectorArrayValue()[F
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/GLSLShader$Uniform;->saData:[F

    return-object v0
.end method

.method public getVectorValue()Lcom/threed/jpct/SimpleVector;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/GLSLShader$Uniform;->sValue:Lcom/threed/jpct/SimpleVector;

    return-object v0
.end method

.method public hasHandle()Z
    .locals 2

    iget v0, p0, Lcom/threed/jpct/GLSLShader$Uniform;->handle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStaticUniform()Z
    .locals 1

    iget-boolean v0, p0, Lcom/threed/jpct/GLSLShader$Uniform;->staticUniform:Z

    return v0
.end method

.method public setHandle(I)V
    .locals 0

    iput p1, p0, Lcom/threed/jpct/GLSLShader$Uniform;->handle:I

    return-void
.end method

.method public setStaticUniform(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/threed/jpct/GLSLShader$Uniform;->staticUniform:Z

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/threed/jpct/GLSLShader$Uniform;->type:I

    return-void
.end method

.method public setValue(F)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/threed/jpct/GLSLShader$Uniform;->fValue:F

    return-void
.end method

.method public setValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/threed/jpct/GLSLShader$Uniform;->iValue:I

    return-void
.end method

.method public setValue(Lcom/threed/jpct/SimpleVector;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/threed/jpct/GLSLShader$Uniform;->sValue:Lcom/threed/jpct/SimpleVector;

    return-void
.end method

.method public setValue(Ljava/nio/FloatBuffer;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/threed/jpct/GLSLShader$Uniform;->mValue:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public setValue([F)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/threed/jpct/GLSLShader$Uniform;->faValue:[F

    return-void
.end method

.method public setValue([Lcom/threed/jpct/SimpleVector;)V
    .locals 8

    .line 6
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader$Uniform;->saData:[F

    if-nez v0, :cond_0

    .line 7
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/GLSLShader$Uniform;->saData:[F

    .line 8
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_1

    return-void

    .line 9
    :cond_1
    aget-object v3, p1, v1

    .line 10
    iget-object v4, p0, Lcom/threed/jpct/GLSLShader$Uniform;->saData:[F

    add-int/lit8 v5, v2, 0x1

    iget v6, v3, Lcom/threed/jpct/SimpleVector;->x:F

    aput v6, v4, v2

    add-int/lit8 v6, v2, 0x2

    .line 11
    iget v7, v3, Lcom/threed/jpct/SimpleVector;->y:F

    aput v7, v4, v5

    add-int/lit8 v2, v2, 0x3

    .line 12
    iget v3, v3, Lcom/threed/jpct/SimpleVector;->z:F

    aput v3, v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
