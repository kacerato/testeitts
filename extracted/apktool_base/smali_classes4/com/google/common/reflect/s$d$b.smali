.class public final enum Lcom/google/common/reflect/s$d$b;
.super Lcom/google/common/reflect/s$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/s$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/reflect/s$d;-><init>(Ljava/lang/String;ILcom/google/common/reflect/s$a;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/common/reflect/s;->h(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/common/reflect/s$c;

    invoke-direct {v0, p1}, Lcom/google/common/reflect/s$c;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public g(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 0

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Type;

    return-object p1
.end method
