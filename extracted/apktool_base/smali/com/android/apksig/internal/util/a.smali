.class public final synthetic Lcom/android/apksig/internal/util/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/android/apksig/internal/util/VerityTreeBuilder;

.field public final synthetic c:Ljava/nio/ByteBuffer;

.field public final synthetic d:I

.field public final synthetic e:[[B

.field public final synthetic f:Ljava/util/concurrent/Phaser;


# direct methods
.method public synthetic constructor <init>(Lcom/android/apksig/internal/util/VerityTreeBuilder;Ljava/nio/ByteBuffer;I[[BLjava/util/concurrent/Phaser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/internal/util/a;->b:Lcom/android/apksig/internal/util/VerityTreeBuilder;

    iput-object p2, p0, Lcom/android/apksig/internal/util/a;->c:Ljava/nio/ByteBuffer;

    iput p3, p0, Lcom/android/apksig/internal/util/a;->d:I

    iput-object p4, p0, Lcom/android/apksig/internal/util/a;->e:[[B

    iput-object p5, p0, Lcom/android/apksig/internal/util/a;->f:Ljava/util/concurrent/Phaser;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/apksig/internal/util/a;->b:Lcom/android/apksig/internal/util/VerityTreeBuilder;

    iget-object v1, p0, Lcom/android/apksig/internal/util/a;->c:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/android/apksig/internal/util/a;->d:I

    iget-object v3, p0, Lcom/android/apksig/internal/util/a;->e:[[B

    iget-object v4, p0, Lcom/android/apksig/internal/util/a;->f:Ljava/util/concurrent/Phaser;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/apksig/internal/util/VerityTreeBuilder;->a(Lcom/android/apksig/internal/util/VerityTreeBuilder;Ljava/nio/ByteBuffer;I[[BLjava/util/concurrent/Phaser;)V

    return-void
.end method
