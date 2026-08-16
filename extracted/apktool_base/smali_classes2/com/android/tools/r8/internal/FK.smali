.class public final Lcom/android/tools/r8/internal/FK;
.super Lcom/android/tools/r8/internal/G;
.source "SourceFile"


# static fields
.field public static final e:Lcom/android/tools/r8/internal/FK;


# instance fields
.field public final d:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/FK;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v1, v2}, Lcom/android/tools/r8/internal/FK;-><init>(II[Ljava/lang/Object;)V

    sput-object v0, Lcom/android/tools/r8/internal/FK;->e:Lcom/android/tools/r8/internal/FK;

    return-void
.end method

.method public constructor <init>(II[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/G;-><init>(II)V

    iput-object p3, p0, Lcom/android/tools/r8/internal/FK;->d:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/FK;->d:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
