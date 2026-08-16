.class public final Lcom/android/tools/r8/internal/NY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final b:Lcom/android/tools/r8/internal/NY;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/NY;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/NY;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/NY;->b:Lcom/android/tools/r8/internal/NY;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/MY;

    check-cast p2, Lcom/android/tools/r8/internal/MY;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/MY;->a()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/MY;->a()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method
