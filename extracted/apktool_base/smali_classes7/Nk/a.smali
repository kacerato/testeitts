.class public LNk/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyk/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    sget-object v0, LMk/a;->b:Lyk/f$b;

    const-string v1, "version"

    invoke-virtual {v0, v1}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    new-instance v1, Loh/s;

    const-wide/16 v2, 0x2

    invoke-direct {v1, v2, v3}, Loh/s;-><init>(J)V

    const/4 v2, 0x1

    new-array v2, v2, [Loh/g;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lyk/f$b;->B([Loh/g;)Lyk/f$b;

    move-result-object v4

    sget-object v0, LMk/a;->n:Lyk/f$b;

    const-string v1, "generationTime"

    invoke-virtual {v0, v1}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v5

    sget-object v0, LLk/a;->C:Lyk/f$b;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v6

    sget-object v0, LLk/a;->A:Lyk/f$b;

    const-string v1, "tbsCert"

    invoke-virtual {v0, v1}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v7

    invoke-static {}, Lyk/f;->k()Lyk/f$b;

    move-result-object v0

    const-string v1, "canonicalId"

    invoke-virtual {v0, v1}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lyk/f;->v([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lyk/f;->j([Ljava/lang/Object;)Lyk/f$c;

    move-result-object v9

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lyk/f;->y([Ljava/lang/Object;)Lyk/f$b;

    move-result-object v0

    const-string v1, "EeEcaCertRequest"

    invoke-virtual {v0, v1}, Lyk/f$b;->z(Ljava/lang/String;)Lyk/f$b;

    move-result-object v0

    sput-object v0, LNk/a;->a:Lyk/f$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
