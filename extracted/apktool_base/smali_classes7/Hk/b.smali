.class public LHk/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyk/f$b;

.field public static final b:Lyk/f$b;

.field public static final c:Lyk/f$b;

.field public static final d:Lyk/f$b;

.field public static final e:Lyk/f$b;

.field public static final f:Lyk/f$b;

.field public static final g:Lyk/f$b;

.field public static final h:Lyk/f$b;

.field public static final i:Lyk/f$b;

.field public static final j:Lyk/f$b;

.field public static final k:Lyk/f$b;

.field public static final l:Lyk/f$b;

.field public static final m:Lyk/f$b;

.field public static final n:Lyk/f$b;

.field public static final o:Lyk/f$b;

.field public static final p:Lyk/f$b;

.field public static final q:Lyk/f$b;

.field public static final r:Lyk/f$b;

.field public static final s:Lyk/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    sget-object v0, LMk/a;->i:Lyk/f$b;

    const-string v1, "CrlEntry"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LHk/b;->a:Lyk/f$b;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lyk/f;->z([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v1

    const-string v2, "SequenceOfCrlEntry"

    invoke-virtual {v1, v2}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LHk/b;->b:Lyk/f$b;

    sget-object v2, LIk/a;->e:Lyk/f$b;

    const-string v3, "version"

    invoke-virtual {v2, v3}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v4

    sget-object v5, LMk/a;->n:Lyk/f$b;

    const-string v6, "thisUpdate"

    invoke-virtual {v5, v6}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v6

    const-string v7, "nextUpdate"

    invoke-virtual {v5, v7}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v8

    const-string v9, "entries"

    invoke-virtual {v1, v9}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v10}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v10

    filled-new-array {v4, v6, v8, v1, v10}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v1

    const-string v4, "ToBeSignedCrl"

    invoke-virtual {v1, v4}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LHk/b;->c:Lyk/f$b;

    invoke-static {}, Lyk/f;->k()Lyk/f$b;

    move-result-object v1

    const-string v4, "Url"

    invoke-virtual {v1, v4}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LHk/b;->d:Lyk/f$b;

    const-string v4, "DcDelete"

    invoke-virtual {v1, v4}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v4

    sput-object v4, LHk/b;->e:Lyk/f$b;

    const-string v6, "url"

    invoke-virtual {v1, v6}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v6

    sget-object v8, LMk/a;->m:Lyk/f$b;

    const-string v10, "cert"

    invoke-virtual {v8, v10}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v8

    filled-new-array {v6, v8}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v6

    const-string v8, "DcEntry"

    invoke-virtual {v6, v8}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v6

    sput-object v6, LHk/b;->f:Lyk/f$b;

    sget-object v8, LJk/a;->a:Lyk/f$b;

    const-string v11, "aaCertificate"

    invoke-virtual {v8, v11}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v11

    const-string v12, "accessPoint"

    invoke-virtual {v1, v12}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v13

    filled-new-array {v11, v13}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v11

    const-string v13, "AaEntry"

    invoke-virtual {v11, v13}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v11

    sput-object v11, LHk/b;->g:Lyk/f$b;

    const-string v13, "eaCertificate"

    invoke-virtual {v8, v13}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v13

    const-string v14, "aaAccessPoint"

    invoke-virtual {v1, v14}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v14

    const-string v15, "itsAccessPoint"

    invoke-virtual {v1, v15}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v15

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Lyk/f;->v([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    filled-new-array {v13, v14, v15}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v13

    const-string v14, "EaEntry"

    invoke-virtual {v13, v14}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v13

    sput-object v13, LHk/b;->h:Lyk/f$b;

    const-string v14, "selfsignedRootCa"

    invoke-virtual {v8, v14}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v14

    const-string v15, "successorTo"

    invoke-virtual {v8, v15}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v16

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lyk/f;->v([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    filled-new-array {v14, v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v9

    const-string v14, "RootCaEntry"

    invoke-virtual {v9, v14}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v9

    sput-object v9, LHk/b;->i:Lyk/f$b;

    const-string v14, "selfSignedTLMCertificate"

    invoke-virtual {v8, v14}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v14

    invoke-virtual {v8, v15}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lyk/f;->v([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v1, v12}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    filled-new-array {v14, v8, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v1

    const-string v8, "TlmEntry"

    invoke-virtual {v1, v8}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LHk/b;->j:Lyk/f$b;

    invoke-virtual {v0, v10}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    const-string v8, "dc"

    invoke-virtual {v4, v8}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v4

    const/4 v10, 0x0

    new-array v12, v10, [Ljava/lang/Object;

    invoke-static {v12}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v10

    filled-new-array {v0, v4, v10}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lyk/f;->d([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v0

    const-string v4, "CtlDelete"

    invoke-virtual {v0, v4}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LHk/b;->k:Lyk/f$b;

    const-string v4, "rca"

    invoke-virtual {v9, v4}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v17

    const-string v4, "ea"

    invoke-virtual {v13, v4}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v18

    const-string v4, "aa"

    invoke-virtual {v11, v4}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v19

    invoke-virtual {v6, v8}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v20

    const-string v4, "tlm"

    invoke-virtual {v1, v4}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v21

    const/4 v1, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v4}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v22

    filled-new-array/range {v17 .. v22}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lyk/f;->d([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v1

    const-string v4, "CtlEntry"

    invoke-virtual {v1, v4}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LHk/b;->l:Lyk/f$b;

    const-string v4, "add"

    invoke-virtual {v1, v4}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    const-string v4, "delete"

    invoke-virtual {v0, v4}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    const/4 v4, 0x0

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v6}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v4

    filled-new-array {v1, v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lyk/f;->d([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v0

    const-string v1, "CtlCommand"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LHk/b;->m:Lyk/f$b;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lyk/f;->z([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v0

    const-string v1, "SequenceOfCtlCommand"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LHk/b;->n:Lyk/f$b;

    invoke-virtual {v2, v3}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v8

    invoke-virtual {v5, v7}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v9

    invoke-static {}, Lyk/f;->c()Lyk/f$b;

    move-result-object v1

    const-string v2, "isFullCtl"

    invoke-virtual {v1, v2}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v10

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0xff

    invoke-static {v1, v2, v3, v4}, Lyk/f;->n(JJ)Lyk/f$b;

    move-result-object v1

    const-string v2, "ctlSequence"

    invoke-virtual {v1, v2}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v11

    const-string v1, "ctlCommands"

    invoke-virtual {v0, v1}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v12

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v13

    filled-new-array/range {v8 .. v13}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v0

    const-string v1, "CtlFormat"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LHk/b;->o:Lyk/f$b;

    const-string v1, "DeltaCtl"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LHk/b;->p:Lyk/f$b;

    const-string v1, "FullCtl"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LHk/b;->q:Lyk/f$b;

    const-string v1, "ToBeSignedRcaCtl"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    sput-object v2, LHk/b;->r:Lyk/f$b;

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LHk/b;->s:Lyk/f$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
