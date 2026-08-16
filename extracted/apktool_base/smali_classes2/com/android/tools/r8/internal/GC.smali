.class public final Lcom/android/tools/r8/internal/GC;
.super Lcom/android/tools/r8/internal/t1;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final c:Lcom/android/tools/r8/internal/GC;

.field public static final d:Lcom/android/tools/r8/internal/GC;


# instance fields
.field public final transient b:Lcom/android/tools/r8/internal/hC;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/GC;

    sget v1, Lcom/android/tools/r8/internal/hC;->c:I

    sget-object v1, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/GC;-><init>(Lcom/android/tools/r8/internal/hC;)V

    sput-object v0, Lcom/android/tools/r8/internal/GC;->c:Lcom/android/tools/r8/internal/GC;

    new-instance v0, Lcom/android/tools/r8/internal/GC;

    sget-object v1, Lcom/android/tools/r8/internal/Db0;->d:Lcom/android/tools/r8/internal/Db0;

    new-instance v2, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v2}, Lcom/android/tools/r8/internal/GC;-><init>(Lcom/android/tools/r8/internal/hC;)V

    sput-object v0, Lcom/android/tools/r8/internal/GC;->d:Lcom/android/tools/r8/internal/GC;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/hC;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/t1;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/GC;->b:Lcom/android/tools/r8/internal/hC;

    return-void
.end method

.method public static b()Lcom/android/tools/r8/internal/FC;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/FC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/FC;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/JC;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/GC;->b:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    sget-object v0, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/ff0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/GC;->b:Lcom/android/tools/r8/internal/hC;

    sget-object v2, Lcom/android/tools/r8/internal/Db0;->d:Lcom/android/tools/r8/internal/Db0;

    sget-object v2, Lcom/android/tools/r8/internal/Cb0;->b:Lcom/android/tools/r8/internal/Cb0;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/ff0;-><init>(Lcom/android/tools/r8/internal/hC;Ljava/util/Comparator;)V

    return-object v0
.end method
