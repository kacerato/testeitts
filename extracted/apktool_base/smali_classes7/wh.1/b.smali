.class public interface abstract Lwh/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Loh/x;

.field public static final b:Loh/x;

.field public static final c:Loh/x;

.field public static final d:Loh/x;

.field public static final e:Loh/x;

.field public static final f:Loh/x;

.field public static final g:Loh/x;

.field public static final h:Loh/x;

.field public static final i:Loh/x;

.field public static final j:Loh/x;

.field public static final k:Loh/x;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Loh/x;

    const-string v1, "1.3.6.1.5.5.7"

    invoke-direct {v0, v1}, Loh/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Lwh/b;->a:Loh/x;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Loh/x;->E(Ljava/lang/String;)Loh/x;

    move-result-object v1

    sput-object v1, Lwh/b;->b:Loh/x;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Loh/x;->E(Ljava/lang/String;)Loh/x;

    move-result-object v1

    sput-object v1, Lwh/b;->c:Loh/x;

    invoke-virtual {v1, v2}, Loh/x;->E(Ljava/lang/String;)Loh/x;

    move-result-object v2

    sput-object v2, Lwh/b;->d:Loh/x;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Loh/x;->E(Ljava/lang/String;)Loh/x;

    move-result-object v2

    sput-object v2, Lwh/b;->e:Loh/x;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Loh/x;->E(Ljava/lang/String;)Loh/x;

    move-result-object v3

    sput-object v3, Lwh/b;->f:Loh/x;

    const-string v3, "4"

    invoke-virtual {v1, v3}, Loh/x;->E(Ljava/lang/String;)Loh/x;

    move-result-object v1

    sput-object v1, Lwh/b;->g:Loh/x;

    sget-object v1, LXh/t;->x2:Loh/x;

    const-string v4, "21"

    invoke-virtual {v1, v4}, Loh/x;->E(Ljava/lang/String;)Loh/x;

    move-result-object v1

    sput-object v1, Lwh/b;->h:Loh/x;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Loh/x;->E(Ljava/lang/String;)Loh/x;

    move-result-object v0

    sput-object v0, Lwh/b;->i:Loh/x;

    invoke-virtual {v0, v2}, Loh/x;->E(Ljava/lang/String;)Loh/x;

    move-result-object v1

    sput-object v1, Lwh/b;->j:Loh/x;

    invoke-virtual {v0, v3}, Loh/x;->E(Ljava/lang/String;)Loh/x;

    move-result-object v0

    sput-object v0, Lwh/b;->k:Loh/x;

    return-void
.end method
