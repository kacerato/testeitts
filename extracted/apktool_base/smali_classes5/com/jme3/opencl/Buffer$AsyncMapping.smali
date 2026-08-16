.class public Lcom/jme3/opencl/Buffer$AsyncMapping;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/opencl/Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncMapping"
.end annotation


# instance fields
.field public final buffer:Ljava/nio/ByteBuffer;

.field public final event:Lcom/jme3/opencl/Event;


# direct methods
.method public constructor <init>(Lcom/jme3/opencl/Event;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jme3/opencl/Buffer$AsyncMapping;->event:Lcom/jme3/opencl/Event;

    iput-object p2, p0, Lcom/jme3/opencl/Buffer$AsyncMapping;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/jme3/opencl/Buffer$AsyncMapping;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getEvent()Lcom/jme3/opencl/Event;
    .locals 1

    iget-object v0, p0, Lcom/jme3/opencl/Buffer$AsyncMapping;->event:Lcom/jme3/opencl/Event;

    return-object v0
.end method
