.class public Lv3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv3/c$b;,
        Lv3/c$a;
    }
.end annotation


# static fields
.field public static final a:I = 0xc

.field public static final b:I = 0x2

.field public static final c:I = 0xe

.field public static final d:F = 35.0f

.field public static e:Lv3/c$b;

.field public static f:LP4/b;

.field public static g:Lv3/n;

.field public static h:Lv3/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lv3/c$b;->Disable:Lv3/c$b;

    sput-object v0, Lv3/c;->e:Lv3/c$b;

    const/4 v0, 0x0

    sput-object v0, Lv3/c;->f:LP4/b;

    sget-object v0, Lv3/c$a;->Local:Lv3/c$a;

    sput-object v0, Lv3/c;->h:Lv3/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lv3/c$b;
    .locals 1

    sget-object v0, Lv3/c;->e:Lv3/c$b;

    return-object v0
.end method

.method public static b()LP4/b;
    .locals 1

    sget-object v0, Lv3/c;->f:LP4/b;

    return-object v0
.end method

.method public static c()Lv3/c$a;
    .locals 1

    sget-object v0, Lv3/c;->h:Lv3/c$a;

    return-object v0
.end method

.method public static d(Lv3/c$b;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "axis",
            "callTopbarListener",
            "callCustomAxisListener"
        }
    .end annotation

    sget-object v0, Lv3/c;->e:Lv3/c$b;

    if-eq v0, p0, :cond_3

    sput-object p0, Lv3/c;->e:Lv3/c$b;

    sget-object v0, Lv3/c$b;->Custom:Lv3/c$b;

    if-eq p0, v0, :cond_2

    sget-object p0, Lv3/c;->f:LP4/b;

    if-eqz p0, :cond_2

    iget-object p0, p0, LP4/b;->a:LP4/a;

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p0}, LP4/a;->b()V

    :cond_0
    sget-object p0, Lv3/c;->f:LP4/b;

    invoke-virtual {p0}, LP4/b;->g()V

    sget-object p0, Lv3/c;->f:LP4/b;

    iget-object p0, p0, LP4/b;->a:LP4/a;

    if-eqz p0, :cond_1

    invoke-interface {p0}, LP4/a;->a()V

    :cond_1
    const/4 p0, 0x0

    sput-object p0, Lv3/c;->f:LP4/b;

    :cond_2
    sget-object p0, Lv3/c;->g:Lv3/n;

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {p0}, Lv3/n;->b()V

    :cond_3
    return-void
.end method

.method public static e(LP4/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customAxis"
        }
    .end annotation

    sget-object v0, Lv3/c;->f:LP4/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LP4/b;->g()V

    sget-object v0, Lv3/c;->f:LP4/b;

    iget-object v0, v0, LP4/b;->a:LP4/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LP4/a;->a()V

    :cond_0
    sput-object p0, Lv3/c;->f:LP4/b;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    sget-object p0, Lv3/c$b;->Custom:Lv3/c$b;

    invoke-static {p0, v0, v0}, Lv3/c;->d(Lv3/c$b;ZZ)V

    goto :goto_0

    :cond_1
    sget-object p0, Lv3/c$b;->Disable:Lv3/c$b;

    invoke-static {p0, v0, v0}, Lv3/c;->d(Lv3/c$b;ZZ)V

    :goto_0
    return-void
.end method
