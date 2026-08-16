.class final Lorg/openjdk/tools/javac/jvm/ClassReader$InterimProvidesDirective;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/ClassReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InterimProvidesDirective"
.end annotation


# instance fields
.field public final impls:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/util/Name;",
            ">;"
        }
    .end annotation
.end field

.field public final service:Lorg/openjdk/tools/javac/util/Name;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/util/Name;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$InterimProvidesDirective;->service:Lorg/openjdk/tools/javac/util/Name;

    iput-object p2, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$InterimProvidesDirective;->impls:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method
