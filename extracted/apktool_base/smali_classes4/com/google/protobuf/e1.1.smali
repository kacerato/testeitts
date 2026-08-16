.class public interface abstract Lcom/google/protobuf/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/c1;


# annotations
.annotation runtime Lcom/google/protobuf/B;
.end annotation


# virtual methods
.method public abstract findInitializationErrors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllFields()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/Descriptors$f;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultInstanceForType()Lcom/google/protobuf/Y0;
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/protobuf/e1;->getDefaultInstanceForType()Lcom/google/protobuf/Y0;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
.end method

.method public abstract getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation
.end method

.method public abstract getInitializationErrorString()Ljava/lang/String;
.end method

.method public abstract getOneofFieldDescriptor(Lcom/google/protobuf/Descriptors$k;)Lcom/google/protobuf/Descriptors$f;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oneof"
        }
    .end annotation
.end method

.method public abstract getRepeatedField(Lcom/google/protobuf/Descriptors$f;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "field",
            "index"
        }
    .end annotation
.end method

.method public abstract getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$f;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation
.end method

.method public abstract getUnknownFields()Lcom/google/protobuf/r2;
.end method

.method public abstract hasField(Lcom/google/protobuf/Descriptors$f;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation
.end method

.method public abstract hasOneof(Lcom/google/protobuf/Descriptors$k;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oneof"
        }
    .end annotation
.end method
