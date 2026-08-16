.class public final LF2/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LF2/a;
.end annotation

.annotation build Lv2/b;
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "-_.*"

.field public static final b:Ljava/lang/String; = "-._~!$\'()*,;&=@:"

.field public static final c:Ly2/h;

.field public static final d:Ly2/h;

.field public static final e:Ly2/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LF2/k;

    const-string v1, "-_.*"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LF2/k;-><init>(Ljava/lang/String;Z)V

    sput-object v0, LF2/l;->c:Ly2/h;

    new-instance v0, LF2/k;

    const-string v1, "-._~!$\'()*,;&=@:+"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LF2/k;-><init>(Ljava/lang/String;Z)V

    sput-object v0, LF2/l;->d:Ly2/h;

    new-instance v0, LF2/k;

    const-string v1, "-._~!$\'()*,;&=@:+/?"

    invoke-direct {v0, v1, v2}, LF2/k;-><init>(Ljava/lang/String;Z)V

    sput-object v0, LF2/l;->e:Ly2/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ly2/h;
    .locals 1

    sget-object v0, LF2/l;->c:Ly2/h;

    return-object v0
.end method

.method public static b()Ly2/h;
    .locals 1

    sget-object v0, LF2/l;->e:Ly2/h;

    return-object v0
.end method

.method public static c()Ly2/h;
    .locals 1

    sget-object v0, LF2/l;->d:Ly2/h;

    return-object v0
.end method
