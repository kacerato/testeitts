.class Lorg/eclipse/jdt/internal/core/BufferManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IBufferFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/BufferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/BufferManager;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/BufferManager;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/BufferManager$1;->this$0:Lorg/eclipse/jdt/internal/core/BufferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBuffer(Lorg/eclipse/jdt/core/IOpenable;)Lorg/eclipse/jdt/core/IBuffer;
    .locals 0

    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/BufferManager;->createBuffer(Lorg/eclipse/jdt/core/IOpenable;)Lorg/eclipse/jdt/core/IBuffer;

    move-result-object p1

    return-object p1
.end method
