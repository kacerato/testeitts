.class public Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackMarker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StackMarker"
.end annotation


# instance fields
.field public destinationPC:I

.field public infos:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

.field public pc:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackMarker;->pc:I

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackMarker;->destinationPC:I

    return-void
.end method


# virtual methods
.method public setInfos([Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackMarker;->infos:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[copy stack items from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackMarker;->pc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackMarker;->destinationPC:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackMarker;->infos:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    if-eqz v1, :cond_2

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    :cond_0
    if-lez v2, :cond_1

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream$StackMarker;->infos:[Lorg/eclipse/jdt/internal/compiler/codegen/VerificationTypeInfo;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
