.class public LLk/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Lyk/f$b;

.field public static final B:Lyk/f$b;

.field public static final C:Lyk/f$b;

.field public static D:Loh/s;

.field public static E:Loh/s;

.field public static final F:Lyk/f$b;

.field public static final G:Lyk/f$b;

.field public static final H:Lyk/f$b;

.field public static final I:Lyk/f$b;

.field public static final J:Lyk/f$b;

.field public static final K:Lyk/f$b;

.field public static final L:Lyk/f$b;

.field public static final M:Lyk/f$b;

.field public static final N:Lyk/f$b;

.field public static final O:Lyk/f$b;

.field public static final P:Lyk/f$b;

.field public static final Q:Lyk/f$b;

.field public static final R:Lyk/f$b;

.field public static final a:Lyk/f$b;

.field public static final b:Lyk/f$b;

.field public static final c:Lyk/f$b;

.field public static final d:Lyk/f$b;

.field public static final e:Loh/s;

.field public static final f:[Loh/g;

.field public static final g:Lyk/f$b;

.field public static final h:Lyk/k;

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

.field public static final t:Lyk/f$b;

.field public static final u:Lyk/f$b;

.field public static final v:Lyk/f$b;

.field public static final w:Lyk/f$b;

.field public static final x:Lyk/f$b;

.field public static final y:Lyk/f$b;

.field public static final z:Lyk/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 34

    invoke-static {}, Lyk/f;->r()Lyk/f$b;

    move-result-object v0

    const-string v1, "Opaque"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LLk/a;->a:Lyk/f$b;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0xff

    invoke-static {v1, v2, v3, v4}, Lyk/f;->n(JJ)Lyk/f$b;

    move-result-object v5

    const-string v6, "PduFunctionalType"

    invoke-virtual {v5, v6}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v5

    sput-object v5, LLk/a;->b:Lyk/f$b;

    const/16 v6, 0x20

    invoke-static {v6}, Lyk/f;->s(I)Lyk/f$b;

    move-result-object v7

    const-string v8, "sha256HashedData"

    invoke-virtual {v7, v8}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v7

    const/16 v8, 0x30

    invoke-static {v8}, Lyk/f;->s(I)Lyk/f$b;

    move-result-object v8

    const-string v9, "sha384HashedData"

    invoke-virtual {v8, v9}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v8

    invoke-static {v6}, Lyk/f;->s(I)Lyk/f$b;

    move-result-object v6

    const-string v9, "reserved"

    invoke-virtual {v6, v9}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v6

    filled-new-array {v8, v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v6

    filled-new-array {v7, v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lyk/f;->d([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v6

    const-string v7, "HashedData"

    invoke-virtual {v6, v7}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v6

    sput-object v6, LLk/a;->c:Lyk/f$b;

    sget-object v7, LMk/a;->h:Lyk/f$b;

    const-string v8, "cracaId"

    invoke-virtual {v7, v8}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v9

    sget-object v10, LMk/a;->Y:Lyk/f$b;

    const-string v11, "crlSeries"

    invoke-virtual {v10, v11}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v12

    const/4 v13, 0x0

    new-array v14, v13, [Ljava/lang/Object;

    invoke-static {v14}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v14

    filled-new-array {v9, v12, v14}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v9

    const-string v12, "MissingCrlIdentifier"

    invoke-virtual {v9, v12}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v9

    sput-object v9, LLk/a;->d:Lyk/f$b;

    new-instance v12, Loh/s;

    sget-object v14, Lorg/bouncycastle/util/b;->c:Ljava/math/BigInteger;

    invoke-direct {v12, v14}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    sput-object v12, LLk/a;->e:Loh/s;

    const/4 v14, 0x1

    new-array v15, v14, [Loh/g;

    aput-object v12, v15, v13

    sput-object v15, LLk/a;->f:[Loh/g;

    invoke-static {v1, v2, v3, v4}, Lyk/f;->n(JJ)Lyk/f$b;

    move-result-object v3

    const-string v4, "HeaderInfoContributorId"

    invoke-virtual {v3, v4}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v3

    new-array v4, v14, [Loh/g;

    aput-object v12, v4, v13

    invoke-virtual {v3, v4}, Lyk/f$b;->B([Loh/g;)Lyk/f$b;

    move-result-object v3

    sput-object v3, LLk/a;->g:Lyk/f$b;

    new-instance v4, LLk/a$a;

    invoke-direct {v4}, LLk/a$a;-><init>()V

    sput-object v4, LLk/a;->h:Lyk/k;

    const-string v12, "contributorId"

    invoke-virtual {v3, v12}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v3

    invoke-static {v4}, Lyk/f;->a(Lyk/k;)Lyk/f$b;

    move-result-object v4

    const-string v12, "Extn"

    invoke-virtual {v4, v12}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v3

    const-string v4, "ContributedExtensionBlock"

    invoke-virtual {v3, v4}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v3

    sput-object v3, LLk/a;->i:Lyk/f$b;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lyk/f;->z([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v3

    const-wide/16 v1, 0x1

    invoke-virtual {v3, v1, v2}, Lyk/f$b;->w(J)Lyk/f$b;

    move-result-object v3

    const-string v4, "ContributedExtensionBlocks"

    invoke-virtual {v3, v4}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v3

    sput-object v3, LLk/a;->j:Lyk/f$b;

    sget-object v4, LMk/a;->i:Lyk/f$b;

    const-string v12, "PreSharedKeyRecipientInfo"

    invoke-virtual {v4, v12}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v12

    sput-object v12, LLk/a;->k:Lyk/f$b;

    sget-object v15, LMk/a;->G:Lyk/f$b;

    const-string v1, "eciesNistP256"

    invoke-virtual {v15, v1}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    const-string v2, "eciesBrainpoolP256r1"

    invoke-virtual {v15, v2}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    new-array v15, v13, [Ljava/lang/Object;

    invoke-static {v15}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v15

    filled-new-array {v1, v2, v15}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lyk/f;->d([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v1

    const-string v2, "EncryptedDataEncryptionKey"

    invoke-virtual {v1, v2}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LLk/a;->l:Lyk/f$b;

    const-string v2, "recipientId"

    invoke-virtual {v4, v2}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v15

    const-string v14, "encKey"

    invoke-virtual {v1, v14}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v1

    const-string v15, "PKRecipientInfo"

    invoke-virtual {v1, v15}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LLk/a;->m:Lyk/f$b;

    const/16 v15, 0xc

    invoke-static {v15}, Lyk/f;->s(I)Lyk/f$b;

    move-result-object v15

    const-string v13, "nonce"

    invoke-virtual {v15, v13}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v13

    const-string v15, "ccmCiphertext"

    invoke-virtual {v0, v15}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v15

    filled-new-array {v13, v15}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v13

    const-string v15, "AesCcmCiphertext"

    invoke-virtual {v13, v15}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v13

    sput-object v13, LLk/a;->n:Lyk/f$b;

    const-string v15, "aes128ccm"

    invoke-virtual {v13, v15}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v13

    move-object/from16 v21, v6

    const/4 v15, 0x0

    new-array v6, v15, [Ljava/lang/Object;

    invoke-static {v6}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v6

    filled-new-array {v13, v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lyk/f;->d([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v6

    const-string v13, "SymmetricCiphertext"

    invoke-virtual {v6, v13}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v6

    sput-object v6, LLk/a;->o:Lyk/f$b;

    invoke-virtual {v4, v2}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    invoke-virtual {v6, v14}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v13

    filled-new-array {v2, v13}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v2

    const-string v13, "SymmRecipientInfo"

    invoke-virtual {v2, v13}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    sput-object v2, LLk/a;->p:Lyk/f$b;

    const-string v13, "pskRecipInfo"

    invoke-virtual {v12, v13}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v12

    const-string v13, "symmRecipInfo"

    invoke-virtual {v2, v13}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    const-string v13, "certRecipInfo"

    invoke-virtual {v1, v13}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v13

    const-string v14, "signedDataRecipInfo"

    invoke-virtual {v1, v14}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v14

    const-string v15, "rekRecipInfo"

    invoke-virtual {v1, v15}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    filled-new-array {v12, v2, v13, v14, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lyk/f;->d([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v1

    const-string v2, "RecipientInfo"

    invoke-virtual {v1, v2}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LLk/a;->q:Lyk/f$b;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lyk/f;->z([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v1

    const-string v2, "SequenceOfRecipientInfo"

    invoke-virtual {v1, v2}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LLk/a;->r:Lyk/f$b;

    const-string v2, "recipients"

    invoke-virtual {v1, v2}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    const-string v2, "ciphertext"

    invoke-virtual {v6, v2}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v1

    const-string v2, "EncryptedData"

    invoke-virtual {v1, v2}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LLk/a;->s:Lyk/f$b;

    const-wide/16 v12, 0x8

    invoke-static {v12, v13}, Lyk/f;->b(J)Lyk/f$b;

    move-result-object v2

    new-instance v6, Loh/r0;

    const/4 v12, 0x1

    new-array v13, v12, [B

    const/4 v12, 0x0

    aput-byte v12, v13, v12

    invoke-direct {v6, v13, v12}, Loh/r0;-><init>([BI)V

    invoke-virtual {v2, v6}, Lyk/f$b;->j(Loh/g;)Lyk/f$b;

    move-result-object v2

    const-string v6, "EndEntityType"

    invoke-virtual {v2, v6}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    sput-object v2, LLk/a;->t:Lyk/f$b;

    sget-object v6, LMk/a;->W:Lyk/f$b;

    const-string v13, "explicit"

    invoke-virtual {v6, v13}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v6

    invoke-static {}, Lyk/f;->q()Lyk/f$b;

    move-result-object v14

    const-string v15, "all"

    invoke-virtual {v14, v15}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v14

    new-array v15, v12, [Ljava/lang/Object;

    invoke-static {v15}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v12

    filled-new-array {v6, v14, v12}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lyk/f;->d([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v6

    const-string v12, "SubjectPermissions"

    invoke-virtual {v6, v12}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v6

    sput-object v6, LLk/a;->u:Lyk/f$b;

    sget-object v12, LMk/a;->L:Lyk/f$b;

    const-string v14, "verificationKey"

    invoke-virtual {v12, v14}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v12

    sget-object v14, LMk/a;->y:Lyk/f$b;

    const-string v15, "reconstructionValue"

    invoke-virtual {v14, v15}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v14

    move-object/from16 v22, v1

    const/4 v15, 0x0

    new-array v1, v15, [Ljava/lang/Object;

    invoke-static {v1}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v1

    filled-new-array {v12, v14, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lyk/f;->d([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v1

    const-string v12, "VerificationKeyIndicator"

    invoke-virtual {v1, v12}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LLk/a;->v:Lyk/f$b;

    const-string v12, "subjectPermissions"

    invoke-virtual {v6, v12}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v6

    const-wide/16 v14, 0x1

    invoke-static {v14, v15}, Lyk/f;->m(J)Lyk/f$b;

    move-result-object v12

    const-string v14, "minChainLength"

    invoke-virtual {v12, v14}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v12

    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Lyk/f;->m(J)Lyk/f$b;

    move-result-object v14

    const-string v15, "chainLengthRange"

    invoke-virtual {v14, v15}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v14

    const-string v15, "eeType"

    invoke-virtual {v2, v15}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    filled-new-array {v6, v12, v14, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v2

    const-string v6, "PsidGroupPermissions"

    invoke-virtual {v2, v6}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    sput-object v2, LLk/a;->w:Lyk/f$b;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lyk/f;->z([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v2

    const-string v6, "SequenceOfPsidGroupPermissions"

    invoke-virtual {v2, v6}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    sput-object v2, LLk/a;->x:Lyk/f$b;

    sget-object v6, LMk/a;->r:Lyk/f$b;

    const-string v12, "iCert"

    invoke-virtual {v6, v12}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v6

    sget-object v12, LMk/a;->t:Lyk/f$b;

    const-string v14, "linkageValue"

    invoke-virtual {v12, v14}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v12

    sget-object v14, LMk/a;->u:Lyk/f$b;

    const-string v15, "groupLinkageValue"

    invoke-virtual {v14, v15}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lyk/f;->v([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    move-object/from16 v17, v0

    const/4 v15, 0x0

    new-array v0, v15, [Ljava/lang/Object;

    invoke-static {v0}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v0

    filled-new-array {v6, v12, v14, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v0

    const-string v6, "LinkageData"

    invoke-virtual {v0, v6}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LLk/a;->y:Lyk/f$b;

    const-string v6, "linkageData"

    invoke-virtual {v0, v6}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sget-object v6, LMk/a;->s:Lyk/f$b;

    const-string v12, "name"

    invoke-virtual {v6, v12}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v6

    const/16 v12, 0x40

    const/4 v14, 0x1

    invoke-static {v14, v12}, Lyk/f;->t(II)Lyk/f$b;

    move-result-object v12

    const-string v14, "binaryId"

    invoke-virtual {v12, v14}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v12

    invoke-static {}, Lyk/f;->q()Lyk/f$b;

    move-result-object v14

    const-string v15, "none"

    invoke-virtual {v14, v15}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v14

    move-object/from16 v18, v3

    const/4 v15, 0x0

    new-array v3, v15, [Ljava/lang/Object;

    invoke-static {v3}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v3

    filled-new-array {v0, v6, v12, v14, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lyk/f;->d([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v0

    const-string v3, "CertificateId"

    invoke-virtual {v0, v3}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LLk/a;->z:Lyk/f$b;

    const-string v3, "id"

    invoke-virtual {v0, v3}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v23

    invoke-virtual {v7, v8}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v24

    invoke-virtual {v10, v11}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v25

    sget-object v0, LMk/a;->q:Lyk/f$b;

    const-string v3, "validityPeriod"

    invoke-virtual {v0, v3}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v26

    sget-object v0, LMk/a;->v0:Lyk/f$b;

    const-string v3, "region"

    invoke-virtual {v0, v3}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v27

    sget-object v0, LMk/a;->X:Lyk/f$b;

    const-string v3, "assuranceLevel"

    invoke-virtual {v0, v3}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v28

    sget-object v0, LMk/a;->Q:Lyk/f$b;

    const-string v3, "appPermissions"

    invoke-virtual {v0, v3}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v29

    const-string v0, "certIssuePermissions"

    invoke-virtual {v2, v0}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v30

    const-string v0, "certRequestPermissions"

    invoke-virtual {v2, v0}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v31

    invoke-static {}, Lyk/f;->q()Lyk/f$b;

    move-result-object v0

    const-string v2, "canRequestRollover"

    invoke-virtual {v0, v2}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v32

    sget-object v0, LMk/a;->J:Lyk/f$b;

    const-string v2, "encryptionKey"

    invoke-virtual {v0, v2}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v33

    filled-new-array/range {v27 .. v33}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lyk/f;->v([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v27

    const-string v0, "verifyKeyIndicator"

    invoke-virtual {v1, v0}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v28

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v1}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v29

    filled-new-array/range {v23 .. v29}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v0

    const-string v1, "ToBeSignedCertificate"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LLk/a;->A:Lyk/f$b;

    const-string v1, "sha256AndDigest"

    invoke-virtual {v4, v1}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sget-object v3, LMk/a;->F:Lyk/f$b;

    const-string v6, "self"

    invoke-virtual {v3, v6}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v8

    const-string v10, "sha384AndDigest"

    invoke-virtual {v4, v10}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v10

    filled-new-array {v1, v8, v10}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lyk/f;->d([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v1

    const-string v8, "IssuerIdentifier"

    invoke-virtual {v1, v8}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LLk/a;->B:Lyk/f$b;

    invoke-static {v13}, Lyk/f;->f(Ljava/lang/String;)Lyk/f$b;

    move-result-object v8

    const-string v10, "implicit"

    invoke-static {v10}, Lyk/f;->f(Ljava/lang/String;)Lyk/f$b;

    move-result-object v10

    const/4 v11, 0x0

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v12}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v11

    filled-new-array {v8, v10, v11}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lyk/f;->h([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v8

    const-string v10, "CertificateType"

    invoke-virtual {v8, v10}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v8

    sput-object v8, LLk/a;->C:Lyk/f$b;

    new-instance v10, Loh/s;

    sget-object v11, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v10, v11}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    sput-object v10, LLk/a;->D:Loh/s;

    new-instance v10, Loh/s;

    sget-object v11, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-direct {v10, v11}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    sput-object v10, LLk/a;->E:Loh/s;

    sget-object v10, LMk/a;->b:Lyk/f$b;

    const-string v11, "version"

    invoke-virtual {v10, v11}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v11

    const-string v12, "type"

    invoke-virtual {v8, v12}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v13

    const-string v14, "issuer"

    invoke-virtual {v1, v14}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    const-string v14, "toBeSigned"

    invoke-virtual {v0, v14}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sget-object v14, LMk/a;->D:Lyk/f$b;

    const-string v15, "signature"

    invoke-virtual {v14, v15}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v19

    filled-new-array/range {v19 .. v19}, [Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v10

    invoke-static/range {v19 .. v19}, Lyk/f;->v([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    filled-new-array {v11, v13, v1, v0, v10}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v0

    invoke-virtual {v0, v15}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    const-string v1, "CertificateBase"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LLk/a;->F:Lyk/f$b;

    invoke-virtual {v0}, Lyk/f$b;->g()Lyk/f$b;

    move-result-object v1

    const-string v10, "Certificate"

    invoke-virtual {v1, v10}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LLk/a;->G:Lyk/f$b;

    const-string v10, "ExplicitCertificate"

    invoke-virtual {v0, v10}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v10

    const/4 v11, 0x1

    new-array v13, v11, [Loh/g;

    sget-object v16, LLk/a;->D:Loh/s;

    const/16 v19, 0x0

    aput-object v16, v13, v19

    invoke-virtual {v8, v13}, Lyk/f$b;->B([Loh/g;)Lyk/f$b;

    move-result-object v13

    invoke-virtual {v13, v12}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Lyk/f$b;->y(ILyk/f$b;)Lyk/f$b;

    move-result-object v10

    sput-object v10, LLk/a;->H:Lyk/f$b;

    const-string v10, "ImplicitCertificate"

    invoke-virtual {v0, v10}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    new-array v10, v11, [Loh/g;

    sget-object v13, LLk/a;->E:Loh/s;

    aput-object v13, v10, v19

    invoke-virtual {v8, v10}, Lyk/f$b;->B([Loh/g;)Lyk/f$b;

    move-result-object v8

    invoke-virtual {v8, v12}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v8

    invoke-virtual {v0, v11, v8}, Lyk/f$b;->y(ILyk/f$b;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LLk/a;->I:Lyk/f$b;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lyk/f;->z([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v0

    const-string v8, "SequenceOfCertificate"

    invoke-virtual {v0, v8}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LLk/a;->J:Lyk/f$b;

    const-string v8, "digest"

    invoke-virtual {v4, v8}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v4

    const-string v8, "certificate"

    invoke-virtual {v0, v8}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    invoke-static {}, Lyk/f;->q()Lyk/f$b;

    move-result-object v8

    invoke-virtual {v8, v6}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v6

    const/4 v8, 0x0

    new-array v10, v8, [Ljava/lang/Object;

    invoke-static {v10}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v8

    filled-new-array {v4, v0, v6, v8}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lyk/f;->d([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v0

    const-string v4, "SignerIdentifier"

    invoke-virtual {v0, v4}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LLk/a;->K:Lyk/f$b;

    sget-object v4, LMk/a;->M:Lyk/f$b;

    const-string v6, "psid"

    invoke-virtual {v4, v6}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v4

    sget-object v6, LMk/a;->o:Lyk/f$b;

    const-string v8, "generationTime"

    invoke-virtual {v6, v8}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v23

    const-string v8, "expiryTime"

    invoke-virtual {v6, v8}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v24

    sget-object v6, LMk/a;->p0:Lyk/f$b;

    const-string v8, "generationLocation"

    invoke-virtual {v6, v8}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v25

    const-string v6, "p2pcdLearningRequest"

    invoke-virtual {v7, v6}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v26

    const-string v6, "missingCrlIdentifier"

    invoke-virtual {v9, v6}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v27

    sget-object v6, LMk/a;->K:Lyk/f$b;

    invoke-virtual {v6, v2}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v28

    filled-new-array/range {v23 .. v28}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lyk/f;->v([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v6, LMk/a;->l:Lyk/f$b;

    const-string v7, "inlineP2pcdRequest"

    invoke-virtual {v6, v7}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v6

    const-string v7, "requestedCertificate"

    invoke-virtual {v1, v7}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    const-string v7, "pduFunctionalType"

    invoke-virtual {v5, v7}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v5

    const-string v7, "contributedExtensions"

    move-object/from16 v8, v18

    invoke-virtual {v8, v7}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v7

    filled-new-array {v6, v1, v5, v7}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lyk/f;->v([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v1

    filled-new-array {v4, v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v1

    const-string v2, "HeaderInfo"

    invoke-virtual {v1, v2}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LLk/a;->L:Lyk/f$b;

    const-string v2, "hashId"

    invoke-virtual {v3, v2}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    new-instance v3, LLk/a$b;

    invoke-direct {v3}, LLk/a$b;-><init>()V

    invoke-static {v3}, Lyk/f;->e(Lyk/d;)Lyk/f$b;

    move-result-object v3

    const-string v4, "tbsData"

    invoke-virtual {v3, v4}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v3

    const-string v4, "signer"

    invoke-virtual {v0, v4}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    invoke-virtual {v14, v15}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v4

    filled-new-array {v2, v3, v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v0

    const-string v2, "SignedData"

    invoke-virtual {v0, v2}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LLk/a;->N:Lyk/f$b;

    const-string v0, "unsecuredData"

    move-object/from16 v2, v17

    invoke-virtual {v2, v0}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    new-instance v3, LLk/a$c;

    invoke-direct {v3}, LLk/a$c;-><init>()V

    invoke-static {v3}, Lyk/f;->e(Lyk/d;)Lyk/f$b;

    move-result-object v3

    const-string v4, "signedData"

    invoke-virtual {v3, v4}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lyk/f$b;->t(Z)Lyk/f$b;

    move-result-object v3

    const-string v4, "encryptedData"

    move-object/from16 v5, v22

    invoke-virtual {v5, v4}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v4

    const-string v5, "signedCertificateRequest"

    invoke-virtual {v2, v5}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v6}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v5

    filled-new-array {v0, v3, v4, v2, v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lyk/f;->d([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v0

    const-string v2, "Ieee1609Dot2Content"

    invoke-virtual {v0, v2}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LLk/a;->O:Lyk/f$b;

    const-string v2, "protocolVersion"

    move-object/from16 v3, v20

    invoke-virtual {v3, v2}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v4

    const-string v5, "content"

    invoke-virtual {v0, v5}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v6

    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v4

    const-string v6, "CounterSignature"

    invoke-virtual {v4, v6}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v4

    sput-object v4, LLk/a;->P:Lyk/f$b;

    new-instance v4, Loh/s;

    const-wide/16 v6, 0x3

    invoke-direct {v4, v6, v7}, Loh/s;-><init>(J)V

    const/4 v6, 0x1

    new-array v6, v6, [Loh/g;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-virtual {v3, v6}, Lyk/f$b;->B([Loh/g;)Lyk/f$b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    invoke-virtual {v0, v5}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v0

    const-string v2, "Ieee1609Dot2Data"

    invoke-virtual {v0, v2}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LLk/a;->Q:Lyk/f$b;

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    const-string v2, "extDataHash"

    move-object/from16 v3, v21

    invoke-virtual {v3, v2}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lyk/f;->v([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v2}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v0

    const-string v2, "SignedDataPayload"

    invoke-virtual {v0, v2}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LLk/a;->R:Lyk/f$b;

    const-string v2, "payload"

    invoke-virtual {v0, v2}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    const-string v2, "headerInfo"

    invoke-virtual {v1, v2}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v0

    const-string v1, "ToBeSignedData"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LLk/a;->M:Lyk/f$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()[Loh/g;
    .locals 1

    sget-object v0, LLk/a;->f:[Loh/g;

    return-object v0
.end method

.method public static synthetic b()Loh/s;
    .locals 1

    sget-object v0, LLk/a;->e:Loh/s;

    return-object v0
.end method
