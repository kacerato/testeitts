.class public Ljpct/ae/wrapper/JGLSLShader;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctGLSLShader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Lcom/threed/jpct/GLSLShader;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method

.method public static addReplacement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/threed/jpct/GLSLShader;->addReplacement(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setShaderLocator(Lcom/threed/jpct/ShaderLocator;)V
    .locals 0

    invoke-static {p0}, Lcom/threed/jpct/GLSLShader;->setShaderLocator(Lcom/threed/jpct/ShaderLocator;)V

    return-void
.end method


# virtual methods
.method public Initialize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/threed/jpct/GLSLShader;

    invoke-direct {v0, p1, p2}, Lcom/threed/jpct/GLSLShader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JGLSLShader;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSLShader;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/GLSLShader;

    invoke-virtual {v0}, Lcom/threed/jpct/GLSLShader;->dispose()V

    return-void
.end method

.method public finalize()V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSLShader;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/GLSLShader;

    invoke-virtual {v0}, Lcom/threed/jpct/GLSLShader;->finalize()V

    return-void
.end method

.method public getHandle(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSLShader;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/GLSLShader;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/GLSLShader;->getHandle(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getProgram()I
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSLShader;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/GLSLShader;

    invoke-virtual {v0}, Lcom/threed/jpct/GLSLShader;->getProgram()I

    move-result v0

    return v0
.end method

.method public setFloatArrayUniform(Ljava/lang/String;[F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSLShader;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/GLSLShader;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/GLSLShader;->setFloatArrayUniform(Ljava/lang/String;[F)V

    return-void
.end method

.method public setStaticFloatArrayUniform(Ljava/lang/String;[F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSLShader;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/GLSLShader;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/GLSLShader;->setStaticFloatArrayUniform(Ljava/lang/String;[F)V

    return-void
.end method

.method public setStaticUniform(Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSLShader;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/GLSLShader;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/GLSLShader;->setStaticUniform(Ljava/lang/String;I)V

    return-void
.end method

.method public setStaticUniform2(Ljava/lang/String;F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSLShader;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/GLSLShader;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/GLSLShader;->setStaticUniform(Ljava/lang/String;F)V

    return-void
.end method

.method public setStaticUniform3(Ljava/lang/String;[F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSLShader;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/GLSLShader;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/GLSLShader;->setStaticUniform(Ljava/lang/String;[F)V

    return-void
.end method

.method public setStaticUniform4(Ljava/lang/String;[Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSLShader;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/GLSLShader;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/GLSLShader;->setStaticUniform(Ljava/lang/String;[Lcom/threed/jpct/SimpleVector;)V

    return-void
.end method

.method public setStaticUniform5(Ljava/lang/String;Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSLShader;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/GLSLShader;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/GLSLShader;->setStaticUniform(Ljava/lang/String;Lcom/threed/jpct/SimpleVector;)V

    return-void
.end method

.method public setStaticUniform6(Ljava/lang/String;Lcom/threed/jpct/Matrix;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSLShader;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/GLSLShader;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/GLSLShader;->setStaticUniform(Ljava/lang/String;Lcom/threed/jpct/Matrix;)V

    return-void
.end method

.method public setUniform(Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSLShader;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/GLSLShader;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/GLSLShader;->setUniform(Ljava/lang/String;I)V

    return-void
.end method

.method public setUniform2(Ljava/lang/String;F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSLShader;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/GLSLShader;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/GLSLShader;->setUniform(Ljava/lang/String;F)V

    return-void
.end method

.method public setUniform3(Ljava/lang/String;Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSLShader;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/GLSLShader;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/GLSLShader;->setUniform(Ljava/lang/String;Lcom/threed/jpct/SimpleVector;)V

    return-void
.end method

.method public setUniform4(Ljava/lang/String;[Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSLShader;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/GLSLShader;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/GLSLShader;->setUniform(Ljava/lang/String;[Lcom/threed/jpct/SimpleVector;)V

    return-void
.end method

.method public setUniform5(Ljava/lang/String;[F)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSLShader;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/GLSLShader;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/GLSLShader;->setUniform(Ljava/lang/String;[F)V

    return-void
.end method

.method public setUniform6(Ljava/lang/String;Lcom/threed/jpct/Matrix;)V
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JGLSLShader;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/GLSLShader;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/GLSLShader;->setUniform(Ljava/lang/String;Lcom/threed/jpct/Matrix;)V

    return-void
.end method
