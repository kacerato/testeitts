.class final enum Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound$3;
.super Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Type$1;)V

    return-void
.end method


# virtual methods
.method public complement()Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->LOWER:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    return-object v0
.end method
