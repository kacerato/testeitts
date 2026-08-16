.class public Lxh/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Loh/x;

.field public static final b:Loh/x;

.field public static final c:Loh/x;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Loh/x;

    const-string v1, "1.3.6.1.4.1.3029"

    invoke-direct {v0, v1}, Loh/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Lxh/a;->a:Loh/x;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Loh/x;->E(Ljava/lang/String;)Loh/x;

    move-result-object v0

    const-string v2, "5"

    invoke-virtual {v0, v2}, Loh/x;->E(Ljava/lang/String;)Loh/x;

    move-result-object v0

    sput-object v0, Lxh/a;->b:Loh/x;

    invoke-virtual {v0, v1}, Loh/x;->E(Ljava/lang/String;)Loh/x;

    move-result-object v0

    sput-object v0, Lxh/a;->c:Loh/x;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
