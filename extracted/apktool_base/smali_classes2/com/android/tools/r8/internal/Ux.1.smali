.class public final Lcom/android/tools/r8/internal/Ux;
.super Lcom/android/tools/r8/internal/Vx;
.source "SourceFile"


# instance fields
.field public final synthetic b:[Ljava/lang/Iterable;


# direct methods
.method public constructor <init>([Ljava/lang/Iterable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ux;->b:[Ljava/lang/Iterable;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Vx;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Tx;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ux;->b:[Ljava/lang/Iterable;

    array-length v1, v1

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/Tx;-><init>(Lcom/android/tools/r8/internal/Ux;I)V

    new-instance v1, Lcom/android/tools/r8/internal/GK;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/GK;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method
