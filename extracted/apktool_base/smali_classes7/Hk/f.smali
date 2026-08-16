.class public LHk/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyk/f$b;

.field public static final b:Lyk/f$b;

.field public static final c:Lyk/f$b;

.field public static final d:Lyk/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v0, "ok"

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-static {v0, v1}, Lyk/f;->g(Ljava/lang/String;Ljava/math/BigInteger;)Lyk/f$b;

    move-result-object v2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v1}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v16

    const-string v3, "cantparse"

    const-string v4, "badcontenttype"

    const-string v5, "imnottherecipient"

    const-string v6, "unknownencryptionalgorithm"

    const-string v7, "decryptionfailed"

    const-string v8, "unknownits"

    const-string v9, "invalidsignature"

    const-string v10, "invalidencryptionkey"

    const-string v11, "baditsstatus"

    const-string v12, "incompleterequest"

    const-string v13, "deniedpermissions"

    const-string v14, "invalidkeys"

    const-string v15, "deniedrequest"

    filled-new-array/range {v2 .. v16}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lyk/f;->h([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v1

    const-string v2, "EnrolmentResponseCode"

    invoke-virtual {v1, v2}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LHk/f;->a:Lyk/f$b;

    const/16 v2, 0x10

    invoke-static {v2}, Lyk/f;->s(I)Lyk/f$b;

    move-result-object v2

    const-string v3, "requestHash"

    invoke-virtual {v2, v3}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    const-string v3, "responseCode"

    invoke-virtual {v1, v3}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sget-object v3, LJk/a;->a:Lyk/f$b;

    const-string v4, "certificate"

    invoke-virtual {v3, v4}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lyk/f;->v([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v4}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v4

    filled-new-array {v2, v1, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v1

    const-string v2, "InnerEcResponse"

    invoke-virtual {v1, v2}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sput-object v1, LHk/f;->b:Lyk/f$b;

    invoke-static {}, Lyk/f;->r()Lyk/f$b;

    move-result-object v1

    const-string v2, "itsId"

    invoke-virtual {v1, v2}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v1

    sget-object v2, LIk/a;->a:Lyk/f$b;

    const-string v3, "certificateFormat"

    invoke-virtual {v2, v3}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    sget-object v3, LIk/a;->d:Lyk/f$b;

    const-string v4, "publicKeys"

    invoke-virtual {v3, v4}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v3

    sget-object v4, LIk/a;->b:Lyk/f$b;

    const-string v5, "requestedSubjectAttributes"

    invoke-virtual {v4, v5}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v0

    filled-new-array {v1, v2, v3, v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v0

    const-string v1, "InnerEcRequest"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LHk/f;->c:Lyk/f$b;

    sget-object v0, LJk/a;->d:Lyk/f$b;

    const-string v1, "InnerEcRequestSignedForPop"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LHk/f;->d:Lyk/f$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
