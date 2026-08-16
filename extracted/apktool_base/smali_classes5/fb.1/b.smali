.class public interface abstract Lfb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.end method

.method public abstract b()Ljava/lang/Class;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d(Lcom/google/gson/JsonObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()Z
.end method

.method public h(Z)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "translate"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract i()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfb/d;",
            ">;"
        }
    .end annotation
.end method
