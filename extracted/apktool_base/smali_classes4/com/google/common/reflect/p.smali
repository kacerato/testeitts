.class public abstract Lcom/google/common/reflect/p;
.super Lcom/google/common/reflect/l;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/reflect/d;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/p$i;,
        Lcom/google/common/reflect/p$h;,
        Lcom/google/common/reflect/p$e;,
        Lcom/google/common/reflect/p$j;,
        Lcom/google/common/reflect/p$f;,
        Lcom/google/common/reflect/p$g;,
        Lcom/google/common/reflect/p$k;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/reflect/l<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final e:J = 0x327b23b1befe387cL


# instance fields
.field public final b:Ljava/lang/reflect/Type;

.field public transient c:Lcom/google/common/reflect/n;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient d:Lcom/google/common/reflect/n;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/google/common/reflect/l;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/google/common/reflect/l;->a()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    .line 4
    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Cannot construct a TypeToken for a type variable.\nYou probably meant to call new TypeToken<%s>(getClass()) that can resolve the type variable for you.\nIf you do need to create a TypeToken of a type variable, please use TypeToken.of() instead."

    invoke-static {v1, v2, v0}, Lw2/H;->x0(ZLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/google/common/reflect/l;-><init>()V

    .line 6
    invoke-super {p0}, Lcom/google/common/reflect/l;->a()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 7
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 8
    iput-object v0, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p1}, Lcom/google/common/reflect/n;->d(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/n;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/common/reflect/n;->j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/google/common/reflect/l;-><init>()V

    .line 11
    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Type;

    iput-object p1, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/reflect/Type;Lcom/google/common/reflect/p$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/reflect/p;-><init>(Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public static S(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    sget-object v0, Lcom/google/common/reflect/s$d;->JAVA7:Lcom/google/common/reflect/s$d;

    invoke-virtual {v0, p0}, Lcom/google/common/reflect/s$d;->c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method public static T(Ljava/lang/Class;)Lcom/google/common/reflect/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/common/reflect/p<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/reflect/p$h;

    invoke-direct {v0, p0}, Lcom/google/common/reflect/p$h;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static U(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/reflect/p<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/reflect/p$h;

    invoke-direct {v0, p0}, Lcom/google/common/reflect/p$h;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static a0(Ljava/lang/Class;)Lcom/google/common/reflect/p;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/common/reflect/p<",
            "+TT;>;"
        }
    .end annotation

    .annotation build Lv2/d;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/reflect/p;->a0(Ljava/lang/Class;)Lcom/google/common/reflect/p;

    move-result-object p0

    iget-object p0, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    invoke-static {p0}, Lcom/google/common/reflect/s;->j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/reflect/p;->U(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/reflect/p;->a0(Ljava/lang/Class;)Lcom/google/common/reflect/p;

    move-result-object v1

    iget-object v1, v1, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-gtz v2, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lcom/google/common/reflect/p;->T(Ljava/lang/Class;)Lcom/google/common/reflect/p;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    invoke-static {v1, p0, v0}, Lcom/google/common/reflect/s;->m(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/reflect/p;->U(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/google/common/reflect/p;)Lcom/google/common/reflect/n;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/reflect/p;->r()Lcom/google/common/reflect/n;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/google/common/reflect/p;)Lcom/google/common/reflect/n;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/reflect/p;->v()Lcom/google/common/reflect/n;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/google/common/reflect/p;)Lcom/google/common/collect/r1;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/reflect/p;->y()Lcom/google/common/collect/r1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/google/common/reflect/p;)Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    return-object p0
.end method

.method public static f([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p$e;
    .locals 2

    new-instance v0, Lcom/google/common/reflect/p$e;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/common/reflect/p$e;-><init>([Ljava/lang/reflect/Type;Z)V

    return-object v0
.end method

.method public static i(Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-static {p0, p1}, Lcom/google/common/reflect/p;->j(Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/WildcardType;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/common/reflect/p;->l(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static j(Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/WildcardType;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/WildcardType;",
            ")",
            "Ljava/lang/reflect/WildcardType;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    invoke-static {p0}, Lcom/google/common/reflect/p;->f([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p$e;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/common/reflect/p$e;->a(Ljava/lang/reflect/Type;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Lcom/google/common/reflect/p;->l(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/common/reflect/s$i;

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    invoke-direct {p0, p1, v0}, Lcom/google/common/reflect/s$i;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object p0
.end method

.method public static k(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/ParameterizedType;
    .locals 6

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    aget-object v4, v1, v3

    aget-object v5, v2, v3

    invoke-static {v4, v5}, Lcom/google/common/reflect/p;->i(Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0, v0, v2}, Lcom/google/common/reflect/s;->m(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0}, Lcom/google/common/reflect/p;->k(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/reflect/p;->l(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/reflect/s;->j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static n([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p$e;
    .locals 2

    new-instance v0, Lcom/google/common/reflect/p$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/reflect/p$e;-><init>([Ljava/lang/reflect/Type;Z)V

    return-object v0
.end method


# virtual methods
.method public final A(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/reflect/p<",
            "+TT;>;"
        }
    .end annotation

    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-static {p2}, Lcom/google/common/reflect/p;->U(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/common/reflect/p;->z(Ljava/lang/Class;)Lcom/google/common/reflect/p;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isn\'t a subclass of "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final B(Ljava/lang/Class;)Lcom/google/common/reflect/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/google/common/reflect/p<",
            "-TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/p;->Z(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s is not a super class of %s"

    invoke-static {v0, v1, p1, p0}, Lw2/H;->y(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/reflect/p;->C(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/reflect/p;->C(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/p;->p(Ljava/lang/Class;)Lcom/google/common/reflect/p;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {p1}, Lcom/google/common/reflect/p;->a0(Ljava/lang/Class;)Lcom/google/common/reflect/p;

    move-result-object p1

    iget-object p1, p1, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/p;->W(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;

    move-result-object p1

    return-object p1
.end method

.method public final C(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "-TT;>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/reflect/p<",
            "-TT;>;"
        }
    .end annotation

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    invoke-static {v2}, Lcom/google/common/reflect/p;->U(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/common/reflect/p;->K(Ljava/lang/reflect/Type;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1}, Lcom/google/common/reflect/p;->B(Ljava/lang/Class;)Lcom/google/common/reflect/p;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isn\'t a super type of "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final D()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final E()Lcom/google/common/reflect/p$k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/p<",
            "TT;>.k;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/reflect/p$k;

    invoke-direct {v0, p0}, Lcom/google/common/reflect/p$k;-><init>(Lcom/google/common/reflect/p;)V

    return-object v0
.end method

.method public final F(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-static {p2, p1}, Lcom/google/common/reflect/p;->j(Ljava/lang/reflect/TypeVariable;Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/WildcardType;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-static {p2}, Lcom/google/common/reflect/p;->n([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p$e;

    move-result-object p2

    iget-object v0, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    invoke-virtual {p2, v0}, Lcom/google/common/reflect/p$e;->b(Ljava/lang/reflect/Type;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/reflect/p;->n([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p$e;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    invoke-virtual {p1, p2}, Lcom/google/common/reflect/p$e;->a(Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    iget-object p2, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    invoke-static {p2}, Lcom/google/common/reflect/p;->l(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-static {p1}, Lcom/google/common/reflect/p;->l(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final G()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/reflect/p;->q()Lcom/google/common/reflect/p;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final H(Ljava/lang/reflect/Type;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/reflect/p;->E()Lcom/google/common/reflect/p$k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/r0;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/reflect/p;

    invoke-virtual {v1}, Lcom/google/common/reflect/p;->w()Ljava/lang/reflect/Type;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/google/common/reflect/p;->U(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/common/reflect/p;->K(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final I()Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final J(Lcom/google/common/reflect/p;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/p<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/common/reflect/p;->D()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/p;->K(Ljava/lang/reflect/Type;)Z

    move-result p1

    return p1
.end method

.method public final K(Ljava/lang/reflect/Type;)Z
    .locals 3

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/reflect/p;->f([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p$e;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0}, Lcom/google/common/reflect/p$e;->b(Ljava/lang/reflect/Type;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/p;->f([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p$e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/p$e;->a(Ljava/lang/reflect/Type;)Z

    move-result p1

    return p1

    :cond_1
    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/p;->f([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p$e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/p$e;->a(Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2

    :cond_4
    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/google/common/reflect/p;->U(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-virtual {p1, v0}, Lcom/google/common/reflect/p;->P(Ljava/lang/reflect/GenericArrayType;)Z

    move-result p1

    return p1

    :cond_5
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_6

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/p;->Z(Ljava/lang/Class;)Z

    move-result p1

    return p1

    :cond_6
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/p;->M(Ljava/lang/reflect/ParameterizedType;)Z

    move-result p1

    return p1

    :cond_7
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_8

    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/p;->L(Ljava/lang/reflect/GenericArrayType;)Z

    move-result p1

    return p1

    :cond_8
    return v2
.end method

.method public final L(Ljava/lang/reflect/GenericArrayType;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/Class;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/p;->T(Ljava/lang/Class;)Lcom/google/common/reflect/p;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/p;->K(Ljava/lang/reflect/Type;)Z

    move-result p1

    return p1

    :cond_1
    instance-of v1, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/p;->U(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/p;->K(Ljava/lang/reflect/Type;)Z

    move-result p1

    return p1

    :cond_2
    return v2
.end method

.method public final M(Ljava/lang/reflect/ParameterizedType;)Z
    .locals 7

    invoke-static {p1}, Lcom/google/common/reflect/p;->U(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/reflect/p;->x()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/p;->Z(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/google/common/reflect/p;->r()Lcom/google/common/reflect/n;

    move-result-object v4

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Lcom/google/common/reflect/n;->j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/reflect/p;->U(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;

    move-result-object v4

    aget-object v5, v1, v3

    aget-object v6, v0, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/common/reflect/p;->F(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/p;->H(Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method public final N(Lcom/google/common/reflect/p;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/p<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/reflect/p;->D()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/reflect/p;->K(Ljava/lang/reflect/Type;)Z

    move-result p1

    return p1
.end method

.method public final O(Ljava/lang/reflect/Type;)Z
    .locals 1

    invoke-static {p1}, Lcom/google/common/reflect/p;->U(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/common/reflect/p;->D()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/reflect/p;->K(Ljava/lang/reflect/Type;)Z

    move-result p1

    return p1
.end method

.method public final P(Ljava/lang/reflect/GenericArrayType;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    const-class p1, [Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/reflect/p;->U(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/reflect/p;->K(Ljava/lang/reflect/Type;)Z

    move-result p1

    return p1

    :cond_1
    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/reflect/p;->U(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/reflect/p;->K(Ljava/lang/reflect/Type;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final Q()Z
    .locals 2

    invoke-static {}, Lcom/google/common/primitives/r;->c()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final R(Ljava/lang/reflect/Method;)Lcom/google/common/reflect/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/google/common/reflect/f<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/p;->Z(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s not declared by %s"

    invoke-static {v0, v1, p1, p0}, Lw2/H;->y(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/common/reflect/p$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/reflect/p$a;-><init>(Lcom/google/common/reflect/p;Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method public final V()Lcom/google/common/reflect/p;
    .locals 4
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/p<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/reflect/p$c;

    invoke-direct {v0, p0}, Lcom/google/common/reflect/p$c;-><init>(Lcom/google/common/reflect/p;)V

    iget-object v1, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/google/common/reflect/r;->a([Ljava/lang/reflect/Type;)V

    return-object p0
.end method

.method public final W(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/reflect/p<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/reflect/p;->r()Lcom/google/common/reflect/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/n;->j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/reflect/p;->U(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/reflect/p;->d:Lcom/google/common/reflect/n;

    iput-object v0, p1, Lcom/google/common/reflect/p;->d:Lcom/google/common/reflect/n;

    iget-object v0, p0, Lcom/google/common/reflect/p;->c:Lcom/google/common/reflect/n;

    iput-object v0, p1, Lcom/google/common/reflect/p;->c:Lcom/google/common/reflect/n;

    return-object p1
.end method

.method public final X(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/reflect/p<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/reflect/p;->v()Lcom/google/common/reflect/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/n;->j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/reflect/p;->U(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;

    move-result-object p1

    return-object p1
.end method

.method public final Y(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/reflect/p;->x()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_1

    :cond_0
    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/google/common/reflect/p;->a0(Ljava/lang/Class;)Lcom/google/common/reflect/p;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/common/reflect/p;->x()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/reflect/p;->B(Ljava/lang/Class;)Lcom/google/common/reflect/p;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    new-instance v1, Lcom/google/common/reflect/n;

    invoke-direct {v1}, Lcom/google/common/reflect/n;-><init>()V

    iget-object v2, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v0, v2}, Lcom/google/common/reflect/n;->n(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/google/common/reflect/n;

    move-result-object v0

    iget-object p1, p1, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/n;->j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1
.end method

.method public final Z(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/reflect/p;->y()Lcom/google/common/collect/r1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/r1;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b0()Lcom/google/common/reflect/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/p<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/reflect/p;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/common/primitives/r;->e(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/p;->T(Ljava/lang/Class;)Lcom/google/common/reflect/p;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public final c0(Lcom/google/common/reflect/m;Lcom/google/common/reflect/p;)Lcom/google/common/reflect/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/reflect/m<",
            "TX;>;",
            "Lcom/google/common/reflect/p<",
            "TX;>;)",
            "Lcom/google/common/reflect/p<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/reflect/n;

    invoke-direct {v0}, Lcom/google/common/reflect/n;-><init>()V

    new-instance v1, Lcom/google/common/reflect/n$d;

    iget-object p1, p1, Lcom/google/common/reflect/m;->b:Ljava/lang/reflect/TypeVariable;

    invoke-direct {v1, p1}, Lcom/google/common/reflect/n$d;-><init>(Ljava/lang/reflect/TypeVariable;)V

    iget-object p1, p2, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    invoke-static {v1, p1}, Lcom/google/common/collect/i1;->z(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/n;->o(Ljava/util/Map;)Lcom/google/common/reflect/n;

    move-result-object p1

    new-instance p2, Lcom/google/common/reflect/p$h;

    iget-object v0, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0}, Lcom/google/common/reflect/n;->j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/common/reflect/p$h;-><init>(Ljava/lang/reflect/Type;)V

    return-object p2
.end method

.method public final d0(Lcom/google/common/reflect/m;Ljava/lang/Class;)Lcom/google/common/reflect/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/reflect/m<",
            "TX;>;",
            "Ljava/lang/Class<",
            "TX;>;)",
            "Lcom/google/common/reflect/p<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/common/reflect/p;->T(Ljava/lang/Class;)Lcom/google/common/reflect/p;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/reflect/p;->c0(Lcom/google/common/reflect/m;Lcom/google/common/reflect/p;)Lcom/google/common/reflect/p;

    move-result-object p1

    return-object p1
.end method

.method public final e0()Lcom/google/common/reflect/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/p<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/reflect/p;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/common/primitives/r;->f(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/p;->T(Ljava/lang/Class;)Lcom/google/common/reflect/p;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/common/reflect/p;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/reflect/p;

    iget-object v0, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    iget-object p1, p1, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f0()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/common/reflect/n;

    invoke-direct {v0}, Lcom/google/common/reflect/n;-><init>()V

    iget-object v1, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/n;->j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/p;->U(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;

    move-result-object v0

    return-object v0
.end method

.method public final g(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/reflect/p<",
            "-TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-static {p1}, Lcom/google/common/reflect/p;->U(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/reflect/p;->x()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public final h([Ljava/lang/reflect/Type;)Lcom/google/common/collect/g1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/collect/g1<",
            "Lcom/google/common/reflect/p<",
            "-TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/g1;->m()Lcom/google/common/collect/g1$a;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-static {v3}, Lcom/google/common/reflect/p;->U(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/reflect/p;->x()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/g1$a;->n()Lcom/google/common/collect/g1;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final m(Ljava/lang/reflect/Constructor;)Lcom/google/common/reflect/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Lcom/google/common/reflect/f<",
            "TT;TT;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/reflect/p;->x()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "%s not declared by %s"

    invoke-virtual {p0}, Lcom/google/common/reflect/p;->x()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lw2/H;->y(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/common/reflect/p$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/reflect/p$b;-><init>(Lcom/google/common/reflect/p;Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method

.method public final o(Ljava/lang/Class;)Lcom/google/common/reflect/p;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/common/reflect/p<",
            "+TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/reflect/p;->q()Lcom/google/common/reflect/p;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/google/common/reflect/p;->z(Ljava/lang/Class;)Lcom/google/common/reflect/p;

    move-result-object p1

    iget-object p1, p1, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    invoke-static {p1}, Lcom/google/common/reflect/p;->S(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/reflect/p;->U(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x24

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not appear to be a subtype of "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final p(Ljava/lang/Class;)Lcom/google/common/reflect/p;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/google/common/reflect/p<",
            "-TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/reflect/p;->q()Lcom/google/common/reflect/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/p;->B(Ljava/lang/Class;)Lcom/google/common/reflect/p;

    move-result-object p1

    iget-object p1, p1, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    invoke-static {p1}, Lcom/google/common/reflect/p;->S(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/reflect/p;->U(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x17

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isn\'t a super type of "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final q()Lcom/google/common/reflect/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/p<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/common/reflect/s;->i(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/common/reflect/p;->U(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;

    move-result-object v0

    return-object v0
.end method

.method public final r()Lcom/google/common/reflect/n;
    .locals 1

    iget-object v0, p0, Lcom/google/common/reflect/p;->d:Lcom/google/common/reflect/n;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/common/reflect/n;->d(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/p;->d:Lcom/google/common/reflect/n;

    :cond_0
    return-object v0
.end method

.method public final s()Lcom/google/common/collect/g1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "Lcom/google/common/reflect/p<",
            "-TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/p;->h([Ljava/lang/reflect/Type;)Lcom/google/common/collect/g1;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/p;->h([Ljava/lang/reflect/Type;)Lcom/google/common/collect/g1;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/common/collect/g1;->m()Lcom/google/common/collect/g1$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/reflect/p;->x()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {p0, v4}, Lcom/google/common/reflect/p;->W(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/g1$a;->n()Lcom/google/common/collect/g1;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/common/reflect/s;->s(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lcom/google/common/reflect/p;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/p<",
            "-TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/p;->g(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/p;->g(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/reflect/p;->x()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/common/reflect/p;->W(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;

    move-result-object v0

    return-object v0
.end method

.method public final v()Lcom/google/common/reflect/n;
    .locals 1

    iget-object v0, p0, Lcom/google/common/reflect/p;->c:Lcom/google/common/reflect/n;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/common/reflect/n;->f(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/p;->c:Lcom/google/common/reflect/n;

    :cond_0
    return-object v0
.end method

.method public final w()Ljava/lang/reflect/Type;
    .locals 2
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final x()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/reflect/p;->y()Lcom/google/common/collect/r1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/r1;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public final y()Lcom/google/common/collect/r1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r1<",
            "Ljava/lang/Class<",
            "-TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/r1;->m()Lcom/google/common/collect/r1$a;

    move-result-object v0

    new-instance v1, Lcom/google/common/reflect/p$d;

    invoke-direct {v1, p0, v0}, Lcom/google/common/reflect/p$d;-><init>(Lcom/google/common/reflect/p;Lcom/google/common/collect/r1$a;)V

    iget-object v2, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/reflect/Type;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v1, v3}, Lcom/google/common/reflect/r;->a([Ljava/lang/reflect/Type;)V

    invoke-virtual {v0}, Lcom/google/common/collect/r1$a;->o()Lcom/google/common/collect/r1;

    move-result-object v0

    return-object v0
.end method

.method public final z(Ljava/lang/Class;)Lcom/google/common/reflect/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/common/reflect/p<",
            "+TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot get subtype of type variable <%s>"

    invoke-static {v0, v1, p0}, Lw2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/reflect/p;->b:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/reflect/p;->A(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/reflect/p;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/p;->o(Ljava/lang/Class;)Lcom/google/common/reflect/p;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/reflect/p;->x()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s isn\'t a subclass of %s"

    invoke-static {v0, v1, p1, p0}, Lw2/H;->y(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/p;->Y(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/reflect/p;->U(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/p;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/common/reflect/p;->J(Lcom/google/common/reflect/p;)Z

    move-result v0

    const-string v1, "%s does not appear to be a subtype of %s"

    invoke-static {v0, v1, p1, p0}, Lw2/H;->y(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
