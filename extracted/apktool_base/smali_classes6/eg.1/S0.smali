.class public final Leg/S0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lmg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lmg/T;
    .annotation build LLf/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Lmg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Lmg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:I = -0x1

.field public static final f:I = 0x0

.field public static final g:I = 0x1

.field public static final h:Lmg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final i:Leg/p0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final j:Leg/p0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmg/T;

    const-string v1, "COMPLETING_ALREADY"

    invoke-direct {v0, v1}, Lmg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Leg/S0;->a:Lmg/T;

    new-instance v0, Lmg/T;

    const-string v1, "COMPLETING_WAITING_CHILDREN"

    invoke-direct {v0, v1}, Lmg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Leg/S0;->b:Lmg/T;

    new-instance v0, Lmg/T;

    const-string v1, "COMPLETING_RETRY"

    invoke-direct {v0, v1}, Lmg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Leg/S0;->c:Lmg/T;

    new-instance v0, Lmg/T;

    const-string v1, "TOO_LATE_TO_CANCEL"

    invoke-direct {v0, v1}, Lmg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Leg/S0;->d:Lmg/T;

    new-instance v0, Lmg/T;

    const-string v1, "SEALED"

    invoke-direct {v0, v1}, Lmg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Leg/S0;->h:Lmg/T;

    new-instance v0, Leg/p0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Leg/p0;-><init>(Z)V

    sput-object v0, Leg/S0;->i:Leg/p0;

    new-instance v0, Leg/p0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Leg/p0;-><init>(Z)V

    sput-object v0, Leg/S0;->j:Leg/p0;

    return-void
.end method

.method public static final synthetic a()Lmg/T;
    .locals 1

    sget-object v0, Leg/S0;->a:Lmg/T;

    return-object v0
.end method

.method public static final synthetic b()Lmg/T;
    .locals 1

    sget-object v0, Leg/S0;->c:Lmg/T;

    return-object v0
.end method

.method public static final synthetic c()Leg/p0;
    .locals 1

    sget-object v0, Leg/S0;->j:Leg/p0;

    return-object v0
.end method

.method public static final synthetic d()Leg/p0;
    .locals 1

    sget-object v0, Leg/S0;->i:Leg/p0;

    return-object v0
.end method

.method public static final synthetic e()Lmg/T;
    .locals 1

    sget-object v0, Leg/S0;->h:Lmg/T;

    return-object v0
.end method

.method public static final synthetic f()Lmg/T;
    .locals 1

    sget-object v0, Leg/S0;->d:Lmg/T;

    return-object v0
.end method

.method public static final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p0, Leg/D0;

    if-eqz v0, :cond_0

    new-instance v0, Leg/E0;

    check-cast p0, Leg/D0;

    invoke-direct {v0, p0}, Leg/E0;-><init>(Leg/D0;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public static final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p0, Leg/E0;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Leg/E0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, v0, Leg/E0;->a:Leg/D0;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :cond_2
    :goto_1
    return-object p0
.end method
