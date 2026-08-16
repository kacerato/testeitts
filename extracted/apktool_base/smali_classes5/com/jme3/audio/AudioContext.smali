.class public Lcom/jme3/audio/AudioContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final audioRenderer:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/jme3/audio/AudioRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/jme3/audio/AudioContext;->audioRenderer:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioRenderer()Lcom/jme3/audio/AudioRenderer;
    .locals 1

    sget-object v0, Lcom/jme3/audio/AudioContext;->audioRenderer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/audio/AudioRenderer;

    return-object v0
.end method

.method public static setAudioRenderer(Lcom/jme3/audio/AudioRenderer;)V
    .locals 1

    sget-object v0, Lcom/jme3/audio/AudioContext;->audioRenderer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
