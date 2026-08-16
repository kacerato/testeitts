.class public Lorg/openjdk/tools/javac/jvm/Code$Chain;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/Code;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Chain"
.end annotation


# instance fields
.field public final next:Lorg/openjdk/tools/javac/jvm/Code$Chain;

.field public final pc:I

.field state:Lorg/openjdk/tools/javac/jvm/Code$State;


# direct methods
.method public constructor <init>(ILorg/openjdk/tools/javac/jvm/Code$Chain;Lorg/openjdk/tools/javac/jvm/Code$State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/openjdk/tools/javac/jvm/Code$Chain;->pc:I

    iput-object p2, p0, Lorg/openjdk/tools/javac/jvm/Code$Chain;->next:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    iput-object p3, p0, Lorg/openjdk/tools/javac/jvm/Code$Chain;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    return-void
.end method
