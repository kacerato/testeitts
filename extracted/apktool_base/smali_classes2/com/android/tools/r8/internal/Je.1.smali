.class public final Lcom/android/tools/r8/internal/Je;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/stream/Collector;


# instance fields
.field public a:Ljava/util/EnumSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/internal/Ke;->b()Ljava/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/Je;->b:Ljava/util/stream/Collector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Je;)Lcom/android/tools/r8/internal/Je;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Je;->a:Ljava/util/EnumSet;

    if-nez v0, :cond_0

    return-object p1

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/Je;->a:Ljava/util/EnumSet;

    if-nez p1, :cond_1

    return-object p0

    .line 6
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/internal/QC;
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/Je;->a:Ljava/util/EnumSet;

    if-nez v0, :cond_0

    .line 8
    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    .line 9
    sget-object v0, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    return-object v0

    .line 10
    :cond_0
    sget v1, Lcom/android/tools/r8/internal/bC;->f:I

    .line 11
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 12
    new-instance v1, Lcom/android/tools/r8/internal/bC;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/bC;-><init>(Ljava/util/EnumSet;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {v0}, Lcom/android/tools/r8/internal/vK;->a(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 14
    new-instance v1, Lcom/android/tools/r8/internal/Tm0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Tm0;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_2
    sget-object v1, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    :goto_0
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/android/tools/r8/internal/Je;->a:Ljava/util/EnumSet;

    return-object v1
.end method

.method public final a(Ljava/lang/Enum;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Je;->a:Ljava/util/EnumSet;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Je;->a:Ljava/util/EnumSet;

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
