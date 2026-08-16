.class public final Lcom/android/tools/r8/internal/mp0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/LinkedHashMap;

.field public final b:Ljava/util/IdentityHashMap;

.field public c:Z


# direct methods
.method public constructor <init>(Ljava/util/LinkedHashMap;Ljava/util/IdentityHashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/mp0;->a:Ljava/util/LinkedHashMap;

    iput-object p2, p0, Lcom/android/tools/r8/internal/mp0;->b:Ljava/util/IdentityHashMap;

    return-void
.end method
