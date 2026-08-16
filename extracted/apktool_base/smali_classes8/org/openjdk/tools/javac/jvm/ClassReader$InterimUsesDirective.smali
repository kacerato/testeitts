.class final Lorg/openjdk/tools/javac/jvm/ClassReader$InterimUsesDirective;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/ClassReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InterimUsesDirective"
.end annotation


# instance fields
.field public final service:Lorg/openjdk/tools/javac/util/Name;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Name;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassReader$InterimUsesDirective;->service:Lorg/openjdk/tools/javac/util/Name;

    return-void
.end method
