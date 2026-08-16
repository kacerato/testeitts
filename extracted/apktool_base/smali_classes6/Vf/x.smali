.class public final LVf/x;
.super LVf/v;
.source "SourceFile"

# interfaces
.implements LVf/g;
.implements LVf/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LVf/x$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LVf/v;",
        "LVf/g<",
        "Lnf/B0;",
        ">;",
        "LVf/r<",
        "Lnf/B0;",
        ">;"
    }
.end annotation

.annotation build Lnf/l0;
    version = "1.5"
.end annotation


# static fields
.field public static final f:LVf/x$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:LVf/x;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LVf/x$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LVf/x$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, LVf/x;->f:LVf/x$a;

    new-instance v0, LVf/x;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, LVf/x;-><init>(IILkotlin/jvm/internal/x;)V

    sput-object v0, LVf/x;->g:LVf/x;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v1}, LVf/v;-><init>(IIILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LVf/x;-><init>(II)V

    return-void
.end method

.method public static final synthetic h()LVf/x;
    .locals 1

    sget-object v0, LVf/x;->g:LVf/x;

    return-object v0
.end method

.method public static synthetic l()V
    .locals 0
    .annotation build Lnf/T0;
        markerClass = {
            Lnf/w;
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.9"
    .end annotation

    .annotation runtime Lnf/o;
        message = "Can throw an exception when it\'s impossible to represent the value with UInt type, for example, when the range includes MAX_VALUE. It\'s recommended to use \'endInclusive\' property that doesn\'t throw."
    .end annotation

    return-void
.end method


# virtual methods
.method public bridge synthetic b()Ljava/lang/Comparable;
    .locals 1

    invoke-virtual {p0}, LVf/x;->k()I

    move-result v0

    invoke-static {v0}, Lnf/B0;->e(I)Lnf/B0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic contains(Ljava/lang/Comparable;)Z
    .locals 0

    check-cast p1, Lnf/B0;

    invoke-virtual {p1}, Lnf/B0;->q0()I

    move-result p1

    invoke-virtual {p0, p1}, LVf/x;->j(I)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, LVf/x;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, LVf/x;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LVf/x;

    invoke-virtual {v0}, LVf/x;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, LVf/v;->c()I

    move-result v0

    check-cast p1, LVf/x;

    invoke-virtual {p1}, LVf/v;->c()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, LVf/v;->d()I

    move-result v0

    invoke-virtual {p1}, LVf/v;->d()I

    move-result p1

    if-ne v0, p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic getEndInclusive()Ljava/lang/Comparable;
    .locals 1

    invoke-virtual {p0}, LVf/x;->m()I

    move-result v0

    invoke-static {v0}, Lnf/B0;->e(I)Lnf/B0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStart()Ljava/lang/Comparable;
    .locals 1

    invoke-virtual {p0}, LVf/x;->n()I

    move-result v0

    invoke-static {v0}, Lnf/B0;->e(I)Lnf/B0;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, LVf/x;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LVf/v;->c()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, LVf/v;->d()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    invoke-virtual {p0}, LVf/v;->c()I

    move-result v0

    invoke-virtual {p0}, LVf/v;->d()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j(I)Z
    .locals 1

    invoke-virtual {p0}, LVf/v;->c()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, LVf/v;->d()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public k()I
    .locals 2

    invoke-virtual {p0}, LVf/v;->d()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, LVf/v;->d()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lnf/B0;->o(I)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot return the exclusive upper bound of a range that includes MAX_VALUE."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m()I
    .locals 1

    invoke-virtual {p0}, LVf/v;->d()I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 1

    invoke-virtual {p0}, LVf/v;->c()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LVf/v;->c()I

    move-result v1

    invoke-static {v1}, Lnf/B0;->k0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LVf/v;->d()I

    move-result v1

    invoke-static {v1}, Lnf/B0;->k0(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
