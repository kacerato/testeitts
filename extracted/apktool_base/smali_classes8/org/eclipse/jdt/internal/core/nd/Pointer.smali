.class public Lorg/eclipse/jdt/internal/core/nd/Pointer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final address:J

.field private final nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

.field private targetFactory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/ITypeFactory<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/ITypeFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "J",
            "Lorg/eclipse/jdt/internal/core/nd/ITypeFactory<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/Pointer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    iput-wide p2, p0, Lorg/eclipse/jdt/internal/core/nd/Pointer;->address:J

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/nd/Pointer;->targetFactory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    return-void
.end method

.method public static getFactory(Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;)Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/eclipse/jdt/internal/core/nd/ITypeFactory<",
            "TT;>;)",
            "Lorg/eclipse/jdt/internal/core/nd/ITypeFactory<",
            "Lorg/eclipse/jdt/internal/core/nd/Pointer<",
            "TT;>;>;"
        }
    .end annotation

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;->getElementClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/eclipse/jdt/internal/core/nd/NdNode;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/Pointer$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/nd/Pointer$1;-><init>(Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Don\'t use Pointer<T> for references to NdNode"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/Pointer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/Pointer;->address:J

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getRecPtr(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/Pointer;->targetFactory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/nd/Pointer;->nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-interface {v2, v3, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;->create(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
