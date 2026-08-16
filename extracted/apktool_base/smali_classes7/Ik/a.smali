.class public LIk/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyk/f$b;

.field public static final b:Lyk/f$b;

.field public static final c:Lyk/f$b;

.field public static final d:Lyk/f$b;

.field public static final e:Lyk/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0xff

    invoke-static {v0, v1, v2, v3}, Lyk/f;->n(JJ)Lyk/f$b;

    move-result-object v4

    const-string v5, "CertificateFormat"

    invoke-virtual {v4, v5}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v4

    sput-object v4, LIk/a;->a:Lyk/f$b;

    sget-object v4, LLk/a;->z:Lyk/f$b;

    const-string v5, "id"

    invoke-virtual {v4, v5}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v6

    sget-object v4, LMk/a;->q:Lyk/f$b;

    const-string v5, "validityPeriod"

    invoke-virtual {v4, v5}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v7

    sget-object v4, LMk/a;->v0:Lyk/f$b;

    const-string v5, "region"

    invoke-virtual {v4, v5}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v8

    sget-object v4, LMk/a;->X:Lyk/f$b;

    const-string v5, "assuranceLevel"

    invoke-virtual {v4, v5}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v9

    sget-object v4, LMk/a;->Q:Lyk/f$b;

    const-string v5, "appPermissions"

    invoke-virtual {v4, v5}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v10

    sget-object v4, LLk/a;->x:Lyk/f$b;

    const-string v5, "certIssuePermissions"

    invoke-virtual {v4, v5}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v11

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v4}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v12

    filled-new-array/range {v6 .. v12}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lyk/f;->v([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v4

    const-string v5, "CertificateSubjectAttributes"

    invoke-virtual {v4, v5}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v4

    sput-object v4, LIk/a;->b:Lyk/f$b;

    sget-object v4, LJk/a;->f:Lyk/f$b;

    const-string v5, "encryptedEcSignature"

    invoke-virtual {v4, v5}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v4

    sget-object v5, LJk/a;->e:Lyk/f$b;

    const-string v6, "ecSignature"

    invoke-virtual {v5, v6}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lyk/f;->d([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v4

    const-string v5, "EcSignature"

    invoke-virtual {v4, v5}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v4

    sput-object v4, LIk/a;->c:Lyk/f$b;

    sget-object v4, LMk/a;->L:Lyk/f$b;

    const-string v5, "verificationKey"

    invoke-virtual {v4, v5}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v4

    sget-object v5, LMk/a;->J:Lyk/f$b;

    const-string v6, "encryptionKey"

    invoke-virtual {v5, v6}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lyk/f;->v([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v4

    const-string v5, "PublicKeys"

    invoke-virtual {v4, v5}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v4

    sput-object v4, LIk/a;->d:Lyk/f$b;

    invoke-static {v0, v1, v2, v3}, Lyk/f;->n(JJ)Lyk/f$b;

    move-result-object v0

    const-string v1, "Version"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LIk/a;->e:Lyk/f$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
