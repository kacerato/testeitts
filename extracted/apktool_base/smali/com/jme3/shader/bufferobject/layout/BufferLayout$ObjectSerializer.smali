.class public abstract Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/shader/bufferobject/layout/BufferLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ObjectSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private filter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/jme3/shader/bufferobject/layout/a;

    invoke-direct {v0, p1}, Lcom/jme3/shader/bufferobject/layout/a;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;-><init>(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;->filter:Ljava/util/function/Predicate;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;->lambda$new$0(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$new$0(Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract basicAlignment(Lcom/jme3/shader/bufferobject/layout/BufferLayout;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/shader/bufferobject/layout/BufferLayout;",
            "TT;)I"
        }
    .end annotation
.end method

.method public final canSerialize(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/bufferobject/layout/BufferLayout$ObjectSerializer;->filter:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract length(Lcom/jme3/shader/bufferobject/layout/BufferLayout;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/shader/bufferobject/layout/BufferLayout;",
            "TT;)I"
        }
    .end annotation
.end method

.method public abstract write(Lcom/jme3/shader/bufferobject/layout/BufferLayout;Ljava/nio/ByteBuffer;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/shader/bufferobject/layout/BufferLayout;",
            "Ljava/nio/ByteBuffer;",
            "TT;)V"
        }
    .end annotation
.end method
