.class public final synthetic Lorg/eclipse/jdt/internal/core/nd/db/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/db/Database$IORunnable;


# instance fields
.field public final synthetic a:Lorg/eclipse/jdt/internal/core/nd/db/Database;

.field public final synthetic b:Ljava/nio/ByteBuffer;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/internal/core/nd/db/Database;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/e;->a:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/e;->b:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/e;->a:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/e;->b:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->b(Lorg/eclipse/jdt/internal/core/nd/db/Database;Ljava/nio/ByteBuffer;)V

    return-void
.end method
