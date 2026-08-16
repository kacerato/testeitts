.class public final synthetic Lorg/eclipse/jdt/internal/core/nd/indexer/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:[[C


# direct methods
.method public synthetic constructor <init>([[C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/a;->b:[[C

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/indexer/a;->b:[[C

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/indexer/ClassFileToIndexConverter;->a([[CLjava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
