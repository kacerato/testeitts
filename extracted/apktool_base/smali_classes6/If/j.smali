.class public final LIf/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LIf/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:[Ljava/nio/file/LinkOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:[Ljava/nio/file/LinkOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/file/FileVisitOption;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/file/FileVisitOption;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LIf/j;

    invoke-direct {v0}, LIf/j;-><init>()V

    sput-object v0, LIf/j;->a:LIf/j;

    sget-object v0, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    filled-new-array {v0}, [Ljava/nio/file/LinkOption;

    move-result-object v0

    sput-object v0, LIf/j;->b:[Ljava/nio/file/LinkOption;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    sput-object v0, LIf/j;->c:[Ljava/nio/file/LinkOption;

    invoke-static {}, Lpf/z0;->k()Ljava/util/Set;

    move-result-object v0

    sput-object v0, LIf/j;->d:Ljava/util/Set;

    sget-object v0, Ljava/nio/file/FileVisitOption;->FOLLOW_LINKS:Ljava/nio/file/FileVisitOption;

    invoke-static {v0}, Lpf/y0;->f(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LIf/j;->e:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)[Ljava/nio/file/LinkOption;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_0

    sget-object p1, LIf/j;->c:[Ljava/nio/file/LinkOption;

    goto :goto_0

    :cond_0
    sget-object p1, LIf/j;->b:[Ljava/nio/file/LinkOption;

    :goto_0
    return-object p1
.end method

.method public final b(Z)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set<",
            "Ljava/nio/file/FileVisitOption;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_0

    sget-object p1, LIf/j;->e:Ljava/util/Set;

    goto :goto_0

    :cond_0
    sget-object p1, LIf/j;->d:Ljava/util/Set;

    :goto_0
    return-object p1
.end method
