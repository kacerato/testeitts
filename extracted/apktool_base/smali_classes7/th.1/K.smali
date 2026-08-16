.class public Lth/K;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final c:I = 0x0

.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x3

.field public static final g:I = 0x4

.field public static final h:I = 0x5

.field public static final i:I = 0x6

.field public static final j:Lth/K;

.field public static final k:Lth/K;

.field public static final l:Lth/K;

.field public static final m:Lth/K;

.field public static final n:Lth/K;

.field public static final o:Lth/K;

.field public static final p:Lth/K;


# instance fields
.field public final b:Loh/s;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lth/K;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lth/K;-><init>(I)V

    sput-object v0, Lth/K;->j:Lth/K;

    new-instance v0, Lth/K;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lth/K;-><init>(I)V

    sput-object v0, Lth/K;->k:Lth/K;

    new-instance v0, Lth/K;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lth/K;-><init>(I)V

    sput-object v0, Lth/K;->l:Lth/K;

    new-instance v0, Lth/K;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lth/K;-><init>(I)V

    sput-object v0, Lth/K;->m:Lth/K;

    new-instance v0, Lth/K;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lth/K;-><init>(I)V

    sput-object v0, Lth/K;->n:Lth/K;

    new-instance v0, Lth/K;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lth/K;-><init>(I)V

    sput-object v0, Lth/K;->o:Lth/K;

    new-instance v0, Lth/K;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lth/K;-><init>(I)V

    sput-object v0, Lth/K;->p:Lth/K;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 1
    new-instance v0, Loh/s;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    invoke-direct {p0, v0}, Lth/K;-><init>(Loh/s;)V

    return-void
.end method

.method public constructor <init>(Loh/s;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lth/K;->b:Loh/s;

    return-void
.end method

.method public static u(Ljava/lang/Object;)Lth/K;
    .locals 1

    instance-of v0, p0, Lth/K;

    if-eqz v0, :cond_0

    check-cast p0, Lth/K;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lth/K;

    invoke-static {p0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p0

    invoke-direct {v0, p0}, Lth/K;-><init>(Loh/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lth/K;->b:Loh/s;

    return-object v0
.end method

.method public v()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lth/K;->b:Loh/s;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
