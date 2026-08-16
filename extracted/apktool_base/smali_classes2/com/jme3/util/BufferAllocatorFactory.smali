.class public Lcom/jme3/util/BufferAllocatorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/jme3/system/Annotations$Internal;
.end annotation


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;

.field public static final PROPERTY_BUFFER_ALLOCATOR_IMPLEMENTATION:Ljava/lang/String; = "com.jme3.BufferAllocatorImplementation"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/util/BufferAllocatorFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/util/BufferAllocatorFactory;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/jme3/util/BufferAllocator;
    .locals 4
    .annotation build Lcom/jme3/system/Annotations$Internal;
    .end annotation

    const-class v0, Lcom/jme3/util/ReflectionAllocator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.jme3.BufferAllocatorImplementation"

    invoke-static {v1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/util/BufferAllocator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    sget-object v1, Lcom/jme3/util/BufferAllocatorFactory;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Unable to access {0}"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/jme3/util/PrimitiveAllocator;

    invoke-direct {v0}, Lcom/jme3/util/PrimitiveAllocator;-><init>()V

    return-object v0
.end method
