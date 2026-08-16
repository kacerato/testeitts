.class public abstract Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DiagnosticHandler"
.end annotation


# instance fields
.field protected prev:Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public install(Lorg/openjdk/tools/javac/util/Log;)V
    .locals 1

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->access$000(Lorg/openjdk/tools/javac/util/Log;)Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;->prev:Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;

    invoke-static {p1, p0}, Lorg/openjdk/tools/javac/util/Log;->access$002(Lorg/openjdk/tools/javac/util/Log;Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;)Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;

    return-void
.end method

.method public abstract report(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V
.end method
