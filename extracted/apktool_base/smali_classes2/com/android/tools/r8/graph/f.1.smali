.class public abstract Lcom/android/tools/r8/graph/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/g;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/android/tools/r8/graph/f;
.end method

.method public final a(Z)Lcom/android/tools/r8/graph/f;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->w()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->C()V

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/f;->a()Lcom/android/tools/r8/graph/f;

    move-result-object p1

    return-object p1
.end method
