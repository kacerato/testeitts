.class final enum Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOpKind$2;
.super Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOpKind;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOpKind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOpKind;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/comp/Infer$1;)V

    return-void
.end method


# virtual methods
.method public apply(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;Lorg/openjdk/tools/javac/code/Types;)Z
    .locals 0

    invoke-virtual {p4, p1, p2}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    return p1
.end method
