.class public final Lcom/android/tools/r8/internal/pT;
.super Lcom/android/tools/r8/internal/mT;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/pT;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/pT;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/pT;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/pT;->b:Lcom/android/tools/r8/internal/pT;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/mT;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p2, Lcom/android/tools/r8/internal/sT;

    .line 2
    iget p1, p2, Lcom/android/tools/r8/internal/sT;->a:I

    return p1
.end method

.method public final a(II)Ljava/lang/Object;
    .locals 0

    .line 3
    new-instance p2, Lcom/android/tools/r8/internal/sT;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/sT;-><init>(I)V

    return-object p2
.end method
