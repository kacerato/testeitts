.class Lcom/jme3/util/BufferUtils$BufferInfo;
.super Ljava/lang/ref/PhantomReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/util/BufferUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BufferInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference<",
        "Ljava/nio/Buffer;",
        ">;"
    }
.end annotation


# instance fields
.field private size:I

.field private type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;ILjava/nio/Buffer;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "I",
            "Ljava/nio/Buffer;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Ljava/nio/Buffer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p3, p4}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p1, p0, Lcom/jme3/util/BufferUtils$BufferInfo;->type:Ljava/lang/Class;

    iput p2, p0, Lcom/jme3/util/BufferUtils$BufferInfo;->size:I

    return-void
.end method

.method public static synthetic access$000(Lcom/jme3/util/BufferUtils$BufferInfo;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/jme3/util/BufferUtils$BufferInfo;->type:Ljava/lang/Class;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/jme3/util/BufferUtils$BufferInfo;)I
    .locals 0

    iget p0, p0, Lcom/jme3/util/BufferUtils$BufferInfo;->size:I

    return p0
.end method
