.class public Lcom/google/common/reflect/p$d;
.super Lcom/google/common/reflect/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/p;->y()Lcom/google/common/collect/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/r1$a;


# direct methods
.method public constructor <init>(Lcom/google/common/reflect/p;Lcom/google/common/collect/r1$a;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/reflect/p$d;->b:Lcom/google/common/collect/r1$a;

    invoke-direct {p0}, Lcom/google/common/reflect/r;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/p$d;->b:Lcom/google/common/collect/r1$a;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/r1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/r1$a;

    return-void
.end method

.method public c(Ljava/lang/reflect/GenericArrayType;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/reflect/p$d;->b:Lcom/google/common/collect/r1$a;

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/reflect/p;->U(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/reflect/p;->x()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/reflect/s;->h(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/r1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/r1$a;

    return-void
.end method

.method public d(Ljava/lang/reflect/ParameterizedType;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/reflect/p$d;->b:Lcom/google/common/collect/r1$a;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/r1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/r1$a;

    return-void
.end method

.method public e(Ljava/lang/reflect/TypeVariable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/r;->a([Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public f(Ljava/lang/reflect/WildcardType;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/r;->a([Ljava/lang/reflect/Type;)V

    return-void
.end method
