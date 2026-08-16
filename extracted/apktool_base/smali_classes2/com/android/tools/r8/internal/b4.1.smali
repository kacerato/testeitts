.class public final Lcom/android/tools/r8/internal/b4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/nl0;


# instance fields
.field public final synthetic a:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/b4;->a:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/b4;->a:[Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/O3;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/O3;-><init>([Ljava/lang/Object;)V

    return-object v1
.end method
