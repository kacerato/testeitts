.class public LNk/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyk/f$b;

.field public static final b:Lyk/f$b;

.field public static final c:Lyk/f$b;

.field public static final d:Lyk/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v0, 0x10

    invoke-static {v0}, Lyk/f;->s(I)Lyk/f$b;

    move-result-object v0

    const-string v1, "aes128"

    invoke-virtual {v0, v1}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v2}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lyk/f;->d([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v0

    const-string v2, "ButterflyExpansion"

    invoke-virtual {v0, v2}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LNk/b;->a:Lyk/f$b;

    const-string v2, "signingExpansion"

    invoke-virtual {v0, v2}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    sget-object v3, LMk/a;->J:Lyk/f$b;

    const-string v4, "encryptionKey"

    invoke-virtual {v3, v4}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v5

    const-string v6, "encryptionExpansion"

    invoke-virtual {v0, v6}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v6

    filled-new-array {v2, v5, v6}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v2

    const-string v5, "ButterflyParamsOriginal"

    invoke-virtual {v2, v5}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    sput-object v2, LNk/b;->b:Lyk/f$b;

    const-string v5, "original"

    invoke-virtual {v2, v5}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    const-string v5, "unified"

    invoke-virtual {v0, v5}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v5

    const-string v6, "compactUnified"

    invoke-virtual {v0, v6}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    invoke-virtual {v3, v4}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v4}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v4

    filled-new-array {v2, v5, v0, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lyk/f;->d([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v0

    const-string v2, "AdditionalParams"

    invoke-virtual {v0, v2}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LNk/b;->c:Lyk/f$b;

    sget-object v2, LMk/a;->b:Lyk/f$b;

    const-string v3, "version"

    invoke-virtual {v2, v3}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v2

    new-instance v3, Loh/s;

    const-wide/16 v4, 0x2

    invoke-direct {v3, v4, v5}, Loh/s;-><init>(J)V

    const/4 v4, 0x1

    new-array v4, v4, [Loh/g;

    aput-object v3, v4, v1

    invoke-virtual {v2, v4}, Lyk/f$b;->B([Loh/g;)Lyk/f$b;

    move-result-object v5

    sget-object v2, LMk/a;->n:Lyk/f$b;

    const-string v3, "generationTime"

    invoke-virtual {v2, v3}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v6

    sget-object v2, LLk/a;->C:Lyk/f$b;

    const-string v3, "type"

    invoke-virtual {v2, v3}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v7

    sget-object v2, LLk/a;->A:Lyk/f$b;

    const-string v3, "tbsCert"

    invoke-virtual {v2, v3}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v8

    const-string v2, "additionalParams"

    invoke-virtual {v0, v2}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lyk/f;->v([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v0}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v10

    filled-new-array/range {v5 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v0

    const-string v1, "EeRaCertRequest"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LNk/b;->d:Lyk/f$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
