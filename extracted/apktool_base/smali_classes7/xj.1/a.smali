.class public interface abstract Lxj/a;
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Loh/x;

    const-string v1, "1.3.6.1.4.1.311"

    invoke-direct {v0, v1}, Loh/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Lxj/a;->a:Loh/x;

    const-string v1, "20.2"

    invoke-virtual {v0, v1}, Loh/x;->E(Ljava/lang/String;)Loh/x;

    move-result-object v1

    sput-object v1, Lxj/a;->b:Loh/x;

    const-string v1, "21.1"

    invoke-virtual {v0, v1}, Loh/x;->E(Ljava/lang/String;)Loh/x;

    move-result-object v1

    sput-object v1, Lxj/a;->c:Loh/x;

    const-string v1, "21.2"

    invoke-virtual {v0, v1}, Loh/x;->E(Ljava/lang/String;)Loh/x;

    move-result-object v1

    sput-object v1, Lxj/a;->d:Loh/x;

    const-string v1, "21.4"

    invoke-virtual {v0, v1}, Loh/x;->E(Ljava/lang/String;)Loh/x;

    move-result-object v1

    sput-object v1, Lxj/a;->e:Loh/x;

    const-string v1, "21.7"

    invoke-virtual {v0, v1}, Loh/x;->E(Ljava/lang/String;)Loh/x;

    move-result-object v1

    sput-object v1, Lxj/a;->f:Loh/x;

    const-string v1, "21.10"

    invoke-virtual {v0, v1}, Loh/x;->E(Ljava/lang/String;)Loh/x;

    move-result-object v0

    sput-object v0, Lxj/a;->g:Loh/x;

    return-void
.end method
