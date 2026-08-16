.class public final Leg/Y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z

.field public static final b:Leg/b0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "kotlinx.coroutines.main.delay"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmg/W;->f(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Leg/Y;->a:Z

    invoke-static {}, Leg/Y;->c()Leg/b0;

    move-result-object v0

    sput-object v0, Leg/Y;->b:Leg/b0;

    return-void
.end method

.method public static final a()Leg/b0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Leg/Y;->b:Leg/b0;

    return-object v0
.end method

.method public static synthetic b()V
    .locals 0
    .annotation build Lnf/f0;
    .end annotation

    return-void
.end method

.method public static final c()Leg/b0;
    .locals 2

    sget-boolean v0, Leg/Y;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Leg/X;->h:Leg/X;

    return-object v0

    :cond_0
    invoke-static {}, Leg/j0;->e()Leg/V0;

    move-result-object v0

    invoke-static {v0}, Lmg/E;->d(Leg/V0;)Z

    move-result v1

    if-nez v1, :cond_2

    instance-of v1, v0, Leg/b0;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast v0, Leg/b0;

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Leg/X;->h:Leg/X;

    :goto_1
    return-object v0
.end method
