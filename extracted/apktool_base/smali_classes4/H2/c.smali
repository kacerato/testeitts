.class public LH2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LH2/a;
.end annotation

.annotation build Lv2/b;
.end annotation


# static fields
.field public static final a:C = '\u0000'

.field public static final b:C = '\u001f'

.field public static final c:Ly2/h;

.field public static final d:Ly2/h;

.field public static final e:Ly2/h;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    invoke-static {}, Ly2/i;->b()Ly2/i$c;

    move-result-object v0

    const v1, 0xfffd

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ly2/i$c;->d(CC)Ly2/i$c;

    const-string v1, "\ufffd"

    invoke-virtual {v0, v1}, Ly2/i$c;->e(Ljava/lang/String;)Ly2/i$c;

    :goto_0
    const/16 v3, 0x1f

    const/16 v4, 0xd

    const/16 v5, 0xa

    const/16 v6, 0x9

    if-gt v2, v3, :cond_1

    if-eq v2, v6, :cond_0

    if-eq v2, v5, :cond_0

    if-eq v2, v4, :cond_0

    invoke-virtual {v0, v2, v1}, Ly2/i$c;->b(CLjava/lang/String;)Ly2/i$c;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    goto :goto_0

    :cond_1
    const/16 v1, 0x26

    const-string v2, "&amp;"

    invoke-virtual {v0, v1, v2}, Ly2/i$c;->b(CLjava/lang/String;)Ly2/i$c;

    const/16 v1, 0x3c

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ly2/i$c;->b(CLjava/lang/String;)Ly2/i$c;

    const/16 v1, 0x3e

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ly2/i$c;->b(CLjava/lang/String;)Ly2/i$c;

    invoke-virtual {v0}, Ly2/i$c;->c()Ly2/h;

    move-result-object v1

    sput-object v1, LH2/c;->d:Ly2/h;

    const/16 v1, 0x27

    const-string v2, "&apos;"

    invoke-virtual {v0, v1, v2}, Ly2/i$c;->b(CLjava/lang/String;)Ly2/i$c;

    const/16 v1, 0x22

    const-string v2, "&quot;"

    invoke-virtual {v0, v1, v2}, Ly2/i$c;->b(CLjava/lang/String;)Ly2/i$c;

    invoke-virtual {v0}, Ly2/i$c;->c()Ly2/h;

    move-result-object v1

    sput-object v1, LH2/c;->c:Ly2/h;

    const-string v1, "&#x9;"

    invoke-virtual {v0, v6, v1}, Ly2/i$c;->b(CLjava/lang/String;)Ly2/i$c;

    const-string v1, "&#xA;"

    invoke-virtual {v0, v5, v1}, Ly2/i$c;->b(CLjava/lang/String;)Ly2/i$c;

    const-string v1, "&#xD;"

    invoke-virtual {v0, v4, v1}, Ly2/i$c;->b(CLjava/lang/String;)Ly2/i$c;

    invoke-virtual {v0}, Ly2/i$c;->c()Ly2/h;

    move-result-object v0

    sput-object v0, LH2/c;->e:Ly2/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ly2/h;
    .locals 1

    sget-object v0, LH2/c;->e:Ly2/h;

    return-object v0
.end method

.method public static b()Ly2/h;
    .locals 1

    sget-object v0, LH2/c;->d:Ly2/h;

    return-object v0
.end method
