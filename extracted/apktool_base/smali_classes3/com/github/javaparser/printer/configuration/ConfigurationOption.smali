.class public interface abstract Lcom/github/javaparser/printer/configuration/ConfigurationOption;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract asBoolean()Ljava/lang/Boolean;
.end method

.method public abstract asInteger()Ljava/lang/Integer;
.end method

.method public abstract asString()Ljava/lang/String;
.end method

.method public abstract asValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation
.end method

.method public abstract hasValue()Z
.end method

.method public abstract value(Ljava/lang/Object;)Lcom/github/javaparser/printer/configuration/ConfigurationOption;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method
