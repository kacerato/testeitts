.class public interface abstract Lqj/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Loh/x;

.field public static final b:Loh/x;

.field public static final c:Loh/x;

.field public static final d:Loh/x;

.field public static final e:Loh/x;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Loh/x;

    const-string v1, "1.3.101"

    invoke-direct {v0, v1}, Loh/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Lqj/a;->a:Loh/x;

    const-string v1, "110"

    invoke-virtual {v0, v1}, Loh/x;->E(Ljava/lang/String;)Loh/x;

    move-result-object v1

    invoke-virtual {v1}, Loh/x;->M()Loh/x;

    move-result-object v1

    sput-object v1, Lqj/a;->b:Loh/x;

    const-string v1, "111"

    invoke-virtual {v0, v1}, Loh/x;->E(Ljava/lang/String;)Loh/x;

    move-result-object v1

    invoke-virtual {v1}, Loh/x;->M()Loh/x;

    move-result-object v1

    sput-object v1, Lqj/a;->c:Loh/x;

    const-string v1, "112"

    invoke-virtual {v0, v1}, Loh/x;->E(Ljava/lang/String;)Loh/x;

    move-result-object v1

    invoke-virtual {v1}, Loh/x;->M()Loh/x;

    move-result-object v1

    sput-object v1, Lqj/a;->d:Loh/x;

    const-string v1, "113"

    invoke-virtual {v0, v1}, Loh/x;->E(Ljava/lang/String;)Loh/x;

    move-result-object v0

    invoke-virtual {v0}, Loh/x;->M()Loh/x;

    move-result-object v0

    sput-object v0, Lqj/a;->e:Loh/x;

    return-void
.end method
