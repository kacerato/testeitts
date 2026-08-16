.class public final Lcom/android/tools/r8/internal/Ti;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/util/ArrayDeque;

.field public final b:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayDeque;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ti;->a:Ljava/util/ArrayDeque;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ti;->b:Ljava/util/Set;

    return-void
.end method
