.class public LHk/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyk/f$b;

.field public static final b:Lyk/f$b;

.field public static final c:Lyk/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v0, "ok"

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-static {v0, v1}, Lyk/f;->g(Ljava/lang/String;Ljava/math/BigInteger;)Lyk/f$b;

    move-result-object v2

    const-string v15, "deniedtoomanycerts"

    const-string v16, "deniedrequest"

    const-string v3, "cantparse"

    const-string v4, "badcontenttype"

    const-string v5, "imnottherecipient"

    const-string v6, "unknownencryptionalgorithm"

    const-string v7, "decryptionfailed"

    const-string v8, "invalidaa"

    const-string v9, "invalidaasignature"

    const-string v10, "wrongea"

    const-string v11, "unknownits"

    const-string v12, "invalidsignature"

    const-string v13, "invalidencryptionkey"

    const-string v14, "deniedpermissions"

    filled-new-array/range {v2 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lyk/f;->h([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v0

    const-string v1, "AuthorizationValidationResponseCode"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LHk/d;->a:Lyk/f$b;

    sget-object v1, LHk/c;->c:Lyk/f$b;

    const-string v2, "sharedAtRequest"

    invoke-virtual {v1, v2}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sget-object v2, LIk/a;->c:Lyk/f$b;

    const-string v3, "ecSignature"

    invoke-virtual {v2, v3}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v4}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v4

    filled-new-array {v1, v2, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v1

    const-string v2, "AuthorizationValidationRequest"

    invoke-virtual {v1, v2}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LHk/d;->b:Lyk/f$b;

    const/16 v1, 0x10

    invoke-static {v1}, Lyk/f;->s(I)Lyk/f$b;

    move-result-object v1

    const-string v2, "requestHash"

    invoke-virtual {v1, v2}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    const-string v2, "responseCode"

    invoke-virtual {v0, v2}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sget-object v2, LIk/a;->b:Lyk/f$b;

    const-string v4, "confirmedSubjectAttributes"

    invoke-virtual {v2, v4}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lyk/f;->v([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v3}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v3

    filled-new-array {v1, v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v0

    const-string v1, "AuthorizationValidationResponse"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LHk/d;->c:Lyk/f$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
