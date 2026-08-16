.class public final Leg/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Leg/j0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Leg/M;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Leg/M;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Leg/M;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leg/j0;

    invoke-direct {v0}, Leg/j0;-><init>()V

    sput-object v0, Leg/j0;->a:Leg/j0;

    sget-object v0, Log/d;->h:Log/d;

    sput-object v0, Leg/j0;->b:Leg/M;

    sget-object v0, Leg/v1;->b:Leg/v1;

    sput-object v0, Leg/j0;->c:Leg/M;

    sget-object v0, Log/c;->c:Log/c;

    sput-object v0, Leg/j0;->d:Leg/M;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Leg/M;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Leg/j0;->b:Leg/M;

    return-object v0
.end method

.method public static synthetic b()V
    .locals 0
    .annotation runtime LLf/o;
    .end annotation

    return-void
.end method

.method public static final c()Leg/M;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Leg/j0;->d:Leg/M;

    return-object v0
.end method

.method public static synthetic d()V
    .locals 0
    .annotation runtime LLf/o;
    .end annotation

    return-void
.end method

.method public static final e()Leg/V0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lmg/D;->c:Leg/V0;

    return-object v0
.end method

.method public static synthetic f()V
    .locals 0
    .annotation runtime LLf/o;
    .end annotation

    return-void
.end method

.method public static final g()Leg/M;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Leg/j0;->c:Leg/M;

    return-object v0
.end method

.method public static synthetic h()V
    .locals 0
    .annotation runtime LLf/o;
    .end annotation

    return-void
.end method


# virtual methods
.method public final i()V
    .locals 1
    .annotation build Leg/e0;
    .end annotation

    sget-object v0, Leg/X;->h:Leg/X;

    invoke-virtual {v0}, Leg/X;->shutdown()V

    sget-object v0, Log/d;->h:Log/d;

    invoke-virtual {v0}, Log/d;->B()V

    return-void
.end method
