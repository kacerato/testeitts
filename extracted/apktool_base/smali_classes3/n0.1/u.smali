.class public final synthetic Ln0/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/nio/ByteBuffer;

.field public final synthetic c:Landroid/graphics/Bitmap;

.field public final synthetic d:LMf/l;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/ByteBuffer;Landroid/graphics/Bitmap;LMf/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln0/u;->b:Ljava/nio/ByteBuffer;

    iput-object p2, p0, Ln0/u;->c:Landroid/graphics/Bitmap;

    iput-object p3, p0, Ln0/u;->d:LMf/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ln0/u;->b:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Ln0/u;->c:Landroid/graphics/Bitmap;

    iget-object v2, p0, Ln0/u;->d:LMf/l;

    invoke-static {v0, v1, v2}, Lcom/google/android/filament/utils/a;->a(Ljava/nio/ByteBuffer;Landroid/graphics/Bitmap;LMf/l;)V

    return-void
.end method
