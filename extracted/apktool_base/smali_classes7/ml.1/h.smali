.class public Lml/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LYk/e;


# static fields
.field public static final f:Lml/h;

.field public static final g:Lml/h;

.field public static final h:Lml/h;

.field public static final i:Lml/h;

.field public static final j:Lml/h;

.field public static final k:Lml/h;

.field public static final l:Lml/h;

.field public static final m:Lml/h;

.field public static final n:Lml/h;

.field public static final o:Lml/h;

.field public static final p:Lml/h;

.field public static final q:Lml/h;

.field public static final r:Lml/h;

.field public static final s:Lml/h;

.field public static final t:Lml/h;

.field public static final u:Lml/h;

.field public static final v:Lml/h;

.field public static final w:Lml/h;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:Lml/b;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Lml/h;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, "lightsaberkem128r3"

    const/4 v2, 0x2

    const/16 v3, 0x80

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lml/h;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v6, Lml/h;->f:Lml/h;

    new-instance v0, Lml/h;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v8, "saberkem128r3"

    const/4 v9, 0x3

    const/16 v10, 0x80

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lml/h;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lml/h;->g:Lml/h;

    new-instance v0, Lml/h;

    const/4 v6, 0x0

    const-string v2, "firesaberkem128r3"

    const/4 v3, 0x4

    const/16 v4, 0x80

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lml/h;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lml/h;->h:Lml/h;

    new-instance v0, Lml/h;

    const-string v8, "lightsaberkem192r3"

    const/4 v9, 0x2

    const/16 v10, 0xc0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lml/h;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lml/h;->i:Lml/h;

    new-instance v0, Lml/h;

    const-string v2, "saberkem192r3"

    const/4 v3, 0x3

    const/16 v4, 0xc0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lml/h;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lml/h;->j:Lml/h;

    new-instance v0, Lml/h;

    const-string v8, "firesaberkem192r3"

    const/4 v9, 0x4

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lml/h;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lml/h;->k:Lml/h;

    new-instance v0, Lml/h;

    const-string v2, "lightsaberkem256r3"

    const/4 v3, 0x2

    const/16 v4, 0x100

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lml/h;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lml/h;->l:Lml/h;

    new-instance v0, Lml/h;

    const-string v8, "saberkem256r3"

    const/4 v9, 0x3

    const/16 v10, 0x100

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lml/h;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lml/h;->m:Lml/h;

    new-instance v0, Lml/h;

    const-string v2, "firesaberkem256r3"

    const/4 v3, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lml/h;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lml/h;->n:Lml/h;

    new-instance v0, Lml/h;

    const/4 v11, 0x1

    const-string v8, "lightsaberkem90sr3"

    const/4 v9, 0x2

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lml/h;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lml/h;->o:Lml/h;

    new-instance v0, Lml/h;

    const/4 v5, 0x1

    const-string v2, "saberkem90sr3"

    const/4 v3, 0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lml/h;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lml/h;->p:Lml/h;

    new-instance v0, Lml/h;

    const-string v8, "firesaberkem90sr3"

    const/4 v9, 0x4

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lml/h;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lml/h;->q:Lml/h;

    new-instance v0, Lml/h;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v2, "ulightsaberkemr3"

    const/4 v3, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lml/h;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lml/h;->r:Lml/h;

    new-instance v0, Lml/h;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-string v8, "usaberkemr3"

    const/4 v9, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lml/h;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lml/h;->s:Lml/h;

    new-instance v0, Lml/h;

    const-string v2, "ufiresaberkemr3"

    const/4 v3, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lml/h;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lml/h;->t:Lml/h;

    new-instance v0, Lml/h;

    const/4 v11, 0x1

    const-string v8, "ulightsaberkem90sr3"

    const/4 v9, 0x2

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lml/h;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lml/h;->u:Lml/h;

    new-instance v0, Lml/h;

    const/4 v5, 0x1

    const-string v2, "usaberkem90sr3"

    const/4 v3, 0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lml/h;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lml/h;->v:Lml/h;

    new-instance v0, Lml/h;

    const-string v8, "ufiresaberkem90sr3"

    const/4 v9, 0x4

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lml/h;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lml/h;->w:Lml/h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lml/h;->b:Ljava/lang/String;

    iput p2, p0, Lml/h;->c:I

    iput p3, p0, Lml/h;->d:I

    new-instance p1, Lml/b;

    invoke-direct {p1, p2, p3, p4, p5}, Lml/b;-><init>(IIZZ)V

    iput-object p1, p0, Lml/h;->e:Lml/b;

    return-void
.end method


# virtual methods
.method public a()Lml/b;
    .locals 1

    iget-object v0, p0, Lml/h;->e:Lml/b;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lml/h;->c:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lml/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lml/h;->d:I

    return v0
.end method
