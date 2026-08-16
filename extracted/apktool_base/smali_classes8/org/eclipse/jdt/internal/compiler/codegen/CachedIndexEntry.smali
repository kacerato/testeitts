.class public Lorg/eclipse/jdt/internal/compiler/codegen/CachedIndexEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public index:I

.field public signature:[C


# direct methods
.method public constructor <init>([CI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CachedIndexEntry;->signature:[C

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/codegen/CachedIndexEntry;->index:I

    return-void
.end method
