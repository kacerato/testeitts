.class Lcom/jme3/util/NativeObjectManager$NativeObjectRef;
.super Ljava/lang/ref/PhantomReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/util/NativeObjectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeObjectRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final objClone:Lcom/jme3/util/NativeObject;

.field private final realObj:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/jme3/util/NativeObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Lcom/jme3/util/NativeObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/jme3/util/NativeObject;",
            ")V"
        }
    .end annotation

    iget-object v0, p2, Lcom/jme3/util/NativeObject;->handleRef:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/jme3/util/NativeObjectManager$NativeObjectRef;->realObj:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Lcom/jme3/util/NativeObject;->createDestructableClone()Lcom/jme3/util/NativeObject;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/util/NativeObjectManager$NativeObjectRef;->objClone:Lcom/jme3/util/NativeObject;

    return-void
.end method

.method public static synthetic access$000(Lcom/jme3/util/NativeObjectManager$NativeObjectRef;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/jme3/util/NativeObjectManager$NativeObjectRef;->realObj:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/jme3/util/NativeObjectManager$NativeObjectRef;)Lcom/jme3/util/NativeObject;
    .locals 0

    iget-object p0, p0, Lcom/jme3/util/NativeObjectManager$NativeObjectRef;->objClone:Lcom/jme3/util/NativeObject;

    return-object p0
.end method
