.class public LKk/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Loh/s;

.field public static final b:Loh/s;

.field public static final c:[Loh/g;

.field public static final d:Lyk/f$b;

.field public static final e:Lyk/f$b;

.field public static final f:Lyk/f$b;

.field public static final g:Lyk/f$b;

.field public static final h:Lyk/f$b;

.field public static final i:Lyk/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    sput-object v0, LKk/a;->a:Loh/s;

    new-instance v1, Loh/s;

    const-wide/16 v2, 0x2

    invoke-direct {v1, v2, v3}, Loh/s;-><init>(J)V

    sput-object v1, LKk/a;->b:Loh/s;

    const/4 v2, 0x2

    new-array v3, v2, [Loh/g;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v1, v3, v5

    sput-object v3, LKk/a;->c:[Loh/g;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0xff

    invoke-static {v6, v7, v8, v9}, Lyk/f;->n(JJ)Lyk/f$b;

    move-result-object v3

    new-array v2, v2, [Loh/g;

    aput-object v0, v2, v4

    aput-object v1, v2, v5

    invoke-virtual {v3, v2}, Lyk/f$b;->B([Loh/g;)Lyk/f$b;

    move-result-object v0

    const-string v1, "ExtId"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LKk/a;->d:Lyk/f$b;

    sget-object v1, LMk/a;->i:Lyk/f$b;

    const-string v2, "issuerId"

    invoke-virtual {v1, v2}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v3

    sget-object v4, LMk/a;->n:Lyk/f$b;

    const-string v5, "lastKnownUpdate"

    invoke-virtual {v4, v5}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lyk/f;->v([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v3

    const-string v4, "EtsiTs102941CrlRequest"

    invoke-virtual {v3, v4}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v3

    sput-object v3, LKk/a;->e:Lyk/f$b;

    invoke-virtual {v1, v2}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    invoke-static {v6, v7, v8, v9}, Lyk/f;->n(JJ)Lyk/f$b;

    move-result-object v2

    const-string v3, "lastKnownCtlSequence"

    invoke-virtual {v2, v3}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lyk/f;->v([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v1

    const-string v2, "EtsiTs102941CtlRequest"

    invoke-virtual {v1, v2}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LKk/a;->f:Lyk/f$b;

    const-string v2, "EtsiTs102941DeltaCtlRequest"

    invoke-virtual {v1, v2}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LKk/a;->g:Lyk/f$b;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    new-instance v1, LKk/a$a;

    invoke-direct {v1}, LKk/a$a;-><init>()V

    invoke-static {v1}, Lyk/f;->a(Lyk/k;)Lyk/f$b;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v1, v2}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v0

    const-string v1, "Extension"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LKk/a;->h:Lyk/f$b;

    const-string v1, "EtsiOriginatingHeaderInfoExtension"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LKk/a;->i:Lyk/f$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()[Loh/g;
    .locals 1

    sget-object v0, LKk/a;->c:[Loh/g;

    return-object v0
.end method
