.class public final Lcom/android/tools/r8/dex/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:[Lcom/android/tools/r8/graph/y2;

.field public static final f:[Lcom/android/tools/r8/graph/w2;

.field public static final g:[Lcom/android/tools/r8/graph/x2;

.field public static final h:Lcom/android/tools/r8/dex/z;


# instance fields
.field public final a:Lcom/android/tools/r8/graph/u0;

.field public final b:[Lcom/android/tools/r8/graph/w2;

.field public final c:[Lcom/android/tools/r8/graph/x2;

.field public final d:[Lcom/android/tools/r8/graph/y2;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/android/tools/r8/graph/y2;

    sput-object v1, Lcom/android/tools/r8/dex/z;->e:[Lcom/android/tools/r8/graph/y2;

    new-array v2, v0, [Lcom/android/tools/r8/graph/w2;

    sput-object v2, Lcom/android/tools/r8/dex/z;->f:[Lcom/android/tools/r8/graph/w2;

    new-array v3, v0, [Lcom/android/tools/r8/graph/x2;

    sput-object v3, Lcom/android/tools/r8/dex/z;->g:[Lcom/android/tools/r8/graph/x2;

    new-instance v3, Lcom/android/tools/r8/dex/z;

    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object v4

    new-array v0, v0, [Lcom/android/tools/r8/graph/x2;

    invoke-direct {v3, v4, v2, v0, v1}, Lcom/android/tools/r8/dex/z;-><init>(Lcom/android/tools/r8/graph/u0;[Lcom/android/tools/r8/graph/w2;[Lcom/android/tools/r8/graph/x2;[Lcom/android/tools/r8/graph/y2;)V

    sput-object v3, Lcom/android/tools/r8/dex/z;->h:Lcom/android/tools/r8/dex/z;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/u0;[Lcom/android/tools/r8/graph/w2;[Lcom/android/tools/r8/graph/x2;[Lcom/android/tools/r8/graph/y2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/android/tools/r8/dex/z;->a:Lcom/android/tools/r8/graph/u0;

    if-nez p2, :cond_1

    sget-object p2, Lcom/android/tools/r8/dex/z;->f:[Lcom/android/tools/r8/graph/w2;

    :cond_1
    iput-object p2, p0, Lcom/android/tools/r8/dex/z;->b:[Lcom/android/tools/r8/graph/w2;

    if-nez p3, :cond_2

    sget-object p3, Lcom/android/tools/r8/dex/z;->g:[Lcom/android/tools/r8/graph/x2;

    :cond_2
    iput-object p3, p0, Lcom/android/tools/r8/dex/z;->c:[Lcom/android/tools/r8/graph/x2;

    if-nez p4, :cond_3

    sget-object p4, Lcom/android/tools/r8/dex/z;->e:[Lcom/android/tools/r8/graph/y2;

    :cond_3
    iput-object p4, p0, Lcom/android/tools/r8/dex/z;->d:[Lcom/android/tools/r8/graph/y2;

    return-void
.end method

.method public static a()Lcom/android/tools/r8/dex/z;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/dex/z;->h:Lcom/android/tools/r8/dex/z;

    return-object v0
.end method
