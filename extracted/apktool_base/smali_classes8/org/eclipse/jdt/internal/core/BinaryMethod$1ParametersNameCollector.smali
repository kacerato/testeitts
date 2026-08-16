.class final Lorg/eclipse/jdt/internal/core/BinaryMethod$1ParametersNameCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/BinaryMethod;->getParameterNames()[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ParametersNameCollector"
.end annotation


# instance fields
.field javadoc:Ljava/lang/String;

.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/BinaryMethod;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/BinaryMethod;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod$1ParametersNameCollector;->this$0:Lorg/eclipse/jdt/internal/core/BinaryMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getJavadoc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod$1ParametersNameCollector;->javadoc:Ljava/lang/String;

    return-object v0
.end method

.method public setJavadoc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/BinaryMethod$1ParametersNameCollector;->javadoc:Ljava/lang/String;

    return-void
.end method
