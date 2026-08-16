.class public Lhi/o;
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

.field public static final j:I = 0x8

.field public static final k:I = 0x9

.field public static final l:I = 0xa

.field public static final m:I = 0x0

.field public static final n:I = 0x1

.field public static final o:I = 0x2

.field public static final p:I = 0x3

.field public static final q:I = 0x4

.field public static final r:I = 0x5

.field public static final s:I = 0x6

.field public static final t:I = 0x8

.field public static final u:I = 0x9

.field public static final v:I = 0xa

.field public static final w:[Ljava/lang/String;

.field public static final x:Ljava/util/Hashtable;


# instance fields
.field public b:Loh/j;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v9, "privilegeWithdrawn"

    const-string v10, "aACompromise"

    const-string v0, "unspecified"

    const-string v1, "keyCompromise"

    const-string v2, "cACompromise"

    const-string v3, "affiliationChanged"

    const-string v4, "superseded"

    const-string v5, "cessationOfOperation"

    const-string v6, "certificateHold"

    const-string v7, "unknown"

    const-string v8, "removeFromCRL"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhi/o;->w:[Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lhi/o;->x:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Loh/v;-><init>()V

    if-ltz p1, :cond_0

    new-instance v0, Loh/j;

    invoke-direct {v0, p1}, Loh/j;-><init>(I)V

    iput-object v0, p0, Lhi/o;->b:Loh/j;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid CRL reason : not in (0..MAX)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u(Ljava/lang/Object;)Lhi/o;
    .locals 1

    instance-of v0, p0, Lhi/o;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/o;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Loh/j;->F(Ljava/lang/Object;)Loh/j;

    move-result-object p0

    invoke-virtual {p0}, Loh/j;->L()I

    move-result p0

    invoke-static {p0}, Lhi/o;->w(I)Lhi/o;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static w(I)Lhi/o;
    .locals 3

    invoke-static {p0}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lhi/o;->x:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lhi/o;

    invoke-direct {v2, p0}, Lhi/o;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhi/o;

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lhi/o;->b:Loh/j;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lhi/o;->v()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lhi/o;->w:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "invalid"

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CRLReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lhi/o;->b:Loh/j;

    invoke-virtual {v0}, Loh/j;->H()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
