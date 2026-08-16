.class public final enum Lcom/google/common/reflect/p$j$a;
.super Lcom/google/common/reflect/p$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/p$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/reflect/p$j;-><init>(Ljava/lang/String;ILcom/google/common/reflect/p$a;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/google/common/reflect/p;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/p$j$a;->b(Lcom/google/common/reflect/p;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/google/common/reflect/p;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/p<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/reflect/p;->e(Lcom/google/common/reflect/p;)Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/common/reflect/p;->e(Lcom/google/common/reflect/p;)Ljava/lang/reflect/Type;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/reflect/WildcardType;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
