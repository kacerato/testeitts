.class public LAk/i;
.super Loh/j;
.source "SourceFile"


# static fields
.field public static final f:LAk/i;

.field public static final g:LAk/i;

.field public static final h:LAk/i;

.field public static final i:LAk/i;

.field public static final j:LAk/i;

.field public static final k:LAk/i;

.field public static final l:LAk/i;

.field public static final m:LAk/i;

.field public static final n:LAk/i;

.field public static final o:LAk/i;

.field public static final p:LAk/i;

.field public static final q:LAk/i;

.field public static final r:LAk/i;

.field public static final s:LAk/i;

.field public static final t:LAk/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LAk/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LAk/i;-><init>(I)V

    sput-object v0, LAk/i;->f:LAk/i;

    new-instance v0, LAk/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LAk/i;-><init>(I)V

    sput-object v0, LAk/i;->g:LAk/i;

    new-instance v0, LAk/i;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LAk/i;-><init>(I)V

    sput-object v0, LAk/i;->h:LAk/i;

    new-instance v0, LAk/i;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LAk/i;-><init>(I)V

    sput-object v0, LAk/i;->i:LAk/i;

    new-instance v0, LAk/i;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LAk/i;-><init>(I)V

    sput-object v0, LAk/i;->j:LAk/i;

    new-instance v0, LAk/i;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LAk/i;-><init>(I)V

    sput-object v0, LAk/i;->k:LAk/i;

    new-instance v0, LAk/i;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, LAk/i;-><init>(I)V

    sput-object v0, LAk/i;->l:LAk/i;

    new-instance v0, LAk/i;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, LAk/i;-><init>(I)V

    sput-object v0, LAk/i;->m:LAk/i;

    new-instance v0, LAk/i;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, LAk/i;-><init>(I)V

    sput-object v0, LAk/i;->n:LAk/i;

    new-instance v0, LAk/i;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, LAk/i;-><init>(I)V

    sput-object v0, LAk/i;->o:LAk/i;

    new-instance v0, LAk/i;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, LAk/i;-><init>(I)V

    sput-object v0, LAk/i;->p:LAk/i;

    new-instance v0, LAk/i;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, LAk/i;-><init>(I)V

    sput-object v0, LAk/i;->q:LAk/i;

    new-instance v0, LAk/i;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, LAk/i;-><init>(I)V

    sput-object v0, LAk/i;->r:LAk/i;

    new-instance v0, LAk/i;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, LAk/i;-><init>(I)V

    sput-object v0, LAk/i;->s:LAk/i;

    new-instance v0, LAk/i;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, LAk/i;-><init>(I)V

    sput-object v0, LAk/i;->t:LAk/i;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Loh/j;-><init>(I)V

    invoke-virtual {p0}, LAk/i;->M()V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Loh/j;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0}, LAk/i;->M()V

    return-void
.end method

.method public constructor <init>(Loh/j;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Loh/j;->H()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, Loh/j;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0}, LAk/i;->M()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Loh/j;-><init>([B)V

    invoke-virtual {p0}, LAk/i;->M()V

    return-void
.end method

.method public static N(Ljava/lang/Object;)LAk/i;
    .locals 1

    instance-of v0, p0, LAk/i;

    if-eqz v0, :cond_0

    check-cast p0, LAk/i;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LAk/i;

    invoke-static {p0}, Loh/j;->F(Ljava/lang/Object;)Loh/j;

    move-result-object p0

    invoke-direct {v0, p0}, LAk/i;-><init>(Loh/j;)V

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

    const/16 v1, 0xe

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
