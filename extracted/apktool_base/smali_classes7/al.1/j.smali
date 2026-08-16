.class public Lal/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LYk/e;


# static fields
.field public static i:[I

.field public static j:[I

.field public static k:[I

.field public static l:[I

.field public static m:[I

.field public static final n:Lal/j;

.field public static final o:Lal/j;

.field public static final p:Lal/j;

.field public static final q:Lal/j;

.field public static final r:Lal/j;

.field public static final s:Lal/j;

.field public static final t:Lal/j;

.field public static final u:Lal/j;

.field public static final v:Lal/j;

.field public static final w:Lal/j;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Z

.field public final g:I

.field public final h:Lal/d;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    filled-new-array {v0, v1, v2}, [I

    move-result-object v8

    sput-object v8, Lal/j;->i:[I

    const/16 v0, 0x9

    const/4 v3, 0x6

    const/16 v4, 0xa

    filled-new-array {v4, v0, v3, v2}, [I

    move-result-object v0

    sput-object v0, Lal/j;->j:[I

    const/4 v0, 0x7

    const/4 v3, 0x2

    filled-new-array {v0, v3, v1, v2}, [I

    move-result-object v4

    sput-object v4, Lal/j;->k:[I

    const/16 v4, 0x8

    filled-new-array {v4, v2}, [I

    move-result-object v4

    sput-object v4, Lal/j;->l:[I

    filled-new-array {v0, v3, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lal/j;->m:[I

    new-instance v0, Lal/j;

    const/4 v9, 0x0

    const/16 v10, 0x80

    const-string v4, "mceliece348864"

    const/16 v5, 0xc

    const/16 v6, 0xda0

    const/16 v7, 0x40

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lal/j;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v0, Lal/j;->n:Lal/j;

    new-instance v0, Lal/j;

    sget-object v16, Lal/j;->i:[I

    const/16 v17, 0x1

    const/16 v18, 0x80

    const-string v12, "mceliece348864f"

    const/16 v13, 0xc

    const/16 v14, 0xda0

    const/16 v15, 0x40

    move-object v11, v0

    invoke-direct/range {v11 .. v18}, Lal/j;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v0, Lal/j;->o:Lal/j;

    new-instance v0, Lal/j;

    sget-object v6, Lal/j;->j:[I

    const/4 v7, 0x0

    const/16 v8, 0xc0

    const-string v2, "mceliece460896"

    const/16 v3, 0xd

    const/16 v4, 0x1200

    const/16 v5, 0x60

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lal/j;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v0, Lal/j;->p:Lal/j;

    new-instance v0, Lal/j;

    sget-object v14, Lal/j;->j:[I

    const/4 v15, 0x1

    const/16 v16, 0xc0

    const-string v10, "mceliece460896f"

    const/16 v11, 0xd

    const/16 v12, 0x1200

    const/16 v13, 0x60

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lal/j;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v0, Lal/j;->q:Lal/j;

    new-instance v0, Lal/j;

    sget-object v6, Lal/j;->k:[I

    const/16 v8, 0x100

    const-string v2, "mceliece6688128"

    const/16 v4, 0x1a20

    const/16 v5, 0x80

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lal/j;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v0, Lal/j;->r:Lal/j;

    new-instance v0, Lal/j;

    sget-object v14, Lal/j;->k:[I

    const/16 v16, 0x100

    const-string v10, "mceliece6688128f"

    const/16 v12, 0x1a20

    const/16 v13, 0x80

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lal/j;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v0, Lal/j;->s:Lal/j;

    new-instance v0, Lal/j;

    sget-object v6, Lal/j;->l:[I

    const-string v2, "mceliece6960119"

    const/16 v4, 0x1b30

    const/16 v5, 0x77

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lal/j;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v0, Lal/j;->t:Lal/j;

    new-instance v0, Lal/j;

    sget-object v14, Lal/j;->l:[I

    const-string v10, "mceliece6960119f"

    const/16 v12, 0x1b30

    const/16 v13, 0x77

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lal/j;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v0, Lal/j;->u:Lal/j;

    new-instance v0, Lal/j;

    sget-object v6, Lal/j;->m:[I

    const-string v2, "mceliece8192128"

    const/16 v4, 0x2000

    const/16 v5, 0x80

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lal/j;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v0, Lal/j;->v:Lal/j;

    new-instance v0, Lal/j;

    sget-object v14, Lal/j;->m:[I

    const-string v10, "mceliece8192128f"

    const/16 v12, 0x2000

    const/16 v13, 0x80

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lal/j;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v0, Lal/j;->w:Lal/j;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III[IZI)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lal/j;->b:Ljava/lang/String;

    iput p2, p0, Lal/j;->c:I

    iput p3, p0, Lal/j;->d:I

    iput p4, p0, Lal/j;->e:I

    iput-boolean p6, p0, Lal/j;->f:Z

    iput p7, p0, Lal/j;->g:I

    new-instance p1, Lal/d;

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lal/d;-><init>(III[IZI)V

    iput-object p1, p0, Lal/j;->h:Lal/d;

    return-void
.end method


# virtual methods
.method public a()Lal/d;
    .locals 1

    iget-object v0, p0, Lal/j;->h:Lal/d;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lal/j;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    iget-boolean v0, p0, Lal/j;->f:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lal/j;->d:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lal/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget-boolean v0, p0, Lal/j;->f:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lal/j;->g:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lal/j;->e:I

    return v0
.end method
