.class public LHk/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyk/f$b;

.field public static final b:Lyk/f$b;

.field public static final c:Lyk/f$b;

.field public static final d:Lyk/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    const-string v0, "ok"

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-static {v0, v1}, Lyk/f;->g(Ljava/lang/String;Ljava/math/BigInteger;)Lyk/f$b;

    move-result-object v2

    const-string v27, "deniedpermissions"

    const-string v28, "deniedtoomanycerts"

    const-string v3, "its-aa-cantparse"

    const-string v4, "its-aa-badcontenttype"

    const-string v5, "its-aa-imnottherecipient"

    const-string v6, "its-aa-unknownencryptionalgorithm"

    const-string v7, "its-aa-decryptionfailed"

    const-string v8, "its-aa-keysdontmatch"

    const-string v9, "its-aa-incompleterequest"

    const-string v10, "its-aa-invalidencryptionkey"

    const-string v11, "its-aa-outofsyncrequest"

    const-string v12, "its-aa-unknownea"

    const-string v13, "its-aa-invalidea"

    const-string v14, "its-aa-deniedpermissions"

    const-string v15, "aa-ea-cantreachea"

    const-string v16, "ea-aa-cantparse"

    const-string v17, "ea-aa-badcontenttype"

    const-string v18, "ea-aa-imnottherecipient"

    const-string v19, "ea-aa-unknownencryptionalgorithm"

    const-string v20, "ea-aa-decryptionfailed"

    const-string v21, "invalidaa"

    const-string v22, "invalidaasignature"

    const-string v23, "wrongea"

    const-string v24, "unknownits"

    const-string v25, "invalidsignature"

    const-string v26, "invalidencryptionkey"

    filled-new-array/range {v2 .. v28}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lyk/f;->h([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v0

    const-string v1, "AuthorizationResponseCode"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LHk/c;->a:Lyk/f$b;

    const/16 v1, 0x10

    invoke-static {v1}, Lyk/f;->s(I)Lyk/f$b;

    move-result-object v2

    const-string v3, "requestHash"

    invoke-virtual {v2, v3}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    const-string v3, "responseCode"

    invoke-virtual {v0, v3}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sget-object v3, LJk/a;->a:Lyk/f$b;

    const-string v4, "certificate"

    invoke-virtual {v3, v4}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lyk/f;->v([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v5}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v5

    filled-new-array {v2, v0, v3, v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v0

    const-string v2, "InnerAtResponse"

    invoke-virtual {v0, v2}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LHk/c;->b:Lyk/f$b;

    sget-object v0, LMk/a;->i:Lyk/f$b;

    const-string v2, "eaId"

    invoke-virtual {v0, v2}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    invoke-static {v1}, Lyk/f;->s(I)Lyk/f$b;

    move-result-object v1

    const-string v2, "keyTag"

    invoke-virtual {v1, v2}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sget-object v2, LIk/a;->a:Lyk/f$b;

    const-string v3, "certificateFormat"

    invoke-virtual {v2, v3}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    sget-object v3, LIk/a;->b:Lyk/f$b;

    const-string v5, "requestedSubjectAttributes"

    invoke-virtual {v3, v5}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v4}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v0

    const-string v1, "SharedAtRequest"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LHk/c;->c:Lyk/f$b;

    sget-object v1, LIk/a;->d:Lyk/f$b;

    const-string v2, "publicKeys"

    invoke-virtual {v1, v2}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v2}, Lyk/f;->s(I)Lyk/f$b;

    move-result-object v2

    const-string v3, "hmacKey"

    invoke-virtual {v2, v3}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    const-string v3, "sharedAtRequest"

    invoke-virtual {v0, v3}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sget-object v3, LIk/a;->c:Lyk/f$b;

    const-string v4, "ecSignature"

    invoke-virtual {v3, v4}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v3

    filled-new-array {v1, v2, v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v0

    const-string v1, "InnerAtRequest"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LHk/c;->d:Lyk/f$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
