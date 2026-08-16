.class public final Ljg/O$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljg/O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Ljg/O$a;

.field public static final b:Ljg/O;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Ljg/O;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljg/O$a;

    invoke-direct {v0}, Ljg/O$a;-><init>()V

    sput-object v0, Ljg/O$a;->a:Ljg/O$a;

    new-instance v0, Ljg/Q;

    invoke-direct {v0}, Ljg/Q;-><init>()V

    sput-object v0, Ljg/O$a;->b:Ljg/O;

    new-instance v0, Ljg/S;

    invoke-direct {v0}, Ljg/S;-><init>()V

    sput-object v0, Ljg/O$a;->c:Ljg/O;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Ljg/O$a;JJILjava/lang/Object;)Ljg/O;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    const-wide p3, 0x7fffffffffffffffL

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Ljg/O$a;->a(JJ)Ljg/O;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(JJ)Ljg/O;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljg/T;

    invoke-direct {v0, p1, p2, p3, p4}, Ljg/T;-><init>(JJ)V

    return-object v0
.end method

.method public final c()Ljg/O;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Ljg/O$a;->b:Ljg/O;

    return-object v0
.end method

.method public final d()Ljg/O;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Ljg/O$a;->c:Ljg/O;

    return-object v0
.end method
