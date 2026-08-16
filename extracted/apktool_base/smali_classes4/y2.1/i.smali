.class public final Ly2/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly2/i$c;
    }
.end annotation

.annotation build Lv2/b;
.end annotation

.annotation runtime Ly2/f;
.end annotation


# static fields
.field public static final a:Ly2/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly2/i$a;

    invoke-direct {v0}, Ly2/i$a;-><init>()V

    sput-object v0, Ly2/i;->a:Ly2/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ly2/h;)Ly2/l;
    .locals 3

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p0, Ly2/l;

    if-eqz v0, :cond_0

    check-cast p0, Ly2/l;

    return-object p0

    :cond_0
    instance-of v0, p0, Ly2/d;

    if-eqz v0, :cond_1

    check-cast p0, Ly2/d;

    invoke-static {p0}, Ly2/i;->g(Ly2/d;)Ly2/l;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Cannot create a UnicodeEscaper from: "

    if-eqz v1, :cond_2

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b()Ly2/i$c;
    .locals 2

    new-instance v0, Ly2/i$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly2/i$c;-><init>(Ly2/i$a;)V

    return-object v0
.end method

.method public static c(Ly2/d;C)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0, p1}, Ly2/d;->c(C)[C

    move-result-object p0

    invoke-static {p0}, Ly2/i;->f([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ly2/l;I)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0, p1}, Ly2/l;->d(I)[C

    move-result-object p0

    invoke-static {p0}, Ly2/i;->f([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e()Ly2/h;
    .locals 1

    sget-object v0, Ly2/i;->a:Ly2/h;

    return-object v0
.end method

.method public static f([C)Ljava/lang/String;
    .locals 1
    .param p0    # [C
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static g(Ly2/d;)Ly2/l;
    .locals 1

    new-instance v0, Ly2/i$b;

    invoke-direct {v0, p0}, Ly2/i$b;-><init>(Ly2/d;)V

    return-object v0
.end method
