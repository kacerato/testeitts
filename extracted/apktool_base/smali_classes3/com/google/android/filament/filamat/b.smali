.class public Lcom/google/android/filament/filamat/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/nio/ByteBuffer;

.field public final b:Z


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 0
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/filament/filamat/b;->a:Ljava/nio/ByteBuffer;

    iput-boolean p2, p0, Lcom/google/android/filament/filamat/b;->b:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/filament/filamat/b;->a:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/filament/filamat/b;->b:Z

    return v0
.end method
