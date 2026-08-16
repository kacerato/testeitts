.class public interface abstract Lzh/e;
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
    .locals 3

    new-instance v0, Loh/x;

    const-string v1, "1.3.6.1.5.5.7"

    invoke-direct {v0, v1}, Loh/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzh/e;->a:Loh/x;

    new-instance v1, Loh/x;

    const-string v2, "1.2.840.113549.1.9.16"

    invoke-direct {v1, v2}, Loh/x;-><init>(Ljava/lang/String;)V

    sput-object v1, Lzh/e;->b:Loh/x;

    const-string v2, "48.4"

    invoke-virtual {v0, v2}, Loh/x;->E(Ljava/lang/String;)Loh/x;

    move-result-object v2

    sput-object v2, Lzh/e;->c:Loh/x;

    const-string v2, "3.10"

    invoke-virtual {v0, v2}, Loh/x;->E(Ljava/lang/String;)Loh/x;

    move-result-object v0

    sput-object v0, Lzh/e;->d:Loh/x;

    const-string v0, "1.7"

    invoke-virtual {v1, v0}, Loh/x;->E(Ljava/lang/String;)Loh/x;

    move-result-object v0

    sput-object v0, Lzh/e;->e:Loh/x;

    const-string v0, "1.8"

    invoke-virtual {v1, v0}, Loh/x;->E(Ljava/lang/String;)Loh/x;

    move-result-object v0

    sput-object v0, Lzh/e;->f:Loh/x;

    const-string v0, "2.29"

    invoke-virtual {v1, v0}, Loh/x;->E(Ljava/lang/String;)Loh/x;

    move-result-object v0

    sput-object v0, Lzh/e;->g:Loh/x;

    return-void
.end method
