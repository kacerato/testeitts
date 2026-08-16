.class public LB0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LC0/a;
.end annotation

.annotation build LG0/F;
.end annotation


# static fields
.field public static final a:LB0/A;

.field public static final b:LB0/A;

.field public static final c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LB0/b0;

    invoke-direct {v0}, LB0/b0;-><init>()V

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, LB0/b0;->d(Ljava/lang/String;)LB0/b0;

    const-wide/32 v1, 0xc2bd840

    invoke-virtual {v0, v1, v2}, LB0/b0;->a(J)LB0/b0;

    sget-object v1, LB0/P;->d:LB0/N;

    invoke-virtual {v1}, LB0/N;->l0()[B

    move-result-object v2

    sget-object v3, LB0/P;->b:LB0/N;

    invoke-virtual {v3}, LB0/N;->l0()[B

    move-result-object v3

    invoke-static {v2, v3}, Lh1/k;->p(Ljava/lang/Object;Ljava/lang/Object;)Lh1/k;

    move-result-object v2

    invoke-virtual {v0, v2}, LB0/b0;->c(Ljava/util/List;)LB0/b0;

    sget-object v2, LB0/P;->c:LB0/N;

    invoke-virtual {v2}, LB0/N;->l0()[B

    move-result-object v3

    sget-object v4, LB0/P;->a:LB0/N;

    invoke-virtual {v4}, LB0/N;->l0()[B

    move-result-object v4

    invoke-static {v3, v4}, Lh1/k;->p(Ljava/lang/Object;Ljava/lang/Object;)Lh1/k;

    move-result-object v3

    invoke-virtual {v0, v3}, LB0/b0;->b(Ljava/util/List;)LB0/b0;

    invoke-virtual {v0}, LB0/b0;->e()LB0/A;

    move-result-object v0

    sput-object v0, LB0/g;->a:LB0/A;

    new-instance v0, LB0/b0;

    invoke-direct {v0}, LB0/b0;-><init>()V

    const-string v3, "com.android.vending"

    invoke-virtual {v0, v3}, LB0/b0;->d(Ljava/lang/String;)LB0/b0;

    const-wide/32 v3, 0x4e6e200

    invoke-virtual {v0, v3, v4}, LB0/b0;->a(J)LB0/b0;

    invoke-virtual {v1}, LB0/N;->l0()[B

    move-result-object v1

    invoke-static {v1}, Lh1/k;->o(Ljava/lang/Object;)Lh1/k;

    move-result-object v1

    invoke-virtual {v0, v1}, LB0/b0;->c(Ljava/util/List;)LB0/b0;

    invoke-virtual {v2}, LB0/N;->l0()[B

    move-result-object v1

    invoke-static {v1}, Lh1/k;->o(Ljava/lang/Object;)Lh1/k;

    move-result-object v1

    invoke-virtual {v0, v1}, LB0/b0;->b(Ljava/util/List;)LB0/b0;

    invoke-virtual {v0}, LB0/b0;->e()LB0/A;

    move-result-object v0

    sput-object v0, LB0/g;->b:LB0/A;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LB0/g;->c:Ljava/util/HashMap;

    return-void
.end method
