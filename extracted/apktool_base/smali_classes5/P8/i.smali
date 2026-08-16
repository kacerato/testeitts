.class public interface abstract LP8/i;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getInspector(Landroid/content/Context;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/String;LP8/n;LP8/q;)LC5/b;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "field",
            "classInstance",
            "tittle",
            "getSetterListener",
            "userPointer"
        }
    .end annotation
.end method

.method public abstract getInspectorForArray(Landroid/content/Context;[Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/String;LP8/n;LP8/q;)LC5/b;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "array",
            "position",
            "classInstance",
            "tittle",
            "getSetterListener",
            "userPointer"
        }
    .end annotation
.end method

.method public abstract getInspectorForList(Landroid/content/Context;Ld8/h;ILjava/lang/Object;Ljava/lang/String;LP8/n;LP8/q;)LC5/b;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "list",
            "position",
            "classInstance",
            "tittle",
            "getSetterListener",
            "userPointer"
        }
    .end annotation
.end method

.method public abstract getSimpleName(LP8/q;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userPointer"
        }
    .end annotation
.end method

.method public abstract isRestorable()Z
.end method

.method public abstract match(Ljava/lang/String;LP8/q;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "className",
            "userPointer"
        }
    .end annotation
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
