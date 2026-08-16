.class public abstract Lcom/android/tools/r8/internal/X50;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public a:Ljava/util/List;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lcom/android/tools/r8/shaking/s2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/s2;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/X50;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/X50;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/tools/r8/internal/X50;->c:Lcom/android/tools/r8/shaking/s2;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/util/List;)Ljava/util/List;
.end method

.method public abstract a(Ljava/lang/Object;Lcom/android/tools/r8/shaking/N;)Z
.end method
