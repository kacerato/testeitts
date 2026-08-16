.class public Lll/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/k;


# static fields
.field public static final k:Lll/h;

.field public static final l:Lll/h;

.field public static final m:Lll/h;

.field public static final n:Lll/h;

.field public static final o:Lll/h;

.field public static final p:Lll/h;

.field public static final q:I = 0x20

.field public static final r:I = 0x20

.field public static final s:I = 0x10


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:LBi/y;

.field public final i:Lll/n;

.field public final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lll/h;

    sget-object v1, Lll/n;->CLASSIC:Lll/n;

    const-string v2, "rainbow-III-classic"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lll/h;-><init>(Ljava/lang/String;ILll/n;)V

    sput-object v0, Lll/h;->k:Lll/h;

    new-instance v0, Lll/h;

    sget-object v2, Lll/n;->CIRCUMZENITHAL:Lll/n;

    const-string v4, "rainbow-III-circumzenithal"

    invoke-direct {v0, v4, v3, v2}, Lll/h;-><init>(Ljava/lang/String;ILll/n;)V

    sput-object v0, Lll/h;->l:Lll/h;

    new-instance v0, Lll/h;

    sget-object v4, Lll/n;->COMPRESSED:Lll/n;

    const-string v5, "rainbow-III-compressed"

    invoke-direct {v0, v5, v3, v4}, Lll/h;-><init>(Ljava/lang/String;ILll/n;)V

    sput-object v0, Lll/h;->m:Lll/h;

    new-instance v0, Lll/h;

    const-string v3, "rainbow-V-classic"

    const/4 v5, 0x5

    invoke-direct {v0, v3, v5, v1}, Lll/h;-><init>(Ljava/lang/String;ILll/n;)V

    sput-object v0, Lll/h;->n:Lll/h;

    new-instance v0, Lll/h;

    const-string v1, "rainbow-V-circumzenithal"

    invoke-direct {v0, v1, v5, v2}, Lll/h;-><init>(Ljava/lang/String;ILll/n;)V

    sput-object v0, Lll/h;->o:Lll/h;

    new-instance v0, Lll/h;

    const-string v1, "rainbow-V-compressed"

    invoke-direct {v0, v1, v5, v4}, Lll/h;-><init>(Ljava/lang/String;ILll/n;)V

    sput-object v0, Lll/h;->p:Lll/h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILll/n;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lll/h;->j:Ljava/lang/String;

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    const/16 p1, 0x60

    iput p1, p0, Lll/h;->b:I

    const/16 p1, 0x24

    iput p1, p0, Lll/h;->d:I

    const/16 p1, 0x40

    iput p1, p0, Lll/h;->e:I

    new-instance p1, LIi/O;

    invoke-direct {p1}, LIi/O;-><init>()V

    :goto_0
    iput-object p1, p0, Lll/h;->h:LBi/y;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No valid version. Please choose one of the following: 3, 5"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 p1, 0x44

    iput p1, p0, Lll/h;->b:I

    const/16 p1, 0x20

    iput p1, p0, Lll/h;->d:I

    const/16 p1, 0x30

    iput p1, p0, Lll/h;->e:I

    new-instance p1, LIi/M;

    invoke-direct {p1}, LIi/M;-><init>()V

    goto :goto_0

    :goto_1
    iget p1, p0, Lll/h;->b:I

    iget p2, p0, Lll/h;->d:I

    add-int v0, p1, p2

    iput v0, p0, Lll/h;->c:I

    add-int/2addr p1, p2

    iget v0, p0, Lll/h;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Lll/h;->f:I

    add-int/2addr p2, v0

    iput p2, p0, Lll/h;->g:I

    iput-object p3, p0, Lll/h;->i:Lll/n;

    return-void
.end method


# virtual methods
.method public a()LBi/y;
    .locals 1

    iget-object v0, p0, Lll/h;->h:LBi/y;

    return-object v0
.end method

.method public b()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public c()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public d()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lll/h;->g:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lll/h;->f:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lll/h;->j:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lll/h;->d:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lll/h;->e:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lll/h;->b:I

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lll/h;->c:I

    return v0
.end method

.method public l()Lll/n;
    .locals 1

    iget-object v0, p0, Lll/h;->i:Lll/n;

    return-object v0
.end method
