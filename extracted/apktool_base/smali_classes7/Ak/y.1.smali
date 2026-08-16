.class public LAk/y;
.super Loh/j;
.source "SourceFile"


# static fields
.field public static final f:LAk/y;

.field public static final g:LAk/y;

.field public static final h:LAk/y;

.field public static final i:LAk/y;

.field public static final j:LAk/y;

.field public static final k:LAk/y;

.field public static final l:LAk/y;

.field public static final m:LAk/y;

.field public static final n:LAk/y;

.field public static final o:LAk/y;

.field public static final p:LAk/y;

.field public static final q:LAk/y;

.field public static final r:LAk/y;

.field public static final s:LAk/y;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LAk/y;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LAk/y;-><init>(I)V

    sput-object v0, LAk/y;->f:LAk/y;

    new-instance v0, LAk/y;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LAk/y;-><init>(I)V

    sput-object v0, LAk/y;->g:LAk/y;

    new-instance v0, LAk/y;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LAk/y;-><init>(I)V

    sput-object v0, LAk/y;->h:LAk/y;

    new-instance v0, LAk/y;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LAk/y;-><init>(I)V

    sput-object v0, LAk/y;->i:LAk/y;

    new-instance v0, LAk/y;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LAk/y;-><init>(I)V

    sput-object v0, LAk/y;->j:LAk/y;

    new-instance v0, LAk/y;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LAk/y;-><init>(I)V

    sput-object v0, LAk/y;->k:LAk/y;

    new-instance v0, LAk/y;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, LAk/y;-><init>(I)V

    sput-object v0, LAk/y;->l:LAk/y;

    new-instance v0, LAk/y;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, LAk/y;-><init>(I)V

    sput-object v0, LAk/y;->m:LAk/y;

    new-instance v0, LAk/y;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, LAk/y;-><init>(I)V

    sput-object v0, LAk/y;->n:LAk/y;

    new-instance v0, LAk/y;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, LAk/y;-><init>(I)V

    sput-object v0, LAk/y;->o:LAk/y;

    new-instance v0, LAk/y;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, LAk/y;-><init>(I)V

    sput-object v0, LAk/y;->p:LAk/y;

    new-instance v0, LAk/y;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, LAk/y;-><init>(I)V

    sput-object v0, LAk/y;->q:LAk/y;

    new-instance v0, LAk/y;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, LAk/y;-><init>(I)V

    sput-object v0, LAk/y;->r:LAk/y;

    new-instance v0, LAk/y;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, LAk/y;-><init>(I)V

    sput-object v0, LAk/y;->s:LAk/y;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Loh/j;-><init>(I)V

    invoke-virtual {p0}, LAk/y;->M()V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Loh/j;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0}, LAk/y;->M()V

    return-void
.end method

.method public constructor <init>(Loh/j;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Loh/j;->H()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, LAk/y;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Loh/j;-><init>([B)V

    invoke-virtual {p0}, LAk/y;->M()V

    return-void
.end method

.method public static N(Ljava/lang/Object;)LAk/y;
    .locals 1

    instance-of v0, p0, LAk/y;

    if-eqz v0, :cond_0

    check-cast p0, LAk/y;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LAk/y;

    invoke-static {p0}, Loh/j;->F(Ljava/lang/Object;)Loh/j;

    move-result-object p0

    invoke-direct {v0, p0}, LAk/y;-><init>(Loh/j;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public M()V
    .locals 3

    invoke-virtual {p0}, Loh/j;->H()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Loh/j;->H()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    const/16 v1, 0xd

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid enumeration value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Loh/j;->H()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
