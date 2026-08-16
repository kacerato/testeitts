.class public interface abstract Lcom/google/protobuf/Y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/b1;
.implements Lcom/google/protobuf/e1;


# annotations
.annotation runtime Lcom/google/protobuf/B;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Y0$a;
    }
.end annotation


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation
.end method

.method public abstract getParserForType()Lcom/google/protobuf/w1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "+",
            "Lcom/google/protobuf/Y0;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hashCode()I
.end method

.method public abstract newBuilderForType()Lcom/google/protobuf/Y0$a;
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/protobuf/Y0;->newBuilderForType()Lcom/google/protobuf/Y0$a;

    move-result-object v0

    return-object v0
.end method

.method public abstract toBuilder()Lcom/google/protobuf/Y0$a;
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/protobuf/Y0;->toBuilder()Lcom/google/protobuf/Y0$a;

    move-result-object v0

    return-object v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method
