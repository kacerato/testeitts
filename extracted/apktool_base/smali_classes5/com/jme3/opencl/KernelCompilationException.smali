.class public Lcom/jme3/opencl/KernelCompilationException;
.super Lcom/jme3/opencl/OpenCLException;
.source "SourceFile"


# instance fields
.field private final log:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/jme3/opencl/OpenCLException;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/jme3/opencl/KernelCompilationException;->log:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLog()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/opencl/KernelCompilationException;->log:Ljava/lang/String;

    return-object v0
.end method
