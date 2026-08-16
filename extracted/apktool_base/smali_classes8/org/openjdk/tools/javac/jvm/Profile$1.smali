.class final enum Lorg/openjdk/tools/javac/jvm/Profile$1;
.super Lorg/openjdk/tools/javac/jvm/Profile;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/jvm/Profile;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/jvm/Profile$1;)V

    return-void
.end method


# virtual methods
.method public isValid(Lorg/openjdk/tools/javac/jvm/Target;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
