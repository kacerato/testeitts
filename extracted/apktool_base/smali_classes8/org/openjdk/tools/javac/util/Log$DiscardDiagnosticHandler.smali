.class public Lorg/openjdk/tools/javac/util/Log$DiscardDiagnosticHandler;
.super Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiscardDiagnosticHandler"
.end annotation


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Log;)V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;-><init>()V

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;->install(Lorg/openjdk/tools/javac/util/Log;)V

    return-void
.end method


# virtual methods
.method public report(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V
    .locals 0

    return-void
.end method
