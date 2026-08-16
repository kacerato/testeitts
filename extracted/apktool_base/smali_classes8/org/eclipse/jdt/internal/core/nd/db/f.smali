.class public final synthetic Lorg/eclipse/jdt/internal/core/nd/db/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/db/ChunkWriter$WriteCallback;


# instance fields
.field public final synthetic a:Lorg/eclipse/jdt/internal/core/nd/db/Database;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/internal/core/nd/db/Database;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/f;->a:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    return-void
.end method


# virtual methods
.method public final write(Ljava/nio/ByteBuffer;J)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/f;->a:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->write(Ljava/nio/ByteBuffer;J)Z

    move-result p1

    return p1
.end method
