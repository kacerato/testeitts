.class public final Lcom/android/tools/r8/shaking/r3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/shaking/q3$a;

.field public final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/tools/r8/internal/hC;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/shaking/q3$a;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/shaking/q3$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/r3;->a:Lcom/android/tools/r8/shaking/q3$a;

    iput-boolean p3, p0, Lcom/android/tools/r8/shaking/r3;->b:Z

    return-void
.end method
