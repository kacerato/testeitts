.class Lorg/eclipse/jdt/core/ToolFactory$1DeprecatedDisassembler;
.super Lorg/eclipse/jdt/internal/core/util/Disassembler;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IClassFileDisassembler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/core/ToolFactory;->createDefaultClassFileDisassembler()Lorg/eclipse/jdt/core/util/IClassFileDisassembler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeprecatedDisassembler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/Disassembler;-><init>()V

    return-void
.end method
