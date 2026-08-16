.class public Lhi/Y;
.super Loh/x;
.source "SourceFile"


# static fields
.field public static final i:Ljava/lang/String; = "1.3.6.1.5.5.7.2"

.field public static final j:Lhi/Y;

.field public static final k:Lhi/Y;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lhi/Y;

    const-string v1, "1.3.6.1.5.5.7.2.1"

    invoke-direct {v0, v1}, Lhi/Y;-><init>(Ljava/lang/String;)V

    sput-object v0, Lhi/Y;->j:Lhi/Y;

    new-instance v0, Lhi/Y;

    const-string v1, "1.3.6.1.5.5.7.2.2"

    invoke-direct {v0, v1}, Lhi/Y;-><init>(Ljava/lang/String;)V

    sput-object v0, Lhi/Y;->k:Lhi/Y;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Loh/x;-><init>(Ljava/lang/String;)V

    return-void
.end method
