.class public final synthetic Lorg/eclipse/jdt/internal/core/nd/db/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/db/Database$IORunnable;


# instance fields
.field public final synthetic a:Lorg/eclipse/jdt/internal/core/nd/db/Database;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/internal/core/nd/db/Database;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/c;->a:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/c;->a:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->d(Lorg/eclipse/jdt/internal/core/nd/db/Database;)V

    return-void
.end method
