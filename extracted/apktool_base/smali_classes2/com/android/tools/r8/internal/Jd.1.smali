.class public final Lcom/android/tools/r8/internal/Jd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/Jd;


# instance fields
.field public final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Jd;

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jd;-><init>(Ljava/util/Set;)V

    sput-object v0, Lcom/android/tools/r8/internal/Jd;->b:Lcom/android/tools/r8/internal/Jd;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Jd;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Jd;)Lcom/android/tools/r8/internal/Jd;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Jd;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/Jd;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Jd;->a:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p1, p1, Lcom/android/tools/r8/internal/Jd;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/tools/r8/internal/Jd;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    if-ne p1, v1, :cond_2

    :goto_0
    return-object p0

    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/Jd;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jd;-><init>(Ljava/util/Set;)V

    return-object p1
.end method
