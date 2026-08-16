.class public Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FunctionDescriptorLookupError"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field diagnostic:Lorg/openjdk/tools/javac/util/JCDiagnostic;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError;->diagnostic:Lorg/openjdk/tools/javac/util/JCDiagnostic;

    return-void
.end method


# virtual methods
.method public getDiagnostic()Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError;->diagnostic:Lorg/openjdk/tools/javac/util/JCDiagnostic;

    return-object v0
.end method

.method public setMessage(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError;
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError;->diagnostic:Lorg/openjdk/tools/javac/util/JCDiagnostic;

    return-object p0
.end method
