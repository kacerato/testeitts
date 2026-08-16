.class abstract Lorg/openjdk/tools/javac/jvm/Gen$GenFinalizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/Gen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "GenFinalizer"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/jvm/Gen;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/Gen;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen$GenFinalizer;->this$0:Lorg/openjdk/tools/javac/jvm/Gen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract gen()V
.end method

.method public abstract genLast()V
.end method

.method public hasFinalizer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
