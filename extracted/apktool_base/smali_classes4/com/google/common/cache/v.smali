.class public final Lcom/google/common/cache/v;
.super Ljava/util/AbstractMap$SimpleImmutableEntry;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/cache/g;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap$SimpleImmutableEntry<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lv2/b;
.end annotation


# static fields
.field public static final c:J


# instance fields
.field public final b:Lcom/google/common/cache/q;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/q;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/common/cache/q;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p3}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/cache/q;

    iput-object p1, p0, Lcom/google/common/cache/v;->b:Lcom/google/common/cache/q;

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/q;)Lcom/google/common/cache/v;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;",
            "Lcom/google/common/cache/q;",
            ")",
            "Lcom/google/common/cache/v<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/cache/v;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/cache/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/q;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/google/common/cache/q;
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/v;->b:Lcom/google/common/cache/q;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/v;->b:Lcom/google/common/cache/q;

    invoke-virtual {v0}, Lcom/google/common/cache/q;->b()Z

    move-result v0

    return v0
.end method
