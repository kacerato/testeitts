.class public final Lcom/android/tools/r8/internal/t3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/r6;

.field public final c:Lcom/android/tools/r8/internal/r6;

.field public final d:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/r6;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/r6;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/t3;->b:Lcom/android/tools/r8/internal/r6;

    new-instance v0, Lcom/android/tools/r8/internal/r6;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/r6;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/t3;->c:Lcom/android/tools/r8/internal/r6;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/t3;->d:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/t3;->a:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/t3;)Lcom/android/tools/r8/internal/t3;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/t3;->b:Lcom/android/tools/r8/internal/r6;

    iget-object v1, p1, Lcom/android/tools/r8/internal/t3;->b:Lcom/android/tools/r8/internal/r6;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/r6;->a(Lcom/android/tools/r8/internal/r6;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/t3;->c:Lcom/android/tools/r8/internal/r6;

    iget-object v1, p1, Lcom/android/tools/r8/internal/t3;->c:Lcom/android/tools/r8/internal/r6;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/r6;->a(Lcom/android/tools/r8/internal/r6;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/t3;->d:Ljava/util/IdentityHashMap;

    iget-object p1, p1, Lcom/android/tools/r8/internal/t3;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->putAll(Ljava/util/Map;)V

    return-object p0
.end method
