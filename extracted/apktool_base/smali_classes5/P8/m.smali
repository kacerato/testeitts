.class public interface abstract LP8/m;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getCls()Ljava/lang/Class;
.end method

.method public abstract getFullName()Ljava/lang/String;
.end method

.method public abstract getInspector(Landroid/content/Context;LP8/k;Ljava/lang/String;LP8/q;)LC5/b;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "constructor",
            "tittle",
            "userPointer"
        }
    .end annotation
.end method

.method public abstract isRestorable()Z
.end method

.method public abstract newInstance(LP8/q;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userPointer"
        }
    .end annotation
.end method

.method public abstract restore(Lcom/itsmagic/engine/Engines/Utils/Variable;LP8/q;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "variable",
            "userPointer"
        }
    .end annotation
.end method

.method public abstract save(Ljava/lang/String;Ljava/lang/Object;LP8/q;)Lcom/itsmagic/engine/Engines/Utils/Variable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "value",
            "userPointer"
        }
    .end annotation
.end method
