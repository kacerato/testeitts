.class public abstract Lcom/android/tools/r8/internal/oU;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Ljava/util/function/IntFunction;

.field public final b:Ljava/util/function/IntFunction;

.field public c:Lcom/android/tools/r8/internal/Hz;

.field public d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Hz;Ljava/util/function/IntFunction;Ljava/util/function/IntFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/oU;->c:Lcom/android/tools/r8/internal/Hz;

    iput-object p2, p0, Lcom/android/tools/r8/internal/oU;->a:Ljava/util/function/IntFunction;

    iput-object p3, p0, Lcom/android/tools/r8/internal/oU;->b:Ljava/util/function/IntFunction;

    const/4 p1, 0x2

    invoke-interface {p3, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/oU;->d:Ljava/lang/Object;

    return-void
.end method
