.class public final synthetic Lorg/eclipse/jdt/internal/core/nd/db/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/db/Database$IORunnable;


# instance fields
.field public final synthetic a:Lorg/eclipse/jdt/internal/core/nd/db/Database;

.field public final synthetic b:Ljava/nio/ByteBuffer;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/internal/core/nd/db/Database;Ljava/nio/ByteBuffer;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/d;->a:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/d;->b:Ljava/nio/ByteBuffer;

    iput-wide p3, p0, Lorg/eclipse/jdt/internal/core/nd/db/d;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/d;->a:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/d;->b:Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/d;->c:J

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->a(Lorg/eclipse/jdt/internal/core/nd/db/Database;Ljava/nio/ByteBuffer;J)V

    return-void
.end method
