.class public final synthetic Lorg/eclipse/jdt/internal/core/util/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lorg/eclipse/jdt/internal/core/util/ToStringSorter;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/internal/core/util/ToStringSorter;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/b;->b:Lorg/eclipse/jdt/internal/core/util/ToStringSorter;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/util/b;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/b;->b:Lorg/eclipse/jdt/internal/core/util/ToStringSorter;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/b;->c:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lorg/eclipse/jdt/internal/core/util/ToStringSorter;->a(Lorg/eclipse/jdt/internal/core/util/ToStringSorter;Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method
