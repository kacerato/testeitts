.class public final Lcom/android/tools/r8/shaking/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Lcom/android/tools/r8/shaking/N$a;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/shaking/N$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/g;->a:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/shaking/g;->b:Lcom/android/tools/r8/shaking/N$a;

    return-void
.end method
