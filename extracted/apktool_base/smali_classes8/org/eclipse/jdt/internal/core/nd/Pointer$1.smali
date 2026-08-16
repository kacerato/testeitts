.class Lorg/eclipse/jdt/internal/core/nd/Pointer$1;
.super Lorg/eclipse/jdt/internal/core/nd/AbstractTypeFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/nd/Pointer;->getFactory(Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;)Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/jdt/internal/core/nd/AbstractTypeFactory<",
        "Lorg/eclipse/jdt/internal/core/nd/Pointer<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final synthetic val$targetFactory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/Pointer$1;->val$targetFactory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/AbstractTypeFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/Pointer$1;->create(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/Pointer;

    move-result-object p1

    return-object p1
.end method

.method public create(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/Pointer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "J)",
            "Lorg/eclipse/jdt/internal/core/nd/Pointer<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/Pointer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/Pointer$1;->val$targetFactory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/eclipse/jdt/internal/core/nd/Pointer;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/ITypeFactory;)V

    return-object v0
.end method

.method public getElementClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-class v0, Lorg/eclipse/jdt/internal/core/nd/Pointer;

    return-object v0
.end method

.method public getRecordSize()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
