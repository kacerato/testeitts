.class Lorg/openjdk/tools/javac/comp/Attr$TargetInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Attr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TargetInfo"
.end annotation


# instance fields
.field descriptor:Lorg/openjdk/tools/javac/code/Type;

.field target:Lorg/openjdk/tools/javac/code/Type;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Attr;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr$TargetInfo;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Attr$TargetInfo;->target:Lorg/openjdk/tools/javac/code/Type;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Attr$TargetInfo;->descriptor:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method
