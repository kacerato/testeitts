.class public interface abstract Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$KeepSpecOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nW;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "KeepSpecOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic findInitializationErrors()Ljava/util/List;
.end method

.method public abstract synthetic getAllFields()Ljava/util/Map;
.end method

.method public abstract getDeclarations(I)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration;
.end method

.method public abstract getDeclarationsCount()I
.end method

.method public abstract getDeclarationsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeclarationsOrBuilder(I)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$DeclarationOrBuilder;
.end method

.method public abstract getDeclarationsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$DeclarationOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;
.end method

.method public abstract synthetic getDescriptorForType()Lcom/android/tools/r8/internal/Cl;
.end method

.method public abstract synthetic getField(Lcom/android/tools/r8/internal/Ol;)Ljava/lang/Object;
.end method

.method public abstract synthetic getInitializationErrorString()Ljava/lang/String;
.end method

.method public abstract synthetic getOneofFieldDescriptor(Lcom/android/tools/r8/internal/Sl;)Lcom/android/tools/r8/internal/Ol;
.end method

.method public abstract synthetic getRepeatedField(Lcom/android/tools/r8/internal/Ol;I)Ljava/lang/Object;
.end method

.method public abstract synthetic getRepeatedFieldCount(Lcom/android/tools/r8/internal/Ol;)I
.end method

.method public abstract synthetic getUnknownFields()Lcom/android/tools/r8/internal/pv0;
.end method

.method public abstract getVersion()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Version;
.end method

.method public abstract getVersionOrBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$VersionOrBuilder;
.end method

.method public abstract synthetic hasField(Lcom/android/tools/r8/internal/Ol;)Z
.end method

.method public abstract synthetic hasOneof(Lcom/android/tools/r8/internal/Sl;)Z
.end method

.method public abstract hasVersion()Z
.end method
