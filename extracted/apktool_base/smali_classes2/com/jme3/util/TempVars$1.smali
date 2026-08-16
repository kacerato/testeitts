.class Lcom/jme3/util/TempVars$1;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/util/TempVars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lcom/jme3/util/TempVars$TempVarsStack;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public initialValue()Lcom/jme3/util/TempVars$TempVarsStack;
    .locals 2

    .line 2
    new-instance v0, Lcom/jme3/util/TempVars$TempVarsStack;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jme3/util/TempVars$TempVarsStack;-><init>(Lcom/jme3/util/TempVars$1;)V

    return-object v0
.end method

.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/util/TempVars$1;->initialValue()Lcom/jme3/util/TempVars$TempVarsStack;

    move-result-object v0

    return-object v0
.end method
