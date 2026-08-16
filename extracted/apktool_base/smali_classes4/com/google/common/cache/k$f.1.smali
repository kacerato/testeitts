.class public abstract enum Lcom/google/common/cache/k$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/cache/k$f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/cache/k$f;

.field static final ACCESS_MASK:I = 0x1

.field public static final enum STRONG:Lcom/google/common/cache/k$f;

.field public static final enum STRONG_ACCESS:Lcom/google/common/cache/k$f;

.field public static final enum STRONG_ACCESS_WRITE:Lcom/google/common/cache/k$f;

.field public static final enum STRONG_WRITE:Lcom/google/common/cache/k$f;

.field public static final enum WEAK:Lcom/google/common/cache/k$f;

.field public static final enum WEAK_ACCESS:Lcom/google/common/cache/k$f;

.field public static final enum WEAK_ACCESS_WRITE:Lcom/google/common/cache/k$f;

.field static final WEAK_MASK:I = 0x4

.field public static final enum WEAK_WRITE:Lcom/google/common/cache/k$f;

.field static final WRITE_MASK:I = 0x2

.field static final factories:[Lcom/google/common/cache/k$f;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/google/common/cache/k$f$a;

    const-string v1, "STRONG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/k$f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/k$f;->STRONG:Lcom/google/common/cache/k$f;

    new-instance v1, Lcom/google/common/cache/k$f$b;

    const-string v3, "STRONG_ACCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/common/cache/k$f$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/cache/k$f;->STRONG_ACCESS:Lcom/google/common/cache/k$f;

    new-instance v3, Lcom/google/common/cache/k$f$c;

    const-string v5, "STRONG_WRITE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/common/cache/k$f$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/common/cache/k$f;->STRONG_WRITE:Lcom/google/common/cache/k$f;

    new-instance v5, Lcom/google/common/cache/k$f$d;

    const-string v7, "STRONG_ACCESS_WRITE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/common/cache/k$f$d;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/common/cache/k$f;->STRONG_ACCESS_WRITE:Lcom/google/common/cache/k$f;

    new-instance v7, Lcom/google/common/cache/k$f$e;

    const-string v9, "WEAK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/common/cache/k$f$e;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/common/cache/k$f;->WEAK:Lcom/google/common/cache/k$f;

    new-instance v9, Lcom/google/common/cache/k$f$f;

    const-string v11, "WEAK_ACCESS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/common/cache/k$f$f;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/common/cache/k$f;->WEAK_ACCESS:Lcom/google/common/cache/k$f;

    new-instance v11, Lcom/google/common/cache/k$f$g;

    const-string v13, "WEAK_WRITE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/google/common/cache/k$f$g;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/common/cache/k$f;->WEAK_WRITE:Lcom/google/common/cache/k$f;

    new-instance v13, Lcom/google/common/cache/k$f$h;

    const-string v15, "WEAK_ACCESS_WRITE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/google/common/cache/k$f$h;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/google/common/cache/k$f;->WEAK_ACCESS_WRITE:Lcom/google/common/cache/k$f;

    invoke-static {}, Lcom/google/common/cache/k$f;->a()[Lcom/google/common/cache/k$f;

    move-result-object v15

    sput-object v15, Lcom/google/common/cache/k$f;->$VALUES:[Lcom/google/common/cache/k$f;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/google/common/cache/k$f;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/google/common/cache/k$f;->factories:[Lcom/google/common/cache/k$f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/cache/k$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/cache/k$f;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lcom/google/common/cache/k$f;
    .locals 8

    sget-object v0, Lcom/google/common/cache/k$f;->STRONG:Lcom/google/common/cache/k$f;

    sget-object v1, Lcom/google/common/cache/k$f;->STRONG_ACCESS:Lcom/google/common/cache/k$f;

    sget-object v2, Lcom/google/common/cache/k$f;->STRONG_WRITE:Lcom/google/common/cache/k$f;

    sget-object v3, Lcom/google/common/cache/k$f;->STRONG_ACCESS_WRITE:Lcom/google/common/cache/k$f;

    sget-object v4, Lcom/google/common/cache/k$f;->WEAK:Lcom/google/common/cache/k$f;

    sget-object v5, Lcom/google/common/cache/k$f;->WEAK_ACCESS:Lcom/google/common/cache/k$f;

    sget-object v6, Lcom/google/common/cache/k$f;->WEAK_WRITE:Lcom/google/common/cache/k$f;

    sget-object v7, Lcom/google/common/cache/k$f;->WEAK_ACCESS_WRITE:Lcom/google/common/cache/k$f;

    filled-new-array/range {v0 .. v7}, [Lcom/google/common/cache/k$f;

    move-result-object v0

    return-object v0
.end method

.method public static e(Lcom/google/common/cache/k$t;ZZ)Lcom/google/common/cache/k$f;
    .locals 2

    sget-object v0, Lcom/google/common/cache/k$t;->WEAK:Lcom/google/common/cache/k$t;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    or-int/2addr p0, p1

    if-eqz p2, :cond_1

    const/4 v1, 0x2

    :cond_1
    or-int/2addr p0, v1

    sget-object p1, Lcom/google/common/cache/k$f;->factories:[Lcom/google/common/cache/k$f;

    aget-object p0, p1, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/cache/k$f;
    .locals 1

    const-class v0, Lcom/google/common/cache/k$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/cache/k$f;

    return-object p0
.end method

.method public static values()[Lcom/google/common/cache/k$f;
    .locals 1

    sget-object v0, Lcom/google/common/cache/k$f;->$VALUES:[Lcom/google/common/cache/k$f;

    invoke-virtual {v0}, [Lcom/google/common/cache/k$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/cache/k$f;

    return-object v0
.end method


# virtual methods
.method public b(Lcom/google/common/cache/p;Lcom/google/common/cache/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/common/cache/p;->q()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/google/common/cache/p;->h(J)V

    invoke-interface {p1}, Lcom/google/common/cache/p;->j()Lcom/google/common/cache/p;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/common/cache/k;->f(Lcom/google/common/cache/p;Lcom/google/common/cache/p;)V

    invoke-interface {p1}, Lcom/google/common/cache/p;->o()Lcom/google/common/cache/p;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/common/cache/k;->f(Lcom/google/common/cache/p;Lcom/google/common/cache/p;)V

    invoke-static {p1}, Lcom/google/common/cache/k;->H(Lcom/google/common/cache/p;)V

    return-void
.end method

.method public c(Lcom/google/common/cache/k$r;Lcom/google/common/cache/p;Lcom/google/common/cache/p;)Lcom/google/common/cache/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/k$r<",
            "TK;TV;>;",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-interface {p2}, Lcom/google/common/cache/p;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/common/cache/p;->b()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/common/cache/k$f;->g(Lcom/google/common/cache/k$r;Ljava/lang/Object;ILcom/google/common/cache/p;)Lcom/google/common/cache/p;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/google/common/cache/p;Lcom/google/common/cache/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/common/cache/p;->g()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/google/common/cache/p;->i(J)V

    invoke-interface {p1}, Lcom/google/common/cache/p;->d()Lcom/google/common/cache/p;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/common/cache/k;->g(Lcom/google/common/cache/p;Lcom/google/common/cache/p;)V

    invoke-interface {p1}, Lcom/google/common/cache/p;->k()Lcom/google/common/cache/p;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/common/cache/k;->g(Lcom/google/common/cache/p;Lcom/google/common/cache/p;)V

    invoke-static {p1}, Lcom/google/common/cache/k;->I(Lcom/google/common/cache/p;)V

    return-void
.end method

.method public abstract g(Lcom/google/common/cache/k$r;Ljava/lang/Object;ILcom/google/common/cache/p;)Lcom/google/common/cache/p;
    .param p4    # Lcom/google/common/cache/p;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/k$r<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;"
        }
    .end annotation
.end method
